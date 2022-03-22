#include <vector>
#include <iostream>
#include <string>
#include <sstream>
#include <fstream>

class Convert
{
	public:
		std::string		path;
		std::ifstream	stream;
	
	Convert(std::string path) : path(path) {}
	~Convert() {}
	public:
	
	void read()
	{
		std::string	line;
		
		stream.open(path.c_str());
		stream.exceptions(std::ifstream::badbit);
		if (!stream.is_open())
			throw std::ifstream::failure("Open configuration file failed");
		while (getline(stream, line))
		{
			std::cout << line << std::endl;
		}
	}
};

int main(int argc, char **argv)
{
	if (argc <= 1)
	{
		std::cout << "convert - no argument" << std::endl;
		return (1);
	}
	else if (argc > 3)
	{
		std::cout << "convert - just one argument is allowed" << std::endl;
		return (1);
	}

	Convert		converter(argv[1]);

	converter.read();

	return (0);
}