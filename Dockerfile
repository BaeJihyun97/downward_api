# 베이스 이미지에 curl 포함
FROM python:3.9-slim

# curl 설치
RUN apt-get update && apt-get install -y curl && apt-get clean

# 작업 디렉토리 설정
WORKDIR /app

# 코드 복사
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./

# 8080 포트 노출
EXPOSE 8080

CMD ["python", "app.py"]
