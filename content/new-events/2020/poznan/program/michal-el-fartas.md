+++
description = ""
title = "Container native load balancing in GKE"
type = "new-talk"
speakers = [
        "michal-el-fartas",
]
+++
Last year I have talked about problems of load balancing traffic to Kubernetes cluster with auto-scaling. Since then Google has introduced new "container-native" load balancing, that theoretically addresses those issues. Lets do a deep-dive and practical analysis to verify if this new solution is as groundbreaking as promised.