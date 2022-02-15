
(cd $BUILD_PREFIX/bin && ln -s $FC gfortran)

export LDFLAGS="$LDFLAGS -shared"

$PYTHON -m pip install . --no-deps -vv