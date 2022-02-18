
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  (cd $BUILD_PREFIX/bin && ln -s $FC gfortran)
  export LDFLAGS="$LDFLAGS -shared"

elif [[ $OSTYPE == 'darwin'* ]]; then
  #export LDFLAGS="$LDFLAGS -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"
  export CFLAGS="$CFLAGS -march=cascadelake"
fi

$PYTHON -m pip install . --no-deps -vv
