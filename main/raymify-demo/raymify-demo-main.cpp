
//#include <seqan/seq_io.h>

#include <string>

int main(int argc, char** argv)
{
	const std::string input_file
	{
		argc > 1 ? argv[1] : ""
	};

	constexpr int code
	{
		EXIT_SUCCESS
	};

	return(code);
}

