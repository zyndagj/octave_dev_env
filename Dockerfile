FROM ubuntu:xenial

# Install octave
RUN apt-get update && apt-get install -y \
	octave \
	git \
	sudo \
	vim-nox && apt-get clean

# Install tini
ENV TINI_VERSION v0.17.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/local/bin/tini
RUN chmod +x /usr/local/bin/tini

# Add new user entrypoint
ADD entry.sh /usr/local/bin/entry.sh
RUN chmod +x /usr/local/bin/entry.sh
ENTRYPOINT ["tini","--"]
CMD ["entry.sh"]
