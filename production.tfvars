rg-name = "MG"
rg-location = "North Europe"

vnet-name = "MG"
vnet-address = "10.224.0.0/12"
subnet-cluster-name = "cluster"
subnet-cluster-address = "10.224.0.0/16"
subnet-public-cluster-name = "PublicCluster"
subnet-public-cluster-address = "10.225.0.0/16"

acr-name = "ACRmgDemo"
acr-sku = "Premium"

K8s-version = "1.28.9"
K8s-name = "demo"
K8s-Node-RG = "demo-Cluster"
K8s-sku = "Standard"


AgentPool-name = "agentpool"
AgentPool-Node-Count = 2
AgentPool-Node-Min-Count = 2
AgentPool-Node-Max-Count = 5
AgentPool-Pods-Node = 110
AgentPool-OS-sku = "Ubuntu"
AgentPool-OS-disk-type = "Ephemeral"
AgentPool-OS-disk-size = 128
AgentPool-VMsize = "Standard_D8ds_v5"

UserPool-name = "userpool"
UserPool-VMsize = "Standard_D8ds_v5"
UserPool-Node-Count = 2
UserPool-Node-Min-Count = 2
UserPool-Node-Max-Count = 5
UserPool-OS-sku = "Ubuntu"
UserPool-OS-disk-type = "Ephemeral"
UserPool-OS-disk-size = 128
UserPool-Pods-Node = 110

#########################################################3

Public-K8s-version = "1.28.9"
Public-K8s-name = "publicdemo"
Public-K8s-Node-RG = "public-demo-Cluster"
Public-K8s-sku = "Standard"

Public-AgentPool-name = "agentpool"
Public-AgentPool-Node-Count = 2
Public-AgentPool-Node-Min-Count = 2
Public-AgentPool-Node-Max-Count = 5
Public-AgentPool-Pods-Node = 110
Public-AgentPool-OS-sku = "Ubuntu"
Public-AgentPool-OS-disk-type = "Ephemeral"
Public-AgentPool-OS-disk-size = 128
Public-AgentPool-VMsize = "Standard_D8ds_v5"

Public-UserPool-name = "userpool"
Public-UserPool-VMsize = "Standard_D8ds_v5"
Public-UserPool-Node-Count = 2
Public-UserPool-Node-Min-Count = 2
Public-UserPool-Node-Max-Count = 5
Public-UserPool-OS-sku = "Ubuntu"
Public-UserPool-OS-disk-type = "Ephemeral"
Public-UserPool-OS-disk-size = 128
Public-UserPool-Pods-Node = 110