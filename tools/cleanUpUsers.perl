# IBM_PROLOG_BEGIN_TAG 
# This is an automatically generated prolog. 
#  
# bos730 src/bos/usr/sbin/cron/root 1.15.1.3 
#  
# Licensed Materials - Property of IBM 
#  
# COPYRIGHT International Business Machines Corp. 1989,1994 
# All Rights Reserved 
#  
# US Government Users Restricted Rights - Use, duplication or 
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp. 
#  
# IBM_PROLOG_END_TAG 
#
# COMPONENT_NAME: (CMDCNTL) commands needed for basic system needs
#
# FUNCTIONS: 
#
# ORIGINS: 27
#
# (C) COPYRIGHT International Business Machines Corp. 1989,1994
# All Rights Reserved
# Licensed Materials - Property of IBM
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
#
#0 3 * * * /usr/sbin/skulker
#45 2 * * 0 /usr/lib/spell/compress
#45 23 * * * ulimit 5000; /usr/lib/smdemon.cleanu > /dev/null
0 11 * * * /usr/bin/errclear -d S,O 30
0 12 * * * /usr/bin/errclear -d H 90
0,5,10,15,20,25,30,35,40,45,50,55 * * * * /usr/sbin/dumpctrl -k >/dev/null 2>/dev/null
0 15 * * *  /usr/lib/ras/dumpcheck >/dev/null 2>&1
0 15 * * *  > /etc/security/failedlogin 2>&1
# exit
Connection to 169.59.159.92 closed.
andrewjones@Andrews-MBP PowerVS % ls
PowerVS-VMs			PowerVSKey			allUsers.json			itzPowerVSMaintenance.perl
andrewjones@Andrews-MBP PowerVS % rm allUsers.json itzPowerVSMaintenance.perl 
andrewjones@Andrews-MBP PowerVS % 
andrewjones@Andrews-MBP PowerVS % clear

andrewjones@Andrews-MBP PowerVS % wget -O getActiveReservations.perl https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/getActiveReservations.perl
wget -O cleanUpUsers.bash https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/cleanUpUsers.bash

chmod +x getActiveReservations.perl

perl getActiveReservations.perl

#transfer the file created to each of the 4 VMs
#ssh to each of the 4 VMs and execute the cleanUpUsers.bash script (it should be in /usr/local/bin on the machine, but it was also transfered above just in case you can't find it.)

quote> 
andrewjones@Andrews-MBP PowerVS % wget -O getActiveReservations.perl https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/getActiveReservations.perl
wget -O cleanUpUsers.bash https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/cleanUpUsers.bash

chmod +x getActiveReservations.perl

perl getActiveReservations.perl

#transfer the file created to each of the 4 VMs
#ssh to each of the 4 VMs and execute the cleanUpUsers.bash script (it should be in /usr/local/bin on the machine, but it was also transfered above just in case you can't find it.)

andrewjones@Andrews-MBP PowerVS % wget -O getActiveReservations.perl https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/getActiveReservations.perl

--2023-11-29 14:57:41--  https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/getActiveReservations.perl
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 2606:50c0:8001::154, 2606:50c0:8000::154, 2606:50c0:8003::154, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|2606:50c0:8001::154|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2657 (2.6K) [text/plain]
Saving to: ‘getActiveReservations.perl’

getActiveReservations.perl              100%[============================================================================>]   2.59K  --.-KB/s    in 0s      

2023-11-29 14:57:42 (5.48 MB/s) - ‘getActiveReservations.perl’ saved [2657/2657]

andrewjones@Andrews-MBP PowerVS % wget -O cleanUpUsers.bash https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/cleanUpUsers.bash
--2023-11-29 14:57:49--  https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/cleanUpUsers.bash
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 2606:50c0:8000::154, 2606:50c0:8003::154, 2606:50c0:8001::154, ...
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|2606:50c0:8000::154|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 509 [text/plain]
Saving to: ‘cleanUpUsers.bash’

cleanUpUsers.bash                       100%[============================================================================>]     509  --.-KB/s    in 0s      

2023-11-29 14:57:49 (9.52 MB/s) - ‘cleanUpUsers.bash’ saved [509/509]

andrewjones@Andrews-MBP PowerVS % chmod +x getActiveReservations.perl
andrewjones@Andrews-MBP PowerVS % perl getActiveReservations.perl
Set region to us-south
Retrieving OAUTH TOKEN
Retrieving all the users in the account.
Retrieving all the users in the PowerVS-L3 access group.
The following users are actively in the PowerVS-L3 Access Group:
User ID                                        IBM ID             Added on Date
john.grant2@cdw.com                 BSS-71f817dfa0ef4f118ab0e6532cabf0bf      2023-11-29T20:27:48Z
andrew@jones-tx.com                 BSS-9c16b4088e5d4485855f006094b323b7      2023-11-29T19:24:14Z
John.Grant2@cdw.com                                                            
frans@edgetec.co.za                  IBMid-1100009EFH      2023-11-28T10:21:50Z
pdragov@us.ibm.com                   IBMid-5019U83AKM      2023-11-27T19:01:29Z
KB00781015@techmahindra.com          IBMid-664002ZKY9      2023-11-28T08:19:38Z
rfisher3@ibm.com                     IBMid-6670018407      2023-11-28T16:27:43Z
Creating activeReservations.txt file.
Exiting.
andrewjones@Andrews-MBP PowerVS % ls
PowerVS-VMs			activeReservations.txt		cleanUpUsers.bash
PowerVSKey			allUsers.json			getActiveReservations.perl
andrewjones@Andrews-MBP PowerVS % cat activeReservations.txt 
john.grant2@cdw.com
andrew@jones-tx.com
John.Grant2@cdw.com
frans@edgetec.co.za
pdragov@us.ibm.com
KB00781015@techmahindra.com
rfisher3@ibm.com
andrewjones@Andrews-MBP PowerVS % scp -i PowerVSKey --help
scp: illegal option -- -
usage: scp [-346ABCOpqRrsTv] [-c cipher] [-D sftp_server_path] [-F ssh_config]
           [-i identity_file] [-J destination] [-l limit] [-o ssh_option]
           [-P port] [-S program] [-X sftp_option] source ... target
andrewjones@Andrews-MBP PowerVS % scp --help              
scp: illegal option -- -
usage: scp [-346ABCOpqRrsTv] [-c cipher] [-D sftp_server_path] [-F ssh_config]
           [-i identity_file] [-J destination] [-l limit] [-o ssh_option]
           [-P port] [-S program] [-X sftp_option] source ... target
andrewjones@Andrews-MBP PowerVS % man scp
andrewjones@Andrews-MBP PowerVS % scp -i PowerVSKey activeReservations.txt root@169.59.159.92:/tmp/
activeReservations.txt                                                                                                     100%  144     2.4KB/s   00:00    
andrewjones@Andrews-MBP PowerVS % ls
PowerVS-VMs			activeReservations.txt		cleanUpUsers.bash
PowerVSKey			allUsers.json			getActiveReservations.perl
andrewjones@Andrews-MBP PowerVS % cat PowerVS-VMs 
AIX-vm-1	169.59.159.92
AIX-vm-2	169.59.174.14
RH-vm-1	169.59.174.12
RH-vm-2	169.59.174.13
andrewjones@Andrews-MBP PowerVS % scp -i PowerVSKey activeReservations.txt root@169.59.159.92:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.14:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.12:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.13:/tmp/
activeReservations.txt                                                                                                     100%  144     3.1KB/s   00:00    
The authenticity of host '169.59.174.14 (169.59.174.14)' can't be established.
RSA key fingerprint is SHA256:v1P4RnWl6CguZHEs4oVgluZDbVj17wH5xZWAquIi+Jo.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '169.59.174.14' (RSA) to the list of known hosts.
activeReservations.txt                                                                                                     100%  144     3.0KB/s   00:00    
The authenticity of host '169.59.174.12 (169.59.174.12)' can't be established.
ED25519 key fingerprint is SHA256:qlpv378ms9JOyJiCpRQDq5mUyFU8Wfuj3gn0B3DhkRU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '169.59.174.12' (ED25519) to the list of known hosts.
activeReservations.txt                                                                                                     100%  144     3.0KB/s   00:00    
The authenticity of host '169.59.174.13 (169.59.174.13)' can't be established.
ED25519 key fingerprint is SHA256:qYuVDusLzgTPxAkJbN3NCB3WrcS85xTPJiX7iD+W4UQ.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '169.59.174.13' (ED25519) to the list of known hosts.
activeReservations.txt                                                                                                     100%  144     2.6KB/s   00:00    
andrewjones@Andrews-MBP PowerVS % ssh -i PowerVSKey root@169.59.159.92       
Last unsuccessful login: Wed Nov 29 15:18:23 CST 2023 on ssh from 93.113.233.59
Last login: Wed Nov 29 15:20:22 CST 2023 on ssh from 70.114.143.247
*******************************************************************************
*                                                                             *
*                                                                             *
*  Welcome to AIX Version 7.3!                                                *
*                                                                             *
*                                                                             *
*  Please see the README file in /usr/lpp/bos for information pertinent to    *
*  this release of the AIX Operating System.                                  *
*                                                                             *
*                                                                             *
*******************************************************************************
# ls /tmp
.ctinst.log                   cache_mgt.lock                etc_daemon.lock               result.status                 uncfgct.dbg
.oslevel.datafiles            crout4Ewqec                   lost+found                    rpcbind.file                  uncfgct.dbg.last
.strload.mutex                ctrmc_MDdr.dbg                lvmt.log                      rsct.rc.shutdown.bak          vgdata
.workdir.16253196.13959614_1  dpi_socket                    man16122270                   rsct.rc.shutdown.out
activeReservations.txt        ecpvdpd_sock                  pfcdaemon.out                 rsct_cfgct_history.log
bos                           errmbatch                     rc.net.out                    saved_errmbatch
# pwd
/
# cd /home
# ls -1 > /tmp/allHomeDirs.txt
# cat /tmp/allHomeDirs.txt
aaziz.eg.ibm.com
alejandro.suma.net.ve
anatole.perry.spark.co.nz
andrew.jones-tx.com
anh.salmonson.convergetp.com
armando.rodriguez.sinergiasys.
axial.axialconsulting.net
ayo.oluwaseun.ostecit.com
bbeswick.microstrat.com
bcowain.ks2inc.com
ben.mellor.recarta.co.uk
bivy.teamhuber.com
bkazuska.horizon.ca
bwagner.terasys.com.co
cfajardo.sinergyhard.com
chequer.presentia.com.br
d1brok.de.ibm.com
dominique.bression.arrowecs.fr
dowsley.directsys.com
edson.bandola.pixel.ao
ehendricks.tectight.com
einar.johannesson.origo.is
erich.huber-tentschert.itsc.at
frans.edgetec.co.za
guba.aspartner.com.pl
guest
guy.vandevenne.econocom.com
helle.koppang.embriq.no
j.kosmowska.aspartner.com.pl
jayesh.patel.cdw.com
jesus.rubio.es.logicalis.com
jfuentes.tecnoav.com
jjuelas.sinergyhard.com
jmurphy.tectight.com
joe.saarem.ibm.com
john.grant2.cdw.com
john.sargent.bluechip.co.uk
johntatum.dynamixgroup.com
joseph.bush.ocean.ibm.com
jr.mccarter.convergetp.com
jsantana.meridianitinc.com
jseolwane.tectight.com
katrin.henze.tdsynnex.com
kb00781015.techmahindra.com
kimmo.sorala.fi.ibm.com
korhana.tr.ibm.com
krzysztof.osmulski.credeexpert
kyao.tectight.com
kzblewski.fnts.com
lost+found
lsiegel.saturnb2b.com
marcel.niffeler.econis.ch
mark.huntley2.csiltd.co.uk
martin.borter.itpoint.ch
matt.directsys.com
mboudreaux.dms-la.com
michelle.shuler.prolifics.com
mike.cook.fcnit.com
mjensen.fnts.com
mjohnson.serviceexpress.com
mjurado.gnsys.com.mx
nobutaka_ikeda.argo-graph.co.j
o.barth.profi-ag.de
olegario.rcs.com.ph
otswai.tectight.com
paolo_riavez.it.ibm.com
pdragov.us.ibm.com
peter.dunbar.frontline-consult
pmackey.cmaontheweb.com
ppereira.incosa.com.uy
pwambugu.tbm.co.ke
r.diekkaemper.profi-ag.de
ravo.groupe-t2i.com
ray.ohara.meridianit.co.uk
reynaldo.romero.amazing-global
rfisher3.ibm.com
rgaylord.gmail.com
rune.rehardt.knudsen.ibm.com
samuel.timbo.vsdata.com.br
seraphin.yago.icbm.ci
serge.gaudet.dataintegrity.com
sphakathi.tectight.com
srvproxy
stefan.kinkartz.veda.net
swanikar.in.ibm.com
thomas_falsis.questronix.com.p
tommy.emanuelsson.shibuya.se
umerhayat.gbmme.com
utsah.tech9labs.com
verena.bader.umb.ch
volker.reinen.nocuma-it.de
william.morse.htcinc.com
wvanwyk.tectight.com
zvonimir.cerny.snt.hr
# cd /usr/local/bin
ksh: /usr/local/bin:  not found
# ls
aaziz.eg.ibm.com                guba.aspartner.com.pl           kzblewski.fnts.com              ravo.groupe-t2i.com
alejandro.suma.net.ve           guest                           lost+found                      ray.ohara.meridianit.co.uk
anatole.perry.spark.co.nz       guy.vandevenne.econocom.com     lsiegel.saturnb2b.com           reynaldo.romero.amazing-global
andrew.jones-tx.com             helle.koppang.embriq.no         marcel.niffeler.econis.ch       rfisher3.ibm.com
anh.salmonson.convergetp.com    j.kosmowska.aspartner.com.pl    mark.huntley2.csiltd.co.uk      rgaylord.gmail.com
armando.rodriguez.sinergiasys.  jayesh.patel.cdw.com            martin.borter.itpoint.ch        rune.rehardt.knudsen.ibm.com
axial.axialconsulting.net       jesus.rubio.es.logicalis.com    matt.directsys.com              samuel.timbo.vsdata.com.br
ayo.oluwaseun.ostecit.com       jfuentes.tecnoav.com            mboudreaux.dms-la.com           seraphin.yago.icbm.ci
bbeswick.microstrat.com         jjuelas.sinergyhard.com         michelle.shuler.prolifics.com   serge.gaudet.dataintegrity.com
bcowain.ks2inc.com              jmurphy.tectight.com            mike.cook.fcnit.com             sphakathi.tectight.com
ben.mellor.recarta.co.uk        joe.saarem.ibm.com              mjensen.fnts.com                srvproxy
bivy.teamhuber.com              john.grant2.cdw.com             mjohnson.serviceexpress.com     stefan.kinkartz.veda.net
bkazuska.horizon.ca             john.sargent.bluechip.co.uk     mjurado.gnsys.com.mx            swanikar.in.ibm.com
bwagner.terasys.com.co          johntatum.dynamixgroup.com      nobutaka_ikeda.argo-graph.co.j  thomas_falsis.questronix.com.p
cfajardo.sinergyhard.com        joseph.bush.ocean.ibm.com       o.barth.profi-ag.de             tommy.emanuelsson.shibuya.se
chequer.presentia.com.br        jr.mccarter.convergetp.com      olegario.rcs.com.ph             umerhayat.gbmme.com
d1brok.de.ibm.com               jsantana.meridianitinc.com      otswai.tectight.com             utsah.tech9labs.com
dominique.bression.arrowecs.fr  jseolwane.tectight.com          paolo_riavez.it.ibm.com         verena.bader.umb.ch
dowsley.directsys.com           katrin.henze.tdsynnex.com       pdragov.us.ibm.com              volker.reinen.nocuma-it.de
edson.bandola.pixel.ao          kb00781015.techmahindra.com     peter.dunbar.frontline-consult  william.morse.htcinc.com
ehendricks.tectight.com         kimmo.sorala.fi.ibm.com         pmackey.cmaontheweb.com         wvanwyk.tectight.com
einar.johannesson.origo.is      korhana.tr.ibm.com              ppereira.incosa.com.uy          zvonimir.cerny.snt.hr
erich.huber-tentschert.itsc.at  krzysztof.osmulski.credeexpert  pwambugu.tbm.co.ke
frans.edgetec.co.za             kyao.tectight.com               r.diekkaemper.profi-ag.de
# ls /usr       
X11R6       aix         cfgassist   es          include     lib64       lpp         opt         samples     src         sysv        websm
X11R7       aixnre      doc         esa         java8_64    linux       man         perf        sbin        suma        tmp
adde        bin         ecc         etc         lbin        lost+found  openssh     perfagent   share       swlag       ucb
adm         ccs         emgrdata    icu4c       lib         lpd         openssl     pmapi       spool       sys         usg
# ls /usr/lbin
calprog     diff3prog   diffh       expreserve  exrecover   getNAME     makewhatis  mkwhatis    spell       tty
# mkdir /usr/local/bin
mkdir: cannot access directory /usr/local.
/usr/local: No such file or directory
# mkdir /usr/local
# mkdir /usr/local/bin
# cd /usr/local/bin
# vi cleanUpUsers.bash
# chmod +x cleanUpUsers.bash
# cd /
# ls -la
total 176
drwxr-xr-x   20 root     system         4096 Mar 03 2023  .
drwxr-xr-x   20 root     system         4096 Mar 03 2023  ..
-rw-------    1 root     system           40 Mar 03 2023  .bash_history
-rw-------    1 root     system         1024 Feb 08 2023  .rnd
-rw-------    1 root     system         1588 Nov 29 15:25 .sh_history
drwx------    2 root     system          256 Feb 20 2023  .ssh
-rw-------    1 root     system           40 Nov 29 15:25 .vi_history
drwxr-xr-x    4 root     system          256 Nov 21 2021  admin
drwxrwxrwt    1 root     system            7 Nov 29 15:25 aha
drwxr-x---    2 root     audit           256 Nov 21 2021  audit
lrwxrwxrwx    1 bin      bin               8 Nov 21 2021  bin -> /usr/bin
drwxrwxr-x    5 root     system         8192 Oct 28 15:27 dev
drwxr-xr-x   34 root     system         8192 Mar 03 2023  etc
drwxr-xr-x   96 bin      bin            8192 Nov 29 14:29 home
lrwxrwxrwx    1 bin      bin               8 Nov 21 2021  lib -> /usr/lib
drwx------    2 root     system          256 Nov 21 2021  lost+found
drwxr-xr-x  195 bin      bin           12288 Nov 21 2021  lpp
drwxr-xr-x    2 bin      bin             256 Nov 21 2021  mnt
drwxr-xr-x   14 root     system         4096 Nov 21 2021  opt
dr-xr-xr-x    1 root     system            0 Nov 29 15:25 proc
drwxr-xr-x    3 root     system          256 Feb 08 2023  run
drwxr-xr-x    3 bin      bin             256 Nov 21 2021  sbin
-rw-r--r--    1 root     system         2222 Mar 03 2023  smit.log
-rw-r--r--    1 root     system          655 Feb 17 2023  smit.script
-rw-r--r--    1 root     system          828 Feb 17 2023  smit.transaction
drwxrwxr-x    2 root     system          256 Nov 21 2021  tftpboot
drwxrwxrwt    9 bin      bin            4096 Nov 29 15:25 tmp
lrwxrwxrwx    1 bin      bin               5 Nov 21 2021  u -> /home
lrwxrwxrwx    1 root     system           21 Nov 21 2021  unix -> /usr/lib/boot/unix_64
drwxr-xr-x   43 bin      bin            4096 Nov 29 15:24 usr
drwxr-xr-x   35 bin      bin            4096 Feb 08 2023  var
# vi .ssh
# cat .ssh
+...,authorized_key.known_hosts# 
# /usr/local/bin/clean^C
# set -o emacs
# ls -la      
# /usr/local/bin/cleanUpUsers.bash
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for aaziz.eg.ibm.com
delete user aaziz.eg.ibm.com
rm -fr /home/aaziz.eg.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for alejandro.suma.net.ve
delete user alejandro.suma.net.ve
rm -fr /home/alejandro.suma.net.ve
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for anatole.perry.spark.co.nz
delete user anatole.perry.spark.co.nz
rm -fr /home/anatole.perry.spark.co.nz
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for andrew.jones-tx.com
delete user andrew.jones-tx.com
rm -fr /home/andrew.jones-tx.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for anh.salmonson.convergetp.com
delete user anh.salmonson.convergetp.com
rm -fr /home/anh.salmonson.convergetp.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for armando.rodriguez.sinergiasys.
delete user armando.rodriguez.sinergiasys.
rm -fr /home/armando.rodriguez.sinergiasys.
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for axial.axialconsulting.net
delete user axial.axialconsulting.net
rm -fr /home/axial.axialconsulting.net
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ayo.oluwaseun.ostecit.com
delete user ayo.oluwaseun.ostecit.com
rm -fr /home/ayo.oluwaseun.ostecit.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for bbeswick.microstrat.com
delete user bbeswick.microstrat.com
rm -fr /home/bbeswick.microstrat.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for bcowain.ks2inc.com
delete user bcowain.ks2inc.com
rm -fr /home/bcowain.ks2inc.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ben.mellor.recarta.co.uk
delete user ben.mellor.recarta.co.uk
rm -fr /home/ben.mellor.recarta.co.uk
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for bivy.teamhuber.com
delete user bivy.teamhuber.com
rm -fr /home/bivy.teamhuber.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for bkazuska.horizon.ca
delete user bkazuska.horizon.ca
rm -fr /home/bkazuska.horizon.ca
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for bwagner.terasys.com.co
delete user bwagner.terasys.com.co
rm -fr /home/bwagner.terasys.com.co
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for cfajardo.sinergyhard.com
delete user cfajardo.sinergyhard.com
rm -fr /home/cfajardo.sinergyhard.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for chequer.presentia.com.br
delete user chequer.presentia.com.br
rm -fr /home/chequer.presentia.com.br
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for d1brok.de.ibm.com
delete user d1brok.de.ibm.com
rm -fr /home/d1brok.de.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for dominique.bression.arrowecs.fr
delete user dominique.bression.arrowecs.fr
rm -fr /home/dominique.bression.arrowecs.fr
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for dowsley.directsys.com
delete user dowsley.directsys.com
rm -fr /home/dowsley.directsys.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for edson.bandola.pixel.ao
delete user edson.bandola.pixel.ao
rm -fr /home/edson.bandola.pixel.ao
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ehendricks.tectight.com
delete user ehendricks.tectight.com
rm -fr /home/ehendricks.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for einar.johannesson.origo.is
delete user einar.johannesson.origo.is
rm -fr /home/einar.johannesson.origo.is
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for erich.huber-tentschert.itsc.at
delete user erich.huber-tentschert.itsc.at
rm -fr /home/erich.huber-tentschert.itsc.at
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for frans.edgetec.co.za
delete user frans.edgetec.co.za
rm -fr /home/frans.edgetec.co.za
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for guba.aspartner.com.pl
delete user guba.aspartner.com.pl
rm -fr /home/guba.aspartner.com.pl
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for guest
delete user guest
rm -fr /home/guest
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for guy.vandevenne.econocom.com
delete user guy.vandevenne.econocom.com
rm -fr /home/guy.vandevenne.econocom.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for helle.koppang.embriq.no
delete user helle.koppang.embriq.no
rm -fr /home/helle.koppang.embriq.no
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for j.kosmowska.aspartner.com.pl
delete user j.kosmowska.aspartner.com.pl
rm -fr /home/j.kosmowska.aspartner.com.pl
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jayesh.patel.cdw.com
delete user jayesh.patel.cdw.com
rm -fr /home/jayesh.patel.cdw.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jesus.rubio.es.logicalis.com
delete user jesus.rubio.es.logicalis.com
rm -fr /home/jesus.rubio.es.logicalis.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jfuentes.tecnoav.com
delete user jfuentes.tecnoav.com
rm -fr /home/jfuentes.tecnoav.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jjuelas.sinergyhard.com
delete user jjuelas.sinergyhard.com
rm -fr /home/jjuelas.sinergyhard.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jmurphy.tectight.com
delete user jmurphy.tectight.com
rm -fr /home/jmurphy.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for joe.saarem.ibm.com
delete user joe.saarem.ibm.com
rm -fr /home/joe.saarem.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for john.grant2.cdw.com
delete user john.grant2.cdw.com
rm -fr /home/john.grant2.cdw.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for john.sargent.bluechip.co.uk
delete user john.sargent.bluechip.co.uk
rm -fr /home/john.sargent.bluechip.co.uk
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for johntatum.dynamixgroup.com
delete user johntatum.dynamixgroup.com
rm -fr /home/johntatum.dynamixgroup.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for joseph.bush.ocean.ibm.com
delete user joseph.bush.ocean.ibm.com
rm -fr /home/joseph.bush.ocean.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jr.mccarter.convergetp.com
delete user jr.mccarter.convergetp.com
rm -fr /home/jr.mccarter.convergetp.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jsantana.meridianitinc.com
delete user jsantana.meridianitinc.com
rm -fr /home/jsantana.meridianitinc.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for jseolwane.tectight.com
delete user jseolwane.tectight.com
rm -fr /home/jseolwane.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for katrin.henze.tdsynnex.com
delete user katrin.henze.tdsynnex.com
rm -fr /home/katrin.henze.tdsynnex.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for kb00781015.techmahindra.com
delete user kb00781015.techmahindra.com
rm -fr /home/kb00781015.techmahindra.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for kimmo.sorala.fi.ibm.com
delete user kimmo.sorala.fi.ibm.com
rm -fr /home/kimmo.sorala.fi.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for korhana.tr.ibm.com
delete user korhana.tr.ibm.com
rm -fr /home/korhana.tr.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for krzysztof.osmulski.credeexpert
delete user krzysztof.osmulski.credeexpert
rm -fr /home/krzysztof.osmulski.credeexpert
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for kyao.tectight.com
delete user kyao.tectight.com
rm -fr /home/kyao.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for kzblewski.fnts.com
delete user kzblewski.fnts.com
rm -fr /home/kzblewski.fnts.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for lost+found
delete user lost+found
rm -fr /home/lost+found
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for lsiegel.saturnb2b.com
delete user lsiegel.saturnb2b.com
rm -fr /home/lsiegel.saturnb2b.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for marcel.niffeler.econis.ch
delete user marcel.niffeler.econis.ch
rm -fr /home/marcel.niffeler.econis.ch
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mark.huntley2.csiltd.co.uk
delete user mark.huntley2.csiltd.co.uk
rm -fr /home/mark.huntley2.csiltd.co.uk
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for martin.borter.itpoint.ch
delete user martin.borter.itpoint.ch
rm -fr /home/martin.borter.itpoint.ch
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for matt.directsys.com
delete user matt.directsys.com
rm -fr /home/matt.directsys.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mboudreaux.dms-la.com
delete user mboudreaux.dms-la.com
rm -fr /home/mboudreaux.dms-la.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for michelle.shuler.prolifics.com
delete user michelle.shuler.prolifics.com
rm -fr /home/michelle.shuler.prolifics.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mike.cook.fcnit.com
delete user mike.cook.fcnit.com
rm -fr /home/mike.cook.fcnit.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mjensen.fnts.com
delete user mjensen.fnts.com
rm -fr /home/mjensen.fnts.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mjohnson.serviceexpress.com
delete user mjohnson.serviceexpress.com
rm -fr /home/mjohnson.serviceexpress.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for mjurado.gnsys.com.mx
delete user mjurado.gnsys.com.mx
rm -fr /home/mjurado.gnsys.com.mx
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for nobutaka_ikeda.argo-graph.co.j
delete user nobutaka_ikeda.argo-graph.co.j
rm -fr /home/nobutaka_ikeda.argo-graph.co.j
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for o.barth.profi-ag.de
delete user o.barth.profi-ag.de
rm -fr /home/o.barth.profi-ag.de
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for olegario.rcs.com.ph
delete user olegario.rcs.com.ph
rm -fr /home/olegario.rcs.com.ph
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for otswai.tectight.com
delete user otswai.tectight.com
rm -fr /home/otswai.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for paolo_riavez.it.ibm.com
delete user paolo_riavez.it.ibm.com
rm -fr /home/paolo_riavez.it.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for pdragov.us.ibm.com
delete user pdragov.us.ibm.com
rm -fr /home/pdragov.us.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for peter.dunbar.frontline-consult
delete user peter.dunbar.frontline-consult
rm -fr /home/peter.dunbar.frontline-consult
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for pmackey.cmaontheweb.com
delete user pmackey.cmaontheweb.com
rm -fr /home/pmackey.cmaontheweb.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ppereira.incosa.com.uy
delete user ppereira.incosa.com.uy
rm -fr /home/ppereira.incosa.com.uy
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for pwambugu.tbm.co.ke
delete user pwambugu.tbm.co.ke
rm -fr /home/pwambugu.tbm.co.ke
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for r.diekkaemper.profi-ag.de
delete user r.diekkaemper.profi-ag.de
rm -fr /home/r.diekkaemper.profi-ag.de
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ravo.groupe-t2i.com
delete user ravo.groupe-t2i.com
rm -fr /home/ravo.groupe-t2i.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for ray.ohara.meridianit.co.uk
delete user ray.ohara.meridianit.co.uk
rm -fr /home/ray.ohara.meridianit.co.uk
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for reynaldo.romero.amazing-global
delete user reynaldo.romero.amazing-global
rm -fr /home/reynaldo.romero.amazing-global
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for rfisher3.ibm.com
delete user rfisher3.ibm.com
rm -fr /home/rfisher3.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for rgaylord.gmail.com
delete user rgaylord.gmail.com
rm -fr /home/rgaylord.gmail.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for rune.rehardt.knudsen.ibm.com
delete user rune.rehardt.knudsen.ibm.com
rm -fr /home/rune.rehardt.knudsen.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for samuel.timbo.vsdata.com.br
delete user samuel.timbo.vsdata.com.br
rm -fr /home/samuel.timbo.vsdata.com.br
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for seraphin.yago.icbm.ci
delete user seraphin.yago.icbm.ci
rm -fr /home/seraphin.yago.icbm.ci
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for serge.gaudet.dataintegrity.com
delete user serge.gaudet.dataintegrity.com
rm -fr /home/serge.gaudet.dataintegrity.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for sphakathi.tectight.com
delete user sphakathi.tectight.com
rm -fr /home/sphakathi.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for srvproxy
delete user srvproxy
rm -fr /home/srvproxy
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for stefan.kinkartz.veda.net
delete user stefan.kinkartz.veda.net
rm -fr /home/stefan.kinkartz.veda.net
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for swanikar.in.ibm.com
delete user swanikar.in.ibm.com
rm -fr /home/swanikar.in.ibm.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for thomas_falsis.questronix.com.p
delete user thomas_falsis.questronix.com.p
rm -fr /home/thomas_falsis.questronix.com.p
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for tommy.emanuelsson.shibuya.se
delete user tommy.emanuelsson.shibuya.se
rm -fr /home/tommy.emanuelsson.shibuya.se
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for umerhayat.gbmme.com
delete user umerhayat.gbmme.com
rm -fr /home/umerhayat.gbmme.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for utsah.tech9labs.com
delete user utsah.tech9labs.com
rm -fr /home/utsah.tech9labs.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for verena.bader.umb.ch
delete user verena.bader.umb.ch
rm -fr /home/verena.bader.umb.ch
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for volker.reinen.nocuma-it.de
delete user volker.reinen.nocuma-it.de
rm -fr /home/volker.reinen.nocuma-it.de
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for william.morse.htcinc.com
delete user william.morse.htcinc.com
rm -fr /home/william.morse.htcinc.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for wvanwyk.tectight.com
delete user wvanwyk.tectight.com
rm -fr /home/wvanwyk.tectight.com
grep: can't open /tmp/currentReservations.txt
grep: can't open current.txt
no reservation for zvonimir.cerny.snt.hr
delete user zvonimir.cerny.snt.hr
rm -fr /home/zvonimir.cerny.snt.hr
# ls /tmp
.ctinst.log                   bos                           errmbatch                     rc.net.out                    saved_errmbatch
.oslevel.datafiles            cache_mgt.lock                etc_daemon.lock               result.status                 uncfgct.dbg
.strload.mutex                crout4Ewqec                   lost+found                    rpcbind.file                  uncfgct.dbg.last
.workdir.16253196.13959614_1  ctrmc_MDdr.dbg                lvmt.log                      rsct.rc.shutdown.bak          vgdata
activeReservations.txt        dpi_socket                    man16122270                   rsct.rc.shutdown.out
allHomeDirs.txt               ecpvdpd_sock                  pfcdaemon.out                 rsct_cfgct_history.log
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
grep: can't open current.txt
no reservation for aaziz.eg.ibm.com
delete user aaziz.eg.ibm.com
rm -fr /home/aaziz.eg.ibm.com
grep: can't open current.txt
no reservation for alejandro.suma.net.ve
delete user alejandro.suma.net.ve
rm -fr /home/alejandro.suma.net.ve
grep: can't open current.txt
no reservation for anatole.perry.spark.co.nz
delete user anatole.perry.spark.co.nz
rm -fr /home/anatole.perry.spark.co.nz
andrew@jones-tx.com
skipping andrew.jones-tx.com
grep: can't open current.txt
no reservation for andrew.jones-tx.com
delete user andrew.jones-tx.com
rm -fr /home/andrew.jones-tx.com
grep: can't open current.txt
no reservation for anh.salmonson.convergetp.com
delete user anh.salmonson.convergetp.com
rm -fr /home/anh.salmonson.convergetp.com
grep: can't open current.txt
no reservation for armando.rodriguez.sinergiasys.
delete user armando.rodriguez.sinergiasys.
rm -fr /home/armando.rodriguez.sinergiasys.
grep: can't open current.txt
no reservation for axial.axialconsulting.net
delete user axial.axialconsulting.net
rm -fr /home/axial.axialconsulting.net
grep: can't open current.txt
no reservation for ayo.oluwaseun.ostecit.com
delete user ayo.oluwaseun.ostecit.com
rm -fr /home/ayo.oluwaseun.ostecit.com
grep: can't open current.txt
no reservation for bbeswick.microstrat.com
delete user bbeswick.microstrat.com
rm -fr /home/bbeswick.microstrat.com
grep: can't open current.txt
no reservation for bcowain.ks2inc.com
delete user bcowain.ks2inc.com
rm -fr /home/bcowain.ks2inc.com
grep: can't open current.txt
no reservation for ben.mellor.recarta.co.uk
delete user ben.mellor.recarta.co.uk
rm -fr /home/ben.mellor.recarta.co.uk
grep: can't open current.txt
no reservation for bivy.teamhuber.com
delete user bivy.teamhuber.com
rm -fr /home/bivy.teamhuber.com
grep: can't open current.txt
no reservation for bkazuska.horizon.ca
delete user bkazuska.horizon.ca
rm -fr /home/bkazuska.horizon.ca
grep: can't open current.txt
no reservation for bwagner.terasys.com.co
delete user bwagner.terasys.com.co
rm -fr /home/bwagner.terasys.com.co
grep: can't open current.txt
no reservation for cfajardo.sinergyhard.com
delete user cfajardo.sinergyhard.com
rm -fr /home/cfajardo.sinergyhard.com
grep: can't open current.txt
no reservation for chequer.presentia.com.br
delete user chequer.presentia.com.br
rm -fr /home/chequer.presentia.com.br
grep: can't open current.txt
no reservation for d1brok.de.ibm.com
delete user d1brok.de.ibm.com
rm -fr /home/d1brok.de.ibm.com
grep: can't open current.txt
no reservation for dominique.bression.arrowecs.fr
delete user dominique.bression.arrowecs.fr
rm -fr /home/dominique.bression.arrowecs.fr
grep: can't open current.txt
no reservation for dowsley.directsys.com
delete user dowsley.directsys.com
rm -fr /home/dowsley.directsys.com
grep: can't open current.txt
no reservation for edson.bandola.pixel.ao
delete user edson.bandola.pixel.ao
rm -fr /home/edson.bandola.pixel.ao
grep: can't open current.txt
no reservation for ehendricks.tectight.com
delete user ehendricks.tectight.com
rm -fr /home/ehendricks.tectight.com
grep: can't open current.txt
no reservation for einar.johannesson.origo.is
delete user einar.johannesson.origo.is
rm -fr /home/einar.johannesson.origo.is
grep: can't open current.txt
no reservation for erich.huber-tentschert.itsc.at
delete user erich.huber-tentschert.itsc.at
rm -fr /home/erich.huber-tentschert.itsc.at
frans@edgetec.co.za
skipping frans.edgetec.co.za
grep: can't open current.txt
no reservation for frans.edgetec.co.za
delete user frans.edgetec.co.za
rm -fr /home/frans.edgetec.co.za
grep: can't open current.txt
no reservation for guba.aspartner.com.pl
delete user guba.aspartner.com.pl
rm -fr /home/guba.aspartner.com.pl
grep: can't open current.txt
no reservation for guest
delete user guest
rm -fr /home/guest
grep: can't open current.txt
no reservation for guy.vandevenne.econocom.com
delete user guy.vandevenne.econocom.com
rm -fr /home/guy.vandevenne.econocom.com
grep: can't open current.txt
no reservation for helle.koppang.embriq.no
delete user helle.koppang.embriq.no
rm -fr /home/helle.koppang.embriq.no
grep: can't open current.txt
no reservation for j.kosmowska.aspartner.com.pl
delete user j.kosmowska.aspartner.com.pl
rm -fr /home/j.kosmowska.aspartner.com.pl
grep: can't open current.txt
no reservation for jayesh.patel.cdw.com
delete user jayesh.patel.cdw.com
rm -fr /home/jayesh.patel.cdw.com
grep: can't open current.txt
no reservation for jesus.rubio.es.logicalis.com
delete user jesus.rubio.es.logicalis.com
rm -fr /home/jesus.rubio.es.logicalis.com
grep: can't open current.txt
no reservation for jfuentes.tecnoav.com
delete user jfuentes.tecnoav.com
rm -fr /home/jfuentes.tecnoav.com
grep: can't open current.txt
no reservation for jjuelas.sinergyhard.com
delete user jjuelas.sinergyhard.com
rm -fr /home/jjuelas.sinergyhard.com
grep: can't open current.txt
no reservation for jmurphy.tectight.com
delete user jmurphy.tectight.com
rm -fr /home/jmurphy.tectight.com
grep: can't open current.txt
no reservation for joe.saarem.ibm.com
delete user joe.saarem.ibm.com
rm -fr /home/joe.saarem.ibm.com
john.grant2@cdw.com
skipping john.grant2.cdw.com
grep: can't open current.txt
no reservation for john.grant2.cdw.com
delete user john.grant2.cdw.com
rm -fr /home/john.grant2.cdw.com
grep: can't open current.txt
no reservation for john.sargent.bluechip.co.uk
delete user john.sargent.bluechip.co.uk
rm -fr /home/john.sargent.bluechip.co.uk
grep: can't open current.txt
no reservation for johntatum.dynamixgroup.com
delete user johntatum.dynamixgroup.com
rm -fr /home/johntatum.dynamixgroup.com
grep: can't open current.txt
no reservation for joseph.bush.ocean.ibm.com
delete user joseph.bush.ocean.ibm.com
rm -fr /home/joseph.bush.ocean.ibm.com
grep: can't open current.txt
no reservation for jr.mccarter.convergetp.com
delete user jr.mccarter.convergetp.com
rm -fr /home/jr.mccarter.convergetp.com
grep: can't open current.txt
no reservation for jsantana.meridianitinc.com
delete user jsantana.meridianitinc.com
rm -fr /home/jsantana.meridianitinc.com
grep: can't open current.txt
no reservation for jseolwane.tectight.com
delete user jseolwane.tectight.com
rm -fr /home/jseolwane.tectight.com
grep: can't open current.txt
no reservation for katrin.henze.tdsynnex.com
delete user katrin.henze.tdsynnex.com
rm -fr /home/katrin.henze.tdsynnex.com
grep: can't open current.txt
no reservation for kb00781015.techmahindra.com
delete user kb00781015.techmahindra.com
rm -fr /home/kb00781015.techmahindra.com
grep: can't open current.txt
no reservation for kimmo.sorala.fi.ibm.com
delete user kimmo.sorala.fi.ibm.com
rm -fr /home/kimmo.sorala.fi.ibm.com
grep: can't open current.txt
no reservation for korhana.tr.ibm.com
delete user korhana.tr.ibm.com
rm -fr /home/korhana.tr.ibm.com
grep: can't open current.txt
no reservation for krzysztof.osmulski.credeexpert
delete user krzysztof.osmulski.credeexpert
rm -fr /home/krzysztof.osmulski.credeexpert
grep: can't open current.txt
no reservation for kyao.tectight.com
delete user kyao.tectight.com
rm -fr /home/kyao.tectight.com
grep: can't open current.txt
no reservation for kzblewski.fnts.com
delete user kzblewski.fnts.com
rm -fr /home/kzblewski.fnts.com
grep: can't open current.txt
no reservation for lost+found
delete user lost+found
rm -fr /home/lost+found
grep: can't open current.txt
no reservation for lsiegel.saturnb2b.com
delete user lsiegel.saturnb2b.com
rm -fr /home/lsiegel.saturnb2b.com
grep: can't open current.txt
no reservation for marcel.niffeler.econis.ch
delete user marcel.niffeler.econis.ch
rm -fr /home/marcel.niffeler.econis.ch
grep: can't open current.txt
no reservation for mark.huntley2.csiltd.co.uk
delete user mark.huntley2.csiltd.co.uk
rm -fr /home/mark.huntley2.csiltd.co.uk
grep: can't open current.txt
no reservation for martin.borter.itpoint.ch
delete user martin.borter.itpoint.ch
rm -fr /home/martin.borter.itpoint.ch
grep: can't open current.txt
no reservation for matt.directsys.com
delete user matt.directsys.com
rm -fr /home/matt.directsys.com
grep: can't open current.txt
no reservation for mboudreaux.dms-la.com
delete user mboudreaux.dms-la.com
rm -fr /home/mboudreaux.dms-la.com
grep: can't open current.txt
no reservation for michelle.shuler.prolifics.com
delete user michelle.shuler.prolifics.com
rm -fr /home/michelle.shuler.prolifics.com
grep: can't open current.txt
no reservation for mike.cook.fcnit.com
delete user mike.cook.fcnit.com
rm -fr /home/mike.cook.fcnit.com
grep: can't open current.txt
no reservation for mjensen.fnts.com
delete user mjensen.fnts.com
rm -fr /home/mjensen.fnts.com
grep: can't open current.txt
no reservation for mjohnson.serviceexpress.com
delete user mjohnson.serviceexpress.com
rm -fr /home/mjohnson.serviceexpress.com
grep: can't open current.txt
no reservation for mjurado.gnsys.com.mx
delete user mjurado.gnsys.com.mx
rm -fr /home/mjurado.gnsys.com.mx
grep: can't open current.txt
no reservation for nobutaka_ikeda.argo-graph.co.j
delete user nobutaka_ikeda.argo-graph.co.j
rm -fr /home/nobutaka_ikeda.argo-graph.co.j
grep: can't open current.txt
no reservation for o.barth.profi-ag.de
delete user o.barth.profi-ag.de
rm -fr /home/o.barth.profi-ag.de
grep: can't open current.txt
no reservation for olegario.rcs.com.ph
delete user olegario.rcs.com.ph
rm -fr /home/olegario.rcs.com.ph
grep: can't open current.txt
no reservation for otswai.tectight.com
delete user otswai.tectight.com
rm -fr /home/otswai.tectight.com
grep: can't open current.txt
no reservation for paolo_riavez.it.ibm.com
delete user paolo_riavez.it.ibm.com
rm -fr /home/paolo_riavez.it.ibm.com
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
grep: can't open current.txt
no reservation for pdragov.us.ibm.com
delete user pdragov.us.ibm.com
rm -fr /home/pdragov.us.ibm.com
grep: can't open current.txt
no reservation for peter.dunbar.frontline-consult
delete user peter.dunbar.frontline-consult
rm -fr /home/peter.dunbar.frontline-consult
grep: can't open current.txt
no reservation for pmackey.cmaontheweb.com
delete user pmackey.cmaontheweb.com
rm -fr /home/pmackey.cmaontheweb.com
grep: can't open current.txt
no reservation for ppereira.incosa.com.uy
delete user ppereira.incosa.com.uy
rm -fr /home/ppereira.incosa.com.uy
grep: can't open current.txt
no reservation for pwambugu.tbm.co.ke
delete user pwambugu.tbm.co.ke
rm -fr /home/pwambugu.tbm.co.ke
grep: can't open current.txt
no reservation for r.diekkaemper.profi-ag.de
delete user r.diekkaemper.profi-ag.de
rm -fr /home/r.diekkaemper.profi-ag.de
grep: can't open current.txt
no reservation for ravo.groupe-t2i.com
delete user ravo.groupe-t2i.com
rm -fr /home/ravo.groupe-t2i.com
grep: can't open current.txt
no reservation for ray.ohara.meridianit.co.uk
delete user ray.ohara.meridianit.co.uk
rm -fr /home/ray.ohara.meridianit.co.uk
grep: can't open current.txt
no reservation for reynaldo.romero.amazing-global
delete user reynaldo.romero.amazing-global
rm -fr /home/reynaldo.romero.amazing-global
rfisher3@ibm.com
skipping rfisher3.ibm.com
grep: can't open current.txt
no reservation for rfisher3.ibm.com
delete user rfisher3.ibm.com
rm -fr /home/rfisher3.ibm.com
grep: can't open current.txt
no reservation for rgaylord.gmail.com
delete user rgaylord.gmail.com
rm -fr /home/rgaylord.gmail.com
grep: can't open current.txt
no reservation for rune.rehardt.knudsen.ibm.com
delete user rune.rehardt.knudsen.ibm.com
rm -fr /home/rune.rehardt.knudsen.ibm.com
grep: can't open current.txt
no reservation for samuel.timbo.vsdata.com.br
delete user samuel.timbo.vsdata.com.br
rm -fr /home/samuel.timbo.vsdata.com.br
grep: can't open current.txt
no reservation for seraphin.yago.icbm.ci
delete user seraphin.yago.icbm.ci
rm -fr /home/seraphin.yago.icbm.ci
grep: can't open current.txt
no reservation for serge.gaudet.dataintegrity.com
delete user serge.gaudet.dataintegrity.com
rm -fr /home/serge.gaudet.dataintegrity.com
grep: can't open current.txt
no reservation for sphakathi.tectight.com
delete user sphakathi.tectight.com
rm -fr /home/sphakathi.tectight.com
grep: can't open current.txt
no reservation for srvproxy
delete user srvproxy
rm -fr /home/srvproxy
grep: can't open current.txt
no reservation for stefan.kinkartz.veda.net
delete user stefan.kinkartz.veda.net
rm -fr /home/stefan.kinkartz.veda.net
grep: can't open current.txt
no reservation for swanikar.in.ibm.com
delete user swanikar.in.ibm.com
rm -fr /home/swanikar.in.ibm.com
grep: can't open current.txt
no reservation for thomas_falsis.questronix.com.p
delete user thomas_falsis.questronix.com.p
rm -fr /home/thomas_falsis.questronix.com.p
grep: can't open current.txt
no reservation for tommy.emanuelsson.shibuya.se
delete user tommy.emanuelsson.shibuya.se
rm -fr /home/tommy.emanuelsson.shibuya.se
grep: can't open current.txt
no reservation for umerhayat.gbmme.com
delete user umerhayat.gbmme.com
rm -fr /home/umerhayat.gbmme.com
grep: can't open current.txt
no reservation for utsah.tech9labs.com
delete user utsah.tech9labs.com
rm -fr /home/utsah.tech9labs.com
grep: can't open current.txt
no reservation for verena.bader.umb.ch
delete user verena.bader.umb.ch
rm -fr /home/verena.bader.umb.ch
grep: can't open current.txt
no reservation for volker.reinen.nocuma-it.de
delete user volker.reinen.nocuma-it.de
rm -fr /home/volker.reinen.nocuma-it.de
grep: can't open current.txt
no reservation for william.morse.htcinc.com
delete user william.morse.htcinc.com
rm -fr /home/william.morse.htcinc.com
grep: can't open current.txt
no reservation for wvanwyk.tectight.com
delete user wvanwyk.tectight.com
rm -fr /home/wvanwyk.tectight.com
grep: can't open current.txt
no reservation for zvonimir.cerny.snt.hr
delete user zvonimir.cerny.snt.hr
rm -fr /home/zvonimir.cerny.snt.hr
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash |more
# /usr/local/bin/cleanUpUsers.bash |grep skipping
skipping andrew.jones-tx.com
skipping frans.edgetec.co.za
skipping john.grant2.cdw.com
skipping pdragov.us.ibm.com
skipping rfisher3.ibm.com
# ls -l /home
total 0
drwxr-x---    3 aaziz.eg staff           256 Jul 06 02:59 aaziz.eg.ibm.com
drwxr-x---    3 alejandr staff           256 Aug 22 19:42 alejandro.suma.net.ve
drwxr-x---    3 anatole. staff           256 Jul 05 23:41 anatole.perry.spark.co.nz
drwxr-x---    3 andrew.j staff           256 Nov 29 13:39 andrew.jones-tx.com
drwxr-x---    3 anh.salm staff           256 Feb 21 2023  anh.salmonson.convergetp.com
drwxr-x---    3 armando. staff           256 Apr 06 2023  armando.rodriguez.sinergiasys.
drwxr-x---    3 axial.ax staff           256 Aug 17 04:39 axial.axialconsulting.net
drwxr-x---    3 ayo.oluw staff           256 Aug 02 07:04 ayo.oluwaseun.ostecit.com
drwxr-x---    3 bbeswick staff           256 Mar 15 2023  bbeswick.microstrat.com
drwxr-x---    3 bcowain. staff           256 Mar 08 2023  bcowain.ks2inc.com
drwxr-x---    3 ben.mell staff           256 Apr 12 2023  ben.mellor.recarta.co.uk
drwxr-x---    3 bivy.tea staff           256 Feb 22 2023  bivy.teamhuber.com
drwxr-x---    3 bkazuska staff           256 May 24 2023  bkazuska.horizon.ca
drwxr-x---    3 bwagner. staff           256 Jul 05 09:38 bwagner.terasys.com.co
drwxr-x---    3 cfajardo staff           256 Mar 30 2023  cfajardo.sinergyhard.com
drwxr-x---    3 chequer. staff           256 Feb 22 2023  chequer.presentia.com.br
drwxr-x---    3 d1brok.d staff           256 Aug 18 07:45 d1brok.de.ibm.com
drwxr-x---    3 dominiqu staff           256 Feb 20 2023  dominique.bression.arrowecs.fr
drwxr-x---    3 dowsley. staff           256 Feb 22 2023  dowsley.directsys.com
drwxr-x---    3 edson.ba staff           256 Mar 13 2023  edson.bandola.pixel.ao
drwxr-x---    3 ehendric staff           256 Feb 23 2023  ehendricks.tectight.com
drwxr-x---    3 einar.jo staff           256 Mar 14 2023  einar.johannesson.origo.is
drwxr-x---    3 erich.hu staff           256 Feb 20 2023  erich.huber-tentschert.itsc.at
drwxr-x---    3 frans.ed staff           256 Nov 28 04:37 frans.edgetec.co.za
drwxr-x---    3 guba.asp staff           256 May 07 2023  guba.aspartner.com.pl
drwxr-xr-x    2 guest    usr             256 Nov 21 2021  guest
drwxr-x---    3 guy.vand staff           256 Feb 20 2023  guy.vandevenne.econocom.com
drwxr-x---    3 helle.ko staff           256 May 26 2023  helle.koppang.embriq.no
drwxr-x---    3 j.kosmow staff           256 May 09 2023  j.kosmowska.aspartner.com.pl
drwxr-x---    3 jayesh.p staff           256 Sep 08 09:12 jayesh.patel.cdw.com
drwxr-x---    3 jesus.ru staff           256 Mar 28 2023  jesus.rubio.es.logicalis.com
drwxr-x---    3 jfuentes staff           256 Feb 24 2023  jfuentes.tecnoav.com
drwxr-x---    3 jjuelas. staff           256 Apr 19 2023  jjuelas.sinergyhard.com
drwxr-x---    3 jmurphy. staff           256 Feb 20 2023  jmurphy.tectight.com
drwxr-x---    3 joe.saar staff           256 Feb 20 2023  joe.saarem.ibm.com
drwxr-x---    3 john.gra staff           256 Nov 29 14:29 john.grant2.cdw.com
drwxr-x---    3 john.sar staff           256 Aug 15 11:22 john.sargent.bluechip.co.uk
drwxr-x---    3 johntatu staff           256 Jun 10 10:56 johntatum.dynamixgroup.com
drwxr-x---    3 joseph.b staff           256 Feb 20 2023  joseph.bush.ocean.ibm.com
drwxr-x---    3 jr.mccar staff           256 Mar 30 2023  jr.mccarter.convergetp.com
drwxr-x---    3 jsantana staff           256 Oct 17 08:16 jsantana.meridianitinc.com
drwxr-x---    3 jseolwan staff           256 Feb 22 2023  jseolwane.tectight.com
drwxr-x---    3 katrin.h staff           256 Mar 08 2023  katrin.henze.tdsynnex.com
drwxr-x---    3 kb007810 staff           256 Nov 28 02:35 kb00781015.techmahindra.com
drwxr-x---    3 kimmo.so staff           256 Feb 24 2023  kimmo.sorala.fi.ibm.com
drwxr-x---    3 korhana. staff           256 Jul 07 04:24 korhana.tr.ibm.com
drwxr-x---    3 krzyszto staff           256 Mar 10 2023  krzysztof.osmulski.credeexpert
drwxr-x---    3 kyao.tec staff           256 Feb 22 2023  kyao.tectight.com
drwxr-x---    3 kzblewsk staff           256 Feb 20 2023  kzblewski.fnts.com
drwx------    2 root     system          256 Nov 21 2021  lost+found
drwxr-x---    3 lsiegel. staff           256 Mar 23 2023  lsiegel.saturnb2b.com
drwxr-x---    3 marcel.n staff           256 Feb 20 2023  marcel.niffeler.econis.ch
drwxr-x---    3 mark.hun staff           256 Mar 28 2023  mark.huntley2.csiltd.co.uk
drwxr-x---    3 martin.b staff           256 Mar 21 2023  martin.borter.itpoint.ch
drwxr-x---    3 matt.dir staff           256 Feb 23 2023  matt.directsys.com
drwxr-x---    3 mboudrea staff           256 Oct 31 07:54 mboudreaux.dms-la.com
drwxr-x---    3 michelle staff           256 Mar 22 2023  michelle.shuler.prolifics.com
drwxr-x---    3 mike.coo staff           256 Feb 22 2023  mike.cook.fcnit.com
drwxr-x---    3 mjensen. staff           256 Jun 26 10:48 mjensen.fnts.com
drwxr-x---    3 mjohnson staff           256 Feb 20 2023  mjohnson.serviceexpress.com
drwxr-x---    3 mjurado. staff           256 Mar 20 2023  mjurado.gnsys.com.mx
drwxr-x---    3 nobutaka staff           256 Mar 01 2023  nobutaka_ikeda.argo-graph.co.j
drwxr-x---    3 o.barth. staff           256 Feb 20 2023  o.barth.profi-ag.de
drwxr-x---    3 olegario staff           256 Feb 23 2023  olegario.rcs.com.ph
drwxr-x---    3 otswai.t staff           256 Feb 22 2023  otswai.tectight.com
drwxr-x---    3 paolo_ri staff           256 Jul 06 09:54 paolo_riavez.it.ibm.com
drwxr-x---    3 pdragov. staff           256 Nov 27 16:29 pdragov.us.ibm.com
drwxr-x---    3 peter.du staff           256 Feb 20 2023  peter.dunbar.frontline-consult
drwxr-x---    3 pmackey. staff           256 Feb 20 2023  pmackey.cmaontheweb.com
drwxr-x---    3 ppereira staff           256 Mar 24 2023  ppereira.incosa.com.uy
drwxr-x---    3 pwambugu staff           256 Mar 07 2023  pwambugu.tbm.co.ke
drwxr-x---    3 r.diekka staff           256 Feb 22 2023  r.diekkaemper.profi-ag.de
drwxr-x---    3 ravo.gro staff           256 Feb 20 2023  ravo.groupe-t2i.com
drwxr-x---    3 ray.ohar staff           256 Mar 10 2023  ray.ohara.meridianit.co.uk
drwxr-x---    3 reynaldo staff           256 Aug 28 11:14 reynaldo.romero.amazing-global
drwxr-x---    3 rfisher3 staff           256 Nov 28 10:43 rfisher3.ibm.com
drwxr-x---    3 rgaylord staff           256 Feb 20 2023  rgaylord.gmail.com
drwxr-x---    3 rune.reh staff           256 Feb 20 2023  rune.rehardt.knudsen.ibm.com
drwxr-x---    3 samuel.t staff           256 Feb 22 2023  samuel.timbo.vsdata.com.br
drwxr-x---    3 seraphin staff           256 Mar 13 2023  seraphin.yago.icbm.ci
drwxr-x---    3 serge.ga staff           256 Jun 02 2023  serge.gaudet.dataintegrity.com
drwxr-x---    3 sphakath staff           256 Feb 22 2023  sphakathi.tectight.com
drwxr-x---    2 srvproxy system          256 Nov 21 2021  srvproxy
drwxr-x---    3 stefan.k staff           256 Feb 24 2023  stefan.kinkartz.veda.net
drwxr-x---    3 swanikar staff           256 Feb 20 2023  swanikar.in.ibm.com
drwxr-x---    3 thomas_f staff           256 Feb 28 2023  thomas_falsis.questronix.com.p
drwxr-x---    3 tommy.em staff           256 Jun 27 08:25 tommy.emanuelsson.shibuya.se
drwxr-x---    3 umerhaya staff           256 Feb 20 2023  umerhayat.gbmme.com
drwxr-x---    3 utsah.te staff           256 Feb 20 2023  utsah.tech9labs.com
drwxr-x---    3 verena.b staff           256 Mar 17 2023  verena.bader.umb.ch
drwxr-x---    3 volker.r staff           256 Feb 20 2023  volker.reinen.nocuma-it.de
drwxr-x---    3 william. staff           256 Feb 20 2023  william.morse.htcinc.com
drwxr-x---    3 wvanwyk. staff           256 Feb 22 2023  wvanwyk.tectight.com
drwxr-x---    3 zvonimir staff           256 May 15 2023  zvonimir.cerny.snt.hr
# delete-user
ksh: delete-user:  not found
# set -o vi       
# userdel       
Usage: userdel [ -r ] login
# man userdel
# vi /usr/local/bin/cleanUpUsers.bash            
# /usr/local/bin/cleanUpUsers.bash |grep skipping
# /usr/local/bin/cleanUpUsers.bash
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz

1 users were deleted.
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at

1 users were deleted.
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for guest
userdel -r guest

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com

1 users were deleted.
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for lost+found
userdel -r lost+found

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for matt.directsys.com
userdel -r matt.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com

1 users were deleted.
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global

1 users were deleted.
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for srvproxy
userdel -r srvproxy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: 1++: command not found
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr

1 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz

1 users were deleted.
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at

1 users were deleted.
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for guest
userdel -r guest

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com

1 users were deleted.
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for lost+found
userdel -r lost+found

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for matt.directsys.com
userdel -r matt.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com

1 users were deleted.
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global

1 users were deleted.
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for srvproxy
userdel -r srvproxy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: +: command not found
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr

1 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz

 users were deleted.
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at

 users were deleted.
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guest
userdel -r guest

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com

 users were deleted.
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lost+found
userdel -r lost+found

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for matt.directsys.com
userdel -r matt.directsys.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com

 users were deleted.
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global

 users were deleted.
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for srvproxy
userdel -r srvproxy

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com

 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr

 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz

1 users were deleted.
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at

1 users were deleted.
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guest
userdel -r guest

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com

1 users were deleted.
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lost+found
userdel -r lost+found

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for matt.directsys.com
userdel -r matt.directsys.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com

1 users were deleted.
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global

1 users were deleted.
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for srvproxy
userdel -r srvproxy

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com

1 users were deleted.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr

1 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guest
userdel -r guest
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lost+found
userdel -r lost+found
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for matt.directsys.com
userdel -r matt.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for srvproxy
userdel -r srvproxy
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 16: delcount: command not found
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr

1 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
delcount = 1
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com
delcount = 1
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za
delcount = 1
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for guest
userdel -r guest
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com
delcount = 1
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for lost+found
userdel -r lost+found
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for matt.directsys.com
userdel -r matt.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com
delcount = 1
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com
delcount = 1
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for srvproxy
userdel -r srvproxy
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found
delcount = 1
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr
/usr/local/bin/cleanUpUsers.bash: line 19: delcount: command not found

1 users were deleted.
# vi /usr/local/bin/cleanUpUsers.bash
# vi /usr/local/bin/cleanUpUsers.bash
# /usr/local/bin/cleanUpUsers.bash   
delcount = 1
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com
delcount = 1
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za
delcount = 1
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for guest
userdel -r guest
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com
delcount = 1
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for lost+found
userdel -r lost+found
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for matt.directsys.com
userdel -r matt.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com
delcount = 1
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com
delcount = 1
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for srvproxy
userdel -r srvproxy
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found

1 users were deleted.
# /usr/local/bin/cleanUpUsers.bash
delcount = 1
no reservation for aaziz.eg.ibm.com
userdel -r aaziz.eg.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for alejandro.suma.net.ve
userdel -r alejandro.suma.net.ve
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for anatole.perry.spark.co.nz
userdel -r anatole.perry.spark.co.nz
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
andrew@jones-tx.com
skipping andrew.jones-tx.com
andrew@jones-tx.com
delcount = 1
no reservation for anh.salmonson.convergetp.com
userdel -r anh.salmonson.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for armando.rodriguez.sinergiasys.
userdel -r armando.rodriguez.sinergiasys.
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for axial.axialconsulting.net
userdel -r axial.axialconsulting.net
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ayo.oluwaseun.ostecit.com
userdel -r ayo.oluwaseun.ostecit.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bbeswick.microstrat.com
userdel -r bbeswick.microstrat.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bcowain.ks2inc.com
userdel -r bcowain.ks2inc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ben.mellor.recarta.co.uk
userdel -r ben.mellor.recarta.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bivy.teamhuber.com
userdel -r bivy.teamhuber.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bkazuska.horizon.ca
userdel -r bkazuska.horizon.ca
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for bwagner.terasys.com.co
userdel -r bwagner.terasys.com.co
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for cfajardo.sinergyhard.com
userdel -r cfajardo.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for chequer.presentia.com.br
userdel -r chequer.presentia.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for d1brok.de.ibm.com
userdel -r d1brok.de.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for dominique.bression.arrowecs.fr
userdel -r dominique.bression.arrowecs.fr
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for dowsley.directsys.com
userdel -r dowsley.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for edson.bandola.pixel.ao
userdel -r edson.bandola.pixel.ao
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ehendricks.tectight.com
userdel -r ehendricks.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for einar.johannesson.origo.is
userdel -r einar.johannesson.origo.is
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for erich.huber-tentschert.itsc.at
userdel -r erich.huber-tentschert.itsc.at
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
frans@edgetec.co.za
skipping frans.edgetec.co.za
frans@edgetec.co.za
delcount = 1
no reservation for guba.aspartner.com.pl
userdel -r guba.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for guest
userdel -r guest
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for guy.vandevenne.econocom.com
userdel -r guy.vandevenne.econocom.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for helle.koppang.embriq.no
userdel -r helle.koppang.embriq.no
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for j.kosmowska.aspartner.com.pl
userdel -r j.kosmowska.aspartner.com.pl
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jayesh.patel.cdw.com
userdel -r jayesh.patel.cdw.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jesus.rubio.es.logicalis.com
userdel -r jesus.rubio.es.logicalis.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jfuentes.tecnoav.com
userdel -r jfuentes.tecnoav.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jjuelas.sinergyhard.com
userdel -r jjuelas.sinergyhard.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jmurphy.tectight.com
userdel -r jmurphy.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for joe.saarem.ibm.com
userdel -r joe.saarem.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
john.grant2@cdw.com
skipping john.grant2.cdw.com
john.grant2@cdw.com
delcount = 1
no reservation for john.sargent.bluechip.co.uk
userdel -r john.sargent.bluechip.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for johntatum.dynamixgroup.com
userdel -r johntatum.dynamixgroup.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for joseph.bush.ocean.ibm.com
userdel -r joseph.bush.ocean.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jr.mccarter.convergetp.com
userdel -r jr.mccarter.convergetp.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jsantana.meridianitinc.com
userdel -r jsantana.meridianitinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for jseolwane.tectight.com
userdel -r jseolwane.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for katrin.henze.tdsynnex.com
userdel -r katrin.henze.tdsynnex.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kb00781015.techmahindra.com
userdel -r kb00781015.techmahindra.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kimmo.sorala.fi.ibm.com
userdel -r kimmo.sorala.fi.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for korhana.tr.ibm.com
userdel -r korhana.tr.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for krzysztof.osmulski.credeexpert
userdel -r krzysztof.osmulski.credeexpert
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kyao.tectight.com
userdel -r kyao.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for kzblewski.fnts.com
userdel -r kzblewski.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for lost+found
userdel -r lost+found
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for lsiegel.saturnb2b.com
userdel -r lsiegel.saturnb2b.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for marcel.niffeler.econis.ch
userdel -r marcel.niffeler.econis.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mark.huntley2.csiltd.co.uk
userdel -r mark.huntley2.csiltd.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for martin.borter.itpoint.ch
userdel -r martin.borter.itpoint.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for matt.directsys.com
userdel -r matt.directsys.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mboudreaux.dms-la.com
userdel -r mboudreaux.dms-la.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for michelle.shuler.prolifics.com
userdel -r michelle.shuler.prolifics.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mike.cook.fcnit.com
userdel -r mike.cook.fcnit.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjensen.fnts.com
userdel -r mjensen.fnts.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjohnson.serviceexpress.com
userdel -r mjohnson.serviceexpress.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for mjurado.gnsys.com.mx
userdel -r mjurado.gnsys.com.mx
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for nobutaka_ikeda.argo-graph.co.j
userdel -r nobutaka_ikeda.argo-graph.co.j
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for o.barth.profi-ag.de
userdel -r o.barth.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for olegario.rcs.com.ph
userdel -r olegario.rcs.com.ph
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for otswai.tectight.com
userdel -r otswai.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for paolo_riavez.it.ibm.com
userdel -r paolo_riavez.it.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
pdragov@us.ibm.com
skipping pdragov.us.ibm.com
pdragov@us.ibm.com
delcount = 1
no reservation for peter.dunbar.frontline-consult
userdel -r peter.dunbar.frontline-consult
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for pmackey.cmaontheweb.com
userdel -r pmackey.cmaontheweb.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ppereira.incosa.com.uy
userdel -r ppereira.incosa.com.uy
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for pwambugu.tbm.co.ke
userdel -r pwambugu.tbm.co.ke
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for r.diekkaemper.profi-ag.de
userdel -r r.diekkaemper.profi-ag.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ravo.groupe-t2i.com
userdel -r ravo.groupe-t2i.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for ray.ohara.meridianit.co.uk
userdel -r ray.ohara.meridianit.co.uk
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for reynaldo.romero.amazing-global
userdel -r reynaldo.romero.amazing-global
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
rfisher3@ibm.com
skipping rfisher3.ibm.com
rfisher3@ibm.com
delcount = 1
no reservation for rgaylord.gmail.com
userdel -r rgaylord.gmail.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for rune.rehardt.knudsen.ibm.com
userdel -r rune.rehardt.knudsen.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for samuel.timbo.vsdata.com.br
userdel -r samuel.timbo.vsdata.com.br
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for seraphin.yago.icbm.ci
userdel -r seraphin.yago.icbm.ci
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for serge.gaudet.dataintegrity.com
userdel -r serge.gaudet.dataintegrity.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for sphakathi.tectight.com
userdel -r sphakathi.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for srvproxy
userdel -r srvproxy
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for stefan.kinkartz.veda.net
userdel -r stefan.kinkartz.veda.net
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for swanikar.in.ibm.com
userdel -r swanikar.in.ibm.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for thomas_falsis.questronix.com.p
userdel -r thomas_falsis.questronix.com.p
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for tommy.emanuelsson.shibuya.se
userdel -r tommy.emanuelsson.shibuya.se
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for umerhayat.gbmme.com
userdel -r umerhayat.gbmme.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for utsah.tech9labs.com
userdel -r utsah.tech9labs.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for verena.bader.umb.ch
userdel -r verena.bader.umb.ch
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for volker.reinen.nocuma-it.de
userdel -r volker.reinen.nocuma-it.de
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for william.morse.htcinc.com
userdel -r william.morse.htcinc.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for wvanwyk.tectight.com
userdel -r wvanwyk.tectight.com
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found
delcount = 1
no reservation for zvonimir.cerny.snt.hr
userdel -r zvonimir.cerny.snt.hr
/usr/local/bin/cleanUpUsers.bash: line 19: 1: command not found

1 users were deleted.
# 
# vi /usr/local/bin/cleanUpUsers.bash
# type perl
perl is /usr/bin/perl
# vi /usr/local/bin/cleanUpUsers.bash
# ls -1 /home
aaziz.eg.ibm.com
alejandro.suma.net.ve
anatole.perry.spark.co.nz
andrew.jones-tx.com
anh.salmonson.convergetp.com
armando.rodriguez.sinergiasys.
axial.axialconsulting.net
ayo.oluwaseun.ostecit.com
bbeswick.microstrat.com
bcowain.ks2inc.com
ben.mellor.recarta.co.uk
bivy.teamhuber.com
bkazuska.horizon.ca
bwagner.terasys.com.co
cfajardo.sinergyhard.com
chequer.presentia.com.br
d1brok.de.ibm.com
dominique.bression.arrowecs.fr
dowsley.directsys.com
edson.bandola.pixel.ao
ehendricks.tectight.com
einar.johannesson.origo.is
erich.huber-tentschert.itsc.at
frans.edgetec.co.za
guba.aspartner.com.pl
guest
guy.vandevenne.econocom.com
helle.koppang.embriq.no
j.kosmowska.aspartner.com.pl
jayesh.patel.cdw.com
jesus.rubio.es.logicalis.com
jfuentes.tecnoav.com
jjuelas.sinergyhard.com
jmurphy.tectight.com
joe.saarem.ibm.com
john.grant2.cdw.com
john.sargent.bluechip.co.uk
johntatum.dynamixgroup.com
joseph.bush.ocean.ibm.com
jr.mccarter.convergetp.com
jsantana.meridianitinc.com
jseolwane.tectight.com
katrin.henze.tdsynnex.com
kb00781015.techmahindra.com
kimmo.sorala.fi.ibm.com
korhana.tr.ibm.com
krzysztof.osmulski.credeexpert
kyao.tectight.com
kzblewski.fnts.com
lost+found
lsiegel.saturnb2b.com
marcel.niffeler.econis.ch
mark.huntley2.csiltd.co.uk
martin.borter.itpoint.ch
matt.directsys.com
mboudreaux.dms-la.com
michelle.shuler.prolifics.com
mike.cook.fcnit.com
mjensen.fnts.com
mjohnson.serviceexpress.com
mjurado.gnsys.com.mx
nobutaka_ikeda.argo-graph.co.j
o.barth.profi-ag.de
olegario.rcs.com.ph
otswai.tectight.com
paolo_riavez.it.ibm.com
pdragov.us.ibm.com
peter.dunbar.frontline-consult
pmackey.cmaontheweb.com
ppereira.incosa.com.uy
pwambugu.tbm.co.ke
r.diekkaemper.profi-ag.de
ravo.groupe-t2i.com
ray.ohara.meridianit.co.uk
reynaldo.romero.amazing-global
rfisher3.ibm.com
rgaylord.gmail.com
rune.rehardt.knudsen.ibm.com
samuel.timbo.vsdata.com.br
seraphin.yago.icbm.ci
serge.gaudet.dataintegrity.com
sphakathi.tectight.com
srvproxy
stefan.kinkartz.veda.net
swanikar.in.ibm.com
thomas_falsis.questronix.com.p
tommy.emanuelsson.shibuya.se
umerhayat.gbmme.com
utsah.tech9labs.com
verena.bader.umb.ch
volker.reinen.nocuma-it.de
william.morse.htcinc.com
wvanwyk.tectight.com
zvonimir.cerny.snt.hr
# vi /usr/local/bin/cleanUpUsers.bash
# mv /usr/local/bin/cleanUpUsers.bash /usr/local/bin/cleanUpUsers.perl
# vi /usr/local/bin/cle(*
ksh: syntax error: `(' unexpected
# vi /usr/local/bin/cle* 
# /usr/local/bin/clenupUsers.perl
ksh: /usr/local/bin/clenupUsers.perl:  not found
# /usr/local/bin/cleanupUsers.perl
ksh: /usr/local/bin/cleanupUsers.perl:  not found
# cd /usr/local/bin
# ls
cleanUpUsers.perl
# ./cleanUpUsers.perl
./cleanUpUsers.perl[3]: use:  not found
./cleanUpUsers.perl[3]: use:  not found
./cleanUpUsers.perl[4]: use:  not found
./cleanUpUsers.perl[16]: sub:  not found
./cleanUpUsers.perl[17]: syntax error at line 17 : `(' unexpected
# perl cleanUpUsers.perl
Can't locate List/Compare.pm in @INC (you may need to install the List::Compare module) (@INC contains: /usr/opt/perl5/lib/site_perl/5.28.1/aix-thread-multi /usr/opt/perl5/lib/site_perl/5.28.1 /usr/opt/perl5/lib/5.28.1/aix-thread-multi /usr/opt/perl5/lib/5.28.1 /usr/opt/perl5/lib/site_perl) at cleanUpUsers.perl line 4.
BEGIN failed--compilation aborted at cleanUpUsers.perl line 4.
# vi cleanUpUsers.perl
# perl cleanUpUsers.perl
Global symbol "$ACTIVE_RESERVATIONS" requires explicit package name (did you forget to declare "my $ACTIVE_RESERVATIONS"?) at cleanUpUsers.perl line 28.
Unknown regexp modifier "/t" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/v" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/e" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/R" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/e" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/e" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/r" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/v" at cleanUpUsers.perl line 28, at end of line
Unknown regexp modifier "/t" at cleanUpUsers.perl line 28, at end of line
cleanUpUsers.perl has too many errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
Global symbol "$ACTIVE_RESERVATIONS" requires explicit package name (did you forget to declare "my $ACTIVE_RESERVATIONS"?) at cleanUpUsers.perl line 28.
Global symbol "$delcount" requires explicit package name (did you forget to declare "my $delcount"?) at cleanUpUsers.perl line 31.
Global symbol "$skipcount" requires explicit package name (did you forget to declare "my $skipcount"?) at cleanUpUsers.perl line 32.
Global symbol "@allHomeDirs" requires explicit package name (did you forget to declare "my @allHomeDirs"?) at cleanUpUsers.perl line 35.
Global symbol "$ACTIVE_RESERVATIONS" requires explicit package name (did you forget to declare "my $ACTIVE_RESERVATIONS"?) at cleanUpUsers.perl line 38.
Global symbol "@allHomeDirs" requires explicit package name (did you forget to declare "my @allHomeDirs"?) at cleanUpUsers.perl line 42.
syntax error at cleanUpUsers.perl line 46, near "@vations
exit"
Global symbol "@allHomeDirs" requires explicit package name (did you forget to declare "my @allHomeDirs"?) at cleanUpUsers.perl line 48.
Global symbol "$delcount" requires explicit package name (did you forget to declare "my $delcount"?) at cleanUpUsers.perl line 57.
Global symbol "$skippcount" requires explicit package name (did you forget to declare "my $skippcount"?) at cleanUpUsers.perl line 58.
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
Global symbol "$delcount" requires explicit package name (did you forget to declare "my $delcount"?) at cleanUpUsers.perl line 31.
Global symbol "$skipcount" requires explicit package name (did you forget to declare "my $skipcount"?) at cleanUpUsers.perl line 32.
syntax error at cleanUpUsers.perl line 46, near "@vations
exit"
Global symbol "$delcount" requires explicit package name (did you forget to declare "my $delcount"?) at cleanUpUsers.perl line 57.
Global symbol "$skippcount" requires explicit package name (did you forget to declare "my $skippcount"?) at cleanUpUsers.perl line 58.
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
syntax error at cleanUpUsers.perl line 46, near "@vations
exit"
Global symbol "$skippcount" requires explicit package name (did you forget to declare "my $skippcount"?) at cleanUpUsers.perl line 58.
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
Global symbol "$skippcount" requires explicit package name (did you forget to declare "my $skippcount"?) at cleanUpUsers.perl line 58.
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
All home dirs:
aaziz.eg.ibm.com
alejandro.suma.net.ve
anatole.perry.spark.co.nz
andrew.jones-tx.com
anh.salmonson.convergetp.com
armando.rodriguez.sinergiasys.
axial.axialconsulting.net
ayo.oluwaseun.ostecit.com
bbeswick.microstrat.com
bcowain.ks2inc.com
ben.mellor.recarta.co.uk
bivy.teamhuber.com
bkazuska.horizon.ca
bwagner.terasys.com.co
cfajardo.sinergyhard.com
chequer.presentia.com.br
d1brok.de.ibm.com
dominique.bression.arrowecs.fr
dowsley.directsys.com
edson.bandola.pixel.ao
ehendricks.tectight.com
einar.johannesson.origo.is
erich.huber-tentschert.itsc.at
frans.edgetec.co.za
guba.aspartner.com.pl
guest
guy.vandevenne.econocom.com
helle.koppang.embriq.no
j.kosmowska.aspartner.com.pl
jayesh.patel.cdw.com
jesus.rubio.es.logicalis.com
jfuentes.tecnoav.com
jjuelas.sinergyhard.com
jmurphy.tectight.com
joe.saarem.ibm.com
john.grant2.cdw.com
john.sargent.bluechip.co.uk
johntatum.dynamixgroup.com
joseph.bush.ocean.ibm.com
jr.mccarter.convergetp.com
jsantana.meridianitinc.com
jseolwane.tectight.com
katrin.henze.tdsynnex.com
kb00781015.techmahindra.com
kimmo.sorala.fi.ibm.com
korhana.tr.ibm.com
krzysztof.osmulski.credeexpert
kyao.tectight.com
kzblewski.fnts.com
lost+found
lsiegel.saturnb2b.com
marcel.niffeler.econis.ch
mark.huntley2.csiltd.co.uk
martin.borter.itpoint.ch
matt.directsys.com
mboudreaux.dms-la.com
michelle.shuler.prolifics.com
mike.cook.fcnit.com
mjensen.fnts.com
mjohnson.serviceexpress.com
mjurado.gnsys.com.mx
nobutaka_ikeda.argo-graph.co.j
o.barth.profi-ag.de
olegario.rcs.com.ph
otswai.tectight.com
paolo_riavez.it.ibm.com
pdragov.us.ibm.com
peter.dunbar.frontline-consult
pmackey.cmaontheweb.com
ppereira.incosa.com.uy
pwambugu.tbm.co.ke
r.diekkaemper.profi-ag.de
ravo.groupe-t2i.com
ray.ohara.meridianit.co.uk
reynaldo.romero.amazing-global
rfisher3.ibm.com
rgaylord.gmail.com
rune.rehardt.knudsen.ibm.com
samuel.timbo.vsdata.com.br
seraphin.yago.icbm.ci
serge.gaudet.dataintegrity.com
sphakathi.tectight.com
srvproxy
stefan.kinkartz.veda.net
swanikar.in.ibm.com
thomas_falsis.questronix.com.p
tommy.emanuelsson.shibuya.se
umerhayat.gbmme.com
utsah.tech9labs.com
verena.bader.umb.ch
volker.reinen.nocuma-it.de
william.morse.htcinc.com
wvanwyk.tectight.com
zvonimir.cerny.snt.hr
All active reservations:
john.grant2@cdw.comandrew@jones-tx.comJohn.Grant2@cdw.comfrans@edgetec.co.zapdragov@us.ibm.comKB00781015@techmahindra.comrfisher3@ibm.com# 
# ls /tmp       
.ctinst.log                   bos                           errmbatch                     rc.net.out                    saved_errmbatch
.oslevel.datafiles            cache_mgt.lock                etc_daemon.lock               result.status                 uncfgct.dbg
.strload.mutex                crout4Ewqec                   lost+found                    rpcbind.file                  uncfgct.dbg.last
.workdir.16253196.13959614_1  ctrmc_MDdr.dbg                lvmt.log                      rsct.rc.shutdown.bak          vgdata
activeReservations.txt        dpi_socket                    man16122270                   rsct.rc.shutdown.out
allHomeDirs.txt               ecpvdpd_sock                  pfcdaemon.out                 rsct_cfgct_history.log
# cat /tmp/activeReservations.txt
john.grant2@cdw.com
andrew@jones-tx.com
John.Grant2@cdw.com
frans@edgetec.co.za
pdragov@us.ibm.com
KB00781015@techmahindra.com
rfisher3@ibm.com
# vi cleanUpUsers.perl           
# cat /tmp/activeReservations.txt
john.grant2@cdw.com
andrew@jones-tx.com
John.Grant2@cdw.com
frans@edgetec.co.za
pdragov@us.ibm.com
KB00781015@techmahindra.com
rfisher3@ibm.com
# perl cleanUpUsers.perl         
Can't modify quoted execution (``, qx) in chomp at cleanUpUsers.perl line 35, near "`ls -1 /home`)"
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl           
# perl cleanUpUsers.perl
All home dirs:
aaziz.eg.ibm.comalejandro.suma.net.veanatole.perry.spark.co.nzandrew.jones-tx.comanh.salmonson.convergetp.comarmando.rodriguez.sinergiasys.axial.axialconsulting.netayo.oluwaseun.ostecit.combbeswick.microstrat.combcowain.ks2inc.comben.mellor.recarta.co.ukbivy.teamhuber.combkazuska.horizon.cabwagner.terasys.com.cocfajardo.sinergyhard.comchequer.presentia.com.brd1brok.de.ibm.comdominique.bression.arrowecs.frdowsley.directsys.comedson.bandola.pixel.aoehendricks.tectight.comeinar.johannesson.origo.iserich.huber-tentschert.itsc.atfrans.edgetec.co.zaguba.aspartner.com.plguestguy.vandevenne.econocom.comhelle.koppang.embriq.noj.kosmowska.aspartner.com.pljayesh.patel.cdw.comjesus.rubio.es.logicalis.comjfuentes.tecnoav.comjjuelas.sinergyhard.comjmurphy.tectight.comjoe.saarem.ibm.comjohn.grant2.cdw.comjohn.sargent.bluechip.co.ukjohntatum.dynamixgroup.comjoseph.bush.ocean.ibm.comjr.mccarter.convergetp.comjsantana.meridianitinc.comjseolwane.tectight.comkatrin.henze.tdsynnex.comkb00781015.techmahindra.comkimmo.sorala.fi.ibm.comkorhana.tr.ibm.comkrzysztof.osmulski.credeexpertkyao.tectight.comkzblewski.fnts.comlost+foundlsiegel.saturnb2b.commarcel.niffeler.econis.chmark.huntley2.csiltd.co.ukmartin.borter.itpoint.chmatt.directsys.commboudreaux.dms-la.commichelle.shuler.prolifics.commike.cook.fcnit.commjensen.fnts.commjohnson.serviceexpress.commjurado.gnsys.com.mxnobutaka_ikeda.argo-graph.co.jo.barth.profi-ag.deolegario.rcs.com.photswai.tectight.compaolo_riavez.it.ibm.compdragov.us.ibm.competer.dunbar.frontline-consultpmackey.cmaontheweb.comppereira.incosa.com.uypwambugu.tbm.co.ker.diekkaemper.profi-ag.deravo.groupe-t2i.comray.ohara.meridianit.co.ukreynaldo.romero.amazing-globalrfisher3.ibm.comrgaylord.gmail.comrune.rehardt.knudsen.ibm.comsamuel.timbo.vsdata.com.brseraphin.yago.icbm.ciserge.gaudet.dataintegrity.comsphakathi.tectight.comsrvproxystefan.kinkartz.veda.netswanikar.in.ibm.comthomas_falsis.questronix.com.ptommy.emanuelsson.shibuya.seumerhayat.gbmme.comutsah.tech9labs.comverena.bader.umb.chvolker.reinen.nocuma-it.dewilliam.morse.htcinc.comwvanwyk.tectight.comzvonimir.cerny.snt.hrAll active reservations:
john.grant2@cdw.comandrew@jones-tx.comJohn.Grant2@cdw.comfrans@edgetec.co.zapdragov@us.ibm.comKB00781015@techmahindra.comrfisher3@ibm.com# vi cleanUpUsers.pe# perl cleanUpUsers.perl
Bareword found where operator expected at cleanUpUsers.perl line 58, near "print "Deleting"
  (Might be a runaway multi-line "" string starting on line 57)
        (Do you need to predeclare print?)
Backslash found where operator expected at cleanUpUsers.perl line 58, near "$user\"
        (Missing operator before \?)
String found where operator expected at cleanUpUsers.perl line 58, near "print ""
        (Missing semicolon on previous line?)
Backslash found where operator expected at cleanUpUsers.perl line 58, near "nSummary\"
String found where operator expected at cleanUpUsers.perl line 58, near "print ""
        (Missing semicolon on previous line?)
Scalar found where operator expected at cleanUpUsers.perl line 59, near "print "$delcount"
  (Might be a runaway multi-line "" string starting on line 58)
        (Do you need to predeclare print?)
Bareword found where operator expected at cleanUpUsers.perl line 59, near "$delcount users"
        (Missing operator before users?)
String found where operator expected at cleanUpUsers.perl line 59, near "print ""
        (Missing semicolon on previous line?)
Scalar found where operator expected at cleanUpUsers.perl line 60, near "print "$skipcount"
  (Might be a runaway multi-line "" string starting on line 59)
        (Do you need to predeclare print?)
Bareword found where operator expected at cleanUpUsers.perl line 60, near "$skipcount users"
        (Missing operator before users?)
String found where operator expected at cleanUpUsers.perl line 60, at end of line
        (Missing semicolon on previous line?)
syntax error at cleanUpUsers.perl line 58, near "print "Deleting "
Can't find string terminator '"' anywhere before EOF at cleanUpUsers.perl line 60.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
Do you want to remove aaziz.eg.ibm.com? (Y/N): n
Do you want to remove alejandro.suma.net.ve? (Y/N): n
Do you want to remove anatole.perry.spark.co.nz? (Y/N): n
skipping andrew.jones-tx.com
Do you want to remove anh.salmonson.convergetp.com? (Y/N): ^C# no | perl cleanUpUsers.perl
Usage:  no -h [tunable] | {[-F] -L [tunable]} | {[-F] -x  [tunable]}
        no [-p|[-r|-rK]] (-a [-F] | {-o tunable})
        no [-p|[-r|-rK]] [-y] (-D | ({-d tunable} {-o tunable=value}))
Do you want to remove aaziz.eg.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove alejandro.suma.net.ve? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove anatole.perry.spark.co.nz? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
skipping andrew.jones-tx.com
Do you want to remove anh.salmonson.convergetp.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove armando.rodriguez.sinergiasys.? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove axial.axialconsulting.net? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ayo.oluwaseun.ostecit.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove bbeswick.microstrat.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove bcowain.ks2inc.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ben.mellor.recarta.co.uk? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove bivy.teamhuber.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove bkazuska.horizon.ca? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove bwagner.terasys.com.co? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove cfajardo.sinergyhard.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove chequer.presentia.com.br? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove d1brok.de.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove dominique.bression.arrowecs.fr? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove dowsley.directsys.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove edson.bandola.pixel.ao? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ehendricks.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove einar.johannesson.origo.is? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove erich.huber-tentschert.itsc.at? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
skipping frans.edgetec.co.za
Do you want to remove guba.aspartner.com.pl? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove guest? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove guy.vandevenne.econocom.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove helle.koppang.embriq.no? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove j.kosmowska.aspartner.com.pl? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jayesh.patel.cdw.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jesus.rubio.es.logicalis.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jfuentes.tecnoav.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jjuelas.sinergyhard.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jmurphy.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove joe.saarem.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
skipping john.grant2.cdw.com
Do you want to remove john.sargent.bluechip.co.uk? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove johntatum.dynamixgroup.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove joseph.bush.ocean.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jr.mccarter.convergetp.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jsantana.meridianitinc.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove jseolwane.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove katrin.henze.tdsynnex.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove kb00781015.techmahindra.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove kimmo.sorala.fi.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove korhana.tr.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove krzysztof.osmulski.credeexpert? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove kyao.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove kzblewski.fnts.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove lost+found? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove lsiegel.saturnb2b.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove marcel.niffeler.econis.ch? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mark.huntley2.csiltd.co.uk? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove martin.borter.itpoint.ch? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove matt.directsys.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mboudreaux.dms-la.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove michelle.shuler.prolifics.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mike.cook.fcnit.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mjensen.fnts.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mjohnson.serviceexpress.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove mjurado.gnsys.com.mx? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove nobutaka_ikeda.argo-graph.co.j? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove o.barth.profi-ag.de? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove olegario.rcs.com.ph? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove otswai.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove paolo_riavez.it.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
skipping pdragov.us.ibm.com
Do you want to remove peter.dunbar.frontline-consult? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove pmackey.cmaontheweb.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ppereira.incosa.com.uy? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove pwambugu.tbm.co.ke? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove r.diekkaemper.profi-ag.de? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ravo.groupe-t2i.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove ray.ohara.meridianit.co.uk? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove reynaldo.romero.amazing-global? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
skipping rfisher3.ibm.com
Do you want to remove rgaylord.gmail.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove rune.rehardt.knudsen.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove samuel.timbo.vsdata.com.br? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove seraphin.yago.icbm.ci? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove serge.gaudet.dataintegrity.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove sphakathi.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove srvproxy? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove stefan.kinkartz.veda.net? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove swanikar.in.ibm.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove thomas_falsis.questronix.com.p? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove tommy.emanuelsson.shibuya.se? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove umerhayat.gbmme.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove utsah.tech9labs.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove verena.bader.umb.ch? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove volker.reinen.nocuma-it.de? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove william.morse.htcinc.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove wvanwyk.tectight.com? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.
Do you want to remove zvonimir.cerny.snt.hr? (Y/N): Use of uninitialized value $answer in chomp at cleanUpUsers.perl line 19.
Use of uninitialized value $answer in lc at cleanUpUsers.perl line 25.

Summary
0 users were deleted.
5 users were skipped.
# vi cleanUpUsers.perl       
# n:o | perl cleanUpUsers.perl
# vi cleanUpUsers.perl
# no | perl cleanUpUsers.perl
Usage:  no -h [tunable] | {[-F] -L [tunable]} | {[-F] -x  [tunable]}
        no [-p|[-r|-rK]] (-a [-F] | {-o tunable})
        no [-p|[-r|-rK]] [-y] (-D | ({-d tunable} {-o tunable=value}))
Do you want to remove aaziz.eg.ibm.com? (Y/N): Do you want to remove alejandro.suma.net.ve? (Y/N): Do you want to remove anatole.perry.spark.co.nz? (Y/N): skipping andrew.jones-tx.com
Do you want to remove anh.salmonson.convergetp.com? (Y/N): Do you want to remove armando.rodriguez.sinergiasys.? (Y/N): Do you want to remove axial.axialconsulting.net? (Y/N): Do you want to remove ayo.oluwaseun.ostecit.com? (Y/N): Do you want to remove bbeswick.microstrat.com? (Y/N): Do you want to remove bcowain.ks2inc.com? (Y/N): Do you want to remove ben.mellor.recarta.co.uk? (Y/N): Do you want to remove bivy.teamhuber.com? (Y/N): Do you want to remove bkazuska.horizon.ca? (Y/N): Do you want to remove bwagner.terasys.com.co? (Y/N): Do you want to remove cfajardo.sinergyhard.com? (Y/N): Do you want to remove chequer.presentia.com.br? (Y/N): Do you want to remove d1brok.de.ibm.com? (Y/N): Do you want to remove dominique.bression.arrowecs.fr? (Y/N): Do you want to remove dowsley.directsys.com? (Y/N): Do you want to remove edson.bandola.pixel.ao? (Y/N): Do you want to remove ehendricks.tectight.com? (Y/N): Do you want to remove einar.johannesson.origo.is? (Y/N): Do you want to remove erich.huber-tentschert.itsc.at? (Y/N): skipping frans.edgetec.co.za
Do you want to remove guba.aspartner.com.pl? (Y/N): Do you want to remove guest? (Y/N): Do you want to remove guy.vandevenne.econocom.com? (Y/N): Do you want to remove helle.koppang.embriq.no? (Y/N): Do you want to remove j.kosmowska.aspartner.com.pl? (Y/N): Do you want to remove jayesh.patel.cdw.com? (Y/N): Do you want to remove jesus.rubio.es.logicalis.com? (Y/N): Do you want to remove jfuentes.tecnoav.com? (Y/N): Do you want to remove jjuelas.sinergyhard.com? (Y/N): Do you want to remove jmurphy.tectight.com? (Y/N): Do you want to remove joe.saarem.ibm.com? (Y/N): skipping john.grant2.cdw.com
Do you want to remove john.sargent.bluechip.co.uk? (Y/N): Do you want to remove johntatum.dynamixgroup.com? (Y/N): Do you want to remove joseph.bush.ocean.ibm.com? (Y/N): Do you want to remove jr.mccarter.convergetp.com? (Y/N): Do you want to remove jsantana.meridianitinc.com? (Y/N): Do you want to remove jseolwane.tectight.com? (Y/N): Do you want to remove katrin.henze.tdsynnex.com? (Y/N): Do you want to remove kb00781015.techmahindra.com? (Y/N): Do you want to remove kimmo.sorala.fi.ibm.com? (Y/N): Do you want to remove korhana.tr.ibm.com? (Y/N): Do you want to remove krzysztof.osmulski.credeexpert? (Y/N): Do you want to remove kyao.tectight.com? (Y/N): Do you want to remove kzblewski.fnts.com? (Y/N): Do you want to remove lost+found? (Y/N): Do you want to remove lsiegel.saturnb2b.com? (Y/N): Do you want to remove marcel.niffeler.econis.ch? (Y/N): Do you want to remove mark.huntley2.csiltd.co.uk? (Y/N): Do you want to remove martin.borter.itpoint.ch? (Y/N): Do you want to remove matt.directsys.com? (Y/N): Do you want to remove mboudreaux.dms-la.com? (Y/N): Do you want to remove michelle.shuler.prolifics.com? (Y/N): Do you want to remove mike.cook.fcnit.com? (Y/N): Do you want to remove mjensen.fnts.com? (Y/N): Do you want to remove mjohnson.serviceexpress.com? (Y/N): Do you want to remove mjurado.gnsys.com.mx? (Y/N): Do you want to remove nobutaka_ikeda.argo-graph.co.j? (Y/N): Do you want to remove o.barth.profi-ag.de? (Y/N): Do you want to remove olegario.rcs.com.ph? (Y/N): Do you want to remove otswai.tectight.com? (Y/N): Do you want to remove paolo_riavez.it.ibm.com? (Y/N): skipping pdragov.us.ibm.com
Do you want to remove peter.dunbar.frontline-consult? (Y/N): Do you want to remove pmackey.cmaontheweb.com? (Y/N): Do you want to remove ppereira.incosa.com.uy? (Y/N): Do you want to remove pwambugu.tbm.co.ke? (Y/N): Do you want to remove r.diekkaemper.profi-ag.de? (Y/N): Do you want to remove ravo.groupe-t2i.com? (Y/N): Do you want to remove ray.ohara.meridianit.co.uk? (Y/N): Do you want to remove reynaldo.romero.amazing-global? (Y/N): skipping rfisher3.ibm.com
Do you want to remove rgaylord.gmail.com? (Y/N): Do you want to remove rune.rehardt.knudsen.ibm.com? (Y/N): Do you want to remove samuel.timbo.vsdata.com.br? (Y/N): Do you want to remove seraphin.yago.icbm.ci? (Y/N): Do you want to remove serge.gaudet.dataintegrity.com? (Y/N): Do you want to remove sphakathi.tectight.com? (Y/N): Do you want to remove srvproxy? (Y/N): Do you want to remove stefan.kinkartz.veda.net? (Y/N): Do you want to remove swanikar.in.ibm.com? (Y/N): Do you want to remove thomas_falsis.questronix.com.p? (Y/N): Do you want to remove tommy.emanuelsson.shibuya.se? (Y/N): Do you want to remove umerhayat.gbmme.com? (Y/N): Do you want to remove utsah.tech9labs.com? (Y/N): Do you want to remove verena.bader.umb.ch? (Y/N): Do you want to remove volker.reinen.nocuma-it.de? (Y/N): Do you want to remove william.morse.htcinc.com? (Y/N): Do you want to remove wvanwyk.tectight.com? (Y/N): Do you want to remove zvonimir.cerny.snt.hr? (Y/N): 
Summary
0 users were deleted.
5 users were skipped.
# vi cleanUpUsers.perl       
# ls -l /home
total 0
drwxr-x---    3 aaziz.eg staff           256 Jul 06 02:59 aaziz.eg.ibm.com
drwxr-x---    3 alejandr staff           256 Aug 22 19:42 alejandro.suma.net.ve
drwxr-x---    3 anatole. staff           256 Jul 05 23:41 anatole.perry.spark.co.nz
drwxr-x---    3 andrew.j staff           256 Nov 29 13:39 andrew.jones-tx.com
drwxr-x---    3 anh.salm staff           256 Feb 21 2023  anh.salmonson.convergetp.com
drwxr-x---    3 armando. staff           256 Apr 06 2023  armando.rodriguez.sinergiasys.
drwxr-x---    3 axial.ax staff           256 Aug 17 04:39 axial.axialconsulting.net
drwxr-x---    3 ayo.oluw staff           256 Aug 02 07:04 ayo.oluwaseun.ostecit.com
drwxr-x---    3 bbeswick staff           256 Mar 15 2023  bbeswick.microstrat.com
drwxr-x---    3 bcowain. staff           256 Mar 08 2023  bcowain.ks2inc.com
drwxr-x---    3 ben.mell staff           256 Apr 12 2023  ben.mellor.recarta.co.uk
drwxr-x---    3 bivy.tea staff           256 Feb 22 2023  bivy.teamhuber.com
drwxr-x---    3 bkazuska staff           256 May 24 2023  bkazuska.horizon.ca
drwxr-x---    3 bwagner. staff           256 Jul 05 09:38 bwagner.terasys.com.co
drwxr-x---    3 cfajardo staff           256 Mar 30 2023  cfajardo.sinergyhard.com
drwxr-x---    3 chequer. staff           256 Feb 22 2023  chequer.presentia.com.br
drwxr-x---    3 d1brok.d staff           256 Aug 18 07:45 d1brok.de.ibm.com
drwxr-x---    3 dominiqu staff           256 Feb 20 2023  dominique.bression.arrowecs.fr
drwxr-x---    3 dowsley. staff           256 Feb 22 2023  dowsley.directsys.com
drwxr-x---    3 edson.ba staff           256 Mar 13 2023  edson.bandola.pixel.ao
drwxr-x---    3 ehendric staff           256 Feb 23 2023  ehendricks.tectight.com
drwxr-x---    3 einar.jo staff           256 Mar 14 2023  einar.johannesson.origo.is
drwxr-x---    3 erich.hu staff           256 Feb 20 2023  erich.huber-tentschert.itsc.at
drwxr-x---    3 frans.ed staff           256 Nov 28 04:37 frans.edgetec.co.za
drwxr-x---    3 guba.asp staff           256 May 07 2023  guba.aspartner.com.pl
drwxr-xr-x    2 guest    usr             256 Nov 21 2021  guest
drwxr-x---    3 guy.vand staff           256 Feb 20 2023  guy.vandevenne.econocom.com
drwxr-x---    3 helle.ko staff           256 May 26 2023  helle.koppang.embriq.no
drwxr-x---    3 j.kosmow staff           256 May 09 2023  j.kosmowska.aspartner.com.pl
drwxr-x---    3 jayesh.p staff           256 Sep 08 09:12 jayesh.patel.cdw.com
drwxr-x---    3 jesus.ru staff           256 Mar 28 2023  jesus.rubio.es.logicalis.com
drwxr-x---    3 jfuentes staff           256 Feb 24 2023  jfuentes.tecnoav.com
drwxr-x---    3 jjuelas. staff           256 Apr 19 2023  jjuelas.sinergyhard.com
drwxr-x---    3 jmurphy. staff           256 Feb 20 2023  jmurphy.tectight.com
drwxr-x---    3 joe.saar staff           256 Feb 20 2023  joe.saarem.ibm.com
drwxr-x---    3 john.gra staff           256 Nov 29 14:29 john.grant2.cdw.com
drwxr-x---    3 john.sar staff           256 Aug 15 11:22 john.sargent.bluechip.co.uk
drwxr-x---    3 johntatu staff           256 Jun 10 10:56 johntatum.dynamixgroup.com
drwxr-x---    3 joseph.b staff           256 Feb 20 2023  joseph.bush.ocean.ibm.com
drwxr-x---    3 jr.mccar staff           256 Mar 30 2023  jr.mccarter.convergetp.com
drwxr-x---    3 jsantana staff           256 Oct 17 08:16 jsantana.meridianitinc.com
drwxr-x---    3 jseolwan staff           256 Feb 22 2023  jseolwane.tectight.com
drwxr-x---    3 katrin.h staff           256 Mar 08 2023  katrin.henze.tdsynnex.com
drwxr-x---    3 kb007810 staff           256 Nov 28 02:35 kb00781015.techmahindra.com
drwxr-x---    3 kimmo.so staff           256 Feb 24 2023  kimmo.sorala.fi.ibm.com
drwxr-x---    3 korhana. staff           256 Jul 07 04:24 korhana.tr.ibm.com
drwxr-x---    3 krzyszto staff           256 Mar 10 2023  krzysztof.osmulski.credeexpert
drwxr-x---    3 kyao.tec staff           256 Feb 22 2023  kyao.tectight.com
drwxr-x---    3 kzblewsk staff           256 Feb 20 2023  kzblewski.fnts.com
drwx------    2 root     system          256 Nov 21 2021  lost+found
drwxr-x---    3 lsiegel. staff           256 Mar 23 2023  lsiegel.saturnb2b.com
drwxr-x---    3 marcel.n staff           256 Feb 20 2023  marcel.niffeler.econis.ch
drwxr-x---    3 mark.hun staff           256 Mar 28 2023  mark.huntley2.csiltd.co.uk
drwxr-x---    3 martin.b staff           256 Mar 21 2023  martin.borter.itpoint.ch
drwxr-x---    3 matt.dir staff           256 Feb 23 2023  matt.directsys.com
drwxr-x---    3 mboudrea staff           256 Oct 31 07:54 mboudreaux.dms-la.com
drwxr-x---    3 michelle staff           256 Mar 22 2023  michelle.shuler.prolifics.com
drwxr-x---    3 mike.coo staff           256 Feb 22 2023  mike.cook.fcnit.com
drwxr-x---    3 mjensen. staff           256 Jun 26 10:48 mjensen.fnts.com
drwxr-x---    3 mjohnson staff           256 Feb 20 2023  mjohnson.serviceexpress.com
drwxr-x---    3 mjurado. staff           256 Mar 20 2023  mjurado.gnsys.com.mx
drwxr-x---    3 nobutaka staff           256 Mar 01 2023  nobutaka_ikeda.argo-graph.co.j
drwxr-x---    3 o.barth. staff           256 Feb 20 2023  o.barth.profi-ag.de
drwxr-x---    3 olegario staff           256 Feb 23 2023  olegario.rcs.com.ph
drwxr-x---    3 otswai.t staff           256 Feb 22 2023  otswai.tectight.com
drwxr-x---    3 paolo_ri staff           256 Jul 06 09:54 paolo_riavez.it.ibm.com
drwxr-x---    3 pdragov. staff           256 Nov 27 16:29 pdragov.us.ibm.com
drwxr-x---    3 peter.du staff           256 Feb 20 2023  peter.dunbar.frontline-consult
drwxr-x---    3 pmackey. staff           256 Feb 20 2023  pmackey.cmaontheweb.com
drwxr-x---    3 ppereira staff           256 Mar 24 2023  ppereira.incosa.com.uy
drwxr-x---    3 pwambugu staff           256 Mar 07 2023  pwambugu.tbm.co.ke
drwxr-x---    3 r.diekka staff           256 Feb 22 2023  r.diekkaemper.profi-ag.de
drwxr-x---    3 ravo.gro staff           256 Feb 20 2023  ravo.groupe-t2i.com
drwxr-x---    3 ray.ohar staff           256 Mar 10 2023  ray.ohara.meridianit.co.uk
drwxr-x---    3 reynaldo staff           256 Aug 28 11:14 reynaldo.romero.amazing-global
drwxr-x---    3 rfisher3 staff           256 Nov 28 10:43 rfisher3.ibm.com
drwxr-x---    3 rgaylord staff           256 Feb 20 2023  rgaylord.gmail.com
drwxr-x---    3 rune.reh staff           256 Feb 20 2023  rune.rehardt.knudsen.ibm.com
drwxr-x---    3 samuel.t staff           256 Feb 22 2023  samuel.timbo.vsdata.com.br
drwxr-x---    3 seraphin staff           256 Mar 13 2023  seraphin.yago.icbm.ci
drwxr-x---    3 serge.ga staff           256 Jun 02 2023  serge.gaudet.dataintegrity.com
drwxr-x---    3 sphakath staff           256 Feb 22 2023  sphakathi.tectight.com
drwxr-x---    2 srvproxy system          256 Nov 21 2021  srvproxy
drwxr-x---    3 stefan.k staff           256 Feb 24 2023  stefan.kinkartz.veda.net
drwxr-x---    3 swanikar staff           256 Feb 20 2023  swanikar.in.ibm.com
drwxr-x---    3 thomas_f staff           256 Feb 28 2023  thomas_falsis.questronix.com.p
drwxr-x---    3 tommy.em staff           256 Jun 27 08:25 tommy.emanuelsson.shibuya.se
drwxr-x---    3 umerhaya staff           256 Feb 20 2023  umerhayat.gbmme.com
drwxr-x---    3 utsah.te staff           256 Feb 20 2023  utsah.tech9labs.com
drwxr-x---    3 verena.b staff           256 Mar 17 2023  verena.bader.umb.ch
drwxr-x---    3 volker.r staff           256 Feb 20 2023  volker.reinen.nocuma-it.de
drwxr-x---    3 william. staff           256 Feb 20 2023  william.morse.htcinc.com
drwxr-x---    3 wvanwyk. staff           256 Feb 22 2023  wvanwyk.tectight.com
drwxr-x---    3 zvonimir staff           256 May 15 2023  zvonimir.cerny.snt.hr
# 
# deluser -r mjensen.fnts.com
ksh: deluser:  not found
# vi cleanUpUsers.perl       
# userdel -r mjensen.fnts.com
# ls -l /home/mjensen.fnts.com
/home/mjensen.fnts.com not found
# grep mjensen.fnts.com /etc/passwd
# ls
cleanUpUsers.perl
# ls /tmp
.ctinst.log                   bos                           errmbatch                     rc.net.out                    saved_errmbatch
.oslevel.datafiles            cache_mgt.lock                etc_daemon.lock               result.status                 uncfgct.dbg
.strload.mutex                crout4Ewqec                   lost+found                    rpcbind.file                  uncfgct.dbg.last
.workdir.16253196.13959614_1  ctrmc_MDdr.dbg                lvmt.log                      rsct.rc.shutdown.bak          vgdata
activeReservations.txt        dpi_socket                    man16122270                   rsct.rc.shutdown.out
allHomeDirs.txt               ecpvdpd_sock                  pfcdaemon.out                 rsct_cfgct_history.log
# cat /tmp/active*
john.grant2@cdw.com
andrew@jones-tx.com
John.Grant2@cdw.com
frans@edgetec.co.za
pdragov@us.ibm.com
KB00781015@techmahindra.com
rfisher3@ibm.com
# vi cleanUpUsers.perl             
# perl cleanUpUsers.perl           
Do you want to remove aaziz.eg.ibm.com? (Y/N): y
Deleting aaziz.eg.ibm.com
Do you want to remove alejandro.suma.net.ve? (Y/N): y
Deleting alejandro.suma.net.ve
Do you want to remove anatole.perry.spark.co.nz? (Y/N): y
Deleting anatole.perry.spark.co.nz
skipping andrew.jones-tx.com
Do you want to remove anh.salmonson.convergetp.com? (Y/N): y
Deleting anh.salmonson.convergetp.com
Do you want to remove armando.rodriguez.sinergiasys.? (Y/N): y
Deleting armando.rodriguez.sinergiasys.
Do you want to remove axial.axialconsulting.net? (Y/N): y
Deleting axial.axialconsulting.net
Do you want to remove ayo.oluwaseun.ostecit.com? (Y/N): y
Deleting ayo.oluwaseun.ostecit.com
Do you want to remove bbeswick.microstrat.com? (Y/N): y
Deleting bbeswick.microstrat.com
Do you want to remove bcowain.ks2inc.com? (Y/N): y
Deleting bcowain.ks2inc.com
Do you want to remove ben.mellor.recarta.co.uk? (Y/N): y
Deleting ben.mellor.recarta.co.uk
Do you want to remove bivy.teamhuber.com? (Y/N): y
Deleting bivy.teamhuber.com
Do you want to remove bkazuska.horizon.ca? (Y/N): y
Deleting bkazuska.horizon.ca
Do you want to remove bwagner.terasys.com.co? (Y/N): y
Deleting bwagner.terasys.com.co
Do you want to remove cfajardo.sinergyhard.com? (Y/N): y
Deleting cfajardo.sinergyhard.com
Do you want to remove chequer.presentia.com.br? (Y/N): y
Deleting chequer.presentia.com.br
Do you want to remove d1brok.de.ibm.com? (Y/N): y
Deleting d1brok.de.ibm.com
Do you want to remove dominique.bression.arrowecs.fr? (Y/N): y
Deleting dominique.bression.arrowecs.fr
Do you want to remove dowsley.directsys.com? (Y/N): y
Deleting dowsley.directsys.com
Do you want to remove edson.bandola.pixel.ao? (Y/N): y
Deleting edson.bandola.pixel.ao
Do you want to remove ehendricks.tectight.com? (Y/N): y
Deleting ehendricks.tectight.com
Do you want to remove einar.johannesson.origo.is? (Y/N): y
Deleting einar.johannesson.origo.is
Do you want to remove erich.huber-tentschert.itsc.at? (Y/N): y
Deleting erich.huber-tentschert.itsc.at
skipping frans.edgetec.co.za
Do you want to remove guba.aspartner.com.pl? (Y/N): y
Deleting guba.aspartner.com.pl
Do you want to remove guest? (Y/N): y
Deleting guest
Do you want to remove guy.vandevenne.econocom.com? (Y/N): y
Deleting guy.vandevenne.econocom.com
Do you want to remove helle.koppang.embriq.no? (Y/N): y
Deleting helle.koppang.embriq.no
Do you want to remove j.kosmowska.aspartner.com.pl? (Y/N): y
Deleting j.kosmowska.aspartner.com.pl
Do you want to remove jayesh.patel.cdw.com? (Y/N): y
Deleting jayesh.patel.cdw.com
Do you want to remove jesus.rubio.es.logicalis.com? (Y/N): y
Deleting jesus.rubio.es.logicalis.com
Do you want to remove jfuentes.tecnoav.com? (Y/N): y
Deleting jfuentes.tecnoav.com
Do you want to remove jjuelas.sinergyhard.com? (Y/N): y
Deleting jjuelas.sinergyhard.com
Do you want to remove jmurphy.tectight.com? (Y/N): y
Deleting jmurphy.tectight.com
Do you want to remove joe.saarem.ibm.com? (Y/N): y
Deleting joe.saarem.ibm.com
skipping john.grant2.cdw.com
Do you want to remove john.sargent.bluechip.co.uk? (Y/N): y
Deleting john.sargent.bluechip.co.uk
Do you want to remove johntatum.dynamixgroup.com? (Y/N): y
Deleting johntatum.dynamixgroup.com
Do you want to remove joseph.bush.ocean.ibm.com? (Y/N): y
Deleting joseph.bush.ocean.ibm.com
Do you want to remove jr.mccarter.convergetp.com? (Y/N): y
Deleting jr.mccarter.convergetp.com
Do you want to remove jsantana.meridianitinc.com? (Y/N): y
Deleting jsantana.meridianitinc.com
Do you want to remove jseolwane.tectight.com? (Y/N): y
Deleting jseolwane.tectight.com
Do you want to remove katrin.henze.tdsynnex.com? (Y/N): y
Deleting katrin.henze.tdsynnex.com
Do you want to remove kb00781015.techmahindra.com? (Y/N): n
Do you want to remove kimmo.sorala.fi.ibm.com? (Y/N): y
Deleting kimmo.sorala.fi.ibm.com
Do you want to remove korhana.tr.ibm.com? (Y/N): y
Deleting korhana.tr.ibm.com
Do you want to remove krzysztof.osmulski.credeexpert? (Y/N): y
Deleting krzysztof.osmulski.credeexpert
Do you want to remove kyao.tectight.com? (Y/N): y
Deleting kyao.tectight.com
Do you want to remove kzblewski.fnts.com? (Y/N): y
Deleting kzblewski.fnts.com
Do you want to remove lost+found? (Y/N): n
Do you want to remove lsiegel.saturnb2b.com? (Y/N): y
Deleting lsiegel.saturnb2b.com
Do you want to remove marcel.niffeler.econis.ch? (Y/N): y
Deleting marcel.niffeler.econis.ch
Do you want to remove mark.huntley2.csiltd.co.uk? (Y/N): y
Deleting mark.huntley2.csiltd.co.uk
Do you want to remove martin.borter.itpoint.ch? (Y/N): y
Deleting martin.borter.itpoint.ch
Do you want to remove matt.directsys.com? (Y/N): y
Deleting matt.directsys.com
Do you want to remove mboudreaux.dms-la.com? (Y/N): y
Deleting mboudreaux.dms-la.com
Do you want to remove michelle.shuler.prolifics.com? (Y/N): y
Deleting michelle.shuler.prolifics.com
Do you want to remove mike.cook.fcnit.com? (Y/N): y
Deleting mike.cook.fcnit.com
Do you want to remove mjohnson.serviceexpress.com? (Y/N): y
Deleting mjohnson.serviceexpress.com
Do you want to remove mjurado.gnsys.com.mx? (Y/N): y
Deleting mjurado.gnsys.com.mx
Do you want to remove nobutaka_ikeda.argo-graph.co.j? (Y/N): y
Deleting nobutaka_ikeda.argo-graph.co.j
Do you want to remove o.barth.profi-ag.de? (Y/N): y
Deleting o.barth.profi-ag.de
Do you want to remove olegario.rcs.com.ph? (Y/N): y
Deleting olegario.rcs.com.ph
Do you want to remove otswai.tectight.com? (Y/N): y
Deleting otswai.tectight.com
Do you want to remove paolo_riavez.it.ibm.com? (Y/N): y
Deleting paolo_riavez.it.ibm.com
skipping pdragov.us.ibm.com
Do you want to remove peter.dunbar.frontline-consult? (Y/N): y
Deleting peter.dunbar.frontline-consult
Do you want to remove pmackey.cmaontheweb.com? (Y/N): y
Deleting pmackey.cmaontheweb.com
Do you want to remove ppereira.incosa.com.uy? (Y/N): y
Deleting ppereira.incosa.com.uy
Do you want to remove pwambugu.tbm.co.ke? (Y/N): y
Deleting pwambugu.tbm.co.ke
Do you want to remove r.diekkaemper.profi-ag.de? (Y/N): y
Deleting r.diekkaemper.profi-ag.de
Do you want to remove ravo.groupe-t2i.com? (Y/N): y
Deleting ravo.groupe-t2i.com
Do you want to remove ray.ohara.meridianit.co.uk? (Y/N): y
Deleting ray.ohara.meridianit.co.uk
Do you want to remove reynaldo.romero.amazing-global? (Y/N): y
Deleting reynaldo.romero.amazing-global
skipping rfisher3.ibm.com
Do you want to remove rgaylord.gmail.com? (Y/N): y
Deleting rgaylord.gmail.com
Do you want to remove rune.rehardt.knudsen.ibm.com? (Y/N): y
Deleting rune.rehardt.knudsen.ibm.com
Do you want to remove samuel.timbo.vsdata.com.br? (Y/N): y
Deleting samuel.timbo.vsdata.com.br
Do you want to remove seraphin.yago.icbm.ci? (Y/N): y
Deleting seraphin.yago.icbm.ci
Do you want to remove serge.gaudet.dataintegrity.com? (Y/N): y
Deleting serge.gaudet.dataintegrity.com
Do you want to remove sphakathi.tectight.com? (Y/N): y
Deleting sphakathi.tectight.com
Do you want to remove srvproxy? (Y/N): y
Deleting srvproxy
Do you want to remove stefan.kinkartz.veda.net? (Y/N): y
Deleting stefan.kinkartz.veda.net
Do you want to remove swanikar.in.ibm.com? (Y/N): y
Deleting swanikar.in.ibm.com
Do you want to remove thomas_falsis.questronix.com.p? (Y/N): y
Deleting thomas_falsis.questronix.com.p
Do you want to remove tommy.emanuelsson.shibuya.se? (Y/N): y
Deleting tommy.emanuelsson.shibuya.se
Do you want to remove umerhayat.gbmme.com? (Y/N): y
Deleting umerhayat.gbmme.com
Do you want to remove utsah.tech9labs.com? (Y/N): y
Deleting utsah.tech9labs.com
Do you want to remove verena.bader.umb.ch? (Y/N): y
Deleting verena.bader.umb.ch
Do you want to remove volker.reinen.nocuma-it.de? (Y/N): y
Deleting volker.reinen.nocuma-it.de
Do you want to remove william.morse.htcinc.com? (Y/N): y
Deleting william.morse.htcinc.com
Do you want to remove wvanwyk.tectight.com? (Y/N): y
Deleting wvanwyk.tectight.com
Do you want to remove zvonimir.cerny.snt.hr? (Y/N): y
Deleting zvonimir.cerny.snt.hr
# ls /home
andrew.jones-tx.com          john.grant2.cdw.com          lost+found                   rfisher3.ibm.com
frans.edgetec.co.za          kb00781015.techmahindra.com  pdragov.us.ibm.com
# cat /etc/passwd
root:!:0:0::/:/usr/bin/ksh
daemon:!:1:1::/etc:
bin:!:2:2::/bin:
sys:!:3:3::/usr/sys:
adm:!:4:4::/var/adm:
uucp:!:5:5::/usr/lib/uucp:
nobody:!:4294967294:4294967294::/:
lpd:!:9:4294967294::/:
lp:*:11:11::/var/spool/lp:/bin/false
sshd:*:200:200::/var/empty:/usr/bin/ksh
invscout:*:6:12::/var/adm/invscout:/usr/bin/ksh
snapp:*:201:13:snapp login user:/usr/sbin/snapp:/usr/sbin/snappd
ipsec:*:202:1::/etc/ipsec:/usr/bin/ksh
nuucp:*:7:5:uucp login user:/var/spool/uucppublic:/usr/sbin/uucp/uucico
smmsp:*:203:14::/etc/smmsp:/usr/bin/ksh
esaadmin:*:8:0::/var/esa:/usr/bin/ksh
pdragov.us.ibm.com:*:1133:1::/home/pdragov.us.ibm.com:/usr/bin/ksh
kb00781015.techmahindra.com:*:1134:1::/home/kb00781015.techmahindra.com:/usr/bin/ksh
frans.edgetec.co.za:*:1135:1::/home/frans.edgetec.co.za:/usr/bin/ksh
rfisher3.ibm.com:*:1136:1::/home/rfisher3.ibm.com:/usr/bin/ksh
andrew.jones-tx.com:*:1137:1::/home/andrew.jones-tx.com:/usr/bin/ksh
john.grant2.cdw.com:*:1138:1::/home/john.grant2.cdw.com:/usr/bin/ksh
# adduser
ksh: adduser:  not found
# useradd
Usage: useradd [ -c comment ] [-d dir ] [ -e expire ] [ -g group ] [ -G group1,group2 ... ] [ -m [ -k skel_dir ] ] [ -u uid ] [ -s shell ] [ -r role1,role2 ... ] login
# useradd -c "Service Proxy Daemon" -g 0 -u 204 srvproxy
# cat /etc/passwd
root:!:0:0::/:/usr/bin/ksh
daemon:!:1:1::/etc:
bin:!:2:2::/bin:
sys:!:3:3::/usr/sys:
adm:!:4:4::/var/adm:
uucp:!:5:5::/usr/lib/uucp:
nobody:!:4294967294:4294967294::/:
lpd:!:9:4294967294::/:
lp:*:11:11::/var/spool/lp:/bin/false
sshd:*:200:200::/var/empty:/usr/bin/ksh
invscout:*:6:12::/var/adm/invscout:/usr/bin/ksh
snapp:*:201:13:snapp login user:/usr/sbin/snapp:/usr/sbin/snappd
ipsec:*:202:1::/etc/ipsec:/usr/bin/ksh
nuucp:*:7:5:uucp login user:/var/spool/uucppublic:/usr/sbin/uucp/uucico
smmsp:*:203:14::/etc/smmsp:/usr/bin/ksh
esaadmin:*:8:0::/var/esa:/usr/bin/ksh
pdragov.us.ibm.com:*:1133:1::/home/pdragov.us.ibm.com:/usr/bin/ksh
kb00781015.techmahindra.com:*:1134:1::/home/kb00781015.techmahindra.com:/usr/bin/ksh
frans.edgetec.co.za:*:1135:1::/home/frans.edgetec.co.za:/usr/bin/ksh
rfisher3.ibm.com:*:1136:1::/home/rfisher3.ibm.com:/usr/bin/ksh
andrew.jones-tx.com:*:1137:1::/home/andrew.jones-tx.com:/usr/bin/ksh
john.grant2.cdw.com:*:1138:1::/home/john.grant2.cdw.com:/usr/bin/ksh
srvproxy:*:204:0:Service Proxy Daemon:/home/srvproxy:/usr/bin/ksh
# useradd -g 100 -u 100 guest -s ""
Usage: useradd [ -c comment ] [-d dir ] [ -e expire ] [ -g group ] [ -G group1,group2 ... ] [ -m [ -k skel_dir ] ] [ -u uid ] [ -s shell ] [ -r role1,role2 ... ] login
# useradd -g 100 -u 100 -s "" guest 
Could not create user.
Check "/etc/security/mkuser.sys" file.
 : Permission denied
# useradd -g 100 -u 100 guest      
# vi /etc/passwd
# grep home /etc/passwd
pdragov.us.ibm.com:*:1133:1::/home/pdragov.us.ibm.com:/usr/bin/ksh
kb00781015.techmahindra.com:*:1134:1::/home/kb00781015.techmahindra.com:/usr/bin/ksh
frans.edgetec.co.za:*:1135:1::/home/frans.edgetec.co.za:/usr/bin/ksh
rfisher3.ibm.com:*:1136:1::/home/rfisher3.ibm.com:/usr/bin/ksh
andrew.jones-tx.com:*:1137:1::/home/andrew.jones-tx.com:/usr/bin/ksh
john.grant2.cdw.com:*:1138:1::/home/john.grant2.cdw.com:/usr/bin/ksh
srvproxy:*:204:0:Service Proxy Daemon:/home/srvproxy:/usr/bin/ksh
guest:!:100:100::/home/guest:
# /vi^R                
# vi cleanUpUsers.perl                                  
# ggrep home /etc/passwdrep home /etc/passwd
# cleanUpUsers.perl   
ksh: cleanUpUsers.perl:  not found
# ls
cleanUpUsers.perl
# perl cleanUpUsers.perl
Array found where operator expected at cleanUpUsers.perl line 45, near "pring @vations"
        (Do you need to predeclare pring?)
syntax error at cleanUpUsers.perl line 45, near "pring @vations"
Execution of cleanUpUsers.perl aborted due to compilation errors.
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
john.grant2@cdw.comandrew@jones-tx.comJohn.Grant2@cdw.comfrans@edgetec.co.zapdragov@us.ibm.comKB00781015@techmahindra.comrfisher3@ibm.comguestsrvproxy# vi cl# perl cleanUpUsers.perl
skipping andrew.jones-tx.com
skipping frans.edgetec.co.za
skipping john.grant2.cdw.com
Do you want to remove kb00781015.techmahindra.com? (Y/N): n
Do you want to remove lost+found? (Y/N): n
skipping pdragov.us.ibm.com
skipping rfisher3.ibm.com
# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
skipping andrew.jones-tx.com
skipping frans.edgetec.co.za
skipping john.grant2.cdw.com
Do you want to remove kb00781015.techmahindra.com? (Y/N): n
Do you want to remove lost+found? (Y/N): ^C# vi cleanUpUsers.perl  
# perl cleanUpUsers.perl
skipping andrew.jones-tx.com
skipping frans.edgetec.co.za
skipping john.grant2.cdw.com
Do you want to remove kb00781015.techmahindra.com? (Y/N): n
skipping pdragov.us.ibm.com
skipping rfisher3.ibm.com
# vi cleanUpUsers.perl  

#/usr/bin/env perl

#
# This script requires the IBM Cloud CLI along with the following plug-ins.
# You must have administrative rights to the cloud account: 2305900 - ITZ- ADHOC03.
# This script will show you all the current users that are part of the PowerVS-L3 access group and the
# date their ID was added to the account.  It should be safe to remove any user that was added > 2 weeks
# prior to todays date (maximum ITZ reservation is les than this).

#---------------------------------------------------------------------------------------------
# functions
#---------------------------------------------------------------------------------------------
sub prompt {
  my ($query) = @_; # take a prompt string as argument
  local $| = 1; # activate autoflush to immediately show the prompt
  print $query;
  chomp(my $answer = <STDIN>);
  return $answer;
}
sub prompt_yn {
  my ($query) = @_;
  my $answer = prompt("$query (Y/N): ");
  return lc($answer) eq 'y';
}
#---------------------------------------------------------------------------------------------
my $ACTIVE_RESERVATIONS="/tmp/activeReservations.txt";


my $delcount=0;
my $skipcount=0;

# get a list of all the current home directories
my @allHomeDirs=`ls -1 /home`;
chomp(@allHomeDirs);

# load all the current reservations into an array
open(my $reservations, "<", "$ACTIVE_RESERVATIONS") or die $!;
chomp(my @vations = <$reservations>);

# add the system users that have a home dirctory to the list of reservations
push(@vations,"guest");
push(@vations,"srvproxy");


#print "All home dirs:\n";
#print @allHomeDirs;

#print "All active reservations:\n";
#print @vations;
#exit;

foreach my $user (@allHomeDirs)
{
        # check if the user is in the list of active reservations
        if (grep(/^$user$/, @vations))
        {
                print "skipping $user\n";
                $skipcount++;
        } else {
                if($user eq "lost+found"){
                        next;
                }
                if(prompt_yn("Do you want to remove $user?")) {
                        print "Deleting $user\n";
                        `userdel -r $user`;
                        $delcount++;
                }
        }
        # if user is in the list then skip that user and echo a skipping message
        # if user not in the list then prompt to delete the user
        # userdel -r $user
}


