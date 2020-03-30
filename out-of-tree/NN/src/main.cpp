#include <vector>
#include <stdio.h>
#include <stdint.h>

#pragma pack(0)
template<int n>
struct neuron{
	double weight[n];
	double bias;
	double value;
};

#pragma pack(0)
template<int n, int m>
struct training_data{
	double input[n];
	double output[m];
};


// input is a neural net, input layer is assumed to already have the input set
template<class n>
void compute(std::vector<n>* const net) {
	#pragma GCC ivdep
	for(uint32_t i=1;i<net->size();i++) { // for every layer
		#pragma GCC ivdep
		for(uint32_t j=0;j<net[i].size();j++) { // for every neuron of the layer
			net[i][j].value = 0;
			#pragma GCC ivdep
			for(uint32_t k=0;k<net[i-1].size();k++) { // for every weight of the neuron
				// activation function is linear, uncapped
				net[i][j].value += net[i-1][k].value * net[i][j].weight[k];
			}
		}
	}
}

template<class T, int N>
double error(const std::vector<neuron<N>>* const output_layer, const std::vector<T>* const expected_out) {
	double e, error;
	// sum squares of differences
	for(uint32_t i = 0; i<output_layer.size(); i++) { 
		e = (output_layer[i].value - expected_out[i]);
		error += e*e; 
	}
	return error;
}



int main() {
	std::vector<std::vector<neuron<3>>> net;
	{
		neuron<3> t = {0,0,0}; // data stored here-in is irelevant
		for(int i=0;i<3;i++) {
			net.push_back(std::vector<neuron<3>>());
		}
		net[0].push_back(t);
		net[0].push_back(t);
		net[0].push_back(t);
		
		net[1].push_back(t);
		net[1].push_back(t);
		net[1].push_back(t);
		
		net[2].push_back(t);
		
		
	} // t erased
	// net now holds a neural net
	training_data data[] = {{{1,1,1}, 3},{{1,2,1},4}};
	do {
		double e = 0;
		for(int i = 0; i<net[0].size(); i++) {
			net[0][i].value = 1;
		}
		compute(&net);
		
		
		
		e = error(net[net.size()-1], 3);
		printf("result:%n\terror:%f\n", net[net.end()][0].value, e);
	} while(e < 1);
	
	return 0;
}