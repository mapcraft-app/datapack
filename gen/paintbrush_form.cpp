#include <iostream>
#include <string>
#include <cstdlib>
#include <cmath>
#include <fstream>
#include <sstream>
#include <ftw.h>
#include <sys/stat.h>
#include <sys/types.h>
#define INV(x) x * -1

typedef struct	s_point
{
	int x1, y1, z1, x2, y2, z2;
}				t_point;

inline std::string itoa(int x)
{
	if (x == 0)
		return "";
	std::stringstream strstream;
	strstream << x;
	return strstream.str();
}

inline bool isInside(int x, int y, int z, t_point point)
{
	if ((x > point.x1 && x < point.x2)
		&& (y > point.y1 && y < point.y2)
		&& (z > point.z1 && z < point.z2))
		return true;
	return false; 
}

void cube(int width, std::string dir)
{
	std::string layerTemp, position, cloneCommand;
	int temp = std::floor(width / 2);
	int layer = 1;
	t_point point;

	std::string ssair(dir.c_str()), ssall(dir.c_str()), ssblock(dir.c_str());
	ssair += "/air.mcfunction"; ssall += "/all.mcfunction"; ssblock += "/block.mcfunction";
	std::fstream air(ssair.c_str(), std::fstream::out | std::fstream::trunc);
	std::fstream all(ssall.c_str(), std::fstream::out | std::fstream::trunc);
	std::fstream block(ssblock.c_str(), std::fstream::out | std::fstream::trunc);

	point.x1 = INV(temp);
	point.x2 = temp;
	point.y1 = INV(temp);
	point.y2 = temp;
	point.z1 = INV(temp);
	point.z2 = temp;

	for (int y = point.y1; y <= point.y2; y++)
	{
		layerTemp.clear(); layerTemp = "# "; layerTemp += itoa(layer++);
		air << layerTemp << std::endl;
		all << layerTemp << std::endl;
		block << layerTemp << std::endl;
		for (int z = point.z1; z <= point.z2; z++)
		{
			for (int x = point.x1; x <= point.x2; x++)
			{
				position.clear();
				position = "~" + itoa(x);
				position += " ~" + itoa(y);
				position += " ~" + itoa(z);
				position += " ";
				cloneCommand.clear();
				cloneCommand = "clone ";
				cloneCommand += (isInside(x, y, z, point)) ? "~ -63 ~ ~ -63 ~" : "~ -64 ~ ~ -64 ~";
				cloneCommand += " " + position + "replace force";
				air << "execute if block " << position << "#mapcraft:air run " << cloneCommand << std::endl;
				block << "execute unless block " << position << "#mapcraft:air run " << cloneCommand << std::endl;
				all << cloneCommand << std::endl;
			}
		}
	}
	air.close();
	all.close();
	block.close();
}

void diamond(int width, std::string dir)
{
	std::string layerTemp, position, cloneCommand;
	int temp = std::floor(width / 2), middle = std::ceil(static_cast<double>(width) / 2.0);
	int layer = 1, size = 1;
	t_point point;
	bool inverse = false;

	std::string ssair(dir.c_str()), ssall(dir.c_str()), ssblock(dir.c_str());
	ssair += "/air.mcfunction"; ssall += "/all.mcfunction"; ssblock += "/block.mcfunction";
	std::fstream air(ssair.c_str(), std::fstream::out | std::fstream::trunc);
	std::fstream all(ssall.c_str(), std::fstream::out | std::fstream::trunc);
	std::fstream block(ssblock.c_str(), std::fstream::out | std::fstream::trunc);

	point.x1 = INV(temp);
	point.x2 = temp;
	point.y1 = INV(temp);
	point.y2 = temp;
	point.z1 = INV(temp);
	point.z2 = temp;

	for (int y = point.y1; y <= point.y2; y++)
	{
		layerTemp.clear(); layerTemp = "# "; layerTemp += itoa(layer++);
		air << layerTemp << std::endl;
		all << layerTemp << std::endl;
		block << layerTemp << std::endl;
		std::cout << "SIZE:" << size << std::endl;
		for (int z = point.z1; z <= point.z2; z++)
		{
			int radius = size - 1;
			int Xmin = INV(radius), Xmax = radius;

			for (int x = point.x1; x <= point.x2; x++)
			{
				if ((x < min || x > max) || (z < min || z > max))
					continue;
				
				
				if ((x > point.x1 && x < point.x2)
					&& (y > point.y1 && y < point.y2)
					&& (z > point.z1 && z < point.z2))
					return true;
				return false; 
				
				
				std::cout << x << "_" << y << "_" << z << std::endl;
				
				position.clear();
				position = "~" + itoa(x);
				position += " ~" + itoa(y);
				position += " ~" + itoa(z);
				position += " ";
				cloneCommand.clear();
				cloneCommand = "clone ";
				cloneCommand += ((x == min || x == max) && (y == min || y == max)) ? "~ -63 ~ ~ -63 ~" : "~ -64 ~ ~ -64 ~";
				cloneCommand += " " + position + "replace force";

				air << "execute if block " << position << "#mapcraft:air run " << cloneCommand << std::endl;
				block << "execute unless block " << position << "#mapcraft:air run " << cloneCommand << std::endl;
				all << cloneCommand << std::endl;
			}
		}
		if (size == middle)
			inverse = true;
		size += (!inverse) ? 1 : -1;
	}
	air.close();
	all.close();
	block.close();
}

int main(int argc, char **argv)
{
	std::string type, directory;
	int width = 3;
	
	if (argc < 4 || argc > 4)
	{
		std::cerr << "Usage: [sphere|cube|diamond] width directory" << std::endl;
		return 1;
	}
	type = argv[1];
	directory = argv[3];
	width = std::atoi(argv[2]);
	if (type != "sphere" && type != "cube" && type != "diamond")
	{
		std::cerr << "Type is incorrect" << std::endl;
		return 1;
	}
	else if (width % 2 == 0 || width < 0)
	{
		std::cerr << "Width is not integer or not odd" << std::endl;
		return 1;
	}

	if (mkdir(directory.c_str(), 0777) == -1)
	{
		std::cerr << "mkdir failed" << std::endl;
		exit(EXIT_FAILURE);
	}
	if (type == "sphere")
		;
	else if (type == "cube")
		cube(width, directory);
	else if (type == "diamond")
		diamond(width, directory);
	return 0;
}
