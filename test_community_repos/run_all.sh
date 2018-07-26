set -e

BASEDIR=$(dirname $0)
pushd $BASEDIR

yes | pip intall opencv-python observations wget
yes | conda install pandas
yes | conda install torchvision -c pytorch

# install java, unzip, and utf-8 EN locale
sudo apt update
sudo apt-get install default-jre unzip language-pack-en
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

python run_all.py

popd
