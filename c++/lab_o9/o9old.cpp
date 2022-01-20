#include <iomanip>
#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>

using namespace std;

struct Hero_Type
{
  string name{};
  int birthdate{};
  double weight{};
  string hair{};
  //vector <int> interests{}; //behöver fixas
};

struct Register_Type
{
  vector<Hero_Type> Heroes;
};
bool lookup_name(Hero_Type new_hero)
{



  
  return true;
}

void hero_register()
{
  Hero_Type hero; 
  
 
  while (true)
  {
    cout << "Enter hero information:" << endl;
    cin >> hero.name;
    cin >> hero.birthdate;
    cin >> hero.weight;
    cin >> hero.hair;
    // cin >> hero.interests;

    if (lookup_name(hero) == true)  //FEEEEEL Just nu iaf. stegra igenom array för att se
      //om namn redan finns.
    //kolla om samma namn finns i filen redan, om inte break; (bool UP?)
	       {
		 cout << "Hero already in register. ";
	       }
	      
//läs in all data
      else
      {
	break;
      }

  }
  //lägg i filen
  cout << "The hero was added to the register on file " << argv[1]; //this shit broken

}

void hero_finder()
{
  int interests{};
  cout << "Enter your interests (at least one between 1 and 15): ";
  while (true)
  {
    cin >> interests;

    if (interests > 0 and interests < 16)
    {
      break;
    }
    
  }
  

}

void print_menu()
{
  cout << "1) Add new hero to register file" << endl
       << "2) Find matching heroes" << endl
       << "3) Quit program" << endl;
}
  

void menu_selection (int & selection)
{
    print_menu();
   
    while(true)
    {
       cout << "Select: ";      cin >> selection;
      
      if ((selection > 0) and (selection < 4))
      {
	break;		   
      }
    }
}

int main(int argc, char*argv[])
{
  int selection{};
  string file2write2{};
 
  if (argc < 2 or argc > 2)
  {
    cout << "Incorrect number of arguments!" << endl
	 << "Usage: " << argv[0] << " REGISTERFILE";
  }
  else
  {
    
    ifstream hero_file{argv[1]};

    //ladda ner alla heroes i en vector/array
  
  
  cout << "Welcome to Hero Matchmaker 3000!" << endl;
  while (true)
  {
    menu_selection(selection);

    if (selection == 1)
    {
      hero_register();
    }

    else if (selection == 2)
    {
      hero_finder();
    }

    else if (selection == 3)
    {
      break;
    }
 
  }

  cout << "Terminating Hero Matchmaker 3000!";
  }
  return 0;
}
