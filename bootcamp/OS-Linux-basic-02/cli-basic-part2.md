# Summary: Basic Linux Commands (CLI - Part 2)
**Course:** DevOps Bootcamp (TechWorld with Nana)
**Module:** Operating Systems & Linux Basics

## Overview
This lecture expands on the CLI foundations, introducing critical commands for file manipulation, viewing content, and managing user sessions. These tools are essential for navigating the Linux environment effectively before diving into complex permissions or scripting.

## Key Concepts & Commands

### 1. User & Session Management
* **`sudo` (SuperUser DO):**
    * **Description:** Executes a command with administrative (root) privileges. This is required for system-wide changes (like installing software).
    * *Usage:* `sudo <command>`
    * *Example:* `sudo apt update`
* **`su` (Switch User):**
    * **Description:** Switches the current shell session to another user account.
    * *Usage:* `su <username>`
    * *Example:* `su - jenkins` (The `-` loads the target user's environment variables).
* **`adduser` / `useradd`:**
    * **Description:** Creates a new user on the system.
    * *Usage:* `sudo adduser <new_username>`
    * *Note:* `adduser` is generally more interactive and user-friendly than `useradd`.
* **`whoami`:**
    * **Description:** Prints the username of the current user. Useful to verify if your `su` command worked.
    * *Usage:* `whoami`
* **`passwd`:**
    * **Description:** Changes the password for a user.
    * *Usage:* `passwd` (current user) or `sudo passwd <username>` (another user).

### 2. File & Directory Management
* **`mkdir` (Make Directory):**
    * Creates new folders.
    * *Usage:* `mkdir my-folder`
* **`touch`:**
    * Creates an empty file or updates the timestamp of an existing file.
    * *Usage:* `touch config.yaml`
* **`cp` (Copy):**
    * Copies files or directories.
    * *Usage:* `cp source_file destination_path`
    * *Recursive Copy:* `cp -r source_folder destination_folder` (Essential for copying directories).
* **`mv` (Move/Rename):**
    * Moves files/directories to a new location OR renames them.
    * *Rename:* `mv old_name.txt new_name.txt`
    * *Move:* `mv file.txt /home/user/Documents/`
* **`rm` (Remove):**
    * Deletes files or directories. **Warning: This is often irreversible.**
    * *Remove File:* `rm file.txt`
    * *Remove Directory:* `rm -r folder_name` (recursive delete).

### 3. Viewing File Content
* **`cat` (Concatenate):**
    * Prints the full content of a file to the terminal output.
    * *Usage:* `cat app.log`
* **`less`:**
    * Opens large files in a scrollable viewer (does not load the whole file at once).
    * *Usage:* `less huge_log_file.log`
    * *Navigation:* `q` to quit, arrows to scroll.
* **`head` / `tail`:**
    * Shows the first or last 10 lines of a file.
    * *Usage:* `tail -n 20 error.log` (Show last 20 lines).

### 4. Navigation Refresher
* **`pwd`:** Show absolute path of current directory.
* **`ls -la`:** List all files (including hidden) with details.
* **`cd ~`:** Go to home directory.
* **`cd ..`:** Go up one level.
* **`cd -`:** Go back to the previous directory.

### 5. Getting Help
* **`man`:** Opens the manual page (e.g., `man sudo`).
* **`--help`:** Prints a quick summary (e.g., `adduser --help`).