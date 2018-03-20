# docker_nginx
sudo docker run -d -v /product/docker_nginx/logs/:/product/nginx/logs/ -v /product/docker_nginx/nginx_root/:/product/nginx/nginx_root/ -v /product/docker_nginx/conf/vhost/:/product/nginx/conf/vhost/  -p 9999:9999  --name=nginx -t jybaby1027/nginx:v2
