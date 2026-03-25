#!/bin/bash
VM_ID=$1
PROXMOX_HOST=$2

ssh -i ~/.ssh/homelab_ansible root@${PROXMOX_HOST} \
  "qm guest cmd ${VM_ID} network-get-interfaces" | \
  jq -r '.[1]."ip-addresses"[] | select(."ip-address-type" == "ipv4") | ."ip-address"' 2>/dev/null || echo "unknown"