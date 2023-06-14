bazel clean
bazel build example/...
bazel run @hedron_compile_commands//:refresh_all

required_file=bazel-out/k8-fastbuild/bin/lib/_virtual_includes/math/math.h

if [ ! -e "$required_file" ] ; then
  echo "'$required_file' is a broken symlink";
else
  echo "OK";
fi
