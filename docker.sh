docker run -dit -p 80:80 -p 9000:9000 -v /var/run/mysqld/mysqld.sock:/var/run/mysqld/mysqld.sock -v $HOME/.ssh:/root/.ssh -v $HOME/Web/html:/var/www/html --name=development perfectweb/development

