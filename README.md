# transmission-scripts

## Clone
Clone the project by

	git clone https://github.com/p-kos/transmission-scripts.git

## Permissions
Add the permissions to execute the file by

	cd transmission-scripts
	sudo chmod a+x onfinish.sh

## Configuration

Edit the file onfinish.sh to set the user and password, target folder, log file.
	
	USER=transmission
	PASS=XXXX
	PORT=9091
	TARGET_FOLDER=/mnt/Media/New/
	LOGFILE=~/downloaded.log

Create the target folder, and set the permissions (it is important to create the folder from raspberry other wise the tramission will not copy the file)

	sudo mkdir /mnt/Media/New
	sudo chmod 777 /mnt/Media/New

edit the file /etc/transmission-daemon/settings.json and change the following

	sudo nano /etc/transmission-daemon/settings.json

change 

	"script-torrent-done-enabled": false, 
	"script-torrent-done-filename": "",

by
 
	"script-torrent-done-enabled": true, 
	"script-torrent-done-filename": "/home/pi/transmission-scripts/onfinish.sh", 

then reload the transmission-daemon


	service tranmission-daemon reload


or

	sudo /etc/init.d/tranmission-daemon reload

## Author

Marco Zarate

