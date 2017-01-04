FROM tjubdm/ml-lab:java8

COPY jars /opt/jars

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD ["--jarName", "mrmd", "--input", "/data/common/input/feature.arff", "--output", "/data/common/output/output.txt"]
