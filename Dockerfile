# In this template, we'll use the development tag for our
# starter-pack image. We'll provide stable and beta tags soon.
FROM ghcr.io/code-server-boilerplates/starter-pack:develop

# Add image labels here, but read comments as you edit
# Replace code-server-boilerplates with username-here/repo
LABEL org.opencontainers.image.source="https://github.com/code-server-boilerplates/starter-pack" \
      org.opencontainers.image.vendor="code-server Community" \
      org.opencontainers.image.documentation="https://cdrs-docs.rtapp.tk"

# prefix for thr entrypoint logs, in which you should update into
# @namespace/template-slug
ENV TEMPLATE_SLUG_PREFIX="@code-server-boilerplates/kubernetes-starter"

# Install Kubernetes stuff
RUN brew install helm \
    && brew install kubectl \
    && brew install okteto

