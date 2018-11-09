docker exec -it vanare-oro_db_1 bash -c "psql -U postgres -d vanare_dev -c \"insert into org_sett_domains (organization_id, domain, subtenant_id, testing_shortname) values (1, 'owm.loc', 129, 'owm-loc');\""

docker exec -it vanare-oro_php_1 bash -c "
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash &&
    source ~/.nvm/nvm.sh && 
    nvm install v8.1.0 && 
    nvm use v8.1.0 &&
    npm install &&
    npm install -g yarn &&
    yarn && 
    yarn run platform:dev &&
    yarn run owm:dev &&
    yarn run branding"
    
#!/usr/bin/env bash -x
docker stop vanare-oro_php_1
docker cp $1.tar.gz vanare-oro_db_1:/$1.tar.gz
docker exec -it vanare-oro_db_1 bash -c "tar -zxvf $1.tar.gz"
docker exec -it vanare-oro_db_1 bash -c "psql -U postgres -c 'DROP DATABASE vanare_dev'"
docker exec -it vanare-oro_db_1 bash -c "psql -U postgres -c 'CREATE DATABASE vanare_dev'"
docker exec -it vanare-oro_db_1 bash -c "psql -U postgres -c \"SELECT pg_terminate_backend(pg_stat_activity.pid) from pg_stat_activity where pg_stat_activity.datname = 'vanare_dev' and pid <> pg_backend_pid()\""
docker exec -it vanare-oro_db_1 bash -c "pg_restore --verbose -U vanare_dev -d vanare_dev -1  backups/$1 --no-privileges --no-owner"
docker start vanare-oro_php_1
docker exec -it vanare-oro_php_1 bash -c "app/console doctrine:migrations:migrate --no-interaction"
docker exec -it vanare-oro_php_1 bash -c "
    app/console doctrine:cache:clear-metadata &&
    app/console doctrine:cache:clear-result &&
    app/console doctrine:cache:clear-query"
    
    
docker ps -a`
docker rm $HASH

docker images
docker rmi $HASH

docker exec -it vanare-oro_php_1 bash -c "
    app/console cache:clear --env=dev &&
    mkdir -p app/cache/dev &&
    chmod -R 777 app/cache/dev"
    
    
sudo docker stop $(docker ps -aq)
sudo docker rm $(docker ps -aq)
docker rmi $(docker images -q)
