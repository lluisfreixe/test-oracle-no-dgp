FROM eclipse-temurin:8-jdk-focal
RUN echo "==================================================================="
RUN echo " Entorn NO-DGP "
RUN echo " URL de connexio a Oracle "
RUN echo " spring.datasource.url = jdbc:oracle:thin:@10.46.148.86:1521:OPENC "
RUN echo "==================================================================="
ENV TZ=Europe/Madrid
ADD target/test-oracle-no-dgp-1.0.jar test-oracle-no-dgp-1.0.jar
ENTRYPOINT ["java", "-jar", "test-oracle-no-dgp-1.0.jar"]

