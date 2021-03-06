FROM rust:latest

WORKDIR /home

RUN apt update -y && apt install -y g++ gcc git curl wget nasm yasm libgtk-3-dev clang libxcb-randr0-dev libxdo-dev libxfixes-dev libxcb-shape0-dev libxcb-xfixes0-dev libasound2-dev libpulse-dev cmake
RUN git clone https://github.com/rustdesk/rustdesk-server-demo rustdesk-server

WORKDIR /home/rustdesk-server
RUN cargo install --path .

CMD [ "rustdesk-server" ]