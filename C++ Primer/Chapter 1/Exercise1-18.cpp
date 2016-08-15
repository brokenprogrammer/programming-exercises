#include <iostream>

/*
* C++ Primer Chapter 1
* Exercise 1.18
*
* Compile and run the program from this section giving it only equal values
* as input. Run it again giving it values in which no number is repeated.
*/
int main()
{

	int currVal = 0;
	int val = 0;

	if (std::cin >> currVal)
	{
		int cnt = 1;
		while (std::cin >> val)
		{
			if (val == currVal)
			{
				++cnt;
			} else {
				std::cout << currVal << " occurs " << cnt << " times" << std::endl;
				currVal = val;
				cnt = 1;
			}
		}
		std::cout << currVal << " occurs " << cnt << " times" << std::endl;
	}
	return 0;
}