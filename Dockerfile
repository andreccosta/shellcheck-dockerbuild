FROM debian:stable-slim
MAINTAINER André Costa <andreccosta@me.com>

RUN apt-get update && apt-get install -y \
	file shellcheck \
	--no-install-recommends && \
	rm -rf /var/lib/apt/lists/*

CMD ["shellcheck"]
