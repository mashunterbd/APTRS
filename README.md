
# this tool modified only for Kali Nethunter arm64-64 bit Android device ( aarch64) architecture supported only one. if you want to use in another distro then you need to customise. 

##just customise last line in install.sh file 

```
wkhtmltopdf -V
if ! [ $? -eq 0 ]; then
    echo 'Download and Install wkhtmltopdf Version 0.12.6 for PDF Report Generation - https://wkhtmltopdf.org/downloads.html'
fi

# install libssl1.1_1.1.1 arm64
dpkg --install libssl1.1_1.1.1f-1ubuntu2_arm64.deb

#Clean libssl deb file
rm libssl1.1_1.1.1f-1ubuntu2_arm64.deb

# Check if wkhtmltopdf is installed
if command -v wkhtmltopdf &>/dev/null; then
    # Remove wkhtmltopdf if it is installed
    sudo apt purge wkhtmltopdf
fi

# Install specified version of wkhtmltopdf
sudo dpkg --install wkhtmltox_0.12.6-1.buster_arm64.deb

# Clean up downloaded .deb file
rm wkhtmltox_0.12.6-1.buster_arm64.deb
```
You need to remove this line and add your device architecture supported wkhtmltox_0.12.6 .deb and libssl1.1_1.1.1f .deb pkg 
</br>

some reference link for download wkhtmltopdf tool: https://wkhtmltopdf.org/downloads.html </br>

<p align="center">
  <img src="https://repository-images.githubusercontent.com/558932728/e8ff2c72-3797-41ab-9505-90c9008cc472" />
</p>
APTRS (Automated Penetration Testing Reporting System) is an automated reporting tool in Python and Django. The tool allows Penetration testers to create a report directly without using the Traditional Docx file. It also provides an approach to keeping track of the projects and vulnerabilities. 
<br/><br/>

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
[![sponsors](https://img.shields.io/github/sponsors/Anof-cyber)](https://github.com/sponsors/Anof-cyber)
[![Python Version](https://img.shields.io/badge/Python-3.8-brightgreen)](https://www.python.org/downloads/release/python-3810/)
![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/Anof-cyber/APTRS?include_prereleases)
![GitHub Workflow Status (with branch)](https://img.shields.io/github/actions/workflow/status/Anof-cyber/APTRS/django.yml?branch=main)
![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/Anof-cyber/aptrs)
[![platform](https://img.shields.io/badge/platform-osx%2Flinux%2Fwindows-green.svg)](https://github.com/Anof-cyber/APTRS)
[![Twitter](https://img.shields.io/twitter/follow/ano_f_)](https://twitter.com/Ano_F_)


## Prerequisites

- Python 3.8 and above (https://www.python.org/downloads/release/python-3810/)
- wkhtmltopdf 0.12.6 and above (https://wkhtmltopdf.org/downloads.html)


## Installation

Linux Installation

```
  git clone https://github.com/Anof-cyber/APTRS.git
  cd APTRS
  install.sh
```
  
## Running

Linux
```bash
  run.sh
```



## Features
- [Demo Report](/Doc/Report/Web%20Application%20Penetration%20Testing%20Report%20of%20Juice%20Shop.pdf)
- Managing Vulnerabilities
- Manage All Projects in one place
- Create a Vulnerability Database and avoid writing the same description and recommendations again
- Easily Create PDF Reprot
- Dynamically add POC, Description and Recommendations
- Manage Customers and Comapany

## Screenshots

### Project
![App Screenshot](/Doc/image/Project.png)


### View Project
![App Screenshot](/Doc/image/View%20Project.png)


### Project Vulnerability
![App Screenshot](/Doc/image/Project%20Vulnerability.png)

### Project Report
![App Screenshot](/Doc/image/Project%20Report.png)


### Project Add Vulnerability
![App Screenshot](/Doc/image/Project%20New%20Vulnerability.png)


## Roadmap

- Improving Report Quality
- Bulk Instance Upload
- [Pentest Mapper](https://portswigger.net/bappstore/af490ae7e79546fa81a28d8d0b90874e) Burp Suite Extension Integration
- Allowing Multiple Project Scope
- Improving Code, Error handling and Security
- Docker Support
- Implementing Rest API
- Project and Project Retest Handler
- Access Control and Authorization
- Support Nessus Parsing


## Authors (Thanks for your amazing tool)

- [Sourav Kalal](https://twitter.com/Ano_F_)

