#!/bin/sh

case $1 in
   start)
      docker-compose up -d
      ;;
   stop)
      docker-compose stop
      ;;
   ps)
      docker-compose ps
      ;;
   db)
      docker-compose exec db bash
      ;;
   nginx)
      docker-compose exec nginx bash
      ;;
   php)
      docker-compose exec php bash
      ;;
   *) 
      echo "$0 [ start | stop | ps | db | nginx | php ]"	    
      ;;
esac
