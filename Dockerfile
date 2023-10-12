# 使用Python的官方映像作為基礎映像
FROM python:3.8-slim

RUN mkdir /app
# 設定工作目錄
WORKDIR /app


# 安裝所需的音訊播放器，例如mpg123
RUN apt-get update
RUN apt-get install -y alsa-utils 
RUN apt-get install -y mpg123
RUN pip install gtts

# 複製你的Python程式碼到容器中
COPY gttsvoice.py  /app


# 執行你的Python程式碼
CMD ["python", "gttsvoice.py"]

