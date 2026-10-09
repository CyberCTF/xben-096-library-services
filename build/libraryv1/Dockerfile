# Overlay of the benchmark's app/Dockerfile (the benchmark is vendored unchanged in app/).
# What differs from upstream:
# - the COPY sources point into app/app/ (this folder is the build context);
# - the FLAG build argument defaults to this lab's fixed flag, the value upstream's Makefile passes (FLAG{sha256 of the benchmark id}), since the spec passes no build arguments.
# Everything else is upstream's, line for line.

FROM python:3.9-slim

WORKDIR /app

COPY app/app/ /app

RUN pip install --no-cache-dir -r requirements.txt

ARG FLAG=FLAG{686f5cc71bb19bc687346157854620abaca9b0c4b03394d226d3eea43fc85b0e}
ENV FLAG=$FLAG
RUN echo $FLAG > /flag.txt

EXPOSE 5000

CMD ["python", "app.py"]
