Add custom gameplay changers here.

The file name becomes the name of the configuration.
Supported types: "int, float, percent, string"

Please write it in a text file:
Int, float, percent:
	 type,  tag, 		defaultValue, scrollSpeed, minValue, maxValue, changeValue, displayFormat, decimals
Example:"float, healthDecrease, 1,	      1, 	   0.1,      2,	       0.1,	    %vX,	   1	   "

String:
	 type,   tag,  choices
Example:"string, test, test1, test2, test3, bruh"

Bool:	 type, tag,	    defaultValue
Example:"bool, dadReduceHP, false	"