FROM python:3.7-buster

WORKDIR /usr/src/tlsprofiler

COPY requirements.txt ./

COPY nassl-2.2.0-cp37-cp37m-linux_x86_64.whl .
RUN pip install requests nassl-2.2.0-cp37-cp37m-linux_x86_64.whl
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "/usr/src/tlsprofiler/tlsprofiler/__init__.py" ]