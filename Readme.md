# AKS Node Installer

Many customers want the ability to run arbitrary software on their AKS worker nodes such as Malware scanners, policy enforcers etc. This script which is heavily inspired by [Kured](https://github.com/weaveworks/kured) lets you do that. The script (in the container) is meant to run as a DaemonSet so that new nodes can be bootstrapped.

## Installation

Before installing update the script in k8s/sampleconfigmap.yaml which is run to install the software that you want in the cluster.

```sh
git clone https://github.com/patnaikshekhar/AKSNodeInstaller
cd AKSNodeInstaller
# Update script in ./k8s/sampleconfigmap.yaml to use your installation instructions
kubectl apply -f ./k8s
```

## Explanation
This [blog article](https://medium.com/@patnaikshekhar/initialize-your-aks-nodes-with-daemonsets-679fa81fd20e) explains the code.

## Demo
[![Youtube Demo](https://img.youtube.com/vi/vAIW4ZSP44I/0.jpg)](https://www.youtube.com/watch?v=vAIW4ZSP44I)
