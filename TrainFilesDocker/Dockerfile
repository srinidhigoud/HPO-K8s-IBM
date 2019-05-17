# Start with a Linux micro-container to keep the image tiny
FROM pytorch/pytorch:latest

# Document who is responsible for this image
MAINTAINER Srinidhi Goud Myadaboyina "sgm400@nyu.edu"

# Install just the Python runtime (no dev)
# RUN apk add --no-cache \
#     python \
#     py-pip \
#     ca-certificates

# Expose any ports the app is expecting in the environment
# ENV PORT 8001
# EXPOSE $PORT

RUN apt-get update
RUN apt-get install -y \
curl
RUN apt-get install -y gettext-base
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install machine-learning
RUN pip install mnist
# Set up a working folder and install the pre-reqs
WORKDIR /pytorch-workdir
ADD requirements.txt /pytorch-workdir
RUN pip install -r requirements.txt
# ADD tf-model/convolutional_network.py /tf-workdir
# ADD tf-model/input_data.py /tf-workdir
# ADD tf-model/train.sh /tf-workdir
# ADD data/t10k-images-idx3-ubyte.gz /tf-workdir
# ADD data/t10k-labels-idx1-ubyte.gz /tf-workdir
# ADD data/train-images-idx3-ubyte.gz /tf-workdir
# ADD data/train-labels-idx1-ubyte.gz /tf-workdir
ADD pytorch-model-hpo.zip /pytorch-workdir
ADD pytorch-train-hpo-dummy.yaml /pytorch-workdir
ADD train-hpo.sh /pytorch-workdir
# RUN pip install -r requirements.txt

# # Add the code as the last Docker layer because it changes the most
# ADD hello-app/hello.py  /app/hello.py

# Run the service
ENTRYPOINT ["sh","-c"]
# CMD [ "bash", "train.sh" ]
