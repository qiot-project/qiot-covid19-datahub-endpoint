./mvnw clean package -Pnative -Dquarkus.profile=staging -Dquarkus.native.container-build=true -Dquarkus.native.container-runtime=docker
docker rmi quay.io/qiotcovid19/qiot-datahub-endpoint-mqtt:1.0.1
docker build -f src/main/docker/Dockerfile.native -t quay.io/qiotcovid19/qiot-datahub-endpoint-mqtt:1.0.1 .
docker push quay.io/qiotcovid19/qiot-datahub-endpoint-mqtt:1.0.1
#docker run -it --rm -p 5000:5000 --net host quay.io/qiot/qiot-datahub-endpoint-mqtt