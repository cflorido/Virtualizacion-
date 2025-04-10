FROM python:3.10-slim


RUN pip install --no-cache-dir notebook


RUN pip install --no-cache-dir numpy pandas matplotlib seaborn scikit-learn


WORKDIR /app


COPY mi-proyecto.ipynb .


EXPOSE 8888


CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
