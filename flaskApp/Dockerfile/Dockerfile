# Usar una imagen base de Python
FROM python:3.8-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el archivo de requisitos e instalar dependencias
COPY ../requirements.txt .
RUN pip install -r requirements.txt

# Copiar todo el código de la aplicación
COPY ../ .

# Exponer el puerto que Flask utiliza (por defecto 5000)
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]
