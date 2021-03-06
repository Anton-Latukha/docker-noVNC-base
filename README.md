# Docker noVNC base image

[![Release][release-img]][release-url]

<table>
  <tr>
  <th style="width:200px"><img src="https://cdn.rawgit.com/Anton-Latukha/docker-noVNC-base/master/images/docker-logo.svg" alt="Docker" width="150"></th>
  <th style="font-size:90px">+</th>
  <th style="width:200px"><img src="https://cdn.rawgit.com/Anton-Latukha/docker-noVNC-base/master/images/noVNC-logo.svg" alt="noVNC" width="125"></th>
  </tr>
</table>

----
Image created to streamline usage of noVNC in Docker for any desktop environment.

You can use this image to install and provide any desktop environment and configuration, on the top of this image.

----

## Installation

Linux & Windows & OS X:

```sh
docker pull latukha/noVNC-base
```

## Usage example
i
It is a base image, use it to build your-own setup, like:

```Dockerfile
FROM latukha/noVNC-base
MAINTAINER Anton Latukha <anton.latukha+docker@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends lxqt
...
```

_For more examples and usage, please refer to the [Wiki][wiki]._

## Development on this image

Ways to develop:

a) Straight creating image with Dockerfile.

b) Logging in to container, with `docker run -it latukha/noVNC-base /bin/bash` and building setup and observing process live. It can be saved with `docker commit --author "Name mail@email.com" --pause <containerID> <your/repository><:tag>` or translated to Dockerfile.

c) Using a mix of Dockerfile and live logging in to your image container `docker run -it <image> /bin/bash`

## Release History

* 0.0.1
    * README.md and starting work

## Contributing

Happy for improvements and reuse by you.

Anton Latukha – [@piroxiline](https://twitter.com/piroxiline) – Anton.Latukha+docker@gmail.com

1. Fork it (https://github.com/Anton-Latukha/docker-noVNC-base/fork)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Please tick `Squash and merge` while creating Pull Request
6. Send the Pull Request
7. Thank you 8)

<!-- Markdown link & img dfn's -->
[release-img]: https://img.shields.io/badge/release-0.0.1-brightgreen.svg?style=flat-square
[release-url]: https://github.com/Anton-Latukha/docker-noVNC-base
[wiki]: https://github.com/Anton-Latukha/docker-noVNC-base/wiki
