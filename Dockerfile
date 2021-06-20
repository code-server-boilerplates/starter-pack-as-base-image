# In this template, we'll use the development tag for our
# starter-pack image. We'll provide stable and beta tags soon.
FROM ghcr.io/code-server-boilerplates/starter-pack:develop

# Add image labels here, but read comments as you edit
# Replace code-server-boilerplates with username-here/repo
LABEL org.opencontainers.image.source="https://github.com/code-server-boilerplates/starter-pack-as-base-image" \
      org.opencontainers.image.vendor="code-server Community" \
      org.opencontainers.image.documentation="https://csb-docs.community-lores.gq"

# prefix for thr entrypoint logs, in which you should update into
# @namespace/template-slug
ENV TEMPLATE_SLUG_PREFIX="@code-server-boilerplates/kubernetes-starter"

# Install Kubernetes stuff, currently WIP #
# Step 1: Okteto CLI
RUN curl https://get.okteto.com -sSfL | sh

# Step 2: Helm
RUN curl https://baltocdn.com/helm/signing.asc | sudo apt-key add - \
    && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list \
    && sudo apt-get update && sudo apt-get install helm --yes
