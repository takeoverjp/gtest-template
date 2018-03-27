#include "foo.h"
#include "gtest/gtest.h"

class FooTest : public ::testing::Test {
protected:
  FooTest() {
  }
  virtual ~FooTest() {
  }
  virtual void SetUp() {
  }
  virtual void TearDown() {
  }
};

TEST_F(FooTest, BarReturns1) {
  EXPECT_EQ(1, bar());
}
