#include "hiker.h"
#include <gtest/gtest.h>

TEST(hiker_tests, what_is_the_answer)
{
	hiker target;

	EXPECT_EQ(42, target.answer());
}