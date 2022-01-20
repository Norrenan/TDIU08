#include <iostream>
#include <iomanip>

using namespace std;

//--------------------UP----------------------//
int calc_how_many(int const number_of_buns,
		  int const height,
		  int const width)
{
  int tot{};
  tot = height*width;

  if (tot >=  number_of_buns)
  {
    return number_of_buns;
  }
  else
  {
    return tot; 
  }
}

int calc_buns(int const dough_weight,
	      int const weight_per_bun)
{
  int tot{};
  tot = static_cast<int>(dough_weight/weight_per_bun); 
  return tot; 
}

void calculate_bun_stats(int const & dough_weight,
			 int const & weight_per_bun,
			 int const & tray_height,
			 int const & tray_width,
			 int       & number_of_buns,
			 int       & buns_on_tray,
			 int       & dough_waste)
{
  number_of_buns = calc_buns(dough_weight, weight_per_bun);
  
  buns_on_tray = calc_how_many(number_of_buns, tray_height, tray_width);
 
  dough_waste = static_cast<int>(dough_weight - (number_of_buns*weight_per_bun));
}


void more_trays(int const buns_on_tray,
		int const number_of_buns)
{
  cout <<"Du behöver ";
  if (buns_on_tray >= number_of_buns)
  {
    cout << "inte ";
  }
  cout << "fler bakplåtar.";
}

//-------------------MAIN---------------------//

int main()
{
  int dough_weight{};
  int weight_per_bun{};
  int tray_height{};
  int tray_width{};
  int number_of_buns{};
  int buns_on_tray{};
  int dough_waste{};
  char c{};

  cout << "Mata in degvikt: ";
  cin >> dough_weight >> c;
  cout <<"Mata in bullvikt: ";
  cin >> weight_per_bun >> c;
  cout << "Mata in bakplåtsstorlek: ";
  cin >> tray_height >> c >> tray_width;
  
  calculate_bun_stats(dough_weight,weight_per_bun, tray_height,tray_width, number_of_buns,buns_on_tray, dough_waste);

  cout << dough_waste << 'g' << " deg för mycket." << endl;
  cout << buns_on_tray << " av " << number_of_buns << " bullar får plats på bakplåten." << endl;
  
  more_trays(buns_on_tray, number_of_buns);

  return 0;
}
