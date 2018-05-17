FROM openresty/openresty:alpine-fat

RUN opm install 3scale/lua-resty-env

WORKDIR /code
COPY . /code

EXPOSE 8000

CMD [ "./start.sh" ]
