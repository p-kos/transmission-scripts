# transmission-scripts

## Clone
Clone the project by

	git clone https://github.com/p-kos/transmission-scripts.git

## Configuration

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

