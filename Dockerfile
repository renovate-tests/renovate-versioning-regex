FROM docker:19.03.12 AS base
# renovate: datasource=github-tags depName=kubernetes-sigs/kustomize versioning=regex:^kustomize/v(?<major>\d+)\.(?<minor>\d+)\.(?<patch>\d+)$
ENV KUSTOMIZE_VERSION="kustomize/v3.7.0"
RUN curl --verbose --location --fail https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/${KUSTOMIZE_VERSION#kustomize/}/kustomize_${KUSTOMIZE_VERSION#kustomize/}_linux_amd64.tar.gz | \
        tar -xvzC /usr/local/bin/ kustomize
