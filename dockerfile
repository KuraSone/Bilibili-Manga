FROM python:3.7.8-alpine3.12

# 安装依赖
RUN pip3 install --no-cache-dir requests rsa chardet

# 添加文件
RUN mkdir /data
COPY ["bilibili.py", "manga_sign.py", "/data/"]

ENTRYPOINT ["python3", "/data/manga_sign.py"]
