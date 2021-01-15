echo "for docker, please start a container with \"--privileged\" flag"

mkdir coral && cd coral
git clone https://github.com/google-coral/tflite.git
cd tflite/python/examples/classification
bash install_requirements.sh

python3 classify_image.py \
--model models/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
--labels models/inat_bird_labels.txt \
--input images/parrot.jpg
