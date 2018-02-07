#include <iostream>
#include <fstream>

using namespace std;

int main(){
	int wsno;
	system("xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //' > ws.txt");

	fstream x;
	char ws;

	x.open("ws.txt", ios::in);
	x >> ws;

	ws -= 47;

	// assign tag names
	switch(ws){
		case 1:
			cout<<"www";
			break;
		case 2:
			cout<<"irc";
			break;
		case 3:
			cout<<"code";
			break;
		case 4:
			cout<<"music";
			break;
		case 5:
			cout<<"misc";
			break;
		default:
			cout<<"hidden";
	}

	x.close();

	return 0;
}
