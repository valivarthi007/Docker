# Use an image with the SDK for compilation
FROM openjdk:8-jdk-alpine AS builder

#Setting the working directory for initial output
WORKDIR /out

#Geting the source code inside the image
COPY *.java .

#Compiling the source code 
RUN javac Hello.java

#Creating a lightweight runtime image
FROM openjdk:8-jre-alpine

# Copy compiled artifacts from previous image
COPY --from=builder /out/*.class .

#Executing the Application
CMD ["java","Hello"]