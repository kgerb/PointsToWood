# Use NVIDIA's PyTorch image with CUDA 12.2
FROM nvcr.io/nvidia/pytorch:24.01-py3

# Reinstall PyTorch with specific version and compatible extensions
RUN pip uninstall torch torchvision torchaudio -y && \
    pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu121 && \
    pip install torch-scatter -f https://data.pyg.org/whl/torch-2.1.0+cu121.html && \
    pip install torch-sparse -f https://data.pyg.org/whl/torch-2.1.0+cu121.html && \
    pip install torch-cluster -f https://data.pyg.org/whl/torch-2.1.0+cu121.html && \
    pip install torch-spline-conv -f https://data.pyg.org/whl/torch-2.1.0+cu121.html && \
    pip install torch-geometric && \
    pip install pandas pykdtree numba tqdm

RUN pip install laspy[lazrs]

RUN mkdir -p /src

WORKDIR /src

CMD ["bash"]