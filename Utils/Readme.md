# Laptop Backlight Control
A script and service to automatically turn on and off the screen backlight on a laptop. Particularly useful for running a laptop as a "closed-lid" server where the screen doesn't need to be on.

## Script
This section covers setting up the core script that manually controls the backlight.

### Copy file
Copy power-screen-backlight.sh to /usr/local/bin/

### Make executable
~~~
sudo cmod -x /usr/local/bin/power-screen-backlight.sh
~~~

### Test
Turn off:
~~~
sudo /usr/local/bin/power-screen-backlight.sh 0
~~~

Turn on:
~~~
sudo /usr/local/bin/power-screen-backlight.sh 1
~~~

## Service
Set up a service to run the script on startup, turning off the screen.

### Copy file
Copy power-off-backlight-on-startup.service to /etc/systemd/system/

### Enable
~~~
sudo systemctl daemon-reload
~~~
~~~
sudo systemctl enable power-off-backlight-on-startup.service
~~~

### Test
Run service:
~~~
sudo systemctl start power-off-backlight-on-startup.service
~~~

Check status:
~~~
sudo systemctl status power-off-backlight-on-startup.service
~~~
