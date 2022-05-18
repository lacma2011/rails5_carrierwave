# Rails 5 with CarrierWave and Ads database


Build docker image when running for the first time:
>docker-compose build

Startup:
>docker-compose up


Now you can view the application at:

http://192.168.4.100:3000/


Note that it uses a fixed IP for rails server. To remove that, modify docker-entrypoint.sh and re-build image

docker-entrypoint.sh:
>rm -f tmp/pids/server.pid && bundle exec rails server -b $HOST
