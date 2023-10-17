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

---

## Additional Bash Scripts

### Backup a Directory

**Script Name:** `backup_directory.sh`

**Purpose:** Create a tarball (compressed archive) backup of a specified directory.

**Usage:**
```bash
./backup_directory.sh <directory_to_backup>
```

### Check Website Status

**Script Name:** `check_website_status.sh`

**Purpose:** Check the status of a website and print a message.

**Usage:**
```bash
./check_website_status.sh <website_url>
```

### Beautify Terminal

**Script Name:** `beautify_terminal.sh`

**Purpose:** Customize the terminal prompt to show the current directory, Git branch, and add some useful aliases.

**Usage:**
```bash
./beautify_terminal.sh
```
After running the script, you may need to restart your terminal or run `source ~/.bashrc` for the changes to take effect.

### Delete Old Files

**Script Name:** `delete_old_files.sh`

**Purpose:** Deletes files older than a specified number of days from a given directory.

**Usage:**
```bash
./delete_old_files.sh <directory> <days_old>
```

### Count Lines of Code

**Script Name:** `count_lines_of_code.sh`

**Purpose:** Counts lines of code in a given directory.

**Usage:**
```bash
./count_lines_of_code.sh <directory>
```

---



## Contributing

Contributions are welcome! If you have suggestions or improvements, please submit a pull request or create an issue.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---
