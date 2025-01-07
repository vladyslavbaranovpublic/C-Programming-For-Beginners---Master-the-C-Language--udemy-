#include <iostream>
using namespace std;
int main()
{
	float val1, val2, val3;
	cout	<< "Enter Value 1: ";
	cin		>> val1;
	cout	<< "Enter Value 2: ";
	cin		>> val2;
	cout << "Enter Value 3: ";
	cin >> val3;
	cout << "Order: " << (val1 < val2 && val1 < val3 ? val1 : val2) << endl;

	return 0;
} 
