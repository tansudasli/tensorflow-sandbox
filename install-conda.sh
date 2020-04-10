# run on gcp cloud-shell

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

export PATH=~/miniconda3/bin:$PATH
conda update -n base -c defaults conda

conda create -n tensorflow python=3
source activate tensorflow

git clone https://github.com/GoogleCloudPlatform/cloudml-samples.git

cd cloudml-samples/census/estimator

conda install --file ../requirements.txt

python -c "import tensorflow as tf; print('TensorFlow version {} is installed.'.format(tf.__version__))"