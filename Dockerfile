FROM ubuntu:24.04

# ENV GODOT_VERSION="4.5.1-stable"

RUN apt-get update && apt-get install -y \
    wget unzip mono-complete dotnet-sdk-8.0

# RUN wget https://github.com/godotengine/godot/releases/download/${GODOT_VERSION}/Godot_v${GODOT_VERSION}_linux.x86_64.zip -O /tmp/godot.zip \
#     && unzip /tmp/godot.zip -d /usr/local/bin/ \
#     && rm /tmp/godot.zip \
#     && mv /usr/local/bin/Godot_v${GODOT_VERSION}_linux.x86_64 /usr/local/bin/godot \
#     && chmod +x /usr/local/bin/godot

RUN mkdir /app \
    && wget https://github.com/shadecoredev/Headless-HelloWorld-Godot-app/raw/refs/heads/main/build/helloworld_godotapp_linux_headless.x86_64 -O /app/helloworld_godotapp_linux_headless.x86_64 \
    && chmod +x /app/helloworld_godotapp_linux_headless.x86_64

CMD ["./app/helloworld_godotapp_linux_headless.x86_64"]