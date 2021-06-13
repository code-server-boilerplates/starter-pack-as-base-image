# In this template, we'll use the development tag for our
# starter-pack image. We'll provide stable and beta tags soon.
FROM ghcr.io/code-server-boilerplates/starter-pack:develop

# Install Kubernetes stuff
RUN brew install helm \
    && brew install kubectl \
    && brew install okteto

