#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

int main(int argc,char* argv[])
{		
	FILE *fptr;
	char num[10] = {},empty[] = "EOF";
	int all = 0,count = 0,i,j,total = 0;
	long long int allStudentID[3][atoi(argv[argc-4])];
	int fl = 0;
//	printf("\n%s\n",argv[argc-1]);
	//initial array
	for(i=0;i<3;i++)
		for(j=0;j<atoi(argv[argc-4]);j++)
			allStudentID[i][j] = 0;
	//allStudentID
	fptr = fopen(argv[argc-3],"r");	
	while(fscanf(fptr,"%s",num) != EOF)
	{				
		if(strcmp(num,empty) != 0)
		{				
			allStudentID[0][all] = atoll(num);
			all++;
		}
		else
			break;
	}
	fclose(fptr);
	all = 0;
	//allStudentCardID
	fptr = fopen(argv[argc-2],"r");	
	while(fscanf(fptr,"%s",num) != EOF)
	{				
		if(strcmp(num,empty) != 0)
		{				
			allStudentID[1][all] = atoll(num);
			all++;
		}
		else
			break;
	}
	fclose(fptr);
	//AttendCount
	fptr = fopen(argv[argc-1],"r");	
	while(fscanf(fptr,"%s",num) != EOF)
	{				
		if(strcmp(num,empty) != 0)
			count++;
		else
			break;
	}
	fclose(fptr);
	//AttendList
	long long int attend[count];
	fptr = fopen(argv[argc-1],"r");	
	for(i=0;i<count;i++)
	{
		fscanf(fptr,"%s",num);
		attend[i] = atoll(num);
	}
	fclose(fptr);
	
	for(i=0;i<count;i++)
	{
		for(j=0;j<=all;j++)
		{
			if(attend[i] == allStudentID[1][j])
			{
				if(allStudentID[2][j] == 1)
				{
//					printf("Repeat ID : %lld\n",allStudentID[0][j]);
					fl = 1;
				}
				else
				{
					allStudentID[2][j] = 1;
					total++;
					fl = 1;
				}
			} 
		}
		if(!fl)
//			printf("No this card ID = %lld\n",attend[i]);
		fl = 0;
	}
//	printf("\nHave %d students absence:\n",atoi(argv[argc-4]) - total);
//	printf("Absencetee ID:\n");	
	for(j=0;j<all;j++)
		if(allStudentID[2][j] == 0)
			printf("%lld\n",allStudentID[0][j]);
	//printf("\n");
}
