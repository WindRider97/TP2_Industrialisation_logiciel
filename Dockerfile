FROM python:3.9

RUN useradd -ms /bin/bash ben10

WORKDIR /code

RUN chown -R ben10:ben10 /code

USER ben10

COPY ./setup.py /code/setup.py

COPY ./requirements.txt /code/requirements.txt

COPY ./README.md /code/README.md

COPY ./src /code/src

RUN pip install /code

COPY ./controller /code/controller

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]