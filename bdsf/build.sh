
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  (cd $BUILD_PREFIX/bin && ln -s $FC gfortran)
  export LDFLAGS="$LDFLAGS -shared"
fi

$PYTHON -m pip install . --no-deps -vv
