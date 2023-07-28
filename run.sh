#!/bin/bash

echo "if there is an error, make sure to prune the volume and then rerun this script" &&

podman volume prune &&

podman play kube postgres-pvc.yaml --replace &&
podman play kube postgres-deployment.yaml --replace &&
podman play kube helloworld.yaml --replace

