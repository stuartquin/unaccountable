FROM python:2.7

RUN pip install PyYAML==3.11
RUN pip install cffi==0.9.2
RUN pip install cryptography==0.8.1
RUN pip install enum34==1.0.4
RUN pip install gnureadline==6.3.3
RUN pip install google-api-python-client==1.4.0
RUN pip install httplib2==0.9
RUN pip install ipdb==0.8
RUN pip install ipython==3.0.0
RUN pip install oauth2client==1.4.7
RUN pip install prettytable==0.7.2
RUN pip install pyOpenSSL==0.14
RUN pip install pyaml==15.03.1
RUN pip install pyasn1==0.1.7
RUN pip install pyasn1-modules==0.0.5
RUN pip install pycparser==2.10
RUN pip install pycrypto==2.6.1
RUN pip install requests==2.6.0
RUN pip install rsa==3.1.4
RUN pip install simplejson==3.6.5
RUN pip install six==1.9.0
RUN pip install ujson==1.33
RUN pip install uritemplate==0.6
RUN pip install wsgiref==0.1.2

ADD . /app
WORKDIR /app

CMD ["python","unaccountable.py"]
