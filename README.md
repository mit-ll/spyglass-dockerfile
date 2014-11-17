# docker-spyglass

This is the actual Dockerfile and source material for creating the container
that people will log into. Use of this is covered in the Spyglass webapp
documentation.

To summarize: Compile SudoSH for your desired platform, and drop the binary
in this directory, then run `sudo docker build --no-cache -t sshsession .`
to generate the container people will be placed in.
