//***************************************************************************
// File name:		Simple C Program
// Author:			chadd williams
// Date:				Sept 1, 2021
// Class:				CS360
// Assignment:	GitHub Classroom & VSCode Example
// Purpose:			Demonstrate how to use GitHub Classroom & VSCode
//***************************************************************************
#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


/****************************************************************************
 Function:		main
 
 Description:	print hello world, optionally reading a string from argv
 
 Parameters:	int argc: number of command line arguments
							char **argv: the command line arguments
 
 Returned:		EXIT_SUCCESS
****************************************************************************/
int main(int argc, char **argv)
{

	printf("Hello World!\n");

	if ( argc > 1 )
	{	
		printf("Hello, %s!!\n\n", argv[1]);
	}

	printf("Good Bye!\n\n");
	return EXIT_SUCCESS;
}

