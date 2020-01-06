#include <iostream>
#include <cmath>

using namespace std;

bool isPeculiar(int number){
    int squareRoot = static_cast<int>(sqrt(number));
    if(squareRoot * squareRoot == number){
        int sum = 0;
        for(int i = 1;;i++){
            sum += i;
            if(sum == number){
                return true;
            }
        }
    }else{
        return false;
    }
}

int main(){
    for(int i = 32767;;i++){
        if(isPeculiar(i)){
            cout << i << endl;
            break;
        }
    }
}
