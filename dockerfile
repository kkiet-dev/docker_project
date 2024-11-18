
# Chọn image cơ sở
FROM python:latest

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép file requirements.txt vào container
COPY requirements.txt .



# Cài đặt dependencies
RUN apt-get update && apt-get install -y \
    fontconfig \
    fonts-dejavu \
    && pip install --no-cache-dir -r requirements.txt \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get -y install python3

# Sao chép tat ca mã nguồn vào container
COPY . .

# Chạy ứng dụng
CMD ["python3", "main.py"]
