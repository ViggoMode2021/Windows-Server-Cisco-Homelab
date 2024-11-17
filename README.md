# Windows-Server-Cisco-Homelab

# Windows-Server-Cisco-Homelab

Overview: Utilize my physical networking equipment to create a homelab to practice networking concepts and how they 
work in a domain capacity. There are two versions that I have created: a flat network version with just VLAN 1 and
a version with two VLANS (10 & 20).

Materials:

- Cisco 2950 (Switch) 24 port 
  - https://ciscocity.com/cmsfiles/mainportal/shop/files/cisco%202950%20Datasheet%20cisco%20city.pdf
- Cisco 881 (Router) x2
  - https://www.tonitrus.com/es/redes/cisco/router/cisco-800-router/10104056-003-cisco-cisco881-k9-cisco-881-ethernet-sec-router/
- Dell PC (PC) x2 running Windows Vista
- Lenovo Laptop (Laptop) running Windows 10
- HP Laptop (Laptop) running Windows 10
- VirtualBox running Windows Server 2019 with the following specs:
  - 10605 MB Base Memory
  - 1 CPU
  - Network adapter set to bridged

Steps:

- Connect devices as shown in the topology diagram and Packet Tracer file
- Power up Windows Server VM and set the IP address (10.10.10.10/24)of the machine
- Install Active Directory and create a user
- Promote server to a domain controller
- Create DHCP pool (10.10.10.2/24 - 10.10.10.254, Router set to 10.10.10.1, DNS set to 10.10.10.10)
- Set router interface (link to switch) to match the DHCP server (10.10.10.1/24)
- Check to see if machines receive IP addresses from DHCP
- Join PCs to domain
- Setup machine as RADIUS server and Cisco router as RADIUS client
