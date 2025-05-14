FROM redhat/ubi9-minimal

# Install curl and jq, copy the script, make it executable
COPY fetch_title.sh /fetch_title.sh

RUN microdnf install -y curl jq && \
    chmod +x /fetch_title.sh && \
    microdnf clean all

# Run the script when the container starts
CMD ["/fetch_title.sh"]
