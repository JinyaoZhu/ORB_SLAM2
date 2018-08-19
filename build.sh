echo "Configuring and building Thirdparty/DBoW2 ..."
cd Thirdparty/DBoW2
#rm -r build/
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo "Configuring and building Thirdparty/g2o ..."
cd ../../g2o
#rm -r build/
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

echo "Configuring and building Thirdparty/Pangolin ..."
cd ../../Pangolin
#rm -r build/
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../install/ -DCMAKE_BUILD_TYPE=Release
make -j4
make install


# echo "Uncompress vocabulary ..."
# cd ../../../
# cd Vocabulary
# tar -xf ORBvoc.txt.tar.gz

echo "Configuring and building ORB_SLAM2 ..."
cd ../../..
#rm -r build/
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4

#cd ..
#echo "Converting vocabulary to binary"
#./tools/bin_vocabulary
