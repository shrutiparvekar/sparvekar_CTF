#include <iostream>
using namespace std;

int main(){
    string input_key;
    string flag = "ex7uTWNjqfRTqz1dyPv";
    // Secret 1
    string secret = "CtFplAYeR";
    cout<<"Enter the password of labuser:";
    cin>>input_key;
    if (input_key == secret){
        // Secret 2
        secret = "rWkDF3TFlINMe";
        cout<<"Enter the decryption key you found: ";
        cin>>input_key;
        if(secret==input_key)
                cout<<"Congratulations! The final flag is "<<flag<<endl;
        else
                cout<<"This binary bomb uses a special algorithm to decrypt the final flag. Your task is to find a key required for this decryption. The key is hidden in the only human readable file inside another directory in the current folder!"<<endl;
    }
    else
            cout<<"Hello Player, enter the secret values you found so far and this binary bomb will reveal the final flag for you!"<<endl;
    return 0;
}
