#!/bin/bash
# pacman_pkg_bak.sh
# reinstall with pacman -S $(cat pkglist)
 
#Explanation of next steps:
#
#################################
#pacman package backup:          #
#################################
#'pacman -Qqet' will (Q)uery (q)uiety  and r(e)strict output to #explicitly installed packages (by me #of course, the user, and #further limit that list to what is also unrequired(t).  
#
#'grep -v "$(pacman -Qqg base' will invertly(v), which is non-#matching lines of 'pacman -Qqg base'.  #That statement equates to a #(Q)uery, (q)uietly, of your (g)roup packages such as KDE, XFCE, #GNOME #and so on.
#
#Next, the same inverted grep is repeated, this time on foreign #packages(m), which contain those that #were not in the sync #database.  These are typically manually installed pacakges #downloaded and #installed with 'pacman -U'
#
#The net result is all needed packages that are not required
#(avoids system pacakge re-installations), adding groups that don't #match required pacakges, and downloaded packages that don't match #group packages.  A nice CLEAN list :)
#
pacman -Qqet | grep -v "$(pacman -Qqg base)" | grep -v "$(pacman -Qqm)" > /home/noncomplete/Documents/pacman_backup/..
#

# List modified config files, credit uoou of reddit
#pacman -Qii | awk '/^MODIFIED/ {print $2}'

#################################
#local/AUR packge backup:       #
#################################
#
# A list of local packages (includes AUR and locally installed)
#
pacman -Qm > /home/noncomplete/Documents/pacman_backup/..
