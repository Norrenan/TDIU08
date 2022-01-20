#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>

using namespace std;

//////////////////////////UP///////////////////////////////////

//räkna ut n-faktultet
int calc_fak(int & n) 
{
  int summa {1};
  for (int i = 1; i < (n+1); i++)
  {
    summa = summa*i;   
  }
  return summa;
}	      
//multiplicerar texten och lagrar i en ny variabel, som skickas tillbaka
string multi_text(string const & text,
		  int & multiplier)
{
  string multipli{};
  for (int i {0}; i < multiplier; i++)
  {
    multipli = (multipli + text);
  }
  return multipli;
}
//klassisk swap
void swap(int & a,
	  double & b)
{
  double temp{b};
  b = a;
  a = static_cast<int>(ceil(temp));
}
//omvandlar värden på string, man kan använda .size() ist för .length().
void string_length(string const & text_1,
		   string const & text_2,
		   int & total_length,
		   double & mean_length)
{
  total_length = text_1.length() + text_2.length();
  mean_length = static_cast<double>(total_length) / 2;
}


void choice_1(int val)
{
  int n;
  cout << "Mata in ett heltal: ";
  cin >> n;
  cout << "Fakulteten av " << n << " är ";
  cout << calc_fak(n)<< endl;
}

void choice_2(int val)
{
  string text;
  int multiplier;
  cout << "Mata in en text och ett heltal: ";
  cin >> text >> multiplier;
  cout << "Den multiplicerade texten är ";
  cout << multi_text(text, multiplier) << endl;
}
void choice_3(int val)
{
  int a;
  double b;
    
  cout << "Mata in ett heltal och ett flyttal: ";
  cin >> a >> b;
  cout << "Heltalets värde är nu ";
  swap(a, b);
  cout << a << endl;
  cout << "Flyttalets värde är nu " << fixed << setprecision(1) << b << endl;
}
void choice_4(int val)
{
  string text_1;
  string text_2;
  int total_length;
  double mean_length;

  cout << "Mata in två ord: ";
  cin >> text_1 >> text_2;
  string_length(text_1, text_2, total_length, mean_length);
  cout << "Totallängd: " << total_length << endl;
  cout << "Medellängd: " << fixed <<setprecision(1) << mean_length << endl;
}

void menu(int & val)
{
  while (true)
  {
    cout << "1. Beräkna N-fakultet." << endl <<
      "2. Multiplicera en sträng." << endl << 
      "3. Byta värden på ett heltal och ett flyttal." << endl <<
      "4. Beräkna totala längden samt medellängden på två strängar." << endl <<
      "5. Avsluta programmet." << endl <<
      "Val: ";
    cin >> val;
    if ((val < 1) or (val > 5))
    {
      cout << "Fel val!" << endl;
    }
    else
    {
      break;
    }
  }
}

//////////////////////////HP////////////////////////////////////////

int main()
{
  int val;
  
  cout << "Välkommen till huvudmenyn!" << endl;
  while (true)
  {
    menu(val);
    
    if (val == 1)
    {
      choice_1(val);
    }
    else if (val == 2)
    {
      choice_2(val);
    }
    else if (val == 3)
    {
      choice_3(val);
    }
    else if (val == 4)
    {
      choice_4(val);
    }
    else if (val == 5)
    {
      break;
    }
  }
  cout << "Ha en bra dag!";

  return 0;
}
