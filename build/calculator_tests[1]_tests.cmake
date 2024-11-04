add_test( CalculatorTest.AdditionWorks /workspaces/cpp-devcontainer/build/calculator_tests [==[--gtest_filter=CalculatorTest.AdditionWorks]==] --gtest_also_run_disabled_tests)
set_tests_properties( CalculatorTest.AdditionWorks PROPERTIES WORKING_DIRECTORY /workspaces/cpp-devcontainer/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( CalculatorTest.SubtractionWorks /workspaces/cpp-devcontainer/build/calculator_tests [==[--gtest_filter=CalculatorTest.SubtractionWorks]==] --gtest_also_run_disabled_tests)
set_tests_properties( CalculatorTest.SubtractionWorks PROPERTIES WORKING_DIRECTORY /workspaces/cpp-devcontainer/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( CalculatorTest.MultiplicationWorks /workspaces/cpp-devcontainer/build/calculator_tests [==[--gtest_filter=CalculatorTest.MultiplicationWorks]==] --gtest_also_run_disabled_tests)
set_tests_properties( CalculatorTest.MultiplicationWorks PROPERTIES WORKING_DIRECTORY /workspaces/cpp-devcontainer/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( CalculatorTest.DivisionWorks /workspaces/cpp-devcontainer/build/calculator_tests [==[--gtest_filter=CalculatorTest.DivisionWorks]==] --gtest_also_run_disabled_tests)
set_tests_properties( CalculatorTest.DivisionWorks PROPERTIES WORKING_DIRECTORY /workspaces/cpp-devcontainer/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( calculator_tests_TESTS CalculatorTest.AdditionWorks CalculatorTest.SubtractionWorks CalculatorTest.MultiplicationWorks CalculatorTest.DivisionWorks)
