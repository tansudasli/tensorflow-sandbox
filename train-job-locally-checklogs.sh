# run on gshell
# to see local training job logs

source .env

tensorboard --logdir=$MODEL_DIR --port=8080

# preview on 8080