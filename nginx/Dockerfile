FROM nginx

#RUN mkdir /etc/nginx/conf.d/sites-available && mkdir /etc/nginx/conf.d/sites-enabled

RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf.d/sites-available /etc/nginx/conf.d/sites-available
COPY ./conf.d/sites-enabled /etc/nginx/conf.d/sites-enabled
COPY ./nginx.conf /etc/nginx/nginx.conf
