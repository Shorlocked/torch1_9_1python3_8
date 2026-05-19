FROM dockerproxy.com/pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel

WORKDIR /workspace

RUN python --version && \
    python -c "import torch; print(torch.__version__); print(torch.version.cuda)" && \
    python -c "import torchvision; print(torchvision.__version__)"

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple && \
    pip install --no-cache-dir \
    timm==0.4.12 \
    numpy==1.21.6 \
    pillow==9.5.0 \
    matplotlib==3.5.3 \
    scipy==1.7.3 \
    scikit-image==0.19.3 \
    tqdm==4.64.1
