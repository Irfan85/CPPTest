#include <iostream>
#include <string>
#include <bits/stdc++.h>

using namespace std;

int decryptMonth(char c){
    return c-65 + 1;
}

// Just converting to string for demonstration.
string decryptDate(char c1, char c2){
    int firstDigit = c1 - 81 + 1;
    int secondDigit = c2 - 81 + 1;

    int dateInt = firstDigit * 10 + secondDigit;

    stringstream mySSteam;
    mySSteam << dateInt;
    string date = mySSteam.str();

    return date;
}

int decryptYear(char c){
    return 1995 + (c - 65 + 1);
}

int main(){
    string input;
    cin >> input;

    char chars[input.length()];
    strcpy(chars, input.c_str());

    cout << decryptDate(chars[1], chars[2]) << "/" << decryptMonth(chars[0]) << "/" << decryptYear(chars[3]);

    return 0;
}


