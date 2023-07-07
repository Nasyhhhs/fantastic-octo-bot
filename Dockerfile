# Указываем базовый образ
FROM python:3.10

#WORKDIR /app
# Копируем все файлы проекта в рабочую директорию контейнера
COPY . /app


# Установка пакета libgl1-mesa-glx
RUN apt update && apt install -y libgl1-mesa-glx

RUN pip install torch==1.9.0+cpu torchvision==0.10.0+cpu torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html

# Устанавливаем зависимости проекта
RUN pip install -r /app/requirements.txt

#задаем точку входа
#ENTRYPOINT ['python3', 'main.py']

# Запускаем файл бота
CMD python /app/main.py
