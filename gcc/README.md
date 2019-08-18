```
# Edit a C file
$ echo -e '#include <stdio.h>\nint main() { printf("Hello World\\n"); }' > qq.c

# Compile
$ docker run --rm -v `pwd`:/src solomonxie/gcc:ubuntu1804 gcc --static /src/qq.c -o /src/qq

# Run
$ docker run --rm -v `pwd`:/src solomonxie/gcc:latest /src/qq

# Aliases
$ alias gccd="docker run --rm -v `pwd`:/src solomonxie/gcc:ubuntu1804 gcc"
```
