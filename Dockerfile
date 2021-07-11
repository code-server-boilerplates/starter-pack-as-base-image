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

### Add repositories here, so we can just do install and then clean up ###
RUN curl https://baltocdn.com/helm/signing.asc | sudo apt-key add - \
    && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - \
    && echo "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Step 1: Okteto CLI
RUN curl https://get.okteto.com -sSfL | sh

# Step 2: Helm
# Want to use Waypoint instead? See the difference at https://www.waypointproject.io/docs/intro/vs/helm.
RUN sudo apt-get install helm --yes

# Step 3: Hashi stack
# - Infra: Terraform, Packer, Vagrant
# - Security: vault, Boundary
# - Networking: Consul
# - Applications: Nomad, Waypoint
RUN sudo apt-get install terraform packer vagrant vault boundary nomad waypoint --yes