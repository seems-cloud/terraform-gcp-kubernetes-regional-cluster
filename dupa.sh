#!/bin/bash

for i in `seq 1 6` ; do
  sleep 600
  terraform destroy -var-file=variables.tfvars -auto-approve
done
