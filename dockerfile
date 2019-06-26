FROM busybox:latest
MAINTAINER bskim <bskim@mantech.co.kr>
LABEL type="accordion-tomcat"

#Make Dirctroy
RUN mkdir /deploy \ 
    && mkdir /config \
    && mkdir /lib

ADD deployment /deployment

ADD mv.sh / 

RUN chmod 755 mv.sh

CMD ["/mv.sh"]
