sudo apt-get update
sudo apt-get install -y git tree mc emacs24-nox

# check to see if lein is installed before installing
which lein

if [ $? -ne 0 ]
then
  wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
  chmod +x lein
  if [ ! -d /home/vagrant/bin ]
  then
    mkdir /home/vagrant/bin
  fi
  mv lein /home/vagrant/bin
else
  echo "lein already installed skipping...."
fi

