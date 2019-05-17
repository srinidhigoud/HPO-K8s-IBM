#!/bin/sh
pip install mnist;
rm -rf pytorch-train.yaml; envsubst < "pytorch-train-dummy.yaml" > "pytorch-train.yaml";
bx ml train pytorch-model.zip pytorch-train.yam;
