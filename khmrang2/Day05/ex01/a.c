#include <stdio.h>

int gcd(int a, int b){
        int t2;
        if(a<b){
                t2=a;
                a=b;
                b=t2;
        }
        if (a%b==0)
                return b;
        else{
                a=b;
                b=a%b;
                return gcd(a,b);
        }
}



int main(){
                printf("gcd(10,15) = %d\n", gcd(10,15));
                printf("gcd(125,13) = %d\n", gcd(125,13));
                printf("gcd(625,225) = %d\n", gcd(625,225));
                printf("gcd(6840,324) = %d\n", gcd(6840,324));
}