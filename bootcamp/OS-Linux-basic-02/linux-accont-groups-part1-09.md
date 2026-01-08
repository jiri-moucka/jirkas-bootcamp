# Linux Account Groups - user and permissions

## 3 categories
### root user, super user 
- always 1 user 
- unresctricted access

### user- standart user - regullar user 
-> /home/jirka

### service user - releavat to linux server distros - e.g. database server,
 -> each app is 
 -> practise for security

## more users
windows has central manage permissions system for users

Linux
does not have central manage permissions system.
user accont is registred on the hardware

### multiple users on the server
permision per  team member
tracebiity[linux-accont-groups-part1-09.md](linux-accont-groups-part1-09.md)

### user management permisssions
2 levels

- direct permissions to user
- give permissions to group

adduser, addgroup
more friendly, interactive

useradd, groupadd
more programatic, needs to add everything as a parameter

# commands
cat /etc/group
sudo usermod -g devops tom
sudo delgroup tom
sudo usermod -G admin tom
sudo usermod -aG newgroup tom
groups
groups  tom
su - tom
sudo useradd -G devops nicole
cat /etc/passwd
sudo gpasswd -d nicole devops



 
