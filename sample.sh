# CentOS లో టెర్రాఫామ్ రిపోజిటరీ యాడ్ చేయడానికి
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

# టెర్రాఫామ్ ఇన్‌స్టాల్ చేయడానికి
sudo yum install -y terraform

# మీ VS Code టెర్మినల్ లో టెర్రాఫామ్ ఫోల్డర్ లోకి వెళ్ళడానికి
cd terraform

# రన్ చేయడానికి కమాండ్స్
terraform init
terraform plan
terraform apply -auto-approve

# తిరిగి మెయిన్ ఫోల్డర్ కి రావడానికి
cd ..