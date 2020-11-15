# docker-spyglass

This is the actual Dockerfile and source material for creating the container
that people will log into. Use of this is covered in the Spyglass webapp
documentation.

To summarize: Compile SudoSH for your desired platform, and drop the binary
in this directory, then run `sudo docker build --no-cache -t sshsession .`
to generate the container people will be placed in.

## Disclaimer

DISTRIBUTION STATEMENT A. Approved for public release: distribution unlimited.

This material is based upon work supported by the Under Secretary of Defense for Research and Engineering under Air Force Contract No. FA8721-05-C-0002. Any opinions, findings, conclusions or recommendations expressed in this material are those of the author(s) and do not necessarily reflect the views of the Under Secretary of Defense for Research and Engineering.

The software/firmware is provided to you on an As-Is basis
