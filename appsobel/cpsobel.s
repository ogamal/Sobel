####################################
###	Sobel Edge Detection     ###
###	      CPRE 584           ###
###	     Team Cyc05          ###
#################################### 
	.file	"cpfilter.s"
	.ctext

#Custom call to image gray scaling
cpGS:
 	.globl  cpGS
 	.type   cpGS. @function
 	.signature pdk=65016
 	MOV.AE0 %A8,  $0, %AEG  # Base Address: Pixel  Pairs (Input)
	MOV.AE0 %A9,  $1, %AEG  # Base Address: Grayed Pixels(Output)
	MOV.AE0 %A11, $2, %AEG	# Num of Rows
	MOV.AE0 %A10, $3, %AEG	# Num of Columns
	CAEP00.AE0 $0		# Custom Call #1
	RTN
	
#Custom call to apply sobel edge detection
 	.globl  cpSB
 	.type   cpSB. @function
 	.signature pdk=65016
cpSB:
 	MOV.AE0 %A8,  $0, %AEG  # Base Address: Grayed Pixels(Input)
	MOV.AE0 %A9,  $1, %AEG  # Base Address: Sobeled Pixels(Output)
	MOV.AE0 %A11, $2, %AEG	# Num of Rows
	MOV.AE0 %A10, $3, %AEG	# Num of Columns
	CAEP01.AE0 $0		# Custom Call #2
	RTN
	
	.end
