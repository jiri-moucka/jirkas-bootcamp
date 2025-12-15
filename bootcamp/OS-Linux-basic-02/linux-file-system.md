# Linux File System

## 1. Core Concept
In Linux, **everything is a file**. This includes:
- Configuration files
- Directories
- Hardware devices (printers, USBs, etc.)
- Processes

This creates a unified way to manage resources using standard file manipulation commands.

## 2. The Root Directory Structure
Unlike Windows, which uses drive letters (C:, D:), Linux uses a single hierarchical tree structure starting from the **Root** directory, represented by a forward slash (`/`).

### Key Directories
* **`/` (Root)**: The starting point of the file system hierarchy. All other directories and files are contained within this.
* **`/bin` (Binaries)**: Contains essential executable programs (commands) like `ls`, `cd`, `ping` that are available to all users.
* **`/sbin` (System Binaries)**: Contains essential system binaries, usually intended for the system administrator (root user), such as `reboot` or `fdisk`.
* **`/etc` (Etcetera/Configuration)**: Stores system-wide configuration files (e.g., network settings, user account lists in `/etc/passwd`). *Think of this as the "Registry" or "Settings" folder.*
* **`/home`**: Contains home directories for personal users. For a user named "nana", the home directory would be `/home/nana`. This is where users store documents, downloads, and personal settings.
* **`/root`**: The home directory specifically for the **root** user (superadmin). It is separate from `/home` for security reasons.
* **`/var` (Variable)**: Contains files that are expected to grow in size, such as system logs (`/var/log`), caches, and print queues.
* **`/tmp` (Temporary)**: Used for temporary files created by applications or users. These files are often deleted when the system reboots.
* **`/usr` (User System Resources)**: Contains user applications and utilities (secondary hierarchy). It often holds software installed by the user that isn't critical for the system to boot.

## 3. File Paths
Navigating the file system relies on specifying paths to files or directories.

* **Absolute Path**: Always starts from the root (`/`). It is the complete address of a file.
    * *Example:* `/home/nana/documents/file.txt`
* **Relative Path**: Starts from your **current** directory. It does not start with a slash.
    * *Example:* If you are already in `/home/nana`, you can just type `documents/file.txt`.
    * `.` (Dot): Represents the current directory.
    * `..` (Double Dot): Represents the parent directory (one level up).

## 4. Hidden Files
* Files that start with a dot (`.`) are **hidden** by default (e.g., `.bashrc`, `.git`).
* These are usually configuration files usually found in the user's home directory.
* To view them, you must use the `-a` (all) flag with the list command: `ls -a`.

## 5. File Types
The `ls -l` (long listing) command reveals the file type in the first character of the permissions string:
* `-`: Regular file (text, image, executable).
* `d`: Directory.
* `l`: Symbolic link (shortcut to another file).