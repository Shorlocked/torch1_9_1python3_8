FROM docker.m.daocloud.io/pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel

WORKDIR /workspace

RUN python --version && \
    python -c "import torch; print(torch.__version__); print(torch.version.cuda)"

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --no-cache-dir \
    torchvision==0.10.1 \
    timm==0.4.12 \
    numpy==1.21.6 \
    pillow \
    matplotlib \
    scipy \
    scikit-image \
    tqdm
