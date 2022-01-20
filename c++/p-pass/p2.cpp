#include <iostream>
#include <string>
#include <iomanip>

using namespace std;


//////////////////////UP///////////////////////
void print_string_reverse (string & S,
			   int const width)
{
  
 for (int i{width}; i > 0; i--)
      {
	cout << S.at(i-1);
      }
  
}

 void print_string (string & S,
	       int const width)
  {
   
      for (int i{}; i < width; i++)
      {
	cout << S.at(i);
      }

  }

void load_string(string & S,
		 int  const width,
		 int const height,
		 char const ch_1,
		 char const ch_2)
{
  int multi {};

  multi = width * height;
  
  for( int i {}; i < multi; i++)
  {

    if ( i % 2 ==0)
    {
      S = S + ch_1;
    }
    else
    {
      S = S + ch_2;
    }
   
  }

}

void print_alpha(int const width)
{
  cout << "   ";
  for (int T{}; T < width; T++)
  {
    cout << static_cast<char>(T+65);
  }
}



void print_chess_board (int const width,
			int const height,
			char const ch_1,
			char const ch_2)
{
  string S{};

  load_string(S, width, height, ch_1, ch_2);

  for (int i{1}; i < height+1; i++)
     {
      cout << i;
      if (i <= 9)
      {
	cout << "  ";
      }

      else if (i < 100)
      {
	cout << " ";
      }
      
      
      if ((i-1) % 2 == 0){
      print_string(S, width);
      
      }
      else
      {
      print_string_reverse(S, width);
     
      }
      cout << endl;
     }
  	 print_alpha(width);  
  
        }

/////////////////////MAIN//////////////////////
  int main() {

  int width {};
  int height{};

  char ch_1 {};
  char ch_2 {};

 
  
  cout << "Mata in bredd och höjd: ";
  cin >> width >> height;
  cout << "Mata in tecknen ditt bräde ska bestå av: ";
  cin >> ch_1 >> ch_2;

  print_chess_board(width, height, ch_1, ch_2);
 
 
  
  

  return 0;
}
