#!/bin/bash

contexts=$(kubectl config get-contexts -o name)

for context in $contexts
do
  kubectl config delete-context $context
done

