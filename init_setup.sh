echo [$(date)]: 'START'
echo [$(date)]: 'Creating Conda Environment with python 3.8'
conda create --prefix ./crypto_research python=3.8 -y
echo [$(date)]: 'activate env'
source activate ./crypto_research
echo [$(date)]: 'installing TA-LIB'
conda install -c conda-forge ta-lib -y
echo [$(date)]: 'installing requirements'
pip3 install -r requirements.txt
echo [$(date)]: 'Setup END'

#RUN : bash init_setup.sh