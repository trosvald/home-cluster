# #!/bin/bash
# cat <<EOF | kubectl apply -f -
# apiVersion: batch/v1
# kind: Job
# metadata:
#   name: "disk-wipe-w0"
#   namespace: "default"
# spec:
#   ttlSecondsAfterFinished: 3600
#   template:
#     spec:
#       automountServiceAccountToken: false
#       restartPolicy: Never
#       nodeName: k8s-w0
#       containers:
#         - name: disk-wipe
#           image: ghcr.io/onedr0p/alpine:3.17.3@sha256:999384960b6114496a5e4036e945141c205d064ce23b87326bd3f8d878c5a9d4
#           securityContext:
#             privileged: true
#           resources: {}
#           command: ["/bin/sh", "-c"]
#           args:
#             - apk add --no-cache sgdisk util-linux parted;
#               sgdisk --zap-all /dev/nvme0n1;
#               blkdiscard /dev/nvme0n1;
#               dd if=/dev/zero bs=1M count=10000 oflag=direct of=/dev/nvme0n1;
#               partprobe /dev/nvme0n1;
# EOF
# cat <<EOF | kubectl apply -f -
# apiVersion: batch/v1
# kind: Job
# metadata:
#   name: "disk-wipe-w1"
#   namespace: "default"
# spec:
#   ttlSecondsAfterFinished: 3600
#   template:
#     spec:
#       automountServiceAccountToken: false
#       restartPolicy: Never
#       nodeName: k8s-w1
#       containers:
#         - name: disk-wipe
#           image: ghcr.io/onedr0p/alpine:3.17.3@sha256:999384960b6114496a5e4036e945141c205d064ce23b87326bd3f8d878c5a9d4
#           securityContext:
#             privileged: true
#           resources: {}
#           command: ["/bin/sh", "-c"]
#           args:
#             - apk add --no-cache sgdisk util-linux parted;
#               sgdisk --zap-all /dev/nvme0n1;
#               blkdiscard /dev/nvme0n1;
#               dd if=/dev/zero bs=1M count=10000 oflag=direct of=/dev/nvme0n1;
#               partprobe /dev/nvme0n1;
# EOF
# cat <<EOF | kubectl apply -f -
# apiVersion: batch/v1
# kind: Job
# metadata:
#   name: "disk-wipe-w2"
#   namespace: "default"
# spec:
#   ttlSecondsAfterFinished: 3600
#   template:
#     spec:
#       automountServiceAccountToken: false
#       restartPolicy: Never
#       nodeName: k8s-w2
#       containers:
#         - name: disk-wipe
#           image: ghcr.io/onedr0p/alpine:3.17.3@sha256:999384960b6114496a5e4036e945141c205d064ce23b87326bd3f8d878c5a9d4
#           securityContext:
#             privileged: true
#           resources: {}
#           command: ["/bin/sh", "-c"]
#           args:
#             - apk add --no-cache sgdisk util-linux parted;
#               sgdisk --zap-all /dev/nvme0n1;
#               blkdiscard /dev/nvme0n1;
#               dd if=/dev/zero bs=1M count=10000 oflag=direct of=/dev/nvme0n1;
#               partprobe /dev/nvme0n1;
# EOF
# cat <<EOF | kubectl apply -f -
# apiVersion: batch/v1
# kind: Job
# metadata:
#   name: "disk-wipe-w3"
#   namespace: "default"
# spec:
#   ttlSecondsAfterFinished: 3600
#   template:
#     spec:
#       automountServiceAccountToken: false
#       restartPolicy: Never
#       nodeName: k8s-w3
#       containers:
#         - name: disk-wipe
#           image: ghcr.io/onedr0p/alpine:3.17.3@sha256:999384960b6114496a5e4036e945141c205d064ce23b87326bd3f8d878c5a9d4
#           securityContext:
#             privileged: true
#           resources: {}
#           command: ["/bin/sh", "-c"]
#           args:
#             - apk add --no-cache sgdisk util-linux parted;
#               sgdisk --zap-all /dev/nvme0n1;
#               blkdiscard /dev/nvme0n1;
#               dd if=/dev/zero bs=1M count=10000 oflag=direct of=/dev/nvme0n1;
#               partprobe /dev/nvme0n1;
# EOF
