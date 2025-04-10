FROM python:3.10-slim

# Instala Jupyter
RUN pip install --no-cache-dir notebook

# Instala las librerías necesarias
RUN pip install --no-cache-dir numpy pandas matplotlib seaborn scikit-learn

# Crea directorio de trabajo
WORKDIR /app

# Copia el notebook
COPY mi-proyecto.ipynb .

# Expone el puerto para acceder al Jupyter
EXPOSE 8888

# Comando para lanzar el servidor Jupyter sin token
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
