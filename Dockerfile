# Base image with Anaconda
FROM continuumio/anaconda3:latest

# Install JupyterLab (if not already included)
RUN conda install -y jupyterlab

# Expose the Jupyter port
EXPOSE 8888

# Set the working directory
WORKDIR /opt/notebooks

# Start JupyterLab with a token-based authentication
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
