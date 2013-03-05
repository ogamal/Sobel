/*************************************/
/**	Sobel Edge Detection   	    **/
/**	      CPRE 584	    	    **/
/**	     Team Cyc05	    	    **/
/*************************************/	    
#include <convey/usr/cny_comp.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#undef DEBUG

using namespace std;

typedef unsigned long long uint64;

bool writeToFile(unsigned char *input, int width, int length, int size);
bool readFromFile(unsigned long long **input_pixels, int* width, int* length, int* size);

extern "C" void cpGS();
extern "C" void cpSB();

char *filePath;
char *outFilePath;
char PPM_HEADER_LINE_1[] = "P3";
char PPM_HEADER_LINE_2[] =  "#CREATOR: Cyc05 Team - SOBEL ALGORITHM";
char PPM_HEADER_LINE_4[] = "255";

cny_image_t        sig2;
cny_image_t        sig;
int stat;

int main(int argc, char *argv[])
{
	// Get personality signature
	// The "pdk" personality is the PDK sample vadd personality
	if (cny_get_signature)
		cny_get_signature((char*)"sobel", &sig, &sig2, &stat);
	else 
		fprintf(stderr,"ERROR:  cny_get_signature not found\n");
		
	if (stat) {
		printf("***ERROR: cny_get_signature() Failure: %d\n", stat);
		exit(1);
	}
		
	// check interleave
	// this example requires binary interleave
	if (cny_cp_interleave() == CNY_MI_3131) {
		printf("ERROR - interleave set to 3131, this personality requires binary interleave\n");
		exit (1);
	}
		
	if(argc != 3) {
		cout << "Example: ./run <Input File Path> <Output File Path>" << endl;
		exit(1);
	}
		
	filePath = argv[1];
	outFilePath = argv[2];
        
	int width = 0, length = 0;
	bool error = 0;
		
	// pairs of pixels
	uint64 *input_pixels;
	unsigned char *gray_pixels, *output_pixels;
	int totalPixels = 0;

	// Reading from a file
	cout << "CySobel: Started reading the image file!" << endl;
	error = readFromFile(&input_pixels, &width, &length, &totalPixels);
	if(!error) exit(1);
	cout << "CySobel: Done reading image file!" << endl;

	// Malloc space for grayed pixels in cp => totalPixels * 8
	gray_pixels = (unsigned char*)cny_cp_malloc(totalPixels*sizeof(unsigned char));
	printf("CySobel: Gray pixel's first memory address: %llx\n", gray_pixels);
	printf("CySobel: Gray pixels's last memory address: %llx\n", gray_pixels+totalPixels-1);
	printf("CySobel: Total pixels: %d\n", totalPixels);

	// Malloc space for output pixels in cp => totalPixels * 8
	output_pixels = (unsigned char*)cny_cp_malloc(totalPixels*sizeof(unsigned char));
	printf("CySobel: Output file's first memory address: %llx\n", output_pixels);
	printf("CySobel: Output file's last memory address: %llx\n", output_pixels+totalPixels-1);
	printf("CySobel: Total pixels: %d\n", totalPixels);

	// Gray Scaling
	cout << "CySobel: Calling the grayscale custom instruction" << endl;
 	copcall_fmt(sig, cpGS, "AAAA", input_pixels, gray_pixels, (uint64) width, (uint64) length);
	cout << "CySobel: Back from the grayscale custom instruction!" << endl;
	
	// Sobel Edge Detecting
	cout << "CySobel: Calling the sobel custom instruction" << endl;
	copcall_fmt(sig, cpSB, "AAAA", gray_pixels, output_pixels, (uint64) width, (uint64) length);
	cout << "CySobel: Back from the sobel custom instruction!" << endl;

	cout << "CySobel: Writing output image" << endl;
	error = !writeToFile(output_pixels, width, length, totalPixels);
	if(error) exit(1);
	cout << "CySobel: Program Done!" << endl;
		
	cny_cp_free(input_pixels);
	cny_cp_free(gray_pixels);
	
	return 0;
}

bool readFromFile(unsigned long long **in_pixels, int* width, int* length, int* size) {
	FILE *image;
	image = fopen(filePath,"r");
	if (image == NULL) {
		cout << "ERROR: Unable to open the image" << endl;
		return false;
	}
	else {
		//first 3 lines are ppm header info
		char line1[100];
		char line2[100];
		cout << "----------Header Info----------" << endl;
		fscanf(image,"%[^\n]\n",line1);
		cout << "Line 1 " << line1 << endl;
		fscanf(image,"%[^\n]\n",line2);
		cout << "Line 2 " << line2 << endl;
		fscanf(image,"%d %d\n", width, length);
		int totalPixels = *width * *length;
		*size = totalPixels;
		int maxIntensity = 0;
		fscanf(image,"%d\n", &maxIntensity);
		cout << "Width: " << *width << " Length: " << *length << " Total Pixels: " << totalPixels << " pixels" << endl;
		
		// Upperbound
		bool even = (totalPixels % 2) == 0;
		int image_size = even ? totalPixels / 2 : (totalPixels / 2) + 1;
		cout << "Memory size 'read_size' = " << image_size << endl;

		// Malloc space for pixel pairs in cp => image_size * 64	
		unsigned long long * input_pixels = (unsigned long long*)cny_cp_malloc(image_size * sizeof(uint64));
		*in_pixels = input_pixels;
		printf("CySobel: Input file's first memory address: %llx\n", input_pixels);
		printf("CySobel: Input file's last memory address: %llx\n", input_pixels+image_size-1);

		int red, green, blue;
		for(int i = 0; i < image_size; i++){
			if(i == (image_size - 1) && !even){
				fscanf(image,"%d\n",&red);
				fscanf(image,"%d\n",&green);
				fscanf(image,"%d\n",&blue);
				
				input_pixels[i] = (uint64) ((unsigned char)red << 16) | ((unsigned char)green << 8) | ((unsigned char)blue);
				input_pixels[i] = input_pixels[i] << 24;
				break;
			}
				
			// read and store the first pixel
			fscanf(image,"%d\n",&red);
			fscanf(image,"%d\n",&green);
			fscanf(image,"%d\n",&blue);
			//printf("red: %2x, green: %2x, blue: %2x\n", red, green, blue);
			input_pixels[i] = ((unsigned char)red << 16) | ((unsigned char)green << 8) | ((unsigned char)blue);
			input_pixels[i] = input_pixels[i] << 24;
			
			// read and store the second pixel
			fscanf(image,"%d\n",&red);
			fscanf(image,"%d\n",&green);
			fscanf(image,"%d\n",&blue);
			//printf("red: %2x, green: %2x, blue: %2x\n", red, green, blue);
			input_pixels[i] = input_pixels[i] | ((unsigned char)red << 16) | ((unsigned char)green << 8) | ((unsigned char)blue);
			//printf("pixel: %llx\n", input_pixels[i]);

		} // end for loop	
	}	// end the if file opened
  fclose(image);
	return true;
}

bool writeToFile(unsigned char *input, int width, int length, int size){
	FILE *outImage;
	outImage = fopen(outFilePath,"w");
	if(outImage == NULL){
		cout << "Error creating new output image file!" << endl;
		return false;
	}
		
	fprintf(outImage,"%s\n",PPM_HEADER_LINE_1);
	fprintf(outImage,"%s\n",PPM_HEADER_LINE_2);
	fprintf(outImage,"%d %d\n",width,length);
	fprintf(outImage,"%s\n",PPM_HEADER_LINE_4);
	for(int i = 0; i < size; i++){
		fprintf(outImage,"%d\n%d\n%d\n",input[i],input[i],input[i]);
	}
		
	fclose(outImage);
	return true;
}

