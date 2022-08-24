FROM gitpod/workspace-base:latest

ARG KUBECTL_VERSION=v1.22.2


RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    sudo mv ./kubectl /usr/local/bin/kubectl && \
    mkdir ~/.kube

RUN wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -O "awscliv2.zip" && \
    unzip awscliv2.zip && \
    rm -rf awscliv2.zip && \
    sudo ./aws/install --install-dir /opt/aws-cli --bin-dir /usr/local/bin/ && \
    sudo chmod a+x /opt/

RUN wget https://github.com/derailed/k9s/releases/download/v0.26.3/k9s_Linux_x86_64.tar.gz -O k9s.tar.gz && \
    tar -xvf k9s.tar.gz && \
    sudo mv ./k9s /usr/local/bin/k9s && \
    rm -rf k9s.tar.gz
