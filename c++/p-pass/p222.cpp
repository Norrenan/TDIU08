#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

//////////////////////UP///////////////////////
void print_top(int const width)
{
  int i{1};
  
  cout << '+' << '-';
  while (i < width)
  {
    cout << '-';
    i++;
  }
  
  cout << '+';

}

void print_rectangle(int const height,
		     int const  width)
{
  print_top(width);
  cout << endl;  
 
  int k {1};

  for (int i{}; i < height; i++)
  {
    cout << '|';
      
      for (int j{}; j < width; j++)
      {
	
	if (k % 4 == 0)
	{
	  cout << 'w';
	}
	else
	{
	  cout << ' ';
	}
	k++;
      }
    cout << '|' << endl;
  }
  print_top(width);
}


/////////////////////MAIN//////////////////////  
int main()
{
  int height, width {};

  cout << "Mata in rektangelns höjd och bredd: ";
  cin >> height >> width;

  print_rectangle(height, width);
  
  return 0;
}
