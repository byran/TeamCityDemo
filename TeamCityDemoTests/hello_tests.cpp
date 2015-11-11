#include "hello.h"
#include <gtest/gtest.h>

TEST(hello_tests, saying_hello)
{
	hello speaker;

	speaker.say_hello();
}
