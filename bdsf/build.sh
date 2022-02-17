(cd $BUILD_PREFIX/bin && ln -s $FC gfortran)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export LDFLAGS="$LDFLAGS -shared"
elif [[ $OSTYPE == 'darwin'* ]]; then
  echo export LIBRARY_PATH="$LIBRARY_PATH:/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib"
fi

$PYTHON -m pip install . --no-deps -vv
