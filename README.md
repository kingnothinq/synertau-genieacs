# Synertau GenieACS Server Configurator


## Installation

Clone the repository to your computer:
```bash
git clone https://github.com/kingnothinq/synertau_genieacs.git
```

### Requirements:

Install the appropriate software:

1. [Docker Desktop](https://www.docker.com).
2. [Git](https://github.com/git-guides/install-git).
3. [Postman](https://www.postman.com/downloads/).

## Usage
1. Clone project:
    ```shell
    git clone https://github.com/kingnothinq/synertau-genieacs.git
    ```
2. Build the container using Docker Compose:
    ```shell
    docker compose build
    ```
   This command should be run from the root directory where `Dockerfile` is located.
3. Now it is possible to run the project inside the Docker container:
    ```shell
    docker compose up -d
    ```
   When containers are up server starts at [http://0.0.0.0:3000](http://0.0.0.0:3000). You can open it in your browser.
4. Do the initial configuration with [Postman collections] (https://github.com/kingnothinq/synertau-genieacs/tree/master/postman)
5. Add `autoupdate` to the provisioning files:
    Admin -> Files -> New
    - Type: 1 Firmware Upgrade Image
    - OUI: E0BB0C
    - Product class: Empty
    - Version: Empty
    - File: `autoupdate`
6. Add `pss_settings.tar.bz2` to the provisioning files:
    Admin -> Files -> New
    - Type: 2 Web Content
    - OUI: E0BB0C
    - Product class: Empty
    - Version: Empty
    - File: `pss_settings.tar.bz2`	
7. Configure the index page:
   Admin -> Config -> Edit index page -> Paste the configuration from `config_index_page.yaml`
8. Configure the device page:
   Admin -> Config -> Edit device page -> Paste the configuration from `device_page_config.yaml`

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
