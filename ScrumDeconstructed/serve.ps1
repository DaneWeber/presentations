cd ../../
start 'http://localhost:80/presentations/ScrumDeconstructed/ScrumDeconstructed.html'
docker run -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
