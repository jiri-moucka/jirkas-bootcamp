# Package Manager
files are split acroos different folders.

package manager resolve where to install which file.
package manager for ubuntu - apt

## commands
1  su - jimo
2  sudo apt install openjdk-17-jre-headless
3  java -version
4  sudo apt remove openjdk-17-jre-headless
5  sudo apt remove openjdk-11-jre-headless
6  java
7  history 10

## SNAP
modern package manager. all files are package into one package.
it is self containded dependies
automatic updates.
larger file size.
resource consumer.

## apt 
- dependies shared and distributed into more files.
 - for specific linux
 - manual updates.
 - smaller instalation size.
 - use when is possible.
 - the rest are alternatives.

## Add repository
when installing new application.
PPA - personal package archive.
 - for distributin the software
 - personal repo.

## YUM
for red-hat based linux.


# APT-GET
apt is more user friendly.


# video summary
Here is the summary of the **Package Manager** lecture from the DevOps Bootcamp.

```markdown
# Summary: Package Manager - Installing Software on Linux
**Course:** DevOps Bootcamp (TechWorld with Nana)  
**Module:** Operating Systems & Linux Basics  

## 1. What is a Package Manager?
The lecture introduces the concept of a **Package Manager** by comparing it to a mobile **App Store** (like Google Play or Apple App Store).
* **Old Way (Windows style):** You search the web for an `.exe` installer, download it, and run it. This is risky (security) and hard to manage (updates).
* **Linux Way (Package Manager):** You use a trusted, centralized tool to browse, install, and update software from official sources.

### Key Benefits
1.  **Centralized Repository:** Software comes from a trusted storage location (Repository) maintained by the Linux distribution.
2.  **Dependency Management:** If an application requires other libraries to run, the package manager automatically finds and installs them for you.
3.  **Easy Updates:** You can update *all* installed software on your system with a single command, rather than updating each app individually.

---

## 2. Package Repositories
* A **Repository** is a server (or collection of servers) that holds the software packages.
* Your Linux system has a list of these URLs in a configuration file (e.g., `/etc/apt/sources.list` on Ubuntu).
* When you run an update command, your computer talks to these servers to see what new versions are available.

---

## 3. Common Package Managers
Different Linux distributions use different package management systems. The two most common families are:

### A. Debian / Ubuntu Family
* **Package Format:** `.deb`
* **Package Manager Command:** `apt` (Newer, user-friendly) or `apt-get` (Older, scripting).
* **Repositories:** Maintained by Canonical (Ubuntu) or Debian community.

### B. RedHat / CentOS / Fedora Family
* **Package Format:** `.rpm`
* **Package Manager Command:** `yum` (Older, standard on CentOS 7) or `dnf` (Newer, standard on Fedora/RHEL 8+).
* **Repositories:** Maintained by RedHat or the community (EPEL).

---

## 4. Essential Commands (Ubuntu/Debian Example)
The lecture focuses heavily on `apt` as it is the standard for the bootcamp's labs.

### 1. Refreshing the Repository List
Before installing anything, you must sync your local list of software with the remote server.
```bash
sudo apt update

```

* *Note:* This does **not** update software; it only updates the *list* of available versions.

###2. Installing SoftwareTo install a specific tool (e.g., `vim`, `curl`, `git`):

```bash
sudo apt install package_name
# Example:
sudo apt install git

```

###3. Searching for SoftwareIf you don't know the exact name of a package:

```bash
sudo apt search keyword
# Example:
sudo apt search python

```

###4. Removing SoftwareTo uninstall a package:

```bash
sudo apt remove package_name

```

---

##5. Artifacts & Differing Formats* Sometimes software isn't in the official repository. In these cases, you might download a standalone file (Artifact).
* **Ubuntu:** You might download a `.deb` file manually and install it using `dpkg -i file.deb` (though `apt` is preferred).
* **CentOS:** You might download an `.rpm` file manually and install it using `rpm -i file.rpm`.

##6. Practical TakeawayAs a DevOps engineer, you will rarely install software via a GUI. You will almost always use these CLI commands (`apt install ...`) inside **scripts** or **Dockerfiles** to automate the setup of servers.

```

```