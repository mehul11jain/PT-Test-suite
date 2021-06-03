#include <stdio.h>
#include "PointsToCheck.h"
int **p, **q, **r;
int *a, *b, *c, *d, *e;
int m;
int main()
{
    q = &a;
    do
    {
        r = &a;
        //info from exit of while loop:
        MayPointsTo(q,b);
        MayPointsTo(q,a);
        //info from the statement r=&a
        MustPointsTo(r,a);        
        MayPointsTo(b,m);
        MayPointsTo(a,m);

        *q = &m;
        MayPointsTo(q,b);
        MayPointsTo(q,a);
        MustPointsTo(r,a);
        MayPointsTo(b,m);
        MayPointsTo(a,m);

        if (m)
        {
            q = &b;
            MustPointsTo(q,b);
            MustPointsTo(r,a);
            MayPointsTo(b,m);
            MayPointsTo(a,m);
        }
        else
        {
            break;
        }
        //MayPointsTo(q,b); checked already at r=&a
    } while (1);
    
    //info from exit of while loop:
//    MayPointsTo(q,b);
//    MayPointsTo(q,a);
//    MayPointsTo(b,m);
//    MayPointsTo(a,m);
//    MustPointsTo(r,a);

    e = *q;
	//no info about p exists so the above statement doesnt produce anything??
	//from the exit of while loop, we have:
    MayPointsTo(q,b);
    MayPointsTo(q,a);
    MayPointsTo(a,m);
    MayPointsTo(b,m);
    MustPointsTo(e,m);
    MustPointsTo(r,a);
	
	
	   
    q = &e;
    MustPointsTo(q,e);
    MayPointsTo(a,m);
    MayPointsTo(b,m);
    MustPointsTo(e,m);
    MustPointsTo(r,a);
}
