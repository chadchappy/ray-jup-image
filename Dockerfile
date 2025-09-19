FROM anyscale/ray-llm:latest

# Install JupyterLab
RUN pip install --no-cache-dir jupyterlab

# Expose JupyterLab port
EXPOSE 8888

# Run JupyterLab with custom settings (no base_url override)
CMD ["jupyter", "lab", \
     "--NotebookApp.token=''", \
     "--port=8888", \
     "--allow-root"]

