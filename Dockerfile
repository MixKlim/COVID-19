FROM python:3.7.7
LABEL maintainer="Klim Mikhailov <mixklim@gmail.com>"
LABEL version="0.1"
LABEL description="Noteboook, data, and visualisations to provide a summary of the total cases \
and deaths in different countries during the COVID-19 pandemic"

WORKDIR /data

COPY . /data

RUN python3 -m pip install xlrd numpy pandas matplotlib datetime pathlib seaborn statsmodels jupyter

EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
