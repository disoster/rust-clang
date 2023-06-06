# rust-clang
Docker image for Rust compiler with libclang-dev

## How to build image
```
docker build -t 'disoster/rust-clang:1.70-slim-bullseye' .
```

## How to use image
Compile your app inside the Docker container
To compile, but not run your app inside the Docker instance, you can write something like:

```
$ docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp disoster/rust-clang:1.70-slim-bullseye cargo build --release
```
This will add your current directory, as a volume, to the container, set the working directory to the volume, and run the command cargo build --release. This tells Cargo, Rust's build system, to compile the crate in myapp and output the executable to target/release/myapp.

## License
The Dockerfile of the image is MIT licensed.

As with all Docker images, images contain software that may be under different licenses.
