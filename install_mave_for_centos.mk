# Download Maven and untar it.
# The first thing we need to do is to download the Maven tar file and untar it to a shared location on the workstation

wget http://mirrors.gigenet.com/apache/maven/maven-3/3.2.3/binaries/apache-maven-3.2.3-bin.tar.gz
su -c "tar -zxvf apache-maven-3.2.3-bin.tar.gz -C /usr/local“ 
cd /usr/local
sudo ln -s apache-maven-3.2.3 maven

# Setup the Maven Environment Variables in shared profile.
# The next step is to setup the Maven environment variables in a shared profile so all users on the system will get them import at login # time.
su -c "vi /etc/profile.d/maven.sh"

# Add the following lines to maven.sh
export M2_HOME=/usr/local/maven
export M2=$M2_HOME/bin
PATH=$M2:$PATH

# Now test your install of Maven.
# Logout of the system and then log back into it. Enter the following command:

[jsmith@regan ~]$ mvn -version

# you are done
