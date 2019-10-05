function f(x)
	return 1/x
end

function map(x,xmin,xmax,ymin,ymax)
	return x*(ymax-ymin)/(xmax-xmin)+(ymin-xmin)
end

out = ""

for y=50, 0, -1 do
	for x=0, 50, 1 do
		if math.floor(map(f(map(x, 0, 50, -10, 10)),-10,10,0,50)) == y then
			out = out .. "0"
		else
			out = out .. " "
		end
	end
	print(out)
	out = ""
end
