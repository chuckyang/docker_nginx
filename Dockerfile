FROM jybaby1027/nginx:v1

##set timezone##
RUN yum install tzdata  -y && \
    echo Asia/Shanghai> /etc/timezone && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
##base conf##
COPY conf/nginx.conf /product/nginx/conf/nginx.conf

##supervisor###
RUN mkdir -p /etc/supervisor.d
COPY conf/supervisor_nginx.conf /etc/supervisor.d/
