#!/usr/bin/env bash
# shellcheck disable=2312

pushd extras >/dev/null 2>&1 || exit 1

if test -d cni/charts; then
  rm -rf cni/charts
fi
envsubst < ../../../kubernetes/apps/kube-system/cilium/app/values.yaml  > cni/values.yaml
kustomize build --enable-helm cni | kubectl apply -f -
rm cni/values.yaml
rm -rf cni/charts

if test -d csr-approver/charts; then
  rm -rf csr-approver/charts
fi
envsubst < ../../../kubernetes/apps/kube-system/kubelet-csr-approver/app/values.yaml > csr-approver/values.yaml
kustomize build --enable-helm csr-approver | kubectl apply -f -
rm csr-approver/values.yaml
rm -rf csr-approver/charts
