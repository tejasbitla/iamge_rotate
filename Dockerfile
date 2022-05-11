FROM ubuntu
RUN apt-get update && apt-get install -y \
    cmake \
    coreutils \
    gcc \
    g++ \
    libopencv-dev
WORKDIR /app
COPY build/image_rotate .
COPY *.jpg .
ENTRYPOINT ["./image_rotate", "plane.jpg plane_out.jpg"]