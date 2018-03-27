# Dependency
## googletest

```
curl -O https://github.com/google/googletest/archive/release-1.8.0.zip
tar zxvf googletest-1.8.0.zip
cd googletest-1.8.0
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=../../gtest ../
make -j
```


# Build

```
make GTEST_ROOT=../gtest
```

# Test

```
./test_foo
```
