#include <stdio.h>
#include <fstream>
#include <string>
#include <iostream>
#include <vector>
#include <unordered_map>

#define BUFF_SIZE 1024
#define FILE_NAME "eve_online_skill_timings"

	// check arch
// Check windows
#if _WIN32 || _WIN64
#if _WIN64
#define X86_64
#else
#define X86
#endif
#endif

// Check GCC
#if __GNUC__
#if __x86_64__ || __ppc64__
#define X86_64
#else
#define X86
#endif
#endif

int skill_suggest(uint32_t);

int main(int argc, char* argv[]) {
	char option = '0';
	// check tool to run
	//printf("\n0 skill suggester\n:");
	//std::cin >> option;
	switch(option) {
		case '0':
			if(argc != 2)
				return -1;
			uint32_t target;
			sscanf(argv[1], "%u", &target);
			return skill_suggest(target);
	}

	return 0;
}

void copy_to(const char* src, std::string* dest, uint32_t cycles) {
	 for(uint32_t i = 0; i < cycles; i++) {
	 	dest->push_back(src[i]);
	 }
}


// function that searches for next newline starting
// at index and returns the new index
//template<class T>
uint32_t next_char(const std::string array,
                   const uint32_t index,
                   const char delim) {
	uint32_t size = array.size();
	for(uint32_t i=index; i<size; i++) {
		if(array[i] == delim)
			return i;
	}
	return 0;
}


void trim(std::string* str) { // trim whitespace (tabs not yet supported) 
	str->erase(0, str->find_first_not_of(' '));
	str->erase(str->find_first_of(' '), 0);
}


int read_to_str(char** str) { // str is filename and return type
	std::fstream input_file;
	input_file.open(*str, std::fstream::in);
	if(!input_file.is_open())
		return -1;

	delete[] *str; // create dangling pointer, immediatly fix

	// get file size and make buffer for it
	input_file.seekg(0, input_file.end);
	uint32_t end = input_file.tellg();
	end++;
	// to add a char at the beginning and null byte.
	// The fist char is skipped because all but the
	// fist line will contain a \n char at the beginning
	*str = new char[end+2];
	printf("reading: %db\n", end);
	input_file.seekg(0, input_file.beg);
	// pointer arithmatic to skip the fist char
	// The '1' is multiplied by sizeof(char) because that's
	// the element type of *(*str)
	input_file.read((*str)+1, end); // read the entire file
	return 0;
}

// make struct to store attributes
typedef struct {
	std::string name;
	uint32_t time;
} skill;

int extract_value(const std::string* str, char target) {    // extracts value
	int output;                                // whith specified prefix
	uint32_t index0, index1;
	index1 = next_char(*str, 0, target);
	if(!index1 == 0) {
		index0 = index1;
		while(true) {     // search for first whitespace before number
			--index0;
			if(index0>str->size())
				break;
			if((*str)[index0] == ' ')
				break;
		}
		if(!(index0>str->size())) {
			sscanf(str->substr(index0, index1-index0).c_str(), "%u", &output);
		}
	} else {
		output = 0;
	}
	return output;
}

int skill_suggest(const uint32_t target) {
	// read skills and store data;
	std::string raw_data;
	{
		char buffer[] = FILE_NAME;
		char* pbuffer = buffer; // workaround to ISO C++ safety
		read_to_str(&pbuffer);  // must pass by reference to mutate
		raw_data = pbuffer;
		delete[] pbuffer;
	}

	// vec to store data
	std::unordered_map<std::string, uint32_t> data;
	data.reserve(128);

	// string position markers
	uint32_t line_begin_index = 0,
	         line_end_index   = 0,
	         delim_index;

	while(true) {
		// shuffle fowrard
		line_begin_index = line_end_index+1; // skip \n
		line_end_index = next_char(raw_data, line_begin_index+1, '\n');
		if(line_end_index == 0) // no next newline
			break;

		// set markers
		delim_index = next_char(raw_data, line_begin_index, '-');
		if(delim_index == 0 || delim_index >= line_end_index) {
			continue; // someting is wrong
		}
		{
			skill buff;                         // get name
			std::string temp = raw_data.substr( // store name in temp
				line_begin_index,
				delim_index-line_begin_index);
			trim(&temp);                        // trim whitespace
			buff.name = temp;                   // store name
			temp.clear();

			// getting the time length
			temp = raw_data.substr(delim_index, line_end_index-delim_index);
			uint32_t m = extract_value(&temp, 'm'); 
			uint32_t h = extract_value(&temp, 'h');
			uint32_t d = extract_value(&temp, 'd');

			constexpr uint32_t mpd = 24*60, mph = 60;
			buff.time = (d*mpd) + (h*mph) + m;
			printf("%s\t%u\n", buff.name.c_str(), buff.time);
			data.emplace(buff.name, buff.time);
		}
	}
	data.reserve(data.size()); // shrink_to_it()

	return 0;
}