FROM tjubdm/ml-lab:java8

COPY jars /opt/jars

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["--jarName", "mrmd", "-i", "/data/common/input/feature.arff", "-o", "/data/common/output.txt"]
