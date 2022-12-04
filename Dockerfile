FROM alpine

WORKDIR /app

COPY task.cpp .

RUN apk update
RUN apk add g++

RUN g++ task.cpp -o task

CMD ["./task"]