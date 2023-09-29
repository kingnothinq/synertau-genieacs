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
3. [PyCharm](https://www.jetbrains.com/ru-ru/pycharm/download) (optional).

## Usage

1. Build the container using Docker Compose:
    ```shell
    docker compose build
    ```
   This command should be run from the root directory where `Dockerfile` is located.
   
2. Now it is possible to run the project inside the Docker container:
    ```shell
    docker compose up
    ```
   When containers are up server starts at [http://0.0.0.0:3000](http://0.0.0.0:3000). You can open it in your browser.

3. Do the initial configuration
4. Add `pss-nvram_acl.tar.bz2` to the provisioning files:
    Admin -> Files -> New
    - Type: 2 Web Content (could be any)
    - OUI: E0BB0C
    - Product class: Empty
    - Version: Empty
    - File: `pss-nvram_acl.tar.bz2`
5. Configure the device page:
   Admin -> Config -> Edit device page -> Paste the configuration from `device_page_config.yaml`

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
