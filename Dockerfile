FROM redhat/ubi9-minimal

# Install jq 
RUN microdnf install -y jq && \
    microdnf clean all

# Copy script and make it executable
COPY fetch_title.sh /fetch_title.sh
RUN chmod +x /fetch_title.sh

# Run script on container start
CMD ["/fetch_title.sh"]
