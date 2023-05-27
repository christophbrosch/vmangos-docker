# Dockerized vMangos

Welcome to the Dockerized vMangos repository! Here you will find a convenient and straightforward way to set up and run vMangos, the open-source MMORPG server emulator, using Docker.

vMangos is a powerful emulator that allows you to create your own private World of Warcraft server. It supports various patches of World of Warcraft Vanilla (1.3 - 1.12.1) and provides the defacto best experience for players. By containerizing vMangos with Docker, we aim to simplify the setup process and make it easier for developers and enthusiasts to get started with running their own private WoW server for local play.

## Features

- **Dockerized Environment**: The repository provides a pre-configured Docker environment that encapsulates all the necessary dependencies, including the database and the server files, allowing for easy deployment and reproducibility.

- **Flexible Configuration**: With Docker, you can easily customize and modify the vMangos server settings, database configurations, and other aspects to match your specific requirements.

- **Scalability and Isolation**: Docker enables efficient scaling and isolation of the vMangos server, allowing you to run multiple instances simultaneously or distribute the load across multiple servers.

## Getting Started

To get started, follow these simple steps:

- **Install Docker**: If you don't have Docker installed, visit the official Docker website for installation instructions specific to your operating system. We recommend to setup docker desktop regardless of operating system. Since it will provide the most user-friendly environment.

- **Clone the Repository**: Clone this repository to your local machine using Git or download it as a ZIP file and extract it. Rename or copy the .env.example file to .env. Important configurations can be done in this file.

- **Build the Server**: Open a terminal or command prompt, navigate to the repository's root directory, and build the Docker image using following command: `docker compose up compile`. The command assumes you have docker and docker desktop installed.

- **Provide required files**: The server built in the previous step requires data extracted from a vanilla game client. For legal reasons we can not provide these files. The required folder should contain dbc, maps, nmaps, vmaps and 5875 folder.

- **Launch the database**: Use the following command: `docker compose up -d mariadb phpmyadmin` to start the database and an convenient database client accessed via webbrowser. The GUI can be accessed under `http://localhost:8080` and should automaticly connect to the mariadb instance.

- **Start mangosd and realmd**: Once the database is up and running, which might take a few minutes. You can check the progress using docker desktop, you can start mangosd and realmd with the command: `docker compose up -d mangosd realmd`.

- **Change realmlist**: To connect to your local server, change the entry inside realmlist.wtf to "set realmlist localhost".

- **Connect and play**: The default gamemaster accounts credentials are `admin:admin`. Enjoy!

For detailed instructions and additional information, please refer to the repository's documentation.

## Contributing

We welcome contributions from the community to improve this Dockerized vMangos project. If you encounter any issues, have suggestions, or want to add new features, feel free to open an issue or submit a pull request.

## License

This repository is licensed under the MIT License. You are free to use, modify, and distribute the code within the terms and conditions specified in the license.

## Acknowledgments

We would like to express our gratitude to the vMangos development team for their outstanding work on the original vMangos project, which has made this Dockerized version possible.

We would also thank the authors of https://github.com/diff3/vMangos-docker for providing a base we built up upon.
