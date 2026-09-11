FROM alpine:latest
RUN apk add --no-cache ffmpeg
CMD ffmpeg -re -stream_loop -1 -i "https://drive.google.com/file/d/16vhCc3tvxEUAxoxUjdEw7bY9rru9ignu/view?usp=drivesdk" -c:v libx264 -pix_fmt yuv420p -maxrate 2048k -bufsize 2048k -c:a aac -b:a 128k -f flv "p8v4-4m9v-7vqh-zgg5-9551"
