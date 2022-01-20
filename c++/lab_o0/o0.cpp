#include <iostream>
#include <iomanip>
using namespace std;

int main() 
{

  int I;
  double D;
  char mander; 
  string S;
	

  cout << "Skriv in ett heltal: ";
  cin >> I;
  cin.ignore(1000,'\n');
  cout << "Du skrev in heltalet: " << I << endl << endl;


  cout << "Skriv in fem heltal: ";
  cin >> I;
  cout << "Du skrev in heltalen: ";
  cout << I << " ";
  cin >> I;
  cout << I << " ";
  cin >> I;
  cout << I << " ";
  cin >> I;
  cout << I << " ";
  cin >> I;
  cin.ignore(100,'\n');
  cout << I << endl << endl;
	

  cout << "Skriv in ett flyttal: ";
  cin >> D;
  cin.ignore(100,'\n');
  cout << "Du skrev in flyttalet: "<< fixed << setprecision(3)
       << D << endl << endl;


  cout << "Skriv in ett heltal och ett flyttal: ";
  cin >> I >> D;
  cin.ignore(100,'\n');
  cout << "Du skrev in heltalet:"  << setw(10) << right << I << endl; 
  cout << "Du skrev in flyttalet:"  << setw(9) << right
       << fixed << setprecision(4)  << D << endl << endl; 


  cout << "Skriv in ett flyttal och ett heltal: ";
  cin >> D >> I;
  cin.ignore(100,'\n');
  cout << "Du skrev in heltalet:" << setfill('-') << setw(10) << I << endl; 
  cout << "Du skrev in flyttalet:" << setfill('-') << setw(9)
       << fixed << setprecision(4) << D << endl << endl;           


  cout << "Skriv in ett tecken: ";
  cin >> mander;
  cin.ignore(100,'\n');
  cout << "Du skrev in tecknet: " << mander << endl << endl;


  cout << "Skriv in ett ord: ";
  cin >> S;
  cin.ignore(100,'\n');
  cout << "Du skrev in ordet: " << S << endl << endl;


  cout << "Skriv in ett heltal och ett ord: ";
  cin >> I >> S;
  cin.ignore(100,'\n');
  cout << "Du skrev in heltalet |" << I << "| och ordet |"
       << S << "|." << endl << endl;


  cout << "Skriv in ett tecken och ett ord: ";
  cin >> mander >> S;
  cin.ignore(100,'\n');
  cout << "Du skrev in " << '"' << S << '"' << " och "
       << '"' <<  mander << '"' << '.' << endl << endl;


  cout << "Skriv in ett ord och ett tecken: ";
  cin >> S >> mander;
  cin.ignore(100,'\n');
  cout << "Du skrev in " << '"' << S << '"' << " och " << '"'
       << mander << '"' << '.' << endl << endl;


  cout << "Skriv in en textrad: ";
  getline(cin,S);
  cout << "Du skrev in " << '"'  << S << '"' << '.' << endl << endl;


  cout << "Skriv in en till rad text: ";
  getline(cin, S);
  cout << "Du skrev in " << '"'  << S << '"' << '.' << endl << endl;
	

  cout << "Skriv in en rad med tre ord: ";
  cin >> S;
  cout << "Du skrev in: ";
  cout << '"' << S << '"' << ", "; 
  cin >> S;
  cout << '"' << S << '"' << " och ";
  cin >> S;
  cin.ignore(100,'\n');
  cout << '"' << S << '"' << '.';

  return 0;
}

