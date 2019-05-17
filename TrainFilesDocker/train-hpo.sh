#!/bin/sh

rm -rf pytorch-train-hpo.yaml; envsubst < "pytorch-train-hpo-dummy.yaml" > "pytorch-train-hpo.yaml";
bx ml train pytorch-model-hpo.zip pytorch-train-hpo.yaml;
