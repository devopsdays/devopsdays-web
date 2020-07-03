+++
description = ""
title = "Generating Kubernetes Resources"
type = "new-talk"
speakers = [
        "keegan-carruthers-smith",
]
youtube = "nn9ps7KxhHc"
slides = "https://talks.godoc.org/github.com/keegancsmith/presentations/2018/k8s-gen.slide"
+++
No one likes to maintain and edit 1000s of lines of YAML. As such a common approach used is generating your YAML files from a more succinct language. This talk briefly touches on a few of the approaches, which hopefully will inspire you to try one of them out for your own cluster. Quick oveview of helm2 (go tmpl), helm3 (lua), hand crafted, code generators, ksonnet, kustomize, dhall.