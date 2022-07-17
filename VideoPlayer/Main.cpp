#include<qmessagebox.h>
#include<cstdlib>
int main(){
    QMessageBox::about(0,"mbox","new to qt hah");
    ::system("echo %ENV1%");
    return 0;
}