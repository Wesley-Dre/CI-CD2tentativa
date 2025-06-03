# Usar imagem oficial do Java 17 JRE
FROM eclipse-temurin:17-jre

# Diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo JAR gerado pelo Maven
COPY target/*.jar app.jar

# Definir o comando de inicialização
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expor a porta da aplicação (ajuste se necessário)
EXPOSE 8080
