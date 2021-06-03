#include "PointsToCheck.h"
#include <stdio.h>
int* a;
int* b;
int**c;

int x,y;

int *w;
int **s;
int u;
int main(){


    a=&x;
    MustPointsTo(a,x);
    //DoesNotPointsTo(a,y);
    //DoesNotPointsTo(a,u);
    
    b=&y;
    MustPointsTo(b,y);
    MustPointsTo(a,x);
    //DoesNotPointsTo(b,x);
    //DoesNotPointsTo(b,u);
    
    c=&a;
    MustPointsTo(c,a);
    MustPointsTo(b,y);
    MustPointsTo(a,x);
    //DoesNotPointsTo(c,b);
    //DoesNotPointsTo(c,w);


    s = c;
    MustPointsTo(s,a);
    MustPointsTo(c,a);
    MustPointsTo(b,y);
    MustPointsTo(a,x);
    //DoesNotPointsTo(s,b);
    //DoesNotPointsTo(s,w);
    
    s=&w;
    MustPointsTo(s,w);
    MustPointsTo(c,a);
    MustPointsTo(b,y);
    MustPointsTo(a,x);
    //DoesNotPointsTo(s,a);
    //DoesNotPointsTo(s,b);
    
    w=&u;
    MustPointsTo(w,u);
    MustPointsTo(s,w);
    MustPointsTo(c,a);
    MustPointsTo(b,y);
    MustPointsTo(a,x);
    //DoesNotPointsTo(w,x);
    //DoesNotPointsTo(w,y);


    u = 9;

    if(x==5)
    {
    	*c = &y;
        MustPointsTo(a,y);
        MustPointsTo(w,u);
        MustPointsTo(s,w);
        MustPointsTo(c,a);
        MustPointsTo(b,y);
        //DoesNotPointsTo(a,x);
        //DoesNotPointsTo(a,u);

        s=&a;
        MustPointsTo(s,a);
        MustPointsTo(c,a);
        MustPointsTo(b,y);
        MustPointsTo(a,y);
        MustPointsTo(w,u);
        //DoesNotPointsTo(s,b);
        //DoesNotPointsTo(s,w);
    }
    else
    {
		b =&x;
        MustPointsTo(b,x);
        MustPointsTo(w,u);
        MustPointsTo(s,w);
        MustPointsTo(c,a);        
        MustPointsTo(a,x);
        //DoesNotPointsTo(b,y);
        //DoesNotPointsTo(b,u);

        s=&b;
        MustPointsTo(s,b);
        MustPointsTo(b,x);
        MustPointsTo(w,u);        
        MustPointsTo(c,a);        
        MustPointsTo(a,x);
        //DoesNotPointsTo(s,a);
        //DoesNotPointsTo(s,w);
    }
    //------------------------------------------------------------------------------------------
//    MayPointsTo(a,x);
//    MayPointsTo(a,y);
//    

//	MayPointsTo(b,x);
//    MayPointsTo(b,y);
//    
//    MayPointsTo(s,a);
//    MayPointsTo(s,b);
//    DoesNotPointsTo(s,w);
//    //MayPointsTo(s,w) no longer exists as atleast one of if/else block is traversed.
//    
//    
    
    //--------------------------------------------------------------------------------------------
    while(u>10)
    {

		*s = &u;
		//info available from the end of if-else block
		MayPointsTo(a,x);
		MayPointsTo(a,y);
		MayPointsTo(b,x);
		MayPointsTo(b,y);
		MayPointsTo(s,a);
		MayPointsTo(s,b);
        MustPointsTo(c,a);
        MustPointsTo(w,u);
		//DoesNotPointsTo(s,w);
		//info obtained by considering the statement *s=&u;
        MayPointsTo(a,u);
        MayPointsTo(b,u);
        
		
		u--;
    }    
    return 0;

}
