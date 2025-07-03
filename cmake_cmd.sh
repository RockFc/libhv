INSTALL_PATH=$(pwd)/out/libhv
mkdir -p ${INSTALL_PATH}
rm -rf build
mkdir -p build
cd build
cmake .. -D BUILD_EXAMPLES=OFF -D WITH_OPENSSL=ON -D CMAKE_INSTALL_PREFIX=${INSTALL_PATH}
cmake --build . -j20 --target install
