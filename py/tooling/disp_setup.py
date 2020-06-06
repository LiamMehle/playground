import bpy
import bmesh
import math
from mathutils import Vector
from bpy_extras.object_utils import world_to_camera_view
from time import sleep

scene = bpy.context.scene
obj       = bpy.context.active_object
mesh      = obj.data
mat_world = obj.matrix_world
cam       = None

if 'Camera' in bpy.data.objects:
	cam = bpy.data.objects['Camera']
else:
	pass # implement make camera
obj
for loc in cam.location:
	loc = 0

cam.location[2] = 1

#cam.data.type = 'ORTHO'

cs, ce    = cam.data.clip_start, cam.data.clip_end


def print_progress(min, max, lower, upper):
	width = 20
	# print(f'min={min} max={max} lower={lower} upper={upper}')
	max   -= min
	lower -= min-0.00001
	upper -= min

	lower  /= max
	upper  /= max
	max    = 1

	lower  *= width
	upper  *= width

	min    = 0.00001

	string = '<{' + '-'*width + '}>'
	for i in range(int(2+lower), int(2+upper)):
		string = string[:i] + '=' + string[i+1:]
	string = string[:int(2+lower)] + '[' + string[int(1+2+lower):]
	string = string[:int(2+upper)] + ']' + string[int(1+2+upper):]
	if int(lower) == int(upper):
		string = string[:int(2+upper)] + '|' + string[int(1+2+upper):]
	print(string)

def is_vert_visible(v):
	co_ndc = world_to_camera_view(scene, cam, mat_world @ v.co)
	if (0.0 < co_ndc.x < 1.0 and 0.0 < co_ndc.y < 1.0 and cs < co_ndc.z <  ce):
		return True
	else:
		return False


def bin_search(f, tolerance = 0.0001, upper=1, lower=-1):
	i = 0
	# find bounds
	while True:
		print(f'upper {upper}')
		ret = f(upper)
		if ret == False:
			upper *= 2
		else:
			break
		i += 1
		if i >= 99:
			print(f'failiure0')
			return 0

	max = upper

	while True:
		print(f'lower {lower}')
		ret = f(lower)
		if ret == True:
			lower *= 2
		else:
			break
		i += 1
		if i >= 99:
			print(f'failiure1')
			return 0

	min = lower

	# start binary search
	while True:
		print_progress(min, max, lower, upper)
		guess = (upper+lower)/2
		if upper - lower < tolerance:
			return guess

		ret = f(guess)
		if ret == True:
			upper = guess
		else:
			lower = guess
		i += 1
		if i >= 99:
			print(f'failiure2')
			return 0


def are_all_verts_visible(z):
	ret = True
	bpy.ops.object.mode_set(mode = 'OBJECT')
	if cam.data.type == 'PERSP':
		cam.location[2] = z
	elif cam.data.type == 'ORTHO':
		cam.location[2] = 1
		if z < 0.01:
			z = 0.01
		cam.data.ortho_scale = z
	bpy.ops.object.mode_set(mode = 'EDIT')
	bm = bmesh.from_edit_mesh(mesh)
	for v in bm.verts:
		if is_vert_visible(v) == False:
			ret = False
			break
	bpy.ops.object.mode_set(mode = 'OBJECT')
	return ret

are_all_verts_visible(bin_search(are_all_verts_visible))
