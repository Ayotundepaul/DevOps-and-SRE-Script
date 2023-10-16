# DevOps-and-SRE-Script
DevOps and SRE Script Collection

This repository contains a collection of Bash scripts tailored for Software Engineers, DevOps Engineers, and Site Reliability Engineers (SRE).

## Table of Contents

- [Installation](#installation)
- [Scripts Overview](#scripts-overview)
  - [Clone All Repos](#clone-all-repos)
  - [Create Docker Image](#create-docker-image)
  - [Monitor Disk Space](#monitor-disk-space)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Clone this repository:
   ```bash
   git clone [URL_TO_THIS_GITHUB_REPO]
   ```
2. Navigate to the cloned directory:
   ```bash
   cd path_to_cloned_directory
   ```
3. Make the scripts executable:
   ```bash
   chmod +x *.sh
   ```

## Scripts Overview

### Clone All Repos

**Script Name:** `clone_all_repos.sh`

**Purpose:** Clone all repositories of a user from GitHub.

**Usage:**
```bash
./clone_all_repos.sh [GITHUB_USERNAME]
```

Replace `[GITHUB_USERNAME]` with the desired GitHub username.

### Create Docker Image

**Script Name:** `create_docker_image.sh`

**Purpose:** Build a Docker image from a Dockerfile and push it to Docker Hub.

**Usage:**
```bash
./create_docker_image.sh [IMAGE_NAME] [TAG]
```

Replace `[IMAGE_NAME]` with the desired image name and `[TAG]` with the desired tag.

### Monitor Disk Space

**Script Name:** `monitor_disk_space.sh`

**Purpose:** Monitor disk space and send an alert (to a log file for this example) if it goes above a threshold.

**Usage:**
```bash
./monitor_disk_space.sh
```

Alerts will be logged to `/var/log/disk_space_monitor.log`.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please submit a pull request or create an issue.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---
