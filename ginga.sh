cd ginga
mkdir _build && cd _build
cmake .. -G Ninja 
ninja
cmake --install . --prefix /usr

cd ginga _build
cmake .. -G Ninja  -DCMAKE_BUILD_TYPE=Release
ninja 
cpack