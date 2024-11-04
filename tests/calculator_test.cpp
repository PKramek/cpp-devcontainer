#include <gtest/gtest.h>
#include "calculator.hpp"

class CalculatorTest : public ::testing::Test
{
protected:
    Calculator calc;
};

TEST_F(CalculatorTest, AdditionWorks)
{
    EXPECT_EQ(calc.add(2, 2), 4);
    EXPECT_EQ(calc.add(-1, 1), 0);
    EXPECT_EQ(calc.add(0, 0), 0);
}

TEST_F(CalculatorTest, SubtractionWorks)
{
    EXPECT_EQ(calc.subtract(2, 2), 0);
    EXPECT_EQ(calc.subtract(1, -1), 2);
    EXPECT_EQ(calc.subtract(0, 0), 0);
}

TEST_F(CalculatorTest, MultiplicationWorks)
{
    EXPECT_EQ(calc.multiply(2, 3), 6);
    EXPECT_EQ(calc.multiply(-2, 3), -6);
    EXPECT_EQ(calc.multiply(0, 5), 0);
}

TEST_F(CalculatorTest, DivisionWorks)
{
    EXPECT_DOUBLE_EQ(calc.divide(6, 2), 3.0);
    EXPECT_DOUBLE_EQ(calc.divide(5, 2), 2.5);
    EXPECT_THROW(calc.divide(1, 0), std::invalid_argument);
}