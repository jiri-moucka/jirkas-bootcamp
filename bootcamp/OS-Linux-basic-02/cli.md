# Introduction to Command Line Interface (CLI - Part 1)

## 1. What is the CLI?
The **Command Line Interface (CLI)** is a text-based interface used to interact with a computer's operating system.
* **CLI vs. GUI**: unlike the **Graphical User Interface (GUI)**, where you use a mouse to click icons, buttons, and windows, the CLI relies on you typing text commands to perform specific tasks.

## 2. Why is CLI Important for DevOps?
While modern operating systems (Windows, macOS, Ubuntu) provide user-friendly GUIs, the CLI is a critical tool for DevOps engineers for several reasons:
* **Server Management**: Most servers (especially Linux servers in the cloud) do not have a GUI installed to save resources. You must manage them remotely using text commands.
* **Efficiency**: Once mastered, typing commands is often much faster than navigating through multiple nested menus in a GUI.
* **Automation**: CLI commands can be saved into scripts (like Bash scripts) to automate repetitive tasks, which is a core principle of DevOps.

## 3. Key Terminology
* **Terminal**: The actual window or application that you open on your screen to type commands.
* **Shell**: The program running *inside* the terminal that interprets your commands and passes them to the operating system to execute.
    * **Bash (Bourne Again SHell)**: The most common default shell for Linux and macOS.

## 4. The Command Prompt
When you open a terminal, you are greeted by the **Command Prompt**. It typically provides context about your current session.

**Structure Example:**
`user@computername:~$`

* `user`: The username of the currently logged-in user.
* `@`: Separator.
* `computername`: The hostname of the machine you are working on.
* `:`: Separator.
* `~`: home directory - Represents the current directory (the tilde `~` specifically denotes the user's **Home Directory**).
* `$`: The symbol indicating the end of the prompt, waiting for your input.
    * `$`: Indicates a standard regular user.
    * `#`: Usually indicates the **Root** (superuser/admin) user.

## 5. Accessing the CLI
* **Linux/macOS**: Open the built-in "Terminal" application.
* **Windows**: Windows has its own command line (cmd/PowerShell), but for DevOps, it is often recommended to use a Linux-like environment such as **Git Bash** or **WSL (Windows Subsystem for Linux)** to practice standard Linux commands.