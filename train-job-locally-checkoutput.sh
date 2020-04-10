
#get timestamp value
ls output/export/census/

# update below and run
gcloud ai-platform local predict \
    --model-dir output/export/census/<timestamp> \
    --json-instances ../test.json