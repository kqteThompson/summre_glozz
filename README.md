## Glozz tool and files for SUMM-RE annotations

## Prerequisites

1. [Docker and docker-compose](https://docs.docker.com/get-docker/)
2. FTP credentials to access annotation files
3. Glozz annotation tool login key (in order to save annotations)

## First Run 

Initial setup of FTP and Docker container

1. Download the [glozz-tool](http://www.glozz.org/) from the Glozz website. Unzip and move the jar file to the same directory as the dockerfile and `/data/` directory.

        mv /glozz-platform-dist-2.1/glozz-platform.jar .

2. Download the annotation files from the ftp to the `\data\` directory, such that you have:

        * corpus\ containing .ac files
        * annotations\ containing .aa files
        * styles\ containing .as file
        * annotationModels\ .aam file

3. Build the docker container

        docker-compose build & docker-compose up

    This will build and run the docker container. Type either `Control D` or `docker-compose down` to shut down gracefully. The next time you are ready to use simply run `docker-compose up`.

## Annotation Workflow (WIP)

After the initial setup, the steps to annotating in Glozz then saving the annotations are:

1. Pull new files from FTP

2. Start the docker container

        docker-compose up

3. Remember to save work periodically while annotating in Glozz

4. Quit Glozz (`Control D` or `docker-compose down`) and then safeguard your changes, e.g. to the FTP (to be discussed further)

   **Note only the .aa files need to be saved**


 