#include "PointsToCheck.h"
#include <stdio.h>

int ***p,**q, **a, **b, *c, *m,*n,d;
int main(){

    m = &d;
    MustPointsTo(m,d);

    a = &c;
    MustPointsTo(a,c);
    MustPointsTo(m,d);
    
    b = &c;
    MustPointsTo(b,c);
    MustPointsTo(a,c);
    MustPointsTo(m,d);

    if(a)
    {
        p = &a;        
        MustPointsTo(p,a);
        MustPointsTo(b,c);
        MustPointsTo(a,c);
        MustPointsTo(m,d);
        //DoesNotPointsTo(p,b);

        q = &c;
        MustPointsTo(q,c);
        MustPointsTo(p,a);
        MustPointsTo(b,c);
        MustPointsTo(a,c);
        MustPointsTo(m,d);
        //DoesNotPointsTo(q,m);
        //DoesNotPointsTo(q,n);
    }
    else
    {
        p = &b;
        MustPointsTo(p,b);
        MustPointsTo(b,c);
        MustPointsTo(a,c);
        MustPointsTo(m,d);
        //DoesNotPointsTo(p,a);

        q = &c;
        MustPointsTo(q,c);
        MustPointsTo(p,b);
        MustPointsTo(b,c);
        MustPointsTo(a,c);
        MustPointsTo(m,d);
        //DoesNotPointsTo(q,m);
        //DoesNotPointsTo(q,n);

    }



	*a = m;
    MustPointsTo(c,d);	
    MayPointsTo(p,a);
    MayPointsTo(p,b);
    MustPointsTo(q,c);
    MustPointsTo(b,c);
    MustPointsTo(a,c);
    MustPointsTo(m,d);
    //DoesNotPointsTo(q,m);
    //DoesNotPointsTo(q,n);

	

	n = *b;
	MustPointsTo(n,d);
    MustPointsTo(c,d);	
    MayPointsTo(p,a);
    MayPointsTo(p,b);
    MustPointsTo(q,c);
    MustPointsTo(b,c);
    MustPointsTo(a,c);
    MustPointsTo(m,d);
	
	*p = &n;
	MayPointsTo(a,n);
	MayPointsTo(b,n);
    MayPointsTo(a,c);
	MayPointsTo(b,c);
    MustPointsTo(m,d);
    MustPointsTo(n,d);
    MustPointsTo(c,d);	
    MayPointsTo(p,a);
    MayPointsTo(p,b);
    MustPointsTo(q,c);
    //DoesNotPointsTo(a,m);
    //DoesNotPointsTo(b,m);
}

