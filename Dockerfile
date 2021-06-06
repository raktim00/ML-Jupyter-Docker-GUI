FROM centos

RUN yum install firefox python36 -y

RUN pip3 install numpy pandas jupyter sklearn joblib

WORKDIR /root/test

ENV DISPLAY=:0

ENTRYPOINT ["jupyter", "notebook", "--allow-root"]
