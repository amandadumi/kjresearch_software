module load intel
git clone --recursive https://github.com/QMC-Cornell/shci
cd shci
git checkout stable # optional\
git submodule update --init --recursive
make -j CXX=mpicxx

