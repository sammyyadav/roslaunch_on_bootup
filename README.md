# roslaunch_on_bootup

## Using systemd

Create a Service File for auto Start Up using the below Command.

> sudo nano /etc/systemd/system/auto_start.service

Copy the code from [auto_start.service](auto_start.service) and paste it in  your service file

Create a Shell Script in 

>mkdir ~/.startup && cd .startup/

>nano /auto_start.sh

Copy the code from [auto_start.sh](auto_start.sh) and paste it in  your shell script file


Set File Permission

>sudo chmod 744 ~/.startup/auto_start.sh

>sudo chmod 664 /etc/systemd/system/auto_start.service

Enablling Service

>sudo systemctl daemon-reload

>sudo systemctl enable myapp.service

Test Service
>sudo systemctl start auto_start.service

To Stop the Service
>sudo systemctl stop auto_start.service

Restart the system to check if the service started on reboot
> sudo reboot

To check whether the service is running, run the following command in terminal
>rostopic list


## Using rc.local

Run the below command to create the file
>sudo nano /etc/rc.local

Enter the below code in the [rc.local](rc.local) file

```
#! /bin/bash
//path-to-your-bash-script
exit 0
```

**Refer previous method for creating shell script**

Make it executable by following Command
>chmod +x /etc/rc.local
