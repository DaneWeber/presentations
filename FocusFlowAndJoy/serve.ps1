cd ../../
start 'http://localhost:80/presentations/FocusFlowAndJoy/FocusFlowAndJoy.html'
docker run -p 80:80 -v ${PWD}:/usr/share/nginx/html nginx
