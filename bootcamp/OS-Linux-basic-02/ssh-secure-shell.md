# SSH - secure shell

# authentication
1 - username and password
2 - SSH  key pair
  - private and poublic key
    - private is stored with my pc
    - poubklic key - can be shared - with the serveer - allow the connection

## SSH for services
CI server ----> Remote server
in  Firewall we allow access on port 22.

# Create a VM - DigitalOcean
1. create a droplet
2. authentication: 
  - username and password
  - user: root
  - psw: nanaDigitalOcean1a
  - hostname: ubuntu-s-nana-jirka-droplet
  - IP: 207.154.200.33

### Generate SSH key pair
```bash
ssh-keygen -t rsa # -t rsa: type of cryptographic algorithm 
```
 - passphrase: usually not need it. can be empty.
 - id_rsa.pub - public key
 - id_rsa - private key

### authorized_keys
copy the content of id_rsa.pub to the authorized_keys file on the server
use the key in server

**.ssh/known_hosts** - file with the list of servers

**login with private key**
```bash
ssh -i ~/.ssh/id_rsa root@207.154.200.33
```

Note: Use our TWN DigitalOcean referral link - https://m.do.co/c/a38b57d839ea - to claim $200 in free credits for your DigitalOcean environment.
The offer is valid for 60 days after sign-up!
https://cloud.digitalocean.com/droplets/new?i=1718be&fleetUuid=879b95de-2362-40de-a6b8-a0e562a1fdc5&distro=ubuntu&distroImage=ubuntu-24-04-x64&region=sfo2&size=s-2vcpu-4gb-120gb-intel