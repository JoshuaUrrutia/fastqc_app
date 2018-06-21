FROM jurrutia/ubuntu17:0.1.0

# ENV PATH "/opt/bin/:$PATH"
# ADD config.yml /config.yml
# ADD src /opt/src


RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install wget -y \
    && apt-get install zip -y \
    && apt-get install default-jre -y

RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip \
    && unzip fastqc_v0.11.7.zip \
    && rm fastqc_v0.11.7.zip \
    && chmod +x FastQC/fastqc

ENV PATH "/FastQC/:$PATH"
