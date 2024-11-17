# Используем базовый образ Python
FROM python:3.9-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы приложения
COPY app.py .

# Устанавливаем зависимости
RUN pip install flask

# Указываем порт
EXPOSE 32777

# Запускаем приложение
CMD ["python", "app.py"]

