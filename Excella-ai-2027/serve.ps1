cd ../../
start 'http://localhost:80/presentations/Excella-ai-2027/Excella-ai-2027.html'
docker run -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
