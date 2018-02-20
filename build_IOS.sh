echo "------------------------START------------------------------"
rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_C_COMPILER=/usr/bin/gcc -DCMAKE_TOOLCHAIN_FILE=../ios-cmake/ios.toolchain.cmake -DDEBUG:STRING=OFF -DCMAKE_IOS_SDK_ROOT=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/ -DIOS_PLATFORM=OS
make
cd ..
mkdir bin/Release/include
cp -f src/lib_common/of_openfec_api.h bin/release/include/
echo "-------------------------END-------------------------------"