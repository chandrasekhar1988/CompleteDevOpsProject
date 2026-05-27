FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
# ఎన్విరాన్‌మెంట్ వేరియబుల్స్ సెట్ చేయడం
ENV DB_HOST="localhost"
ENV DB_PORT="3306"