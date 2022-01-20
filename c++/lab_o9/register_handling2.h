#ifndef REGISTER_HANDLING_H
#define REGISTER_HANDLING_H

#include "hero_handling.h"
#include <vector>
#include <string>

using Register_Type = vector<Hero_Type>;

bool read_hero(fstream   & hero_file,
	       Hero_Type & hero);

bool new_hero(Register_Type & Heroes,
	      std::string const & file_name);

Register_Type read_file(fstream & hero_file);

Register_Type search_heroes(Register_Type const & heroes,
			    vector<int>       const & numb);

void print_heroes (Register_Type const & match_heroes);

//vector<int> load_array_interests();

#endif //REGISTER_HANDLING_H
