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
    MustPointsTo(p,x);
    d = 40;

    if (b)
    {
        *q = &a;
        MustPointsTo(y,a);
        MustPointsTo(q,y);
        MustPointsTo(p,x);
        x = &b;
        MustPointsTo(x,b);
        MustPointsTo(y,a);
        MustPointsTo(q,y);
        MustPointsTo(p,x);
    }
    else
    {
        *p = &a;
        MustPointsTo(x,a);        
        MustPointsTo(q,y);
        MustPointsTo(p,x);
        y = &b;
        MustPointsTo(y,b);
        MustPointsTo(x,a);        
        MustPointsTo(q,y);
        MustPointsTo(p,x);
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
    MustPointsTo(q,y);
    MustPointsTo(p,x);
    
    a = b;
    **p = 30;
    *x = 40;
    printf("%d", e);
}
