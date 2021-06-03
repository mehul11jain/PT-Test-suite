#include <stdio.h>
#include "PointsToCheck.h"

int **p, **q, **r, *x, *y, *z ,a ,b, c;
int main(){
    p = &x;
    MustPointsTo(p,x);    
    // DoesNotPointsTo(p,y);
    // DoesNotPointsTo(p,z);
    


    while(a > 0){

        *p = &b;
        MayPointsTo(p,x);
        MayPointsTo(p,y);
        // DoesNotPointsTo(p,z);
        MayPointsTo(q,x);
        
        MayPointsTo(x,b);
        MayPointsTo(y,b);
        MayPointsTo(y,a);
     
        while(b > 0){
        //below info is obtained by taking meet of values obtained from end of loop and from the entry of this loop.
//            MayPointsTo(q,x);
//            MayPointsTo(q,y);
//            MustPointsTo(x,b);
//            MayPointsTo(y,a);
//            MayPointsTo(y,b);

            x = &b;
            MustPointsTo(x,b);
            MayPointsTo(p,x);
            MayPointsTo(p,y);            
            MayPointsTo(q,x);
            MayPointsTo(q,y);                        
            MayPointsTo(y,b);
            MayPointsTo(y,a);

            y = &a;
            MustPointsTo(x,b);
            MustPointsTo(y,a);
            MayPointsTo(p,x);
            MayPointsTo(p,y);            
            MayPointsTo(q,x);
            MayPointsTo(q,y);                                    

            q = &y;
            MustPointsTo(q,y);
            MustPointsTo(x,b);
            MustPointsTo(y,a);
            MayPointsTo(p,x);
            MayPointsTo(p,y);                                                            


            b--;
        }


        p = &y;
        MustPointsTo(p,y);
		//info from end of above loop:
        MayPointsTo(x,b);
        MayPointsTo(y,a);
        MayPointsTo(y,b);
        MayPointsTo(q,x);
        MayPointsTo(q,y);
        
        
        q = &x;
        MustPointsTo(q,x); 
        MustPointsTo(p,y);		
        MayPointsTo(x,b);
        MayPointsTo(y,a);
        MayPointsTo(y,b);       
		//r points to nothing here!

        a--;
    }

    if(a > -1){
    	//info from the end of while loop:
		//        MayPointsTo(p,x);
		//        MayPointsTo(q,x);
        *p = &c;
        MayPointsTo(p,x);
        MayPointsTo(p,y);        
        MayPointsTo(x,b);
        MayPointsTo(x,c);        
        MayPointsTo(y,a);
        MayPointsTo(y,b);
        MayPointsTo(y,c);
        MayPointsTo(q,x);                

    }   
    else{
    	//info from the end of while loop:
		//        MayPointsTo(p,x);
		//        MayPointsTo(q,x);
        *p = &b;
        MayPointsTo(p,x);
        MayPointsTo(p,y);                        
        MayPointsTo(x,b);
        MayPointsTo(y,a);
        MayPointsTo(q,x);
        MayPointsTo(y,b);
    }

	// Info at the exit of above block:
//    MayPointsTo(p,x);
//    MayPointsTo(q,x);
//    MayPointsTo(x,a);

    x = &a;
    //do we need to check the following 2??
    MayPointsTo(p,x);
    MayPointsTo(p,y);    
    MayPointsTo(y,c);
    MayPointsTo(q,x);
    MayPointsTo(y,b);
    MayPointsTo(y,a);
    MustPointsTo(x,a);
    
    y = &b;
    MustPointsTo(y,b);
    MayPointsTo(q,x);
    MayPointsTo(p,x);
    MayPointsTo(p,y);
    MustPointsTo(x,a);

    return 0;
}
