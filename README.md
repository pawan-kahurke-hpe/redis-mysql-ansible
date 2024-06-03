# redis-mysql-ansible
Install Redis 4 on Amazon Linux
This playbook is intended to automate the installation of Redis 4 on Amazon Linux.

Update the package repository: This task updates the package repository to ensure the latest packages are available for installation.

Install prerequisites: Installs necessary packages like gcc, make, and wget which are required for compiling Redis from source.

Download Redis: Downloads the Redis source code from the specified URL.

Extract Redis: Extracts the downloaded Redis source code archive.

Navigate to Redis directory: Changes the current directory to the Redis source code directory.

Compile Redis: Compiles Redis from source code.

Install Redis binaries: Installs Redis binaries.

Create a configuration directory: Creates a directory for Redis configuration files.

Create Redis configuration file: Creates an empty Redis configuration file.

Copy Redis configuration file: Copies the default Redis configuration file to the created configuration directory.

Edit the Redis configuration file: Modifies the Redis configuration file to allow connections from any IP address.

Copy systemd unit file for Redis: Copies a systemd unit file for Redis service management.

Reload systemd to read the new unit file: Reloads systemd to ensure it reads the newly added unit file.

Enable and start Redis service: Enables and starts the Redis service.

Setup MySQL, Node Exporter, and Promtail
This playbook performs a series of tasks to set up MySQL, Node Exporter, and Promtail.

Create directory if they don't exist: Creates necessary directories for MySQL and applications.

Download MySQL RPM: Downloads MySQL RPM package.

Install MySQL RPM: Installs the downloaded MySQL RPM package.

Install new MySQL RPM: Installs the imported MySQL RPM package.

Installing MySQL-server: Installs MySQL server.

Installing the python-selinux: Installs python-selinux package.

Copy shell script: Copies a shell script related to MySQL.

Execute the command in remote shell: Executes a shell script related to MySQL.

Copy my.cnf: Copies MySQL configuration file.

Start MySQL service: Starts the MySQL service.

Get temporary password: Retrieves temporary password for MySQL root user.

Set new root password from default temporary password: Sets a new password for MySQL root user.

Download Node Exporter: Downloads Node Exporter.

Extract tar file: Extracts the downloaded Node Exporter tar file.

Move Node Exporter to bin: Moves Node Exporter binary to bin directory.

Adding user: Adds a system user for Node Exporter.

Creating Node Exporter service: Creates a systemd service file for Node Exporter.

Adding content to Node Exporter service: Adds content to the Node Exporter service file.

Start Node Exporter service: Starts the Node Exporter service.

Download Promtail: Downloads Promtail.

Extract Promtail zip file: Extracts the downloaded Promtail zip file.

Adding user for Promtail: Adds a system user for Promtail.

Copy Promtail configuration file: Copies Promtail configuration file.

Creating Promtail service file: Creates a systemd service file for Promtail.

Start Promtail service: Starts the Promtail service.

This playbook automates the setup process for MySQL, Node Exporter, and Promtail, including downloading necessary binaries, setting up configuration files, and starting services
