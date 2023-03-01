FROM python:2.7.13-wheezy

RUN pip install cython==0.24

RUN pip install numpy==1.14.0

RUN pip install scipy==1.0.0

RUN git clone https://github.com/abhijitbendale/OSDN.git

WORKDIR "/OSDN"

WORKDIR "/OSDN/libMR"

RUN chmod +x compile.sh

RUN ./compile.sh

WORKDIR "/OSDN/"
