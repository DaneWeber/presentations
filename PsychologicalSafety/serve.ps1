cd ../../
start 'http://localhost:80/presentations/PsychologicalSafety/PsychologicalSafety.html'
docker run -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
