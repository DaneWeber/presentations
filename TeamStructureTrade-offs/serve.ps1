cd ../../
start 'http://localhost:80/presentations/TeamStructureTrade-offs/TeamStructureTrade-offs.html'
docker run -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
