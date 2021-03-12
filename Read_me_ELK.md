

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.


![ELK Diagram](https://github.com/blackrhinoceros/PennSecurity/blob/main/Diagrams/ELK2.png)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above, or, select portions of the _/etc/ansible/yml_playbooks/install-elk.yml_  file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available and efficient, in addition to restricting overwhelming traffic (as in the case of a DDoS attack) to the network. A Jump Box Provisioner allows for entry into a network from a single node (like your home computer) which can be made highly secure.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the file systems and system logs through Filebeat, and to record metrics from the OS and other services on the server through Metricbeat.

The configuration details of each machine may be found below.

Note: The servers Web-1, Web-2, and Web-3 are all DVWA Containers.

| Name          | Function | IP Address | Operating System |
|---------------|----------|---------------------------------|------------------|
| Jump Box      | Gateway  | 40.88.33.94 / 10.0.0.4   | Linux            |
| Web-1         | Server   | 10.0.0.5   | Linux            |
| Web-2         | Server   | 10.0.0.6   | Linux            |
| Web-3         | Server   | 10.0.0.10  | Linux            |
| PurpleELK     | Server   | 10.1.0.5   | Linux            |



### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

_PUBLIC IP Address from home terminal_

Machines within the network can only be accessed by the Jump Box Provisioner: Public IP 40.88.33.94 , VNET IP 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------------|
| Jump Box   | Yes/No              | Home IP              |
| Web-1      | No                  | 10.0.0.4             |
| Web-2      | No                  | 10.0.0.4             |
| Web-3      | No                  | 10.0.0.4             |
| PurpleELK  | No/Yes                  | 20.57.161.201 / 10.0.0.4             |



### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows us to plug in different values to our playbook and use it indefinitely to configure similar structures. We can put the same commands into multiple servers from the same playbook.

The playbook implements the following tasks:

* Installs: docker.io
* Installs: python-pip
* Installs: docker
* Expands the available memory for the application (systctl -w vm.max_map_count=262144)
* Launches the ELK container


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

/Users/vondon/Desktop/Screenshots_for_Project1/sudo_docker_ps_screenshot.png



### Target Machines & Beats
This ELK server is configured to monitor the following machines:

* Web-1: 10.0.0.5
* Web-2: 10.0.0.6
* Web-3: 10.0.0.10

We have installed the following Beats on these machines:

* Filebeat
* Metricbeat


These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Run the following command to copy the Filebeat playbook to the Ansible node: 

```curl https://gist.githubusercontent.com/slape/5cc350109583af6cbe577bbcc0710c93/raw/eca603b72586fbe148c11f9c87bf96a63cb25760/Filebeat > /etc/ansible/files/filebeat-config.yml ```

- Edit the _/etc/ansible/hosts_ file to include the following lines, immediately below your listing of _[webservers]_. Under _[elk]_, insert the private (internal, VNET) IP of your ELK server:

```[elk]```

```<YOUR.ELK.PRIVATE.IP> ansible_python_interpreter=/usr/bin/python3 ``` 

![hosts_file] (https://github.com/blackrhinoceros/PennSecurity/blob/main/Images/hosts_file_screenshot.png)

* When using the playbook for installing ELK, it will refer to the _[elk]_ section of the _hosts_ file. When using the playbook for installing Filebeats, it will refer to the _[webservers]_ section of the host file.

* Run the playbook:
``` ansible-playbook filebeat-playbook.yml ```
* Navigate to ```http://<YOUR.ELK.PUBLIC.IP>:5601/app/kibana``` to check that the installation worked as expected.

