
#get timestamp value
#ls output/export/census/

sudo rm -rf /google/google-cloud-sdk/lib/googlecloudsdk/command_lib/ml_engine/*.pyc

# update below and run
gcloud ai-platform local predict \
    --model-dir output/export/census/$(ls output/export/census/) \
    --json-instances ../test.json