# K8s Environment Variables Setup Demo

This repo demonstrates all the four ways environment variables could be set as described in the blog post [here]().

## Prerequisites

This example assumes the following:

1. You have an existing Kubernetes cluster.
2. You have a basic understanding of Kubernetes [Pods](https://kubernetes.io/docs/concepts/workloads/pods/pod/), [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/), and [ConfigMaps](https://medium.com/r/?url=https%3A%2F%2Fmatthewpalmer.net%2Fkubernetes-app-developer%2Farticles%2Fconfigmap-example-yaml.html).

## Usage

Run `make` to create all the resoures required in this demo.

Run `make check` to output show the following output:

```
app: Pizza = Flour + Cheese + Tomato
```

This indicates that the service running in the pod has appropriately extracted:

- _app_ from the name field of the Pod specs
- _Pizza_ from the string literal defined for _MEAL_ environment variable in the Pod specs
- _Flour_ from key-value pair defined in the _env-app-config_ ConfigMap
- _Cheese_ from the value of the _ingredient_ key defined in the _app-config_ ConfigMap
- _Tomato_ from the value of the _ingredient_ key defined in the _app-secret_ Secret

Run `make clean` to delete all resources created in this demo.

## License

MIT License

Copyright (c) 2019 C A Boadu Jnr

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
