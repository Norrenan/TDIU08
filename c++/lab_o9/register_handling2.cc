#include "register_handling2.h"
#include "hero_handling.h"
#include <vector>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <string>
#include <algorithm>
#include <sstream>

using namespace std;

void write_hero(Register_Type & Heroes,
		string const & file_name)
{
  ofstream hero_file(file_name, ios::out);
 
  for(int i{}; i <  static_cast<int>(Heroes.size()); i++)
  {
    hero_file << setw(11) << left << Heroes.at(i).name;
    hero_file <<setw(12) << Heroes.at(i).birthdate;
    hero_file << setw(8) << Heroes.at(i).weight;
    hero_file <<setw (12) << Heroes.at(i).hair;

    for(int k{}; k < static_cast<int>(Heroes.at(i).interests.size()); k++)
    {
      hero_file << setw(3) << right << Heroes.at(i).interests.at(k);
    }
    
    hero_file << endl;
  }
  hero_file.close();
}

bool operator<(Hero_Type const & lhs,
	       Hero_Type const & rhs)
{
  if (lhs.name < rhs.name)
  {
    return true;
  }
  else
  {
    return false;
  }
}

void sorting(Register_Type & heroes)
{
  for (Hero_Type & hero : heroes)
  {
    sort(begin(hero.interests), end(hero.interests));
  }
  sort(begin(heroes), end(heroes));

}



Register_Type read_file(fstream & hero_file)
{
  Hero_Type hero{};
  Register_Type heroes;

  while (read_hero(hero_file, hero)) // i read_hero så sparas även en hjälte
  {
    heroes.push_back(hero);
    hero.interests.clear(); //utan denna så sparas intressen från föregående, no bueno
  }
  
  return heroes;
}


void print_heroes (Register_Type const & match_heroes) //skriver ut hjältar
{
   cout << fixed << setprecision(2);

  for(int i{}; i <  static_cast<int>(match_heroes.size()); i++)
  {
    cout << setw(11) << left << match_heroes.at(i).name;
    cout << setw(12) << match_heroes.at(i).birthdate;
    cout << setw(8) << match_heroes.at(i).weight;
    cout << setw (12) << match_heroes.at(i).hair;

    for(int k{}; k < static_cast<int>(match_heroes.at(i).interests.size()); k++)
    {
      cout << setw(3) << right << match_heroes.at(i).interests.at(k);
    }    

    cout << endl;

  }
}
