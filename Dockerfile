FROM busybox:1.36.0

ENV REPO_PATH="https://raw.github.com/entando-ps/cds/entando720/entando-data/" \
    ARCHIVE_NAME="entando720.tar.gz" \
    FORCE_CDS=false \
    PAUSE=false

COPY --chmod=0755 init.sh /init.sh

ENTRYPOINT [ "/init.sh" ]
