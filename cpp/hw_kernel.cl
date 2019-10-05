__kernel void hw_kernel(__global char* data) {
	char hw[] = "Hello World!\n\0";
	size_t i = get_global_id(0);
	data[i]  = hw[i];
	
	/*
	data[0]  = 'H';
	data[1]  = 'e';
	data[2]  = 'l';
	data[3]  = 'l';
	data[4]  = 'o';
	data[5]  = ' ';
	data[6]  = 'W';
	data[7]  = 'o';
	data[8]  = 'r';
	data[9]  = 'l';
	data[10] = 'd';
	data[11] = '!';
	data[12] = '\n';
	*/
}