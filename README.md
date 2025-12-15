# Godot 4.x Headless Server as a Container

A simple server that runs a HelloWorld headless Godot application inside a docker container.  
Created for the purpose of testing the deployment of a Godot dedicated server on a hosting. 

## Usage

### Build the container

This repo provides a Makefile that will build all Dockerfile containers.

```bash
make
```

### Run the container

To confirm it works, you can run the following commands once you have built
the container.

```bash
docker run godot
```

## References

- https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_dedicated_servers.html
