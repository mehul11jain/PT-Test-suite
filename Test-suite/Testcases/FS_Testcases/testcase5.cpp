#include <stdio.h>
#include "PointsToCheck.h"
int **p, **q;
int *x, *y;
int a, b, c, d;
int main()
{

    int e;
    p = &x;
    MustPointsTo(p,x);
    q = &y;
    MustPointsTo(q,y);
    d = 40;

    if (b)
    {
        *q = &a;
        MustPointsTo(y,a);
        x = &b;
        MustPointsTo(x,b);
    }
    else
    {
        *p = &a;
        MustPointsTo(x,a);
        y = &b;
        MustPointsTo(y,b);
    }
// info from exit of if-else block
//    MayPointsTo(x,a);
//    MayPointsTo(x,b);
//    MayPointsTo(y,a);
//    MayPointsTo(y,b);
    
    x = y;
    MayPointsTo(x,a);
    MayPointsTo(x,b);
    MayPointsTo(y,a);
    MayPointsTo(y,b);
    
    a = b;
    **p = 30;
    *x = 40;
    printf("%d", e);
}
