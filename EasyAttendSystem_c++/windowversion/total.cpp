#include <stdio.h>
#include <stdlib.h>
#include <string.h> 

int main(int argc,char* argv[])
{		
	FILE *fptr;
	char num[10] = {},empty[] = "EOF";
	int all = 0,count = 0,i,j,total = 0;
	long long int array[1000][2]={};
	int fl = 0;
	fptr = fopen("noattend.txt","r");	
	while(fscanf(fptr,"%s",num) != EOF)
	{
		if(strcmp(num,empty) != 0)
		{	
			if(all != 0)
			{
				long long int temp = atoll(num);		
				for(i=0;i<all;i++)
				{
					if(array[i][0] == temp)
					{
						array[i][0] = temp;
						array[i][1]++;
						fl = 1;
					}					
				}
				if(fl == 0)					
				{
					array[all][0] = temp;	
					array[all][1]++;
					all++;
				}
			}
			else
			{
				array[all][0] = atoll(num);
				array[all][1]++;
				all++;
			}			
		}
		else
			break;
	}
	fclose(fptr);	
	for(i=0;i<all;i++)
	{
		printf("%lld %lld\n",array[i][0],array[i][1]);		
	}
}
