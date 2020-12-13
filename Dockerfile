# Base image
FROM ubuntu

# Image Configuration
RUN /bin/bash -c 'echo This should be apt-get packages'
ENV myVar = "This is harder than it looks"
    myOtherVar = "Maybe not?"
