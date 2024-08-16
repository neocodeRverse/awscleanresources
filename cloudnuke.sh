#!/bin/bash
wget https://github.com/gruntwork-io/cloud-nuke/releases/download/v0.37.1/cloud-nuke_linux_386

sudo mv cloud-nuke_linux_386 /usr/local/bin/cloud-nuke
sudo chmod +x /usr/local/bin/cloud-nuke

cloud-nuke aws --force --resource-type iam
cloud-nuke aws --force --resource-type iam-group

cloud-nuke aws \
  --force \
  --region global \
  --region us-east-1 \
  --region us-east-2 \
  --region us-west-1 \
  --region us-west-2 \
  --region ap-south-1 \
  --region eu-north-1 \
  --region ca-central-1 \
  --region eu-west-1 \
  --region eu-west-2 \
  --region eu-west-3 \
  --exclude-resource-type lt \
  --exclude-resource-type iam-role \
  --exclude-resource-type iam-service-linked-role
