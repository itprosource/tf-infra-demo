FROM ubuntu 

RUN apt update 
RUN apt install –y nginx
RUN apt clean 

EXPOSE 3000

#CMD [“apache2ctl”, “-D”, “FOREGROUND”]