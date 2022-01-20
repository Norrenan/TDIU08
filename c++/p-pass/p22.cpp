#include <iostream>
#include <iomanip>

using namespace std;

//////////////////////UP///////////////////////

void print_barr(int const size) //barr som på svenska
{
  for(int i{0}; i < size; i++)
  {
    cout << '-';
  }
}

void print_tree (int const size)
{
  
  for (int i{0}; i < size; i++)
  {
    cout << setw(size-i); //detta är för hur många vita tecken som ska placeras på vänster sida
    print_barr(i); //skriv ut barr på vänster sida
    cout << '|'; //skriv ut stommen av träder
    print_barr(i); //skriv ut barr på höger sida
    cout << endl; //radbryt inför nästa sektion av trädet
  }
  cout << setw(size) << '|' << endl; //denna kodsnutt är för att se till så att sista stommen placeras rätt
 
}

double print_forest()
{
  int size{};
  int antal{};
  double medel{};
  while (cin >> size) //oändlig loop tills man skriver ctrl-d
  {
    print_tree(size+1);   //skriv ut ett träd i taget, +1 så att bredden med vita tecken tar
    medel= medel + size;  //hänsyn till stommens utskrift etc.
    antal++;
  }
  
  medel = medel/antal;  //beräkning av medel
  
  return medel;
 
}

/////////////////////MAIN//////////////////////  
int main()
{
  cout << fixed << setprecision(1); //skriv alltid ut ett decimaltal
  
  double medel{};

  cout << "Mata in granstorlekar: ";
  
  medel = print_forest();

  cout << "Medelgranstorleken var " << medel;
  
  return 0;
}
