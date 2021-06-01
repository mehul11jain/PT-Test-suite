#include <stdio.h>
#include "PointsToCheck.h"
int **p, **q, **r;
int *a, *b, *c, *d, *e;
int m;
int main()
{
    do
    {
        r = &a;
        //info from exit of while loop:
        MayPointsTo(q,b);
        //info from the statement r=&a
        MustPointsTo(r,a);

        *q = &m;
        MayPointsTo(b,m);
        if (m)
        {
            q = &b;
            MustPointsTo(q,b);
        }
        else
        {
            break;
        }
        //MayPointsTo(q,b); checked already at r=&a
    } while (1);
    
    //info from exit of while loop:
//    MayPointsTo(q,b);
//    MayPointsTo(b,m);
//    MayPointsTo(r,a);

    e = *p;
	//no info about p exists so the above statement doesnt produce anything??
	//from the exit of while loop, we have:
    MayPointsTo(q,b);
    MayPointsTo(b,m);
    MayPointsTo(r,a);
	
	
	   
    q = &e;
    MustPointsTo(q,e);
}
