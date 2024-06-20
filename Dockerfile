#FROM openjdk:17-jdk-alpine

#COPY target/sistema-de-nutricao-0.0.1-SNAPSHOT.jar app-1.0.0.jar

#ENTRYPOINT [ "java", "-jar", "app-1.0.0.jar" ]

# Use uma imagem base do OpenJDK 17 que seja adequada para sua aplicação Java
FROM openjdk:17

# Diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar o arquivo JAR da aplicação para o contêiner
COPY target/sistema-de-nutricao-0.0.1-SNAPSHOT.jar /app/sistema-de-nutricao.jar

# Expor a porta onde a aplicação irá rodar (ajuste conforme necessário)
EXPOSE 8080

# Comando para iniciar a aplicação Java
CMD ["java", "-jar", "sistema-de-nutricao.jar"]
