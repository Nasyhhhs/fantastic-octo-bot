# Указываем базовый образ
FROM python:3.10

# Копируем все файлы проекта в рабочую директорию контейнера
COPY . /app

# Устанавливаем зависимости проекта
RUN pip install -r /app/requirements.txt

# Запускаем файл бота
CMD python /app/main.py
