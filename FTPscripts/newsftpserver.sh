#!/bin/bash
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#WARNING WARNING WARNING WARNING
#THIS FILE IS NO WHERE NEAR READY TO USE
#ACTUALLY IT SORT OF IS
#BUT DO NO USE IT

			number=`grep -n "Subsystem" /etc/ssh/sshd_config | cut -d ":" -f1`
      		sed -i '$numbers/.*/replacement-line/' /etc/ssh/sshd_config
      		echo "Subsystem sftp internal-sftp" >> /etc/ssh/sshd_config
      		echo "Match Group $groupname" >> /etc/ssh/sshd_config
      		echo "ChrootDirectory %h" >> /etc/ssh/sshd_config
      		echo "X11Forwarding no" >> /etc/ssh/sshd_config
      		echo "AllowTcpForwarding no" >> /etc/ssh/sshd_config
      		echo "ForceCommand internal-sftp" >> /etc/ssh/sshd_config
      		
      		serivce ssh restart