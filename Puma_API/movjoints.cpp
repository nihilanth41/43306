//============================================================================
// Name        : Lab5.cpp
// Author      : isma Hadji
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

/*
 *  Copyright (C) 2011 Vision-Guided and Intelligent Robotics Lab
 *  Written by G. N. DeSouza <DeSouzaG@missouri.edu>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation. Meaning:
 *          keep this copyright notice,
 *          do  not try to make money out of it,
 *          it's distributed WITHOUT ANY WARRANTY,
 *          yada yada yada...
 *
 *  You can get a copy of the GNU General Public License by writing to
 *  the Free Software Foundation, Inc., 59 Temple Place, Suite 330,
 *  Boston, MA  02111-1307  USA
 *
 *
 */

#include <stdlib.h>
#include "Puma_OP.h"

int main(int argc, char **argv) {
	
	if(argc != 7)
	{
		printf("Error Arguments...\n");
		return -1;
	}
	JOINTS j;
	j.j1 = atof(argv[1]);
	j.j2 = atof(argv[2]);
	j.j3 = atof(argv[3]);
	j.j4 = atof(argv[4]);
	j.j5 = atof(argv[5]);
	j.j6 = atof(argv[6]);

	int x = MOVETO_JOINTS_WO_CHECKv(j);
	return x;
} // int main
