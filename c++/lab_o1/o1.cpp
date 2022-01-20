#include <iostream>
#include <cctype>
#include <iomanip>
#include <string> //la till biblotek från komplettering

using namespace std;

int main() {
  //sets the max digits to 2 digits
  cout << fixed << setprecision(2);
  //DEL 1
  int start {};
  int slut {};
  double Kelvin {};
  double Fahrenheit, Reaumur {};
  string S;
  //DEL 2
  char mander;
  int alfa {};
  int siffer {};
  int vita {};	
  //DEL 3
  int antal_ord {};
  double medellangd {};
  string kort_ord;
  string langt_ord;
  int min_length {100}; 
  int max_length {};
  
  cout << "Del 1: Temperaturtabell" << endl;
  do  // kan göras med en while loop också, med en if sats och en break
  {
    cout << "Ange startvärde: ";
    cin >> start;
		
    if (start < -273)
    {
      cout << "Felaktigt startvärde!" << endl;
    }

  } while (start < -273);


  do
  { 
    cout << "Ange slutvärde: ";
    cin >> slut;
		
    if (slut < start)
    {
      cout << "Felaktigt slutvärde!" << endl;
    }
	
  } while (slut < start);
	
  cout << "Celsius   Kelvin   Fahrenheit   Reaumur" << endl;
  cout << "---------------------------------------" << endl;
  

  for (start; start <= slut; ++start)
  {
		
    Kelvin = start + 273.15;
    Fahrenheit = start * 1.8 + 32;
    Reaumur = start * 0.8;
    cout << right <<setw(7) << start;
    cout << setw(9) << Kelvin;
    cout << setw(13) <<Fahrenheit;
    cout << setw(10) <<Reaumur << endl;
  }
  cout << "---------------------------------------" << endl<< endl;
  cin.ignore(100,'\n');   	


  cout << "Del 2: Teckenhantering" << endl;
  
  for (int i{}; i < 10; ++i)
  {

    cin.get(mander);
 
    if (isdigit(mander))
    {
      siffer++;
    }
    if (isalpha(mander))
    {
      alfa++;
    }
    if (isspace(mander))
    {
      vita++;
    }

  }
  cin.ignore(1000,'\n');
  cout << "Texten innehöll:" << endl;
  cout << "Alfabetiska tecken:" << alfa << endl;
  cout << "Siffertecken......:" << siffer << endl;
  cout << "Vita tecken.......:" << vita << endl << endl;

	
  cout << "Del 3: Ordhantering" << endl;
  cout << "Mata in en text:" << endl;

  while (cin >> S)
  {
    if (S.length() > max_length)
    {
      max_length = S.length();
      langt_ord = S;
    }
    
    if (S.length() < min_length)
    {
      min_length = S.length();
      kort_ord = S;
    }
    
    medellangd+=S.length();
    antal_ord++;
      
  }

  cout << endl;
  if (antal_ord == 0)
  {
    cout << "Inga ord matades in.";
  }
  else {
    medellangd = (medellangd / antal_ord);
    
    cout << "Texten innehöll " << antal_ord << " ord." << endl;
    cout << "Det kortaste ordet var " << '"' << kort_ord << '"' << " med "
	 << kort_ord.length() << " tecken." << endl;
    cout << "Det längsta ordet var " << '"' << langt_ord << '"' << " med "
	 << langt_ord.length() << " tecken." << endl;
    cout << "Medelordlängden var "<< fixed << setprecision(1) << medellangd << " tecken.";
  }
  return 0;
}




