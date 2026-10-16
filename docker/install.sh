#!/bin/sh -eu

# Records the Python this image holds, in the shape every image shares. The
# installed interpreter is asked, so the version is one the image can run
# rather than one written down when someone last edited this file.
# python --version prints "Python 3.14.7".
readonly LANGUAGE_VERSION=$(python --version | cut -d' ' -f2)

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from python --version' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "Python",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
