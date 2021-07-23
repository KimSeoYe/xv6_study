
_usertests:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	ff 71 fc             	pushl  -0x4(%ecx)
    100a:	55                   	push   %ebp
    100b:	89 e5                	mov    %esp,%ebp
    100d:	51                   	push   %ecx
    100e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
    1011:	68 82 5d 00 00       	push   $0x5d82
    1016:	6a 01                	push   $0x1
    1018:	e8 e3 39 00 00       	call   4a00 <printf>

  if(open("usertests.ran", 0) >= 0){
    101d:	59                   	pop    %ecx
    101e:	58                   	pop    %eax
    101f:	6a 00                	push   $0x0
    1021:	68 96 5d 00 00       	push   $0x5d96
    1026:	e8 b7 38 00 00       	call   48e2 <open>
    102b:	83 c4 10             	add    $0x10,%esp
    102e:	85 c0                	test   %eax,%eax
    1030:	78 13                	js     1045 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
    1032:	52                   	push   %edx
    1033:	52                   	push   %edx
    1034:	68 00 65 00 00       	push   $0x6500
    1039:	6a 01                	push   $0x1
    103b:	e8 c0 39 00 00       	call   4a00 <printf>
    exit();
    1040:	e8 5d 38 00 00       	call   48a2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
    1045:	50                   	push   %eax
    1046:	50                   	push   %eax
    1047:	68 00 02 00 00       	push   $0x200
    104c:	68 96 5d 00 00       	push   $0x5d96
    1051:	e8 8c 38 00 00       	call   48e2 <open>
    1056:	89 04 24             	mov    %eax,(%esp)
    1059:	e8 6c 38 00 00       	call   48ca <close>

  argptest();
    105e:	e8 5d 35 00 00       	call   45c0 <argptest>
  createdelete();
    1063:	e8 a8 11 00 00       	call   2210 <createdelete>
  linkunlink();
    1068:	e8 63 1a 00 00       	call   2ad0 <linkunlink>
  concreate();
    106d:	e8 5e 17 00 00       	call   27d0 <concreate>
  fourfiles();
    1072:	e8 99 0f 00 00       	call   2010 <fourfiles>
  sharedfd();
    1077:	e8 d4 0d 00 00       	call   1e50 <sharedfd>

  bigargtest();
    107c:	e8 ff 31 00 00       	call   4280 <bigargtest>
  bigwrite();
    1081:	e8 6a 23 00 00       	call   33f0 <bigwrite>
  bigargtest();
    1086:	e8 f5 31 00 00       	call   4280 <bigargtest>
  bsstest();
    108b:	e8 70 31 00 00       	call   4200 <bsstest>
  sbrktest();
    1090:	e8 9b 2c 00 00       	call   3d30 <sbrktest>
  validatetest();
    1095:	e8 b6 30 00 00       	call   4150 <validatetest>

  opentest();
    109a:	e8 51 03 00 00       	call   13f0 <opentest>
  writetest();
    109f:	e8 dc 03 00 00       	call   1480 <writetest>
  writetest1();
    10a4:	e8 b7 05 00 00       	call   1660 <writetest1>
  createtest();
    10a9:	e8 82 07 00 00       	call   1830 <createtest>

  openiputtest();
    10ae:	e8 3d 02 00 00       	call   12f0 <openiputtest>
  exitiputtest();
    10b3:	e8 48 01 00 00       	call   1200 <exitiputtest>
  iputtest();
    10b8:	e8 63 00 00 00       	call   1120 <iputtest>

  mem();
    10bd:	e8 be 0c 00 00       	call   1d80 <mem>
  pipe1();
    10c2:	e8 49 09 00 00       	call   1a10 <pipe1>
  preempt();
    10c7:	e8 e4 0a 00 00       	call   1bb0 <preempt>
  exitwait();
    10cc:	e8 1f 0c 00 00       	call   1cf0 <exitwait>

  rmdot();
    10d1:	e8 0a 27 00 00       	call   37e0 <rmdot>
  fourteen();
    10d6:	e8 c5 25 00 00       	call   36a0 <fourteen>
  bigfile();
    10db:	e8 f0 23 00 00       	call   34d0 <bigfile>
  subdir();
    10e0:	e8 2b 1c 00 00       	call   2d10 <subdir>
  linktest();
    10e5:	e8 d6 14 00 00       	call   25c0 <linktest>
  unlinkread();
    10ea:	e8 41 13 00 00       	call   2430 <unlinkread>
  dirfile();
    10ef:	e8 6c 28 00 00       	call   3960 <dirfile>
  iref();
    10f4:	e8 67 2a 00 00       	call   3b60 <iref>
  forktest();
    10f9:	e8 82 2b 00 00       	call   3c80 <forktest>
  bigdir(); // slow
    10fe:	e8 dd 1a 00 00       	call   2be0 <bigdir>

  uio();
    1103:	e8 48 34 00 00       	call   4550 <uio>

  exectest();
    1108:	e8 b3 08 00 00       	call   19c0 <exectest>

  exit();
    110d:	e8 90 37 00 00       	call   48a2 <exit>
    1112:	66 90                	xchg   %ax,%ax
    1114:	66 90                	xchg   %ax,%ax
    1116:	66 90                	xchg   %ax,%ax
    1118:	66 90                	xchg   %ax,%ax
    111a:	66 90                	xchg   %ax,%ax
    111c:	66 90                	xchg   %ax,%ax
    111e:	66 90                	xchg   %ax,%ax

00001120 <iputtest>:
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
    1126:	68 28 4e 00 00       	push   $0x4e28
    112b:	ff 35 84 6e 00 00    	pushl  0x6e84
    1131:	e8 ca 38 00 00       	call   4a00 <printf>
  if(mkdir("iputdir") < 0){
    1136:	c7 04 24 bb 4d 00 00 	movl   $0x4dbb,(%esp)
    113d:	e8 c8 37 00 00       	call   490a <mkdir>
    1142:	83 c4 10             	add    $0x10,%esp
    1145:	85 c0                	test   %eax,%eax
    1147:	78 58                	js     11a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
    1149:	83 ec 0c             	sub    $0xc,%esp
    114c:	68 bb 4d 00 00       	push   $0x4dbb
    1151:	e8 bc 37 00 00       	call   4912 <chdir>
    1156:	83 c4 10             	add    $0x10,%esp
    1159:	85 c0                	test   %eax,%eax
    115b:	0f 88 85 00 00 00    	js     11e6 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
    1161:	83 ec 0c             	sub    $0xc,%esp
    1164:	68 b8 4d 00 00       	push   $0x4db8
    1169:	e8 84 37 00 00       	call   48f2 <unlink>
    116e:	83 c4 10             	add    $0x10,%esp
    1171:	85 c0                	test   %eax,%eax
    1173:	78 5a                	js     11cf <iputtest+0xaf>
  if(chdir("/") < 0){
    1175:	83 ec 0c             	sub    $0xc,%esp
    1178:	68 dd 4d 00 00       	push   $0x4ddd
    117d:	e8 90 37 00 00       	call   4912 <chdir>
    1182:	83 c4 10             	add    $0x10,%esp
    1185:	85 c0                	test   %eax,%eax
    1187:	78 2f                	js     11b8 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
    1189:	83 ec 08             	sub    $0x8,%esp
    118c:	68 60 4e 00 00       	push   $0x4e60
    1191:	ff 35 84 6e 00 00    	pushl  0x6e84
    1197:	e8 64 38 00 00       	call   4a00 <printf>
}
    119c:	83 c4 10             	add    $0x10,%esp
    119f:	c9                   	leave  
    11a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    11a1:	50                   	push   %eax
    11a2:	50                   	push   %eax
    11a3:	68 94 4d 00 00       	push   $0x4d94
    11a8:	ff 35 84 6e 00 00    	pushl  0x6e84
    11ae:	e8 4d 38 00 00       	call   4a00 <printf>
    exit();
    11b3:	e8 ea 36 00 00       	call   48a2 <exit>
    printf(stdout, "chdir / failed\n");
    11b8:	50                   	push   %eax
    11b9:	50                   	push   %eax
    11ba:	68 df 4d 00 00       	push   $0x4ddf
    11bf:	ff 35 84 6e 00 00    	pushl  0x6e84
    11c5:	e8 36 38 00 00       	call   4a00 <printf>
    exit();
    11ca:	e8 d3 36 00 00       	call   48a2 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
    11cf:	52                   	push   %edx
    11d0:	52                   	push   %edx
    11d1:	68 c3 4d 00 00       	push   $0x4dc3
    11d6:	ff 35 84 6e 00 00    	pushl  0x6e84
    11dc:	e8 1f 38 00 00       	call   4a00 <printf>
    exit();
    11e1:	e8 bc 36 00 00       	call   48a2 <exit>
    printf(stdout, "chdir iputdir failed\n");
    11e6:	51                   	push   %ecx
    11e7:	51                   	push   %ecx
    11e8:	68 a2 4d 00 00       	push   $0x4da2
    11ed:	ff 35 84 6e 00 00    	pushl  0x6e84
    11f3:	e8 08 38 00 00       	call   4a00 <printf>
    exit();
    11f8:	e8 a5 36 00 00       	call   48a2 <exit>
    11fd:	8d 76 00             	lea    0x0(%esi),%esi

00001200 <exitiputtest>:
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
    1206:	68 ef 4d 00 00       	push   $0x4def
    120b:	ff 35 84 6e 00 00    	pushl  0x6e84
    1211:	e8 ea 37 00 00       	call   4a00 <printf>
  pid = fork();
    1216:	e8 7f 36 00 00       	call   489a <fork>
  if(pid < 0){
    121b:	83 c4 10             	add    $0x10,%esp
    121e:	85 c0                	test   %eax,%eax
    1220:	0f 88 82 00 00 00    	js     12a8 <exitiputtest+0xa8>
  if(pid == 0){
    1226:	75 48                	jne    1270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
    1228:	83 ec 0c             	sub    $0xc,%esp
    122b:	68 bb 4d 00 00       	push   $0x4dbb
    1230:	e8 d5 36 00 00       	call   490a <mkdir>
    1235:	83 c4 10             	add    $0x10,%esp
    1238:	85 c0                	test   %eax,%eax
    123a:	0f 88 96 00 00 00    	js     12d6 <exitiputtest+0xd6>
    if(chdir("iputdir") < 0){
    1240:	83 ec 0c             	sub    $0xc,%esp
    1243:	68 bb 4d 00 00       	push   $0x4dbb
    1248:	e8 c5 36 00 00       	call   4912 <chdir>
    124d:	83 c4 10             	add    $0x10,%esp
    1250:	85 c0                	test   %eax,%eax
    1252:	78 6b                	js     12bf <exitiputtest+0xbf>
    if(unlink("../iputdir") < 0){
    1254:	83 ec 0c             	sub    $0xc,%esp
    1257:	68 b8 4d 00 00       	push   $0x4db8
    125c:	e8 91 36 00 00       	call   48f2 <unlink>
    1261:	83 c4 10             	add    $0x10,%esp
    1264:	85 c0                	test   %eax,%eax
    1266:	78 28                	js     1290 <exitiputtest+0x90>
    exit();
    1268:	e8 35 36 00 00       	call   48a2 <exit>
    126d:	8d 76 00             	lea    0x0(%esi),%esi
  wait();
    1270:	e8 35 36 00 00       	call   48aa <wait>
  printf(stdout, "exitiput test ok\n");
    1275:	83 ec 08             	sub    $0x8,%esp
    1278:	68 12 4e 00 00       	push   $0x4e12
    127d:	ff 35 84 6e 00 00    	pushl  0x6e84
    1283:	e8 78 37 00 00       	call   4a00 <printf>
}
    1288:	83 c4 10             	add    $0x10,%esp
    128b:	c9                   	leave  
    128c:	c3                   	ret    
    128d:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
    1290:	83 ec 08             	sub    $0x8,%esp
    1293:	68 c3 4d 00 00       	push   $0x4dc3
    1298:	ff 35 84 6e 00 00    	pushl  0x6e84
    129e:	e8 5d 37 00 00       	call   4a00 <printf>
      exit();
    12a3:	e8 fa 35 00 00       	call   48a2 <exit>
    printf(stdout, "fork failed\n");
    12a8:	51                   	push   %ecx
    12a9:	51                   	push   %ecx
    12aa:	68 d5 5c 00 00       	push   $0x5cd5
    12af:	ff 35 84 6e 00 00    	pushl  0x6e84
    12b5:	e8 46 37 00 00       	call   4a00 <printf>
    exit();
    12ba:	e8 e3 35 00 00       	call   48a2 <exit>
      printf(stdout, "child chdir failed\n");
    12bf:	50                   	push   %eax
    12c0:	50                   	push   %eax
    12c1:	68 fe 4d 00 00       	push   $0x4dfe
    12c6:	ff 35 84 6e 00 00    	pushl  0x6e84
    12cc:	e8 2f 37 00 00       	call   4a00 <printf>
      exit();
    12d1:	e8 cc 35 00 00       	call   48a2 <exit>
      printf(stdout, "mkdir failed\n");
    12d6:	52                   	push   %edx
    12d7:	52                   	push   %edx
    12d8:	68 94 4d 00 00       	push   $0x4d94
    12dd:	ff 35 84 6e 00 00    	pushl  0x6e84
    12e3:	e8 18 37 00 00       	call   4a00 <printf>
      exit();
    12e8:	e8 b5 35 00 00       	call   48a2 <exit>
    12ed:	8d 76 00             	lea    0x0(%esi),%esi

000012f0 <openiputtest>:
{
    12f0:	55                   	push   %ebp
    12f1:	89 e5                	mov    %esp,%ebp
    12f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
    12f6:	68 24 4e 00 00       	push   $0x4e24
    12fb:	ff 35 84 6e 00 00    	pushl  0x6e84
    1301:	e8 fa 36 00 00       	call   4a00 <printf>
  if(mkdir("oidir") < 0){
    1306:	c7 04 24 33 4e 00 00 	movl   $0x4e33,(%esp)
    130d:	e8 f8 35 00 00       	call   490a <mkdir>
    1312:	83 c4 10             	add    $0x10,%esp
    1315:	85 c0                	test   %eax,%eax
    1317:	0f 88 88 00 00 00    	js     13a5 <openiputtest+0xb5>
  pid = fork();
    131d:	e8 78 35 00 00       	call   489a <fork>
  if(pid < 0){
    1322:	85 c0                	test   %eax,%eax
    1324:	0f 88 92 00 00 00    	js     13bc <openiputtest+0xcc>
  if(pid == 0){
    132a:	75 34                	jne    1360 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
    132c:	83 ec 08             	sub    $0x8,%esp
    132f:	6a 02                	push   $0x2
    1331:	68 33 4e 00 00       	push   $0x4e33
    1336:	e8 a7 35 00 00       	call   48e2 <open>
    if(fd >= 0){
    133b:	83 c4 10             	add    $0x10,%esp
    133e:	85 c0                	test   %eax,%eax
    1340:	78 5e                	js     13a0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
    1342:	83 ec 08             	sub    $0x8,%esp
    1345:	68 b8 5d 00 00       	push   $0x5db8
    134a:	ff 35 84 6e 00 00    	pushl  0x6e84
    1350:	e8 ab 36 00 00       	call   4a00 <printf>
      exit();
    1355:	e8 48 35 00 00       	call   48a2 <exit>
    135a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  sleep(1);
    1360:	83 ec 0c             	sub    $0xc,%esp
    1363:	6a 01                	push   $0x1
    1365:	e8 c8 35 00 00       	call   4932 <sleep>
  if(unlink("oidir") != 0){
    136a:	c7 04 24 33 4e 00 00 	movl   $0x4e33,(%esp)
    1371:	e8 7c 35 00 00       	call   48f2 <unlink>
    1376:	83 c4 10             	add    $0x10,%esp
    1379:	85 c0                	test   %eax,%eax
    137b:	75 56                	jne    13d3 <openiputtest+0xe3>
  wait();
    137d:	e8 28 35 00 00       	call   48aa <wait>
  printf(stdout, "openiput test ok\n");
    1382:	83 ec 08             	sub    $0x8,%esp
    1385:	68 5c 4e 00 00       	push   $0x4e5c
    138a:	ff 35 84 6e 00 00    	pushl  0x6e84
    1390:	e8 6b 36 00 00       	call   4a00 <printf>
    1395:	83 c4 10             	add    $0x10,%esp
}
    1398:	c9                   	leave  
    1399:	c3                   	ret    
    139a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
    13a0:	e8 fd 34 00 00       	call   48a2 <exit>
    printf(stdout, "mkdir oidir failed\n");
    13a5:	51                   	push   %ecx
    13a6:	51                   	push   %ecx
    13a7:	68 39 4e 00 00       	push   $0x4e39
    13ac:	ff 35 84 6e 00 00    	pushl  0x6e84
    13b2:	e8 49 36 00 00       	call   4a00 <printf>
    exit();
    13b7:	e8 e6 34 00 00       	call   48a2 <exit>
    printf(stdout, "fork failed\n");
    13bc:	52                   	push   %edx
    13bd:	52                   	push   %edx
    13be:	68 d5 5c 00 00       	push   $0x5cd5
    13c3:	ff 35 84 6e 00 00    	pushl  0x6e84
    13c9:	e8 32 36 00 00       	call   4a00 <printf>
    exit();
    13ce:	e8 cf 34 00 00       	call   48a2 <exit>
    printf(stdout, "unlink failed\n");
    13d3:	50                   	push   %eax
    13d4:	50                   	push   %eax
    13d5:	68 4d 4e 00 00       	push   $0x4e4d
    13da:	ff 35 84 6e 00 00    	pushl  0x6e84
    13e0:	e8 1b 36 00 00       	call   4a00 <printf>
    exit();
    13e5:	e8 b8 34 00 00       	call   48a2 <exit>
    13ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000013f0 <opentest>:
{
    13f0:	55                   	push   %ebp
    13f1:	89 e5                	mov    %esp,%ebp
    13f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
    13f6:	68 6e 4e 00 00       	push   $0x4e6e
    13fb:	ff 35 84 6e 00 00    	pushl  0x6e84
    1401:	e8 fa 35 00 00       	call   4a00 <printf>
  fd = open("echo", 0);
    1406:	58                   	pop    %eax
    1407:	5a                   	pop    %edx
    1408:	6a 00                	push   $0x0
    140a:	68 79 4e 00 00       	push   $0x4e79
    140f:	e8 ce 34 00 00       	call   48e2 <open>
  if(fd < 0){
    1414:	83 c4 10             	add    $0x10,%esp
    1417:	85 c0                	test   %eax,%eax
    1419:	78 36                	js     1451 <opentest+0x61>
  close(fd);
    141b:	83 ec 0c             	sub    $0xc,%esp
    141e:	50                   	push   %eax
    141f:	e8 a6 34 00 00       	call   48ca <close>
  fd = open("doesnotexist", 0);
    1424:	5a                   	pop    %edx
    1425:	59                   	pop    %ecx
    1426:	6a 00                	push   $0x0
    1428:	68 91 4e 00 00       	push   $0x4e91
    142d:	e8 b0 34 00 00       	call   48e2 <open>
  if(fd >= 0){
    1432:	83 c4 10             	add    $0x10,%esp
    1435:	85 c0                	test   %eax,%eax
    1437:	79 2f                	jns    1468 <opentest+0x78>
  printf(stdout, "open test ok\n");
    1439:	83 ec 08             	sub    $0x8,%esp
    143c:	68 bc 4e 00 00       	push   $0x4ebc
    1441:	ff 35 84 6e 00 00    	pushl  0x6e84
    1447:	e8 b4 35 00 00       	call   4a00 <printf>
}
    144c:	83 c4 10             	add    $0x10,%esp
    144f:	c9                   	leave  
    1450:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
    1451:	50                   	push   %eax
    1452:	50                   	push   %eax
    1453:	68 7e 4e 00 00       	push   $0x4e7e
    1458:	ff 35 84 6e 00 00    	pushl  0x6e84
    145e:	e8 9d 35 00 00       	call   4a00 <printf>
    exit();
    1463:	e8 3a 34 00 00       	call   48a2 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
    1468:	50                   	push   %eax
    1469:	50                   	push   %eax
    146a:	68 9e 4e 00 00       	push   $0x4e9e
    146f:	ff 35 84 6e 00 00    	pushl  0x6e84
    1475:	e8 86 35 00 00       	call   4a00 <printf>
    exit();
    147a:	e8 23 34 00 00       	call   48a2 <exit>
    147f:	90                   	nop

00001480 <writetest>:
{
    1480:	55                   	push   %ebp
    1481:	89 e5                	mov    %esp,%ebp
    1483:	56                   	push   %esi
    1484:	53                   	push   %ebx
  printf(stdout, "small file test\n");
    1485:	83 ec 08             	sub    $0x8,%esp
    1488:	68 ca 4e 00 00       	push   $0x4eca
    148d:	ff 35 84 6e 00 00    	pushl  0x6e84
    1493:	e8 68 35 00 00       	call   4a00 <printf>
  fd = open("small", O_CREATE|O_RDWR);
    1498:	58                   	pop    %eax
    1499:	5a                   	pop    %edx
    149a:	68 02 02 00 00       	push   $0x202
    149f:	68 db 4e 00 00       	push   $0x4edb
    14a4:	e8 39 34 00 00       	call   48e2 <open>
  if(fd >= 0){
    14a9:	83 c4 10             	add    $0x10,%esp
    14ac:	85 c0                	test   %eax,%eax
    14ae:	0f 88 88 01 00 00    	js     163c <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
    14b4:	83 ec 08             	sub    $0x8,%esp
    14b7:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
    14b9:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
    14bb:	68 e1 4e 00 00       	push   $0x4ee1
    14c0:	ff 35 84 6e 00 00    	pushl  0x6e84
    14c6:	e8 35 35 00 00       	call   4a00 <printf>
    14cb:	83 c4 10             	add    $0x10,%esp
    14ce:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
    14d0:	83 ec 04             	sub    $0x4,%esp
    14d3:	6a 0a                	push   $0xa
    14d5:	68 18 4f 00 00       	push   $0x4f18
    14da:	56                   	push   %esi
    14db:	e8 e2 33 00 00       	call   48c2 <write>
    14e0:	83 c4 10             	add    $0x10,%esp
    14e3:	83 f8 0a             	cmp    $0xa,%eax
    14e6:	0f 85 d9 00 00 00    	jne    15c5 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
    14ec:	83 ec 04             	sub    $0x4,%esp
    14ef:	6a 0a                	push   $0xa
    14f1:	68 23 4f 00 00       	push   $0x4f23
    14f6:	56                   	push   %esi
    14f7:	e8 c6 33 00 00       	call   48c2 <write>
    14fc:	83 c4 10             	add    $0x10,%esp
    14ff:	83 f8 0a             	cmp    $0xa,%eax
    1502:	0f 85 d6 00 00 00    	jne    15de <writetest+0x15e>
  for(i = 0; i < 100; i++){
    1508:	83 c3 01             	add    $0x1,%ebx
    150b:	83 fb 64             	cmp    $0x64,%ebx
    150e:	75 c0                	jne    14d0 <writetest+0x50>
  printf(stdout, "writes ok\n");
    1510:	83 ec 08             	sub    $0x8,%esp
    1513:	68 2e 4f 00 00       	push   $0x4f2e
    1518:	ff 35 84 6e 00 00    	pushl  0x6e84
    151e:	e8 dd 34 00 00       	call   4a00 <printf>
  close(fd);
    1523:	89 34 24             	mov    %esi,(%esp)
    1526:	e8 9f 33 00 00       	call   48ca <close>
  fd = open("small", O_RDONLY);
    152b:	5b                   	pop    %ebx
    152c:	5e                   	pop    %esi
    152d:	6a 00                	push   $0x0
    152f:	68 db 4e 00 00       	push   $0x4edb
    1534:	e8 a9 33 00 00       	call   48e2 <open>
  if(fd >= 0){
    1539:	83 c4 10             	add    $0x10,%esp
    153c:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
    153e:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
    1540:	0f 88 b1 00 00 00    	js     15f7 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
    1546:	83 ec 08             	sub    $0x8,%esp
    1549:	68 39 4f 00 00       	push   $0x4f39
    154e:	ff 35 84 6e 00 00    	pushl  0x6e84
    1554:	e8 a7 34 00 00       	call   4a00 <printf>
  i = read(fd, buf, 2000);
    1559:	83 c4 0c             	add    $0xc,%esp
    155c:	68 d0 07 00 00       	push   $0x7d0
    1561:	68 60 96 00 00       	push   $0x9660
    1566:	53                   	push   %ebx
    1567:	e8 4e 33 00 00       	call   48ba <read>
  if(i == 2000){
    156c:	83 c4 10             	add    $0x10,%esp
    156f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
    1574:	0f 85 94 00 00 00    	jne    160e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
    157a:	83 ec 08             	sub    $0x8,%esp
    157d:	68 6d 4f 00 00       	push   $0x4f6d
    1582:	ff 35 84 6e 00 00    	pushl  0x6e84
    1588:	e8 73 34 00 00       	call   4a00 <printf>
  close(fd);
    158d:	89 1c 24             	mov    %ebx,(%esp)
    1590:	e8 35 33 00 00       	call   48ca <close>
  if(unlink("small") < 0){
    1595:	c7 04 24 db 4e 00 00 	movl   $0x4edb,(%esp)
    159c:	e8 51 33 00 00       	call   48f2 <unlink>
    15a1:	83 c4 10             	add    $0x10,%esp
    15a4:	85 c0                	test   %eax,%eax
    15a6:	78 7d                	js     1625 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
    15a8:	83 ec 08             	sub    $0x8,%esp
    15ab:	68 95 4f 00 00       	push   $0x4f95
    15b0:	ff 35 84 6e 00 00    	pushl  0x6e84
    15b6:	e8 45 34 00 00       	call   4a00 <printf>
}
    15bb:	83 c4 10             	add    $0x10,%esp
    15be:	8d 65 f8             	lea    -0x8(%ebp),%esp
    15c1:	5b                   	pop    %ebx
    15c2:	5e                   	pop    %esi
    15c3:	5d                   	pop    %ebp
    15c4:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
    15c5:	83 ec 04             	sub    $0x4,%esp
    15c8:	53                   	push   %ebx
    15c9:	68 dc 5d 00 00       	push   $0x5ddc
    15ce:	ff 35 84 6e 00 00    	pushl  0x6e84
    15d4:	e8 27 34 00 00       	call   4a00 <printf>
      exit();
    15d9:	e8 c4 32 00 00       	call   48a2 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
    15de:	83 ec 04             	sub    $0x4,%esp
    15e1:	53                   	push   %ebx
    15e2:	68 00 5e 00 00       	push   $0x5e00
    15e7:	ff 35 84 6e 00 00    	pushl  0x6e84
    15ed:	e8 0e 34 00 00       	call   4a00 <printf>
      exit();
    15f2:	e8 ab 32 00 00       	call   48a2 <exit>
    printf(stdout, "error: open small failed!\n");
    15f7:	51                   	push   %ecx
    15f8:	51                   	push   %ecx
    15f9:	68 52 4f 00 00       	push   $0x4f52
    15fe:	ff 35 84 6e 00 00    	pushl  0x6e84
    1604:	e8 f7 33 00 00       	call   4a00 <printf>
    exit();
    1609:	e8 94 32 00 00       	call   48a2 <exit>
    printf(stdout, "read failed\n");
    160e:	52                   	push   %edx
    160f:	52                   	push   %edx
    1610:	68 99 52 00 00       	push   $0x5299
    1615:	ff 35 84 6e 00 00    	pushl  0x6e84
    161b:	e8 e0 33 00 00       	call   4a00 <printf>
    exit();
    1620:	e8 7d 32 00 00       	call   48a2 <exit>
    printf(stdout, "unlink small failed\n");
    1625:	50                   	push   %eax
    1626:	50                   	push   %eax
    1627:	68 80 4f 00 00       	push   $0x4f80
    162c:	ff 35 84 6e 00 00    	pushl  0x6e84
    1632:	e8 c9 33 00 00       	call   4a00 <printf>
    exit();
    1637:	e8 66 32 00 00       	call   48a2 <exit>
    printf(stdout, "error: creat small failed!\n");
    163c:	50                   	push   %eax
    163d:	50                   	push   %eax
    163e:	68 fc 4e 00 00       	push   $0x4efc
    1643:	ff 35 84 6e 00 00    	pushl  0x6e84
    1649:	e8 b2 33 00 00       	call   4a00 <printf>
    exit();
    164e:	e8 4f 32 00 00       	call   48a2 <exit>
    1653:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001660 <writetest1>:
{
    1660:	55                   	push   %ebp
    1661:	89 e5                	mov    %esp,%ebp
    1663:	56                   	push   %esi
    1664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
    1665:	83 ec 08             	sub    $0x8,%esp
    1668:	68 a9 4f 00 00       	push   $0x4fa9
    166d:	ff 35 84 6e 00 00    	pushl  0x6e84
    1673:	e8 88 33 00 00       	call   4a00 <printf>
  fd = open("big", O_CREATE|O_RDWR);
    1678:	58                   	pop    %eax
    1679:	5a                   	pop    %edx
    167a:	68 02 02 00 00       	push   $0x202
    167f:	68 23 50 00 00       	push   $0x5023
    1684:	e8 59 32 00 00       	call   48e2 <open>
  if(fd < 0){
    1689:	83 c4 10             	add    $0x10,%esp
    168c:	85 c0                	test   %eax,%eax
    168e:	0f 88 61 01 00 00    	js     17f5 <writetest1+0x195>
    1694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
    1696:	31 db                	xor    %ebx,%ebx
    1698:	90                   	nop
    1699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
    16a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
    16a3:	89 1d 60 96 00 00    	mov    %ebx,0x9660
    if(write(fd, buf, 512) != 512){
    16a9:	68 00 02 00 00       	push   $0x200
    16ae:	68 60 96 00 00       	push   $0x9660
    16b3:	56                   	push   %esi
    16b4:	e8 09 32 00 00       	call   48c2 <write>
    16b9:	83 c4 10             	add    $0x10,%esp
    16bc:	3d 00 02 00 00       	cmp    $0x200,%eax
    16c1:	0f 85 b3 00 00 00    	jne    177a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
    16c7:	83 c3 01             	add    $0x1,%ebx
    16ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
    16d0:	75 ce                	jne    16a0 <writetest1+0x40>
  close(fd);
    16d2:	83 ec 0c             	sub    $0xc,%esp
    16d5:	56                   	push   %esi
    16d6:	e8 ef 31 00 00       	call   48ca <close>
  fd = open("big", O_RDONLY);
    16db:	5b                   	pop    %ebx
    16dc:	5e                   	pop    %esi
    16dd:	6a 00                	push   $0x0
    16df:	68 23 50 00 00       	push   $0x5023
    16e4:	e8 f9 31 00 00       	call   48e2 <open>
  if(fd < 0){
    16e9:	83 c4 10             	add    $0x10,%esp
    16ec:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
    16ee:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    16f0:	0f 88 e8 00 00 00    	js     17de <writetest1+0x17e>
  n = 0;
    16f6:	31 db                	xor    %ebx,%ebx
    16f8:	eb 1d                	jmp    1717 <writetest1+0xb7>
    16fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
    1700:	3d 00 02 00 00       	cmp    $0x200,%eax
    1705:	0f 85 9f 00 00 00    	jne    17aa <writetest1+0x14a>
    if(((int*)buf)[0] != n){
    170b:	a1 60 96 00 00       	mov    0x9660,%eax
    1710:	39 d8                	cmp    %ebx,%eax
    1712:	75 7f                	jne    1793 <writetest1+0x133>
    n++;
    1714:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
    1717:	83 ec 04             	sub    $0x4,%esp
    171a:	68 00 02 00 00       	push   $0x200
    171f:	68 60 96 00 00       	push   $0x9660
    1724:	56                   	push   %esi
    1725:	e8 90 31 00 00       	call   48ba <read>
    if(i == 0){
    172a:	83 c4 10             	add    $0x10,%esp
    172d:	85 c0                	test   %eax,%eax
    172f:	75 cf                	jne    1700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
    1731:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
    1737:	0f 84 86 00 00 00    	je     17c3 <writetest1+0x163>
  close(fd);
    173d:	83 ec 0c             	sub    $0xc,%esp
    1740:	56                   	push   %esi
    1741:	e8 84 31 00 00       	call   48ca <close>
  if(unlink("big") < 0){
    1746:	c7 04 24 23 50 00 00 	movl   $0x5023,(%esp)
    174d:	e8 a0 31 00 00       	call   48f2 <unlink>
    1752:	83 c4 10             	add    $0x10,%esp
    1755:	85 c0                	test   %eax,%eax
    1757:	0f 88 af 00 00 00    	js     180c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
    175d:	83 ec 08             	sub    $0x8,%esp
    1760:	68 4a 50 00 00       	push   $0x504a
    1765:	ff 35 84 6e 00 00    	pushl  0x6e84
    176b:	e8 90 32 00 00       	call   4a00 <printf>
}
    1770:	83 c4 10             	add    $0x10,%esp
    1773:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1776:	5b                   	pop    %ebx
    1777:	5e                   	pop    %esi
    1778:	5d                   	pop    %ebp
    1779:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
    177a:	83 ec 04             	sub    $0x4,%esp
    177d:	53                   	push   %ebx
    177e:	68 d3 4f 00 00       	push   $0x4fd3
    1783:	ff 35 84 6e 00 00    	pushl  0x6e84
    1789:	e8 72 32 00 00       	call   4a00 <printf>
      exit();
    178e:	e8 0f 31 00 00       	call   48a2 <exit>
      printf(stdout, "read content of block %d is %d\n",
    1793:	50                   	push   %eax
    1794:	53                   	push   %ebx
    1795:	68 24 5e 00 00       	push   $0x5e24
    179a:	ff 35 84 6e 00 00    	pushl  0x6e84
    17a0:	e8 5b 32 00 00       	call   4a00 <printf>
      exit();
    17a5:	e8 f8 30 00 00       	call   48a2 <exit>
      printf(stdout, "read failed %d\n", i);
    17aa:	83 ec 04             	sub    $0x4,%esp
    17ad:	50                   	push   %eax
    17ae:	68 27 50 00 00       	push   $0x5027
    17b3:	ff 35 84 6e 00 00    	pushl  0x6e84
    17b9:	e8 42 32 00 00       	call   4a00 <printf>
      exit();
    17be:	e8 df 30 00 00       	call   48a2 <exit>
        printf(stdout, "read only %d blocks from big", n);
    17c3:	52                   	push   %edx
    17c4:	68 8b 00 00 00       	push   $0x8b
    17c9:	68 0a 50 00 00       	push   $0x500a
    17ce:	ff 35 84 6e 00 00    	pushl  0x6e84
    17d4:	e8 27 32 00 00       	call   4a00 <printf>
        exit();
    17d9:	e8 c4 30 00 00       	call   48a2 <exit>
    printf(stdout, "error: open big failed!\n");
    17de:	51                   	push   %ecx
    17df:	51                   	push   %ecx
    17e0:	68 f1 4f 00 00       	push   $0x4ff1
    17e5:	ff 35 84 6e 00 00    	pushl  0x6e84
    17eb:	e8 10 32 00 00       	call   4a00 <printf>
    exit();
    17f0:	e8 ad 30 00 00       	call   48a2 <exit>
    printf(stdout, "error: creat big failed!\n");
    17f5:	50                   	push   %eax
    17f6:	50                   	push   %eax
    17f7:	68 b9 4f 00 00       	push   $0x4fb9
    17fc:	ff 35 84 6e 00 00    	pushl  0x6e84
    1802:	e8 f9 31 00 00       	call   4a00 <printf>
    exit();
    1807:	e8 96 30 00 00       	call   48a2 <exit>
    printf(stdout, "unlink big failed\n");
    180c:	50                   	push   %eax
    180d:	50                   	push   %eax
    180e:	68 37 50 00 00       	push   $0x5037
    1813:	ff 35 84 6e 00 00    	pushl  0x6e84
    1819:	e8 e2 31 00 00       	call   4a00 <printf>
    exit();
    181e:	e8 7f 30 00 00       	call   48a2 <exit>
    1823:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001830 <createtest>:
{
    1830:	55                   	push   %ebp
    1831:	89 e5                	mov    %esp,%ebp
    1833:	53                   	push   %ebx
  name[2] = '\0';
    1834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
    1839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
    183c:	68 44 5e 00 00       	push   $0x5e44
    1841:	ff 35 84 6e 00 00    	pushl  0x6e84
    1847:	e8 b4 31 00 00       	call   4a00 <printf>
  name[0] = 'a';
    184c:	c6 05 60 b6 00 00 61 	movb   $0x61,0xb660
  name[2] = '\0';
    1853:	c6 05 62 b6 00 00 00 	movb   $0x0,0xb662
    185a:	83 c4 10             	add    $0x10,%esp
    185d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
    1860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
    1863:	88 1d 61 b6 00 00    	mov    %bl,0xb661
    1869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
    186c:	68 02 02 00 00       	push   $0x202
    1871:	68 60 b6 00 00       	push   $0xb660
    1876:	e8 67 30 00 00       	call   48e2 <open>
    close(fd);
    187b:	89 04 24             	mov    %eax,(%esp)
    187e:	e8 47 30 00 00       	call   48ca <close>
  for(i = 0; i < 52; i++){
    1883:	83 c4 10             	add    $0x10,%esp
    1886:	80 fb 64             	cmp    $0x64,%bl
    1889:	75 d5                	jne    1860 <createtest+0x30>
  name[0] = 'a';
    188b:	c6 05 60 b6 00 00 61 	movb   $0x61,0xb660
  name[2] = '\0';
    1892:	c6 05 62 b6 00 00 00 	movb   $0x0,0xb662
    1899:	bb 30 00 00 00       	mov    $0x30,%ebx
    189e:	66 90                	xchg   %ax,%ax
    unlink(name);
    18a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
    18a3:	88 1d 61 b6 00 00    	mov    %bl,0xb661
    18a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
    18ac:	68 60 b6 00 00       	push   $0xb660
    18b1:	e8 3c 30 00 00       	call   48f2 <unlink>
  for(i = 0; i < 52; i++){
    18b6:	83 c4 10             	add    $0x10,%esp
    18b9:	80 fb 64             	cmp    $0x64,%bl
    18bc:	75 e2                	jne    18a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
    18be:	83 ec 08             	sub    $0x8,%esp
    18c1:	68 6c 5e 00 00       	push   $0x5e6c
    18c6:	ff 35 84 6e 00 00    	pushl  0x6e84
    18cc:	e8 2f 31 00 00       	call   4a00 <printf>
}
    18d1:	83 c4 10             	add    $0x10,%esp
    18d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    18d7:	c9                   	leave  
    18d8:	c3                   	ret    
    18d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000018e0 <dirtest>:
{
    18e0:	55                   	push   %ebp
    18e1:	89 e5                	mov    %esp,%ebp
    18e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
    18e6:	68 58 50 00 00       	push   $0x5058
    18eb:	ff 35 84 6e 00 00    	pushl  0x6e84
    18f1:	e8 0a 31 00 00       	call   4a00 <printf>
  if(mkdir("dir0") < 0){
    18f6:	c7 04 24 64 50 00 00 	movl   $0x5064,(%esp)
    18fd:	e8 08 30 00 00       	call   490a <mkdir>
    1902:	83 c4 10             	add    $0x10,%esp
    1905:	85 c0                	test   %eax,%eax
    1907:	78 58                	js     1961 <dirtest+0x81>
  if(chdir("dir0") < 0){
    1909:	83 ec 0c             	sub    $0xc,%esp
    190c:	68 64 50 00 00       	push   $0x5064
    1911:	e8 fc 2f 00 00       	call   4912 <chdir>
    1916:	83 c4 10             	add    $0x10,%esp
    1919:	85 c0                	test   %eax,%eax
    191b:	0f 88 85 00 00 00    	js     19a6 <dirtest+0xc6>
  if(chdir("..") < 0){
    1921:	83 ec 0c             	sub    $0xc,%esp
    1924:	68 09 56 00 00       	push   $0x5609
    1929:	e8 e4 2f 00 00       	call   4912 <chdir>
    192e:	83 c4 10             	add    $0x10,%esp
    1931:	85 c0                	test   %eax,%eax
    1933:	78 5a                	js     198f <dirtest+0xaf>
  if(unlink("dir0") < 0){
    1935:	83 ec 0c             	sub    $0xc,%esp
    1938:	68 64 50 00 00       	push   $0x5064
    193d:	e8 b0 2f 00 00       	call   48f2 <unlink>
    1942:	83 c4 10             	add    $0x10,%esp
    1945:	85 c0                	test   %eax,%eax
    1947:	78 2f                	js     1978 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
    1949:	83 ec 08             	sub    $0x8,%esp
    194c:	68 a1 50 00 00       	push   $0x50a1
    1951:	ff 35 84 6e 00 00    	pushl  0x6e84
    1957:	e8 a4 30 00 00       	call   4a00 <printf>
}
    195c:	83 c4 10             	add    $0x10,%esp
    195f:	c9                   	leave  
    1960:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    1961:	50                   	push   %eax
    1962:	50                   	push   %eax
    1963:	68 94 4d 00 00       	push   $0x4d94
    1968:	ff 35 84 6e 00 00    	pushl  0x6e84
    196e:	e8 8d 30 00 00       	call   4a00 <printf>
    exit();
    1973:	e8 2a 2f 00 00       	call   48a2 <exit>
    printf(stdout, "unlink dir0 failed\n");
    1978:	50                   	push   %eax
    1979:	50                   	push   %eax
    197a:	68 8d 50 00 00       	push   $0x508d
    197f:	ff 35 84 6e 00 00    	pushl  0x6e84
    1985:	e8 76 30 00 00       	call   4a00 <printf>
    exit();
    198a:	e8 13 2f 00 00       	call   48a2 <exit>
    printf(stdout, "chdir .. failed\n");
    198f:	52                   	push   %edx
    1990:	52                   	push   %edx
    1991:	68 7c 50 00 00       	push   $0x507c
    1996:	ff 35 84 6e 00 00    	pushl  0x6e84
    199c:	e8 5f 30 00 00       	call   4a00 <printf>
    exit();
    19a1:	e8 fc 2e 00 00       	call   48a2 <exit>
    printf(stdout, "chdir dir0 failed\n");
    19a6:	51                   	push   %ecx
    19a7:	51                   	push   %ecx
    19a8:	68 69 50 00 00       	push   $0x5069
    19ad:	ff 35 84 6e 00 00    	pushl  0x6e84
    19b3:	e8 48 30 00 00       	call   4a00 <printf>
    exit();
    19b8:	e8 e5 2e 00 00       	call   48a2 <exit>
    19bd:	8d 76 00             	lea    0x0(%esi),%esi

000019c0 <exectest>:
{
    19c0:	55                   	push   %ebp
    19c1:	89 e5                	mov    %esp,%ebp
    19c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
    19c6:	68 b0 50 00 00       	push   $0x50b0
    19cb:	ff 35 84 6e 00 00    	pushl  0x6e84
    19d1:	e8 2a 30 00 00       	call   4a00 <printf>
  if(exec("echo", echoargv) < 0){
    19d6:	5a                   	pop    %edx
    19d7:	59                   	pop    %ecx
    19d8:	68 88 6e 00 00       	push   $0x6e88
    19dd:	68 79 4e 00 00       	push   $0x4e79
    19e2:	e8 f3 2e 00 00       	call   48da <exec>
    19e7:	83 c4 10             	add    $0x10,%esp
    19ea:	85 c0                	test   %eax,%eax
    19ec:	78 02                	js     19f0 <exectest+0x30>
}
    19ee:	c9                   	leave  
    19ef:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
    19f0:	50                   	push   %eax
    19f1:	50                   	push   %eax
    19f2:	68 bb 50 00 00       	push   $0x50bb
    19f7:	ff 35 84 6e 00 00    	pushl  0x6e84
    19fd:	e8 fe 2f 00 00       	call   4a00 <printf>
    exit();
    1a02:	e8 9b 2e 00 00       	call   48a2 <exit>
    1a07:	89 f6                	mov    %esi,%esi
    1a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a10 <pipe1>:
{
    1a10:	55                   	push   %ebp
    1a11:	89 e5                	mov    %esp,%ebp
    1a13:	57                   	push   %edi
    1a14:	56                   	push   %esi
    1a15:	53                   	push   %ebx
  if(pipe(fds) != 0){
    1a16:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
    1a19:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
    1a1c:	50                   	push   %eax
    1a1d:	e8 90 2e 00 00       	call   48b2 <pipe>
    1a22:	83 c4 10             	add    $0x10,%esp
    1a25:	85 c0                	test   %eax,%eax
    1a27:	0f 85 3e 01 00 00    	jne    1b6b <pipe1+0x15b>
    1a2d:	89 c3                	mov    %eax,%ebx
  pid = fork();
    1a2f:	e8 66 2e 00 00       	call   489a <fork>
  if(pid == 0){
    1a34:	83 f8 00             	cmp    $0x0,%eax
    1a37:	0f 84 84 00 00 00    	je     1ac1 <pipe1+0xb1>
  } else if(pid > 0){
    1a3d:	0f 8e 3b 01 00 00    	jle    1b7e <pipe1+0x16e>
    close(fds[1]);
    1a43:	83 ec 0c             	sub    $0xc,%esp
    1a46:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
    1a49:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
    1a4e:	e8 77 2e 00 00       	call   48ca <close>
    while((n = read(fds[0], buf, cc)) > 0){
    1a53:	83 c4 10             	add    $0x10,%esp
    total = 0;
    1a56:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
    1a5d:	83 ec 04             	sub    $0x4,%esp
    1a60:	57                   	push   %edi
    1a61:	68 60 96 00 00       	push   $0x9660
    1a66:	ff 75 e0             	pushl  -0x20(%ebp)
    1a69:	e8 4c 2e 00 00       	call   48ba <read>
    1a6e:	83 c4 10             	add    $0x10,%esp
    1a71:	85 c0                	test   %eax,%eax
    1a73:	0f 8e ab 00 00 00    	jle    1b24 <pipe1+0x114>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
    1a79:	89 d9                	mov    %ebx,%ecx
    1a7b:	8d 34 18             	lea    (%eax,%ebx,1),%esi
    1a7e:	f7 d9                	neg    %ecx
    1a80:	38 9c 0b 60 96 00 00 	cmp    %bl,0x9660(%ebx,%ecx,1)
    1a87:	8d 53 01             	lea    0x1(%ebx),%edx
    1a8a:	75 1b                	jne    1aa7 <pipe1+0x97>
      for(i = 0; i < n; i++){
    1a8c:	39 f2                	cmp    %esi,%edx
    1a8e:	89 d3                	mov    %edx,%ebx
    1a90:	75 ee                	jne    1a80 <pipe1+0x70>
      cc = cc * 2;
    1a92:	01 ff                	add    %edi,%edi
      total += n;
    1a94:	01 45 d4             	add    %eax,-0x2c(%ebp)
    1a97:	b8 00 20 00 00       	mov    $0x2000,%eax
    1a9c:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
    1aa2:	0f 4f f8             	cmovg  %eax,%edi
    1aa5:	eb b6                	jmp    1a5d <pipe1+0x4d>
          printf(1, "pipe1 oops 2\n");
    1aa7:	83 ec 08             	sub    $0x8,%esp
    1aaa:	68 ea 50 00 00       	push   $0x50ea
    1aaf:	6a 01                	push   $0x1
    1ab1:	e8 4a 2f 00 00       	call   4a00 <printf>
          return;
    1ab6:	83 c4 10             	add    $0x10,%esp
}
    1ab9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1abc:	5b                   	pop    %ebx
    1abd:	5e                   	pop    %esi
    1abe:	5f                   	pop    %edi
    1abf:	5d                   	pop    %ebp
    1ac0:	c3                   	ret    
    close(fds[0]);
    1ac1:	83 ec 0c             	sub    $0xc,%esp
    1ac4:	ff 75 e0             	pushl  -0x20(%ebp)
    1ac7:	31 db                	xor    %ebx,%ebx
    1ac9:	be 09 04 00 00       	mov    $0x409,%esi
    1ace:	e8 f7 2d 00 00       	call   48ca <close>
    1ad3:	83 c4 10             	add    $0x10,%esp
    1ad6:	89 d8                	mov    %ebx,%eax
    1ad8:	89 f2                	mov    %esi,%edx
    1ada:	f7 d8                	neg    %eax
    1adc:	29 da                	sub    %ebx,%edx
    1ade:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
    1ae0:	88 84 03 60 96 00 00 	mov    %al,0x9660(%ebx,%eax,1)
    1ae7:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
    1aea:	39 d0                	cmp    %edx,%eax
    1aec:	75 f2                	jne    1ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
    1aee:	83 ec 04             	sub    $0x4,%esp
    1af1:	68 09 04 00 00       	push   $0x409
    1af6:	68 60 96 00 00       	push   $0x9660
    1afb:	ff 75 e4             	pushl  -0x1c(%ebp)
    1afe:	e8 bf 2d 00 00       	call   48c2 <write>
    1b03:	83 c4 10             	add    $0x10,%esp
    1b06:	3d 09 04 00 00       	cmp    $0x409,%eax
    1b0b:	0f 85 80 00 00 00    	jne    1b91 <pipe1+0x181>
    1b11:	81 eb 09 04 00 00    	sub    $0x409,%ebx
    for(n = 0; n < 5; n++){
    1b17:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
    1b1d:	75 b7                	jne    1ad6 <pipe1+0xc6>
    exit();
    1b1f:	e8 7e 2d 00 00       	call   48a2 <exit>
    if(total != 5 * 1033){
    1b24:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
    1b2b:	75 29                	jne    1b56 <pipe1+0x146>
    close(fds[0]);
    1b2d:	83 ec 0c             	sub    $0xc,%esp
    1b30:	ff 75 e0             	pushl  -0x20(%ebp)
    1b33:	e8 92 2d 00 00       	call   48ca <close>
    wait();
    1b38:	e8 6d 2d 00 00       	call   48aa <wait>
  printf(1, "pipe1 ok\n");
    1b3d:	5a                   	pop    %edx
    1b3e:	59                   	pop    %ecx
    1b3f:	68 0f 51 00 00       	push   $0x510f
    1b44:	6a 01                	push   $0x1
    1b46:	e8 b5 2e 00 00       	call   4a00 <printf>
    1b4b:	83 c4 10             	add    $0x10,%esp
}
    1b4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b51:	5b                   	pop    %ebx
    1b52:	5e                   	pop    %esi
    1b53:	5f                   	pop    %edi
    1b54:	5d                   	pop    %ebp
    1b55:	c3                   	ret    
      printf(1, "pipe1 oops 3 total %d\n", total);
    1b56:	53                   	push   %ebx
    1b57:	ff 75 d4             	pushl  -0x2c(%ebp)
    1b5a:	68 f8 50 00 00       	push   $0x50f8
    1b5f:	6a 01                	push   $0x1
    1b61:	e8 9a 2e 00 00       	call   4a00 <printf>
      exit();
    1b66:	e8 37 2d 00 00       	call   48a2 <exit>
    printf(1, "pipe() failed\n");
    1b6b:	57                   	push   %edi
    1b6c:	57                   	push   %edi
    1b6d:	68 cd 50 00 00       	push   $0x50cd
    1b72:	6a 01                	push   $0x1
    1b74:	e8 87 2e 00 00       	call   4a00 <printf>
    exit();
    1b79:	e8 24 2d 00 00       	call   48a2 <exit>
    printf(1, "fork() failed\n");
    1b7e:	50                   	push   %eax
    1b7f:	50                   	push   %eax
    1b80:	68 19 51 00 00       	push   $0x5119
    1b85:	6a 01                	push   $0x1
    1b87:	e8 74 2e 00 00       	call   4a00 <printf>
    exit();
    1b8c:	e8 11 2d 00 00       	call   48a2 <exit>
        printf(1, "pipe1 oops 1\n");
    1b91:	56                   	push   %esi
    1b92:	56                   	push   %esi
    1b93:	68 dc 50 00 00       	push   $0x50dc
    1b98:	6a 01                	push   $0x1
    1b9a:	e8 61 2e 00 00       	call   4a00 <printf>
        exit();
    1b9f:	e8 fe 2c 00 00       	call   48a2 <exit>
    1ba4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1baa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001bb0 <preempt>:
{
    1bb0:	55                   	push   %ebp
    1bb1:	89 e5                	mov    %esp,%ebp
    1bb3:	57                   	push   %edi
    1bb4:	56                   	push   %esi
    1bb5:	53                   	push   %ebx
    1bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
    1bb9:	68 28 51 00 00       	push   $0x5128
    1bbe:	6a 01                	push   $0x1
    1bc0:	e8 3b 2e 00 00       	call   4a00 <printf>
  pid1 = fork();
    1bc5:	e8 d0 2c 00 00       	call   489a <fork>
  if(pid1 == 0)
    1bca:	83 c4 10             	add    $0x10,%esp
    1bcd:	85 c0                	test   %eax,%eax
    1bcf:	75 02                	jne    1bd3 <preempt+0x23>
    1bd1:	eb fe                	jmp    1bd1 <preempt+0x21>
    1bd3:	89 c7                	mov    %eax,%edi
  pid2 = fork();
    1bd5:	e8 c0 2c 00 00       	call   489a <fork>
  if(pid2 == 0)
    1bda:	85 c0                	test   %eax,%eax
  pid2 = fork();
    1bdc:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
    1bde:	75 02                	jne    1be2 <preempt+0x32>
    1be0:	eb fe                	jmp    1be0 <preempt+0x30>
  pipe(pfds);
    1be2:	8d 45 e0             	lea    -0x20(%ebp),%eax
    1be5:	83 ec 0c             	sub    $0xc,%esp
    1be8:	50                   	push   %eax
    1be9:	e8 c4 2c 00 00       	call   48b2 <pipe>
  pid3 = fork();
    1bee:	e8 a7 2c 00 00       	call   489a <fork>
  if(pid3 == 0){
    1bf3:	83 c4 10             	add    $0x10,%esp
    1bf6:	85 c0                	test   %eax,%eax
  pid3 = fork();
    1bf8:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
    1bfa:	75 46                	jne    1c42 <preempt+0x92>
    close(pfds[0]);
    1bfc:	83 ec 0c             	sub    $0xc,%esp
    1bff:	ff 75 e0             	pushl  -0x20(%ebp)
    1c02:	e8 c3 2c 00 00       	call   48ca <close>
    if(write(pfds[1], "x", 1) != 1)
    1c07:	83 c4 0c             	add    $0xc,%esp
    1c0a:	6a 01                	push   $0x1
    1c0c:	68 ed 56 00 00       	push   $0x56ed
    1c11:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c14:	e8 a9 2c 00 00       	call   48c2 <write>
    1c19:	83 c4 10             	add    $0x10,%esp
    1c1c:	83 e8 01             	sub    $0x1,%eax
    1c1f:	74 11                	je     1c32 <preempt+0x82>
      printf(1, "preempt write error");
    1c21:	50                   	push   %eax
    1c22:	50                   	push   %eax
    1c23:	68 32 51 00 00       	push   $0x5132
    1c28:	6a 01                	push   $0x1
    1c2a:	e8 d1 2d 00 00       	call   4a00 <printf>
    1c2f:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
    1c32:	83 ec 0c             	sub    $0xc,%esp
    1c35:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c38:	e8 8d 2c 00 00       	call   48ca <close>
    1c3d:	83 c4 10             	add    $0x10,%esp
    1c40:	eb fe                	jmp    1c40 <preempt+0x90>
  close(pfds[1]);
    1c42:	83 ec 0c             	sub    $0xc,%esp
    1c45:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c48:	e8 7d 2c 00 00       	call   48ca <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    1c4d:	83 c4 0c             	add    $0xc,%esp
    1c50:	68 00 20 00 00       	push   $0x2000
    1c55:	68 60 96 00 00       	push   $0x9660
    1c5a:	ff 75 e0             	pushl  -0x20(%ebp)
    1c5d:	e8 58 2c 00 00       	call   48ba <read>
    1c62:	83 c4 10             	add    $0x10,%esp
    1c65:	83 e8 01             	sub    $0x1,%eax
    1c68:	74 19                	je     1c83 <preempt+0xd3>
    printf(1, "preempt read error");
    1c6a:	50                   	push   %eax
    1c6b:	50                   	push   %eax
    1c6c:	68 46 51 00 00       	push   $0x5146
    1c71:	6a 01                	push   $0x1
    1c73:	e8 88 2d 00 00       	call   4a00 <printf>
    return;
    1c78:	83 c4 10             	add    $0x10,%esp
}
    1c7b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1c7e:	5b                   	pop    %ebx
    1c7f:	5e                   	pop    %esi
    1c80:	5f                   	pop    %edi
    1c81:	5d                   	pop    %ebp
    1c82:	c3                   	ret    
  close(pfds[0]);
    1c83:	83 ec 0c             	sub    $0xc,%esp
    1c86:	ff 75 e0             	pushl  -0x20(%ebp)
    1c89:	e8 3c 2c 00 00       	call   48ca <close>
  printf(1, "kill... ");
    1c8e:	58                   	pop    %eax
    1c8f:	5a                   	pop    %edx
    1c90:	68 59 51 00 00       	push   $0x5159
    1c95:	6a 01                	push   $0x1
    1c97:	e8 64 2d 00 00       	call   4a00 <printf>
  kill(pid1);
    1c9c:	89 3c 24             	mov    %edi,(%esp)
    1c9f:	e8 2e 2c 00 00       	call   48d2 <kill>
  kill(pid2);
    1ca4:	89 34 24             	mov    %esi,(%esp)
    1ca7:	e8 26 2c 00 00       	call   48d2 <kill>
  kill(pid3);
    1cac:	89 1c 24             	mov    %ebx,(%esp)
    1caf:	e8 1e 2c 00 00       	call   48d2 <kill>
  printf(1, "wait... ");
    1cb4:	59                   	pop    %ecx
    1cb5:	5b                   	pop    %ebx
    1cb6:	68 62 51 00 00       	push   $0x5162
    1cbb:	6a 01                	push   $0x1
    1cbd:	e8 3e 2d 00 00       	call   4a00 <printf>
  wait();
    1cc2:	e8 e3 2b 00 00       	call   48aa <wait>
  wait();
    1cc7:	e8 de 2b 00 00       	call   48aa <wait>
  wait();
    1ccc:	e8 d9 2b 00 00       	call   48aa <wait>
  printf(1, "preempt ok\n");
    1cd1:	5e                   	pop    %esi
    1cd2:	5f                   	pop    %edi
    1cd3:	68 6b 51 00 00       	push   $0x516b
    1cd8:	6a 01                	push   $0x1
    1cda:	e8 21 2d 00 00       	call   4a00 <printf>
    1cdf:	83 c4 10             	add    $0x10,%esp
    1ce2:	eb 97                	jmp    1c7b <preempt+0xcb>
    1ce4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1cea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001cf0 <exitwait>:
{
    1cf0:	55                   	push   %ebp
    1cf1:	89 e5                	mov    %esp,%ebp
    1cf3:	56                   	push   %esi
    1cf4:	be 64 00 00 00       	mov    $0x64,%esi
    1cf9:	53                   	push   %ebx
    1cfa:	eb 14                	jmp    1d10 <exitwait+0x20>
    1cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
    1d00:	74 6f                	je     1d71 <exitwait+0x81>
      if(wait() != pid){
    1d02:	e8 a3 2b 00 00       	call   48aa <wait>
    1d07:	39 d8                	cmp    %ebx,%eax
    1d09:	75 2d                	jne    1d38 <exitwait+0x48>
  for(i = 0; i < 100; i++){
    1d0b:	83 ee 01             	sub    $0x1,%esi
    1d0e:	74 48                	je     1d58 <exitwait+0x68>
    pid = fork();
    1d10:	e8 85 2b 00 00       	call   489a <fork>
    if(pid < 0){
    1d15:	85 c0                	test   %eax,%eax
    pid = fork();
    1d17:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1d19:	79 e5                	jns    1d00 <exitwait+0x10>
      printf(1, "fork failed\n");
    1d1b:	83 ec 08             	sub    $0x8,%esp
    1d1e:	68 d5 5c 00 00       	push   $0x5cd5
    1d23:	6a 01                	push   $0x1
    1d25:	e8 d6 2c 00 00       	call   4a00 <printf>
      return;
    1d2a:	83 c4 10             	add    $0x10,%esp
}
    1d2d:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d30:	5b                   	pop    %ebx
    1d31:	5e                   	pop    %esi
    1d32:	5d                   	pop    %ebp
    1d33:	c3                   	ret    
    1d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
    1d38:	83 ec 08             	sub    $0x8,%esp
    1d3b:	68 77 51 00 00       	push   $0x5177
    1d40:	6a 01                	push   $0x1
    1d42:	e8 b9 2c 00 00       	call   4a00 <printf>
        return;
    1d47:	83 c4 10             	add    $0x10,%esp
}
    1d4a:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d4d:	5b                   	pop    %ebx
    1d4e:	5e                   	pop    %esi
    1d4f:	5d                   	pop    %ebp
    1d50:	c3                   	ret    
    1d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
    1d58:	83 ec 08             	sub    $0x8,%esp
    1d5b:	68 87 51 00 00       	push   $0x5187
    1d60:	6a 01                	push   $0x1
    1d62:	e8 99 2c 00 00       	call   4a00 <printf>
    1d67:	83 c4 10             	add    $0x10,%esp
}
    1d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d6d:	5b                   	pop    %ebx
    1d6e:	5e                   	pop    %esi
    1d6f:	5d                   	pop    %ebp
    1d70:	c3                   	ret    
      exit();
    1d71:	e8 2c 2b 00 00       	call   48a2 <exit>
    1d76:	8d 76 00             	lea    0x0(%esi),%esi
    1d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001d80 <mem>:
{
    1d80:	55                   	push   %ebp
    1d81:	89 e5                	mov    %esp,%ebp
    1d83:	57                   	push   %edi
    1d84:	56                   	push   %esi
    1d85:	53                   	push   %ebx
    1d86:	31 db                	xor    %ebx,%ebx
    1d88:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
    1d8b:	68 94 51 00 00       	push   $0x5194
    1d90:	6a 01                	push   $0x1
    1d92:	e8 69 2c 00 00       	call   4a00 <printf>
  ppid = getpid();
    1d97:	e8 86 2b 00 00       	call   4922 <getpid>
    1d9c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    1d9e:	e8 f7 2a 00 00       	call   489a <fork>
    1da3:	83 c4 10             	add    $0x10,%esp
    1da6:	85 c0                	test   %eax,%eax
    1da8:	74 0a                	je     1db4 <mem+0x34>
    1daa:	e9 89 00 00 00       	jmp    1e38 <mem+0xb8>
    1daf:	90                   	nop
      *(char**)m2 = m1;
    1db0:	89 18                	mov    %ebx,(%eax)
    1db2:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
    1db4:	83 ec 0c             	sub    $0xc,%esp
    1db7:	68 11 27 00 00       	push   $0x2711
    1dbc:	e8 9f 2e 00 00       	call   4c60 <malloc>
    1dc1:	83 c4 10             	add    $0x10,%esp
    1dc4:	85 c0                	test   %eax,%eax
    1dc6:	75 e8                	jne    1db0 <mem+0x30>
    while(m1){
    1dc8:	85 db                	test   %ebx,%ebx
    1dca:	74 18                	je     1de4 <mem+0x64>
    1dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    1dd0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    1dd2:	83 ec 0c             	sub    $0xc,%esp
    1dd5:	53                   	push   %ebx
    1dd6:	89 fb                	mov    %edi,%ebx
    1dd8:	e8 f3 2d 00 00       	call   4bd0 <free>
    while(m1){
    1ddd:	83 c4 10             	add    $0x10,%esp
    1de0:	85 db                	test   %ebx,%ebx
    1de2:	75 ec                	jne    1dd0 <mem+0x50>
    m1 = malloc(1024*20);
    1de4:	83 ec 0c             	sub    $0xc,%esp
    1de7:	68 00 50 00 00       	push   $0x5000
    1dec:	e8 6f 2e 00 00       	call   4c60 <malloc>
    if(m1 == 0){
    1df1:	83 c4 10             	add    $0x10,%esp
    1df4:	85 c0                	test   %eax,%eax
    1df6:	74 20                	je     1e18 <mem+0x98>
    free(m1);
    1df8:	83 ec 0c             	sub    $0xc,%esp
    1dfb:	50                   	push   %eax
    1dfc:	e8 cf 2d 00 00       	call   4bd0 <free>
    printf(1, "mem ok\n");
    1e01:	58                   	pop    %eax
    1e02:	5a                   	pop    %edx
    1e03:	68 b8 51 00 00       	push   $0x51b8
    1e08:	6a 01                	push   $0x1
    1e0a:	e8 f1 2b 00 00       	call   4a00 <printf>
    exit();
    1e0f:	e8 8e 2a 00 00       	call   48a2 <exit>
    1e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
    1e18:	83 ec 08             	sub    $0x8,%esp
    1e1b:	68 9e 51 00 00       	push   $0x519e
    1e20:	6a 01                	push   $0x1
    1e22:	e8 d9 2b 00 00       	call   4a00 <printf>
      kill(ppid);
    1e27:	89 34 24             	mov    %esi,(%esp)
    1e2a:	e8 a3 2a 00 00       	call   48d2 <kill>
      exit();
    1e2f:	e8 6e 2a 00 00       	call   48a2 <exit>
    1e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
    1e38:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1e3b:	5b                   	pop    %ebx
    1e3c:	5e                   	pop    %esi
    1e3d:	5f                   	pop    %edi
    1e3e:	5d                   	pop    %ebp
    wait();
    1e3f:	e9 66 2a 00 00       	jmp    48aa <wait>
    1e44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1e4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001e50 <sharedfd>:
{
    1e50:	55                   	push   %ebp
    1e51:	89 e5                	mov    %esp,%ebp
    1e53:	57                   	push   %edi
    1e54:	56                   	push   %esi
    1e55:	53                   	push   %ebx
    1e56:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    1e59:	68 c0 51 00 00       	push   $0x51c0
    1e5e:	6a 01                	push   $0x1
    1e60:	e8 9b 2b 00 00       	call   4a00 <printf>
  unlink("sharedfd");
    1e65:	c7 04 24 cf 51 00 00 	movl   $0x51cf,(%esp)
    1e6c:	e8 81 2a 00 00       	call   48f2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1e71:	59                   	pop    %ecx
    1e72:	5b                   	pop    %ebx
    1e73:	68 02 02 00 00       	push   $0x202
    1e78:	68 cf 51 00 00       	push   $0x51cf
    1e7d:	e8 60 2a 00 00       	call   48e2 <open>
  if(fd < 0){
    1e82:	83 c4 10             	add    $0x10,%esp
    1e85:	85 c0                	test   %eax,%eax
    1e87:	0f 88 33 01 00 00    	js     1fc0 <sharedfd+0x170>
    1e8d:	89 c6                	mov    %eax,%esi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1e8f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1e94:	e8 01 2a 00 00       	call   489a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1e99:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    1e9c:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1e9e:	19 c0                	sbb    %eax,%eax
    1ea0:	83 ec 04             	sub    $0x4,%esp
    1ea3:	83 e0 f3             	and    $0xfffffff3,%eax
    1ea6:	6a 0a                	push   $0xa
    1ea8:	83 c0 70             	add    $0x70,%eax
    1eab:	50                   	push   %eax
    1eac:	8d 45 de             	lea    -0x22(%ebp),%eax
    1eaf:	50                   	push   %eax
    1eb0:	e8 4b 28 00 00       	call   4700 <memset>
    1eb5:	83 c4 10             	add    $0x10,%esp
    1eb8:	eb 0b                	jmp    1ec5 <sharedfd+0x75>
    1eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 1000; i++){
    1ec0:	83 eb 01             	sub    $0x1,%ebx
    1ec3:	74 29                	je     1eee <sharedfd+0x9e>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1ec5:	8d 45 de             	lea    -0x22(%ebp),%eax
    1ec8:	83 ec 04             	sub    $0x4,%esp
    1ecb:	6a 0a                	push   $0xa
    1ecd:	50                   	push   %eax
    1ece:	56                   	push   %esi
    1ecf:	e8 ee 29 00 00       	call   48c2 <write>
    1ed4:	83 c4 10             	add    $0x10,%esp
    1ed7:	83 f8 0a             	cmp    $0xa,%eax
    1eda:	74 e4                	je     1ec0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    1edc:	83 ec 08             	sub    $0x8,%esp
    1edf:	68 c0 5e 00 00       	push   $0x5ec0
    1ee4:	6a 01                	push   $0x1
    1ee6:	e8 15 2b 00 00       	call   4a00 <printf>
      break;
    1eeb:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    1eee:	85 ff                	test   %edi,%edi
    1ef0:	0f 84 fe 00 00 00    	je     1ff4 <sharedfd+0x1a4>
    wait();
    1ef6:	e8 af 29 00 00       	call   48aa <wait>
  close(fd);
    1efb:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    1efe:	31 db                	xor    %ebx,%ebx
    1f00:	31 ff                	xor    %edi,%edi
  close(fd);
    1f02:	56                   	push   %esi
    1f03:	8d 75 e8             	lea    -0x18(%ebp),%esi
    1f06:	e8 bf 29 00 00       	call   48ca <close>
  fd = open("sharedfd", 0);
    1f0b:	58                   	pop    %eax
    1f0c:	5a                   	pop    %edx
    1f0d:	6a 00                	push   $0x0
    1f0f:	68 cf 51 00 00       	push   $0x51cf
    1f14:	e8 c9 29 00 00       	call   48e2 <open>
  if(fd < 0){
    1f19:	83 c4 10             	add    $0x10,%esp
    1f1c:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    1f1e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(fd < 0){
    1f21:	0f 88 b3 00 00 00    	js     1fda <sharedfd+0x18a>
    1f27:	89 f8                	mov    %edi,%eax
    1f29:	89 df                	mov    %ebx,%edi
    1f2b:	89 c3                	mov    %eax,%ebx
    1f2d:	8d 76 00             	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1f30:	8d 45 de             	lea    -0x22(%ebp),%eax
    1f33:	83 ec 04             	sub    $0x4,%esp
    1f36:	6a 0a                	push   $0xa
    1f38:	50                   	push   %eax
    1f39:	ff 75 d4             	pushl  -0x2c(%ebp)
    1f3c:	e8 79 29 00 00       	call   48ba <read>
    1f41:	83 c4 10             	add    $0x10,%esp
    1f44:	85 c0                	test   %eax,%eax
    1f46:	7e 28                	jle    1f70 <sharedfd+0x120>
    1f48:	8d 45 de             	lea    -0x22(%ebp),%eax
    1f4b:	eb 15                	jmp    1f62 <sharedfd+0x112>
    1f4d:	8d 76 00             	lea    0x0(%esi),%esi
        np++;
    1f50:	80 fa 70             	cmp    $0x70,%dl
    1f53:	0f 94 c2             	sete   %dl
    1f56:	0f b6 d2             	movzbl %dl,%edx
    1f59:	01 d7                	add    %edx,%edi
    1f5b:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
    1f5e:	39 f0                	cmp    %esi,%eax
    1f60:	74 ce                	je     1f30 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1f62:	0f b6 10             	movzbl (%eax),%edx
    1f65:	80 fa 63             	cmp    $0x63,%dl
    1f68:	75 e6                	jne    1f50 <sharedfd+0x100>
        nc++;
    1f6a:	83 c3 01             	add    $0x1,%ebx
    1f6d:	eb ec                	jmp    1f5b <sharedfd+0x10b>
    1f6f:	90                   	nop
  close(fd);
    1f70:	83 ec 0c             	sub    $0xc,%esp
    1f73:	89 d8                	mov    %ebx,%eax
    1f75:	ff 75 d4             	pushl  -0x2c(%ebp)
    1f78:	89 fb                	mov    %edi,%ebx
    1f7a:	89 c7                	mov    %eax,%edi
    1f7c:	e8 49 29 00 00       	call   48ca <close>
  unlink("sharedfd");
    1f81:	c7 04 24 cf 51 00 00 	movl   $0x51cf,(%esp)
    1f88:	e8 65 29 00 00       	call   48f2 <unlink>
  if(nc == 10000 && np == 10000){
    1f8d:	83 c4 10             	add    $0x10,%esp
    1f90:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
    1f96:	75 61                	jne    1ff9 <sharedfd+0x1a9>
    1f98:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1f9e:	75 59                	jne    1ff9 <sharedfd+0x1a9>
    printf(1, "sharedfd ok\n");
    1fa0:	83 ec 08             	sub    $0x8,%esp
    1fa3:	68 d8 51 00 00       	push   $0x51d8
    1fa8:	6a 01                	push   $0x1
    1faa:	e8 51 2a 00 00       	call   4a00 <printf>
    1faf:	83 c4 10             	add    $0x10,%esp
}
    1fb2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fb5:	5b                   	pop    %ebx
    1fb6:	5e                   	pop    %esi
    1fb7:	5f                   	pop    %edi
    1fb8:	5d                   	pop    %ebp
    1fb9:	c3                   	ret    
    1fba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for writing");
    1fc0:	83 ec 08             	sub    $0x8,%esp
    1fc3:	68 94 5e 00 00       	push   $0x5e94
    1fc8:	6a 01                	push   $0x1
    1fca:	e8 31 2a 00 00       	call   4a00 <printf>
    return;
    1fcf:	83 c4 10             	add    $0x10,%esp
}
    1fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fd5:	5b                   	pop    %ebx
    1fd6:	5e                   	pop    %esi
    1fd7:	5f                   	pop    %edi
    1fd8:	5d                   	pop    %ebp
    1fd9:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    1fda:	83 ec 08             	sub    $0x8,%esp
    1fdd:	68 e0 5e 00 00       	push   $0x5ee0
    1fe2:	6a 01                	push   $0x1
    1fe4:	e8 17 2a 00 00       	call   4a00 <printf>
    return;
    1fe9:	83 c4 10             	add    $0x10,%esp
}
    1fec:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fef:	5b                   	pop    %ebx
    1ff0:	5e                   	pop    %esi
    1ff1:	5f                   	pop    %edi
    1ff2:	5d                   	pop    %ebp
    1ff3:	c3                   	ret    
    exit();
    1ff4:	e8 a9 28 00 00       	call   48a2 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1ff9:	53                   	push   %ebx
    1ffa:	57                   	push   %edi
    1ffb:	68 e5 51 00 00       	push   $0x51e5
    2000:	6a 01                	push   $0x1
    2002:	e8 f9 29 00 00       	call   4a00 <printf>
    exit();
    2007:	e8 96 28 00 00       	call   48a2 <exit>
    200c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002010 <fourfiles>:
{
    2010:	55                   	push   %ebp
    2011:	89 e5                	mov    %esp,%ebp
    2013:	57                   	push   %edi
    2014:	56                   	push   %esi
    2015:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    2016:	be fa 51 00 00       	mov    $0x51fa,%esi
  for(pi = 0; pi < 4; pi++){
    201b:	31 db                	xor    %ebx,%ebx
{
    201d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    2020:	c7 45 d8 fa 51 00 00 	movl   $0x51fa,-0x28(%ebp)
    2027:	c7 45 dc 43 53 00 00 	movl   $0x5343,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    202e:	68 00 52 00 00       	push   $0x5200
    2033:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    2035:	c7 45 e0 47 53 00 00 	movl   $0x5347,-0x20(%ebp)
    203c:	c7 45 e4 fd 51 00 00 	movl   $0x51fd,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    2043:	e8 b8 29 00 00       	call   4a00 <printf>
    2048:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    204b:	83 ec 0c             	sub    $0xc,%esp
    204e:	56                   	push   %esi
    204f:	e8 9e 28 00 00       	call   48f2 <unlink>
    pid = fork();
    2054:	e8 41 28 00 00       	call   489a <fork>
    if(pid < 0){
    2059:	83 c4 10             	add    $0x10,%esp
    205c:	85 c0                	test   %eax,%eax
    205e:	0f 88 68 01 00 00    	js     21cc <fourfiles+0x1bc>
    if(pid == 0){
    2064:	0f 84 df 00 00 00    	je     2149 <fourfiles+0x139>
  for(pi = 0; pi < 4; pi++){
    206a:	83 c3 01             	add    $0x1,%ebx
    206d:	83 fb 04             	cmp    $0x4,%ebx
    2070:	74 06                	je     2078 <fourfiles+0x68>
    2072:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    2076:	eb d3                	jmp    204b <fourfiles+0x3b>
    wait();
    2078:	e8 2d 28 00 00       	call   48aa <wait>
  for(i = 0; i < 2; i++){
    207d:	31 ff                	xor    %edi,%edi
    wait();
    207f:	e8 26 28 00 00       	call   48aa <wait>
    2084:	e8 21 28 00 00       	call   48aa <wait>
    2089:	e8 1c 28 00 00       	call   48aa <wait>
    208e:	c7 45 d0 fa 51 00 00 	movl   $0x51fa,-0x30(%ebp)
    fd = open(fname, 0);
    2095:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    2098:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    209a:	6a 00                	push   $0x0
    209c:	ff 75 d0             	pushl  -0x30(%ebp)
    209f:	e8 3e 28 00 00       	call   48e2 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    20a4:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    20a7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    20aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    20b0:	83 ec 04             	sub    $0x4,%esp
    20b3:	68 00 20 00 00       	push   $0x2000
    20b8:	68 60 96 00 00       	push   $0x9660
    20bd:	ff 75 d4             	pushl  -0x2c(%ebp)
    20c0:	e8 f5 27 00 00       	call   48ba <read>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	7e 26                	jle    20f2 <fourfiles+0xe2>
      for(j = 0; j < n; j++){
    20cc:	31 d2                	xor    %edx,%edx
    20ce:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    20d0:	0f be b2 60 96 00 00 	movsbl 0x9660(%edx),%esi
    20d7:	83 ff 01             	cmp    $0x1,%edi
    20da:	19 c9                	sbb    %ecx,%ecx
    20dc:	83 c1 31             	add    $0x31,%ecx
    20df:	39 ce                	cmp    %ecx,%esi
    20e1:	0f 85 be 00 00 00    	jne    21a5 <fourfiles+0x195>
      for(j = 0; j < n; j++){
    20e7:	83 c2 01             	add    $0x1,%edx
    20ea:	39 d0                	cmp    %edx,%eax
    20ec:	75 e2                	jne    20d0 <fourfiles+0xc0>
      total += n;
    20ee:	01 c3                	add    %eax,%ebx
    20f0:	eb be                	jmp    20b0 <fourfiles+0xa0>
    close(fd);
    20f2:	83 ec 0c             	sub    $0xc,%esp
    20f5:	ff 75 d4             	pushl  -0x2c(%ebp)
    20f8:	e8 cd 27 00 00       	call   48ca <close>
    if(total != 12*500){
    20fd:	83 c4 10             	add    $0x10,%esp
    2100:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    2106:	0f 85 d3 00 00 00    	jne    21df <fourfiles+0x1cf>
    unlink(fname);
    210c:	83 ec 0c             	sub    $0xc,%esp
    210f:	ff 75 d0             	pushl  -0x30(%ebp)
    2112:	e8 db 27 00 00       	call   48f2 <unlink>
  for(i = 0; i < 2; i++){
    2117:	83 c4 10             	add    $0x10,%esp
    211a:	83 ff 01             	cmp    $0x1,%edi
    211d:	75 1a                	jne    2139 <fourfiles+0x129>
  printf(1, "fourfiles ok\n");
    211f:	83 ec 08             	sub    $0x8,%esp
    2122:	68 3e 52 00 00       	push   $0x523e
    2127:	6a 01                	push   $0x1
    2129:	e8 d2 28 00 00       	call   4a00 <printf>
}
    212e:	83 c4 10             	add    $0x10,%esp
    2131:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2134:	5b                   	pop    %ebx
    2135:	5e                   	pop    %esi
    2136:	5f                   	pop    %edi
    2137:	5d                   	pop    %ebp
    2138:	c3                   	ret    
    2139:	8b 45 dc             	mov    -0x24(%ebp),%eax
    213c:	bf 01 00 00 00       	mov    $0x1,%edi
    2141:	89 45 d0             	mov    %eax,-0x30(%ebp)
    2144:	e9 4c ff ff ff       	jmp    2095 <fourfiles+0x85>
      fd = open(fname, O_CREATE | O_RDWR);
    2149:	83 ec 08             	sub    $0x8,%esp
    214c:	68 02 02 00 00       	push   $0x202
    2151:	56                   	push   %esi
    2152:	e8 8b 27 00 00       	call   48e2 <open>
      if(fd < 0){
    2157:	83 c4 10             	add    $0x10,%esp
    215a:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    215c:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    215e:	78 59                	js     21b9 <fourfiles+0x1a9>
      memset(buf, '0'+pi, 512);
    2160:	83 ec 04             	sub    $0x4,%esp
    2163:	83 c3 30             	add    $0x30,%ebx
    2166:	68 00 02 00 00       	push   $0x200
    216b:	53                   	push   %ebx
    216c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    2171:	68 60 96 00 00       	push   $0x9660
    2176:	e8 85 25 00 00       	call   4700 <memset>
    217b:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    217e:	83 ec 04             	sub    $0x4,%esp
    2181:	68 f4 01 00 00       	push   $0x1f4
    2186:	68 60 96 00 00       	push   $0x9660
    218b:	56                   	push   %esi
    218c:	e8 31 27 00 00       	call   48c2 <write>
    2191:	83 c4 10             	add    $0x10,%esp
    2194:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    2199:	75 57                	jne    21f2 <fourfiles+0x1e2>
      for(i = 0; i < 12; i++){
    219b:	83 eb 01             	sub    $0x1,%ebx
    219e:	75 de                	jne    217e <fourfiles+0x16e>
      exit();
    21a0:	e8 fd 26 00 00       	call   48a2 <exit>
          printf(1, "wrong char\n");
    21a5:	83 ec 08             	sub    $0x8,%esp
    21a8:	68 21 52 00 00       	push   $0x5221
    21ad:	6a 01                	push   $0x1
    21af:	e8 4c 28 00 00       	call   4a00 <printf>
          exit();
    21b4:	e8 e9 26 00 00       	call   48a2 <exit>
        printf(1, "create failed\n");
    21b9:	51                   	push   %ecx
    21ba:	51                   	push   %ecx
    21bb:	68 9b 54 00 00       	push   $0x549b
    21c0:	6a 01                	push   $0x1
    21c2:	e8 39 28 00 00       	call   4a00 <printf>
        exit();
    21c7:	e8 d6 26 00 00       	call   48a2 <exit>
      printf(1, "fork failed\n");
    21cc:	53                   	push   %ebx
    21cd:	53                   	push   %ebx
    21ce:	68 d5 5c 00 00       	push   $0x5cd5
    21d3:	6a 01                	push   $0x1
    21d5:	e8 26 28 00 00       	call   4a00 <printf>
      exit();
    21da:	e8 c3 26 00 00       	call   48a2 <exit>
      printf(1, "wrong length %d\n", total);
    21df:	50                   	push   %eax
    21e0:	53                   	push   %ebx
    21e1:	68 2d 52 00 00       	push   $0x522d
    21e6:	6a 01                	push   $0x1
    21e8:	e8 13 28 00 00       	call   4a00 <printf>
      exit();
    21ed:	e8 b0 26 00 00       	call   48a2 <exit>
          printf(1, "write failed %d\n", n);
    21f2:	52                   	push   %edx
    21f3:	50                   	push   %eax
    21f4:	68 10 52 00 00       	push   $0x5210
    21f9:	6a 01                	push   $0x1
    21fb:	e8 00 28 00 00       	call   4a00 <printf>
          exit();
    2200:	e8 9d 26 00 00       	call   48a2 <exit>
    2205:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002210 <createdelete>:
{
    2210:	55                   	push   %ebp
    2211:	89 e5                	mov    %esp,%ebp
    2213:	57                   	push   %edi
    2214:	56                   	push   %esi
    2215:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    2216:	31 db                	xor    %ebx,%ebx
{
    2218:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    221b:	68 4c 52 00 00       	push   $0x524c
    2220:	6a 01                	push   $0x1
    2222:	e8 d9 27 00 00       	call   4a00 <printf>
    2227:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    222a:	e8 6b 26 00 00       	call   489a <fork>
    if(pid < 0){
    222f:	85 c0                	test   %eax,%eax
    2231:	0f 88 be 01 00 00    	js     23f5 <createdelete+0x1e5>
    if(pid == 0){
    2237:	0f 84 0b 01 00 00    	je     2348 <createdelete+0x138>
  for(pi = 0; pi < 4; pi++){
    223d:	83 c3 01             	add    $0x1,%ebx
    2240:	83 fb 04             	cmp    $0x4,%ebx
    2243:	75 e5                	jne    222a <createdelete+0x1a>
    2245:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    2248:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait();
    224d:	e8 58 26 00 00       	call   48aa <wait>
    2252:	e8 53 26 00 00       	call   48aa <wait>
    2257:	e8 4e 26 00 00       	call   48aa <wait>
    225c:	e8 49 26 00 00       	call   48aa <wait>
  name[0] = name[1] = name[2] = 0;
    2261:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    2265:	8d 76 00             	lea    0x0(%esi),%esi
    2268:	8d 46 31             	lea    0x31(%esi),%eax
    226b:	88 45 c7             	mov    %al,-0x39(%ebp)
    226e:	8d 46 01             	lea    0x1(%esi),%eax
    2271:	83 f8 09             	cmp    $0x9,%eax
    2274:	89 45 c0             	mov    %eax,-0x40(%ebp)
    2277:	0f 9f c3             	setg   %bl
    227a:	85 c0                	test   %eax,%eax
    227c:	0f 94 c0             	sete   %al
    227f:	09 c3                	or     %eax,%ebx
    2281:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    2284:	bb 70 00 00 00       	mov    $0x70,%ebx
      name[1] = '0' + i;
    2289:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    228d:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    2290:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    2293:	6a 00                	push   $0x0
    2295:	57                   	push   %edi
      name[1] = '0' + i;
    2296:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    2299:	e8 44 26 00 00       	call   48e2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    229e:	83 c4 10             	add    $0x10,%esp
    22a1:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    22a5:	0f 84 85 00 00 00    	je     2330 <createdelete+0x120>
    22ab:	85 c0                	test   %eax,%eax
    22ad:	0f 88 1a 01 00 00    	js     23cd <createdelete+0x1bd>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    22b3:	83 fe 08             	cmp    $0x8,%esi
    22b6:	0f 86 54 01 00 00    	jbe    2410 <createdelete+0x200>
        close(fd);
    22bc:	83 ec 0c             	sub    $0xc,%esp
    22bf:	50                   	push   %eax
    22c0:	e8 05 26 00 00       	call   48ca <close>
    22c5:	83 c4 10             	add    $0x10,%esp
    22c8:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    22cb:	80 fb 74             	cmp    $0x74,%bl
    22ce:	75 b9                	jne    2289 <createdelete+0x79>
    22d0:	8b 75 c0             	mov    -0x40(%ebp),%esi
  for(i = 0; i < N; i++){
    22d3:	83 fe 13             	cmp    $0x13,%esi
    22d6:	75 90                	jne    2268 <createdelete+0x58>
    22d8:	be 70 00 00 00       	mov    $0x70,%esi
    22dd:	8d 76 00             	lea    0x0(%esi),%esi
    22e0:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    22e3:	bb 04 00 00 00       	mov    $0x4,%ebx
    22e8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    22eb:	89 f0                	mov    %esi,%eax
      unlink(name);
    22ed:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    22f0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    22f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    22f7:	57                   	push   %edi
      name[1] = '0' + i;
    22f8:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    22fb:	e8 f2 25 00 00       	call   48f2 <unlink>
    for(pi = 0; pi < 4; pi++){
    2300:	83 c4 10             	add    $0x10,%esp
    2303:	83 eb 01             	sub    $0x1,%ebx
    2306:	75 e3                	jne    22eb <createdelete+0xdb>
    2308:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    230b:	89 f0                	mov    %esi,%eax
    230d:	3c 84                	cmp    $0x84,%al
    230f:	75 cf                	jne    22e0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    2311:	83 ec 08             	sub    $0x8,%esp
    2314:	68 5f 52 00 00       	push   $0x525f
    2319:	6a 01                	push   $0x1
    231b:	e8 e0 26 00 00       	call   4a00 <printf>
}
    2320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2323:	5b                   	pop    %ebx
    2324:	5e                   	pop    %esi
    2325:	5f                   	pop    %edi
    2326:	5d                   	pop    %ebp
    2327:	c3                   	ret    
    2328:	90                   	nop
    2329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    2330:	83 fe 08             	cmp    $0x8,%esi
    2333:	0f 86 cf 00 00 00    	jbe    2408 <createdelete+0x1f8>
      if(fd >= 0)
    2339:	85 c0                	test   %eax,%eax
    233b:	78 8b                	js     22c8 <createdelete+0xb8>
    233d:	e9 7a ff ff ff       	jmp    22bc <createdelete+0xac>
    2342:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    2348:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    234b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    234f:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    2352:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    2355:	31 db                	xor    %ebx,%ebx
    2357:	eb 0f                	jmp    2368 <createdelete+0x158>
    2359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    2360:	83 fb 13             	cmp    $0x13,%ebx
    2363:	74 63                	je     23c8 <createdelete+0x1b8>
    2365:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    2368:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    236b:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    236e:	68 02 02 00 00       	push   $0x202
    2373:	57                   	push   %edi
        name[1] = '0' + i;
    2374:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    2377:	e8 66 25 00 00       	call   48e2 <open>
        if(fd < 0){
    237c:	83 c4 10             	add    $0x10,%esp
    237f:	85 c0                	test   %eax,%eax
    2381:	78 5f                	js     23e2 <createdelete+0x1d2>
        close(fd);
    2383:	83 ec 0c             	sub    $0xc,%esp
    2386:	50                   	push   %eax
    2387:	e8 3e 25 00 00       	call   48ca <close>
        if(i > 0 && (i % 2 ) == 0){
    238c:	83 c4 10             	add    $0x10,%esp
    238f:	85 db                	test   %ebx,%ebx
    2391:	74 d2                	je     2365 <createdelete+0x155>
    2393:	f6 c3 01             	test   $0x1,%bl
    2396:	75 c8                	jne    2360 <createdelete+0x150>
          if(unlink(name) < 0){
    2398:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    239b:	89 d8                	mov    %ebx,%eax
    239d:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    239f:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    23a0:	83 c0 30             	add    $0x30,%eax
    23a3:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    23a6:	e8 47 25 00 00       	call   48f2 <unlink>
    23ab:	83 c4 10             	add    $0x10,%esp
    23ae:	85 c0                	test   %eax,%eax
    23b0:	79 ae                	jns    2360 <createdelete+0x150>
            printf(1, "unlink failed\n");
    23b2:	52                   	push   %edx
    23b3:	52                   	push   %edx
    23b4:	68 4d 4e 00 00       	push   $0x4e4d
    23b9:	6a 01                	push   $0x1
    23bb:	e8 40 26 00 00       	call   4a00 <printf>
            exit();
    23c0:	e8 dd 24 00 00       	call   48a2 <exit>
    23c5:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    23c8:	e8 d5 24 00 00       	call   48a2 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    23cd:	83 ec 04             	sub    $0x4,%esp
    23d0:	57                   	push   %edi
    23d1:	68 0c 5f 00 00       	push   $0x5f0c
    23d6:	6a 01                	push   $0x1
    23d8:	e8 23 26 00 00       	call   4a00 <printf>
        exit();
    23dd:	e8 c0 24 00 00       	call   48a2 <exit>
          printf(1, "create failed\n");
    23e2:	51                   	push   %ecx
    23e3:	51                   	push   %ecx
    23e4:	68 9b 54 00 00       	push   $0x549b
    23e9:	6a 01                	push   $0x1
    23eb:	e8 10 26 00 00       	call   4a00 <printf>
          exit();
    23f0:	e8 ad 24 00 00       	call   48a2 <exit>
      printf(1, "fork failed\n");
    23f5:	53                   	push   %ebx
    23f6:	53                   	push   %ebx
    23f7:	68 d5 5c 00 00       	push   $0x5cd5
    23fc:	6a 01                	push   $0x1
    23fe:	e8 fd 25 00 00       	call   4a00 <printf>
      exit();
    2403:	e8 9a 24 00 00       	call   48a2 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    2408:	85 c0                	test   %eax,%eax
    240a:	0f 88 b8 fe ff ff    	js     22c8 <createdelete+0xb8>
        printf(1, "oops createdelete %s did exist\n", name);
    2410:	50                   	push   %eax
    2411:	57                   	push   %edi
    2412:	68 30 5f 00 00       	push   $0x5f30
    2417:	6a 01                	push   $0x1
    2419:	e8 e2 25 00 00       	call   4a00 <printf>
        exit();
    241e:	e8 7f 24 00 00       	call   48a2 <exit>
    2423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002430 <unlinkread>:
{
    2430:	55                   	push   %ebp
    2431:	89 e5                	mov    %esp,%ebp
    2433:	56                   	push   %esi
    2434:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    2435:	83 ec 08             	sub    $0x8,%esp
    2438:	68 70 52 00 00       	push   $0x5270
    243d:	6a 01                	push   $0x1
    243f:	e8 bc 25 00 00       	call   4a00 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    2444:	5b                   	pop    %ebx
    2445:	5e                   	pop    %esi
    2446:	68 02 02 00 00       	push   $0x202
    244b:	68 81 52 00 00       	push   $0x5281
    2450:	e8 8d 24 00 00       	call   48e2 <open>
  if(fd < 0){
    2455:	83 c4 10             	add    $0x10,%esp
    2458:	85 c0                	test   %eax,%eax
    245a:	0f 88 e6 00 00 00    	js     2546 <unlinkread+0x116>
  write(fd, "hello", 5);
    2460:	83 ec 04             	sub    $0x4,%esp
    2463:	89 c3                	mov    %eax,%ebx
    2465:	6a 05                	push   $0x5
    2467:	68 a6 52 00 00       	push   $0x52a6
    246c:	50                   	push   %eax
    246d:	e8 50 24 00 00       	call   48c2 <write>
  close(fd);
    2472:	89 1c 24             	mov    %ebx,(%esp)
    2475:	e8 50 24 00 00       	call   48ca <close>
  fd = open("unlinkread", O_RDWR);
    247a:	58                   	pop    %eax
    247b:	5a                   	pop    %edx
    247c:	6a 02                	push   $0x2
    247e:	68 81 52 00 00       	push   $0x5281
    2483:	e8 5a 24 00 00       	call   48e2 <open>
  if(fd < 0){
    2488:	83 c4 10             	add    $0x10,%esp
    248b:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    248d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    248f:	0f 88 10 01 00 00    	js     25a5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    2495:	83 ec 0c             	sub    $0xc,%esp
    2498:	68 81 52 00 00       	push   $0x5281
    249d:	e8 50 24 00 00       	call   48f2 <unlink>
    24a2:	83 c4 10             	add    $0x10,%esp
    24a5:	85 c0                	test   %eax,%eax
    24a7:	0f 85 e5 00 00 00    	jne    2592 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    24ad:	83 ec 08             	sub    $0x8,%esp
    24b0:	68 02 02 00 00       	push   $0x202
    24b5:	68 81 52 00 00       	push   $0x5281
    24ba:	e8 23 24 00 00       	call   48e2 <open>
  write(fd1, "yyy", 3);
    24bf:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    24c2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    24c4:	6a 03                	push   $0x3
    24c6:	68 de 52 00 00       	push   $0x52de
    24cb:	50                   	push   %eax
    24cc:	e8 f1 23 00 00       	call   48c2 <write>
  close(fd1);
    24d1:	89 34 24             	mov    %esi,(%esp)
    24d4:	e8 f1 23 00 00       	call   48ca <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    24d9:	83 c4 0c             	add    $0xc,%esp
    24dc:	68 00 20 00 00       	push   $0x2000
    24e1:	68 60 96 00 00       	push   $0x9660
    24e6:	53                   	push   %ebx
    24e7:	e8 ce 23 00 00       	call   48ba <read>
    24ec:	83 c4 10             	add    $0x10,%esp
    24ef:	83 f8 05             	cmp    $0x5,%eax
    24f2:	0f 85 87 00 00 00    	jne    257f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    24f8:	80 3d 60 96 00 00 68 	cmpb   $0x68,0x9660
    24ff:	75 6b                	jne    256c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    2501:	83 ec 04             	sub    $0x4,%esp
    2504:	6a 0a                	push   $0xa
    2506:	68 60 96 00 00       	push   $0x9660
    250b:	53                   	push   %ebx
    250c:	e8 b1 23 00 00       	call   48c2 <write>
    2511:	83 c4 10             	add    $0x10,%esp
    2514:	83 f8 0a             	cmp    $0xa,%eax
    2517:	75 40                	jne    2559 <unlinkread+0x129>
  close(fd);
    2519:	83 ec 0c             	sub    $0xc,%esp
    251c:	53                   	push   %ebx
    251d:	e8 a8 23 00 00       	call   48ca <close>
  unlink("unlinkread");
    2522:	c7 04 24 81 52 00 00 	movl   $0x5281,(%esp)
    2529:	e8 c4 23 00 00       	call   48f2 <unlink>
  printf(1, "unlinkread ok\n");
    252e:	58                   	pop    %eax
    252f:	5a                   	pop    %edx
    2530:	68 29 53 00 00       	push   $0x5329
    2535:	6a 01                	push   $0x1
    2537:	e8 c4 24 00 00       	call   4a00 <printf>
}
    253c:	83 c4 10             	add    $0x10,%esp
    253f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2542:	5b                   	pop    %ebx
    2543:	5e                   	pop    %esi
    2544:	5d                   	pop    %ebp
    2545:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    2546:	51                   	push   %ecx
    2547:	51                   	push   %ecx
    2548:	68 8c 52 00 00       	push   $0x528c
    254d:	6a 01                	push   $0x1
    254f:	e8 ac 24 00 00       	call   4a00 <printf>
    exit();
    2554:	e8 49 23 00 00       	call   48a2 <exit>
    printf(1, "unlinkread write failed\n");
    2559:	51                   	push   %ecx
    255a:	51                   	push   %ecx
    255b:	68 10 53 00 00       	push   $0x5310
    2560:	6a 01                	push   $0x1
    2562:	e8 99 24 00 00       	call   4a00 <printf>
    exit();
    2567:	e8 36 23 00 00       	call   48a2 <exit>
    printf(1, "unlinkread wrong data\n");
    256c:	53                   	push   %ebx
    256d:	53                   	push   %ebx
    256e:	68 f9 52 00 00       	push   $0x52f9
    2573:	6a 01                	push   $0x1
    2575:	e8 86 24 00 00       	call   4a00 <printf>
    exit();
    257a:	e8 23 23 00 00       	call   48a2 <exit>
    printf(1, "unlinkread read failed");
    257f:	56                   	push   %esi
    2580:	56                   	push   %esi
    2581:	68 e2 52 00 00       	push   $0x52e2
    2586:	6a 01                	push   $0x1
    2588:	e8 73 24 00 00       	call   4a00 <printf>
    exit();
    258d:	e8 10 23 00 00       	call   48a2 <exit>
    printf(1, "unlink unlinkread failed\n");
    2592:	50                   	push   %eax
    2593:	50                   	push   %eax
    2594:	68 c4 52 00 00       	push   $0x52c4
    2599:	6a 01                	push   $0x1
    259b:	e8 60 24 00 00       	call   4a00 <printf>
    exit();
    25a0:	e8 fd 22 00 00       	call   48a2 <exit>
    printf(1, "open unlinkread failed\n");
    25a5:	50                   	push   %eax
    25a6:	50                   	push   %eax
    25a7:	68 ac 52 00 00       	push   $0x52ac
    25ac:	6a 01                	push   $0x1
    25ae:	e8 4d 24 00 00       	call   4a00 <printf>
    exit();
    25b3:	e8 ea 22 00 00       	call   48a2 <exit>
    25b8:	90                   	nop
    25b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000025c0 <linktest>:
{
    25c0:	55                   	push   %ebp
    25c1:	89 e5                	mov    %esp,%ebp
    25c3:	53                   	push   %ebx
    25c4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    25c7:	68 38 53 00 00       	push   $0x5338
    25cc:	6a 01                	push   $0x1
    25ce:	e8 2d 24 00 00       	call   4a00 <printf>
  unlink("lf1");
    25d3:	c7 04 24 42 53 00 00 	movl   $0x5342,(%esp)
    25da:	e8 13 23 00 00       	call   48f2 <unlink>
  unlink("lf2");
    25df:	c7 04 24 46 53 00 00 	movl   $0x5346,(%esp)
    25e6:	e8 07 23 00 00       	call   48f2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    25eb:	58                   	pop    %eax
    25ec:	5a                   	pop    %edx
    25ed:	68 02 02 00 00       	push   $0x202
    25f2:	68 42 53 00 00       	push   $0x5342
    25f7:	e8 e6 22 00 00       	call   48e2 <open>
  if(fd < 0){
    25fc:	83 c4 10             	add    $0x10,%esp
    25ff:	85 c0                	test   %eax,%eax
    2601:	0f 88 1e 01 00 00    	js     2725 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    2607:	83 ec 04             	sub    $0x4,%esp
    260a:	89 c3                	mov    %eax,%ebx
    260c:	6a 05                	push   $0x5
    260e:	68 a6 52 00 00       	push   $0x52a6
    2613:	50                   	push   %eax
    2614:	e8 a9 22 00 00       	call   48c2 <write>
    2619:	83 c4 10             	add    $0x10,%esp
    261c:	83 f8 05             	cmp    $0x5,%eax
    261f:	0f 85 98 01 00 00    	jne    27bd <linktest+0x1fd>
  close(fd);
    2625:	83 ec 0c             	sub    $0xc,%esp
    2628:	53                   	push   %ebx
    2629:	e8 9c 22 00 00       	call   48ca <close>
  if(link("lf1", "lf2") < 0){
    262e:	5b                   	pop    %ebx
    262f:	58                   	pop    %eax
    2630:	68 46 53 00 00       	push   $0x5346
    2635:	68 42 53 00 00       	push   $0x5342
    263a:	e8 c3 22 00 00       	call   4902 <link>
    263f:	83 c4 10             	add    $0x10,%esp
    2642:	85 c0                	test   %eax,%eax
    2644:	0f 88 60 01 00 00    	js     27aa <linktest+0x1ea>
  unlink("lf1");
    264a:	83 ec 0c             	sub    $0xc,%esp
    264d:	68 42 53 00 00       	push   $0x5342
    2652:	e8 9b 22 00 00       	call   48f2 <unlink>
  if(open("lf1", 0) >= 0){
    2657:	58                   	pop    %eax
    2658:	5a                   	pop    %edx
    2659:	6a 00                	push   $0x0
    265b:	68 42 53 00 00       	push   $0x5342
    2660:	e8 7d 22 00 00       	call   48e2 <open>
    2665:	83 c4 10             	add    $0x10,%esp
    2668:	85 c0                	test   %eax,%eax
    266a:	0f 89 27 01 00 00    	jns    2797 <linktest+0x1d7>
  fd = open("lf2", 0);
    2670:	83 ec 08             	sub    $0x8,%esp
    2673:	6a 00                	push   $0x0
    2675:	68 46 53 00 00       	push   $0x5346
    267a:	e8 63 22 00 00       	call   48e2 <open>
  if(fd < 0){
    267f:	83 c4 10             	add    $0x10,%esp
    2682:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    2684:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2686:	0f 88 f8 00 00 00    	js     2784 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    268c:	83 ec 04             	sub    $0x4,%esp
    268f:	68 00 20 00 00       	push   $0x2000
    2694:	68 60 96 00 00       	push   $0x9660
    2699:	50                   	push   %eax
    269a:	e8 1b 22 00 00       	call   48ba <read>
    269f:	83 c4 10             	add    $0x10,%esp
    26a2:	83 f8 05             	cmp    $0x5,%eax
    26a5:	0f 85 c6 00 00 00    	jne    2771 <linktest+0x1b1>
  close(fd);
    26ab:	83 ec 0c             	sub    $0xc,%esp
    26ae:	53                   	push   %ebx
    26af:	e8 16 22 00 00       	call   48ca <close>
  if(link("lf2", "lf2") >= 0){
    26b4:	58                   	pop    %eax
    26b5:	5a                   	pop    %edx
    26b6:	68 46 53 00 00       	push   $0x5346
    26bb:	68 46 53 00 00       	push   $0x5346
    26c0:	e8 3d 22 00 00       	call   4902 <link>
    26c5:	83 c4 10             	add    $0x10,%esp
    26c8:	85 c0                	test   %eax,%eax
    26ca:	0f 89 8e 00 00 00    	jns    275e <linktest+0x19e>
  unlink("lf2");
    26d0:	83 ec 0c             	sub    $0xc,%esp
    26d3:	68 46 53 00 00       	push   $0x5346
    26d8:	e8 15 22 00 00       	call   48f2 <unlink>
  if(link("lf2", "lf1") >= 0){
    26dd:	59                   	pop    %ecx
    26de:	5b                   	pop    %ebx
    26df:	68 42 53 00 00       	push   $0x5342
    26e4:	68 46 53 00 00       	push   $0x5346
    26e9:	e8 14 22 00 00       	call   4902 <link>
    26ee:	83 c4 10             	add    $0x10,%esp
    26f1:	85 c0                	test   %eax,%eax
    26f3:	79 56                	jns    274b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    26f5:	83 ec 08             	sub    $0x8,%esp
    26f8:	68 42 53 00 00       	push   $0x5342
    26fd:	68 0a 56 00 00       	push   $0x560a
    2702:	e8 fb 21 00 00       	call   4902 <link>
    2707:	83 c4 10             	add    $0x10,%esp
    270a:	85 c0                	test   %eax,%eax
    270c:	79 2a                	jns    2738 <linktest+0x178>
  printf(1, "linktest ok\n");
    270e:	83 ec 08             	sub    $0x8,%esp
    2711:	68 e0 53 00 00       	push   $0x53e0
    2716:	6a 01                	push   $0x1
    2718:	e8 e3 22 00 00       	call   4a00 <printf>
}
    271d:	83 c4 10             	add    $0x10,%esp
    2720:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2723:	c9                   	leave  
    2724:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    2725:	50                   	push   %eax
    2726:	50                   	push   %eax
    2727:	68 4a 53 00 00       	push   $0x534a
    272c:	6a 01                	push   $0x1
    272e:	e8 cd 22 00 00       	call   4a00 <printf>
    exit();
    2733:	e8 6a 21 00 00       	call   48a2 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    2738:	50                   	push   %eax
    2739:	50                   	push   %eax
    273a:	68 c4 53 00 00       	push   $0x53c4
    273f:	6a 01                	push   $0x1
    2741:	e8 ba 22 00 00       	call   4a00 <printf>
    exit();
    2746:	e8 57 21 00 00       	call   48a2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    274b:	52                   	push   %edx
    274c:	52                   	push   %edx
    274d:	68 78 5f 00 00       	push   $0x5f78
    2752:	6a 01                	push   $0x1
    2754:	e8 a7 22 00 00       	call   4a00 <printf>
    exit();
    2759:	e8 44 21 00 00       	call   48a2 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    275e:	50                   	push   %eax
    275f:	50                   	push   %eax
    2760:	68 a6 53 00 00       	push   $0x53a6
    2765:	6a 01                	push   $0x1
    2767:	e8 94 22 00 00       	call   4a00 <printf>
    exit();
    276c:	e8 31 21 00 00       	call   48a2 <exit>
    printf(1, "read lf2 failed\n");
    2771:	51                   	push   %ecx
    2772:	51                   	push   %ecx
    2773:	68 95 53 00 00       	push   $0x5395
    2778:	6a 01                	push   $0x1
    277a:	e8 81 22 00 00       	call   4a00 <printf>
    exit();
    277f:	e8 1e 21 00 00       	call   48a2 <exit>
    printf(1, "open lf2 failed\n");
    2784:	53                   	push   %ebx
    2785:	53                   	push   %ebx
    2786:	68 84 53 00 00       	push   $0x5384
    278b:	6a 01                	push   $0x1
    278d:	e8 6e 22 00 00       	call   4a00 <printf>
    exit();
    2792:	e8 0b 21 00 00       	call   48a2 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    2797:	50                   	push   %eax
    2798:	50                   	push   %eax
    2799:	68 50 5f 00 00       	push   $0x5f50
    279e:	6a 01                	push   $0x1
    27a0:	e8 5b 22 00 00       	call   4a00 <printf>
    exit();
    27a5:	e8 f8 20 00 00       	call   48a2 <exit>
    printf(1, "link lf1 lf2 failed\n");
    27aa:	51                   	push   %ecx
    27ab:	51                   	push   %ecx
    27ac:	68 6f 53 00 00       	push   $0x536f
    27b1:	6a 01                	push   $0x1
    27b3:	e8 48 22 00 00       	call   4a00 <printf>
    exit();
    27b8:	e8 e5 20 00 00       	call   48a2 <exit>
    printf(1, "write lf1 failed\n");
    27bd:	50                   	push   %eax
    27be:	50                   	push   %eax
    27bf:	68 5d 53 00 00       	push   $0x535d
    27c4:	6a 01                	push   $0x1
    27c6:	e8 35 22 00 00       	call   4a00 <printf>
    exit();
    27cb:	e8 d2 20 00 00       	call   48a2 <exit>

000027d0 <concreate>:
{
    27d0:	55                   	push   %ebp
    27d1:	89 e5                	mov    %esp,%ebp
    27d3:	57                   	push   %edi
    27d4:	56                   	push   %esi
    27d5:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    27d6:	31 f6                	xor    %esi,%esi
    27d8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    if(pid && (i % 3) == 1){
    27db:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
{
    27e0:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    27e3:	68 ed 53 00 00       	push   $0x53ed
    27e8:	6a 01                	push   $0x1
    27ea:	e8 11 22 00 00       	call   4a00 <printf>
  file[0] = 'C';
    27ef:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    27f3:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    27f7:	83 c4 10             	add    $0x10,%esp
    27fa:	eb 4c                	jmp    2848 <concreate+0x78>
    27fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    2800:	89 f0                	mov    %esi,%eax
    2802:	89 f1                	mov    %esi,%ecx
    2804:	f7 e7                	mul    %edi
    2806:	d1 ea                	shr    %edx
    2808:	8d 04 52             	lea    (%edx,%edx,2),%eax
    280b:	29 c1                	sub    %eax,%ecx
    280d:	83 f9 01             	cmp    $0x1,%ecx
    2810:	0f 84 ba 00 00 00    	je     28d0 <concreate+0x100>
      fd = open(file, O_CREATE | O_RDWR);
    2816:	83 ec 08             	sub    $0x8,%esp
    2819:	68 02 02 00 00       	push   $0x202
    281e:	53                   	push   %ebx
    281f:	e8 be 20 00 00       	call   48e2 <open>
      if(fd < 0){
    2824:	83 c4 10             	add    $0x10,%esp
    2827:	85 c0                	test   %eax,%eax
    2829:	78 67                	js     2892 <concreate+0xc2>
      close(fd);
    282b:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    282e:	83 c6 01             	add    $0x1,%esi
      close(fd);
    2831:	50                   	push   %eax
    2832:	e8 93 20 00 00       	call   48ca <close>
    2837:	83 c4 10             	add    $0x10,%esp
      wait();
    283a:	e8 6b 20 00 00       	call   48aa <wait>
  for(i = 0; i < 40; i++){
    283f:	83 fe 28             	cmp    $0x28,%esi
    2842:	0f 84 aa 00 00 00    	je     28f2 <concreate+0x122>
    unlink(file);
    2848:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    284b:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    284e:	53                   	push   %ebx
    file[1] = '0' + i;
    284f:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    2852:	e8 9b 20 00 00       	call   48f2 <unlink>
    pid = fork();
    2857:	e8 3e 20 00 00       	call   489a <fork>
    if(pid && (i % 3) == 1){
    285c:	83 c4 10             	add    $0x10,%esp
    285f:	85 c0                	test   %eax,%eax
    2861:	75 9d                	jne    2800 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    2863:	89 f0                	mov    %esi,%eax
    2865:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    286a:	f7 e2                	mul    %edx
    286c:	c1 ea 02             	shr    $0x2,%edx
    286f:	8d 04 92             	lea    (%edx,%edx,4),%eax
    2872:	29 c6                	sub    %eax,%esi
    2874:	83 fe 01             	cmp    $0x1,%esi
    2877:	74 37                	je     28b0 <concreate+0xe0>
      fd = open(file, O_CREATE | O_RDWR);
    2879:	83 ec 08             	sub    $0x8,%esp
    287c:	68 02 02 00 00       	push   $0x202
    2881:	53                   	push   %ebx
    2882:	e8 5b 20 00 00       	call   48e2 <open>
      if(fd < 0){
    2887:	83 c4 10             	add    $0x10,%esp
    288a:	85 c0                	test   %eax,%eax
    288c:	0f 89 28 02 00 00    	jns    2aba <concreate+0x2ea>
        printf(1, "concreate create %s failed\n", file);
    2892:	83 ec 04             	sub    $0x4,%esp
    2895:	53                   	push   %ebx
    2896:	68 00 54 00 00       	push   $0x5400
    289b:	6a 01                	push   $0x1
    289d:	e8 5e 21 00 00       	call   4a00 <printf>
        exit();
    28a2:	e8 fb 1f 00 00       	call   48a2 <exit>
    28a7:	89 f6                	mov    %esi,%esi
    28a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    28b0:	83 ec 08             	sub    $0x8,%esp
    28b3:	53                   	push   %ebx
    28b4:	68 fd 53 00 00       	push   $0x53fd
    28b9:	e8 44 20 00 00       	call   4902 <link>
    28be:	83 c4 10             	add    $0x10,%esp
      exit();
    28c1:	e8 dc 1f 00 00       	call   48a2 <exit>
    28c6:	8d 76 00             	lea    0x0(%esi),%esi
    28c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    28d0:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    28d3:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    28d6:	53                   	push   %ebx
    28d7:	68 fd 53 00 00       	push   $0x53fd
    28dc:	e8 21 20 00 00       	call   4902 <link>
    28e1:	83 c4 10             	add    $0x10,%esp
      wait();
    28e4:	e8 c1 1f 00 00       	call   48aa <wait>
  for(i = 0; i < 40; i++){
    28e9:	83 fe 28             	cmp    $0x28,%esi
    28ec:	0f 85 56 ff ff ff    	jne    2848 <concreate+0x78>
  memset(fa, 0, sizeof(fa));
    28f2:	8d 45 c0             	lea    -0x40(%ebp),%eax
    28f5:	83 ec 04             	sub    $0x4,%esp
    28f8:	6a 28                	push   $0x28
    28fa:	6a 00                	push   $0x0
    28fc:	50                   	push   %eax
    28fd:	e8 fe 1d 00 00       	call   4700 <memset>
  fd = open(".", 0);
    2902:	5f                   	pop    %edi
    2903:	58                   	pop    %eax
    2904:	6a 00                	push   $0x0
    2906:	68 0a 56 00 00       	push   $0x560a
    290b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    290e:	e8 cf 1f 00 00       	call   48e2 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    2913:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    2916:	89 c6                	mov    %eax,%esi
  n = 0;
    2918:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    291f:	90                   	nop
  while(read(fd, &de, sizeof(de)) > 0){
    2920:	83 ec 04             	sub    $0x4,%esp
    2923:	6a 10                	push   $0x10
    2925:	57                   	push   %edi
    2926:	56                   	push   %esi
    2927:	e8 8e 1f 00 00       	call   48ba <read>
    292c:	83 c4 10             	add    $0x10,%esp
    292f:	85 c0                	test   %eax,%eax
    2931:	7e 3d                	jle    2970 <concreate+0x1a0>
    if(de.inum == 0)
    2933:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    2938:	74 e6                	je     2920 <concreate+0x150>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    293a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    293e:	75 e0                	jne    2920 <concreate+0x150>
    2940:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    2944:	75 da                	jne    2920 <concreate+0x150>
      i = de.name[1] - '0';
    2946:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    294a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    294d:	83 f8 27             	cmp    $0x27,%eax
    2950:	0f 87 4e 01 00 00    	ja     2aa4 <concreate+0x2d4>
      if(fa[i]){
    2956:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    295b:	0f 85 2d 01 00 00    	jne    2a8e <concreate+0x2be>
      fa[i] = 1;
    2961:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    2966:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    296a:	eb b4                	jmp    2920 <concreate+0x150>
    296c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    2970:	83 ec 0c             	sub    $0xc,%esp
    2973:	56                   	push   %esi
    2974:	e8 51 1f 00 00       	call   48ca <close>
  if(n != 40){
    2979:	83 c4 10             	add    $0x10,%esp
    297c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    2980:	0f 85 f5 00 00 00    	jne    2a7b <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    2986:	31 f6                	xor    %esi,%esi
    2988:	eb 48                	jmp    29d2 <concreate+0x202>
    298a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    2990:	85 ff                	test   %edi,%edi
    2992:	74 05                	je     2999 <concreate+0x1c9>
    2994:	83 fa 01             	cmp    $0x1,%edx
    2997:	74 64                	je     29fd <concreate+0x22d>
      unlink(file);
    2999:	83 ec 0c             	sub    $0xc,%esp
    299c:	53                   	push   %ebx
    299d:	e8 50 1f 00 00       	call   48f2 <unlink>
      unlink(file);
    29a2:	89 1c 24             	mov    %ebx,(%esp)
    29a5:	e8 48 1f 00 00       	call   48f2 <unlink>
      unlink(file);
    29aa:	89 1c 24             	mov    %ebx,(%esp)
    29ad:	e8 40 1f 00 00       	call   48f2 <unlink>
      unlink(file);
    29b2:	89 1c 24             	mov    %ebx,(%esp)
    29b5:	e8 38 1f 00 00       	call   48f2 <unlink>
    29ba:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    29bd:	85 ff                	test   %edi,%edi
    29bf:	0f 84 fc fe ff ff    	je     28c1 <concreate+0xf1>
  for(i = 0; i < 40; i++){
    29c5:	83 c6 01             	add    $0x1,%esi
      wait();
    29c8:	e8 dd 1e 00 00       	call   48aa <wait>
  for(i = 0; i < 40; i++){
    29cd:	83 fe 28             	cmp    $0x28,%esi
    29d0:	74 7e                	je     2a50 <concreate+0x280>
    file[1] = '0' + i;
    29d2:	8d 46 30             	lea    0x30(%esi),%eax
    29d5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    29d8:	e8 bd 1e 00 00       	call   489a <fork>
    if(pid < 0){
    29dd:	85 c0                	test   %eax,%eax
    pid = fork();
    29df:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    29e1:	0f 88 80 00 00 00    	js     2a67 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    29e7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    29ec:	f7 e6                	mul    %esi
    29ee:	d1 ea                	shr    %edx
    29f0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    29f3:	89 f2                	mov    %esi,%edx
    29f5:	29 c2                	sub    %eax,%edx
    29f7:	89 d0                	mov    %edx,%eax
    29f9:	09 f8                	or     %edi,%eax
    29fb:	75 93                	jne    2990 <concreate+0x1c0>
      close(open(file, 0));
    29fd:	83 ec 08             	sub    $0x8,%esp
    2a00:	6a 00                	push   $0x0
    2a02:	53                   	push   %ebx
    2a03:	e8 da 1e 00 00       	call   48e2 <open>
    2a08:	89 04 24             	mov    %eax,(%esp)
    2a0b:	e8 ba 1e 00 00       	call   48ca <close>
      close(open(file, 0));
    2a10:	58                   	pop    %eax
    2a11:	5a                   	pop    %edx
    2a12:	6a 00                	push   $0x0
    2a14:	53                   	push   %ebx
    2a15:	e8 c8 1e 00 00       	call   48e2 <open>
    2a1a:	89 04 24             	mov    %eax,(%esp)
    2a1d:	e8 a8 1e 00 00       	call   48ca <close>
      close(open(file, 0));
    2a22:	59                   	pop    %ecx
    2a23:	58                   	pop    %eax
    2a24:	6a 00                	push   $0x0
    2a26:	53                   	push   %ebx
    2a27:	e8 b6 1e 00 00       	call   48e2 <open>
    2a2c:	89 04 24             	mov    %eax,(%esp)
    2a2f:	e8 96 1e 00 00       	call   48ca <close>
      close(open(file, 0));
    2a34:	58                   	pop    %eax
    2a35:	5a                   	pop    %edx
    2a36:	6a 00                	push   $0x0
    2a38:	53                   	push   %ebx
    2a39:	e8 a4 1e 00 00       	call   48e2 <open>
    2a3e:	89 04 24             	mov    %eax,(%esp)
    2a41:	e8 84 1e 00 00       	call   48ca <close>
    2a46:	83 c4 10             	add    $0x10,%esp
    2a49:	e9 6f ff ff ff       	jmp    29bd <concreate+0x1ed>
    2a4e:	66 90                	xchg   %ax,%ax
  printf(1, "concreate ok\n");
    2a50:	83 ec 08             	sub    $0x8,%esp
    2a53:	68 52 54 00 00       	push   $0x5452
    2a58:	6a 01                	push   $0x1
    2a5a:	e8 a1 1f 00 00       	call   4a00 <printf>
}
    2a5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2a62:	5b                   	pop    %ebx
    2a63:	5e                   	pop    %esi
    2a64:	5f                   	pop    %edi
    2a65:	5d                   	pop    %ebp
    2a66:	c3                   	ret    
      printf(1, "fork failed\n");
    2a67:	83 ec 08             	sub    $0x8,%esp
    2a6a:	68 d5 5c 00 00       	push   $0x5cd5
    2a6f:	6a 01                	push   $0x1
    2a71:	e8 8a 1f 00 00       	call   4a00 <printf>
      exit();
    2a76:	e8 27 1e 00 00       	call   48a2 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    2a7b:	51                   	push   %ecx
    2a7c:	51                   	push   %ecx
    2a7d:	68 9c 5f 00 00       	push   $0x5f9c
    2a82:	6a 01                	push   $0x1
    2a84:	e8 77 1f 00 00       	call   4a00 <printf>
    exit();
    2a89:	e8 14 1e 00 00       	call   48a2 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    2a8e:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2a91:	53                   	push   %ebx
    2a92:	50                   	push   %eax
    2a93:	68 35 54 00 00       	push   $0x5435
    2a98:	6a 01                	push   $0x1
    2a9a:	e8 61 1f 00 00       	call   4a00 <printf>
        exit();
    2a9f:	e8 fe 1d 00 00       	call   48a2 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    2aa4:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2aa7:	56                   	push   %esi
    2aa8:	50                   	push   %eax
    2aa9:	68 1c 54 00 00       	push   $0x541c
    2aae:	6a 01                	push   $0x1
    2ab0:	e8 4b 1f 00 00       	call   4a00 <printf>
        exit();
    2ab5:	e8 e8 1d 00 00       	call   48a2 <exit>
      close(fd);
    2aba:	83 ec 0c             	sub    $0xc,%esp
    2abd:	50                   	push   %eax
    2abe:	e8 07 1e 00 00       	call   48ca <close>
    2ac3:	83 c4 10             	add    $0x10,%esp
    2ac6:	e9 f6 fd ff ff       	jmp    28c1 <concreate+0xf1>
    2acb:	90                   	nop
    2acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002ad0 <linkunlink>:
{
    2ad0:	55                   	push   %ebp
    2ad1:	89 e5                	mov    %esp,%ebp
    2ad3:	57                   	push   %edi
    2ad4:	56                   	push   %esi
    2ad5:	53                   	push   %ebx
    2ad6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    2ad9:	68 60 54 00 00       	push   $0x5460
    2ade:	6a 01                	push   $0x1
    2ae0:	e8 1b 1f 00 00       	call   4a00 <printf>
  unlink("x");
    2ae5:	c7 04 24 ed 56 00 00 	movl   $0x56ed,(%esp)
    2aec:	e8 01 1e 00 00       	call   48f2 <unlink>
  pid = fork();
    2af1:	e8 a4 1d 00 00       	call   489a <fork>
  if(pid < 0){
    2af6:	83 c4 10             	add    $0x10,%esp
    2af9:	85 c0                	test   %eax,%eax
  pid = fork();
    2afb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    2afe:	0f 88 b6 00 00 00    	js     2bba <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    2b04:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    2b08:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    2b0d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    2b12:	19 ff                	sbb    %edi,%edi
    2b14:	83 e7 60             	and    $0x60,%edi
    2b17:	83 c7 01             	add    $0x1,%edi
    2b1a:	eb 1e                	jmp    2b3a <linkunlink+0x6a>
    2b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    2b20:	83 fa 01             	cmp    $0x1,%edx
    2b23:	74 7b                	je     2ba0 <linkunlink+0xd0>
      unlink("x");
    2b25:	83 ec 0c             	sub    $0xc,%esp
    2b28:	68 ed 56 00 00       	push   $0x56ed
    2b2d:	e8 c0 1d 00 00       	call   48f2 <unlink>
    2b32:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2b35:	83 eb 01             	sub    $0x1,%ebx
    2b38:	74 3d                	je     2b77 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    2b3a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2b40:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    2b46:	89 f8                	mov    %edi,%eax
    2b48:	f7 e6                	mul    %esi
    2b4a:	d1 ea                	shr    %edx
    2b4c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    2b4f:	89 fa                	mov    %edi,%edx
    2b51:	29 c2                	sub    %eax,%edx
    2b53:	75 cb                	jne    2b20 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2b55:	83 ec 08             	sub    $0x8,%esp
    2b58:	68 02 02 00 00       	push   $0x202
    2b5d:	68 ed 56 00 00       	push   $0x56ed
    2b62:	e8 7b 1d 00 00       	call   48e2 <open>
    2b67:	89 04 24             	mov    %eax,(%esp)
    2b6a:	e8 5b 1d 00 00       	call   48ca <close>
    2b6f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2b72:	83 eb 01             	sub    $0x1,%ebx
    2b75:	75 c3                	jne    2b3a <linkunlink+0x6a>
  if(pid)
    2b77:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2b7a:	85 c0                	test   %eax,%eax
    2b7c:	74 4f                	je     2bcd <linkunlink+0xfd>
    wait();
    2b7e:	e8 27 1d 00 00       	call   48aa <wait>
  printf(1, "linkunlink ok\n");
    2b83:	83 ec 08             	sub    $0x8,%esp
    2b86:	68 75 54 00 00       	push   $0x5475
    2b8b:	6a 01                	push   $0x1
    2b8d:	e8 6e 1e 00 00       	call   4a00 <printf>
}
    2b92:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2b95:	5b                   	pop    %ebx
    2b96:	5e                   	pop    %esi
    2b97:	5f                   	pop    %edi
    2b98:	5d                   	pop    %ebp
    2b99:	c3                   	ret    
    2b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("cat", "x");
    2ba0:	83 ec 08             	sub    $0x8,%esp
    2ba3:	68 ed 56 00 00       	push   $0x56ed
    2ba8:	68 71 54 00 00       	push   $0x5471
    2bad:	e8 50 1d 00 00       	call   4902 <link>
    2bb2:	83 c4 10             	add    $0x10,%esp
    2bb5:	e9 7b ff ff ff       	jmp    2b35 <linkunlink+0x65>
    printf(1, "fork failed\n");
    2bba:	52                   	push   %edx
    2bbb:	52                   	push   %edx
    2bbc:	68 d5 5c 00 00       	push   $0x5cd5
    2bc1:	6a 01                	push   $0x1
    2bc3:	e8 38 1e 00 00       	call   4a00 <printf>
    exit();
    2bc8:	e8 d5 1c 00 00       	call   48a2 <exit>
    exit();
    2bcd:	e8 d0 1c 00 00       	call   48a2 <exit>
    2bd2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002be0 <bigdir>:
{
    2be0:	55                   	push   %ebp
    2be1:	89 e5                	mov    %esp,%ebp
    2be3:	57                   	push   %edi
    2be4:	56                   	push   %esi
    2be5:	53                   	push   %ebx
    2be6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    2be9:	68 84 54 00 00       	push   $0x5484
    2bee:	6a 01                	push   $0x1
    2bf0:	e8 0b 1e 00 00       	call   4a00 <printf>
  unlink("bd");
    2bf5:	c7 04 24 91 54 00 00 	movl   $0x5491,(%esp)
    2bfc:	e8 f1 1c 00 00       	call   48f2 <unlink>
  fd = open("bd", O_CREATE);
    2c01:	5a                   	pop    %edx
    2c02:	59                   	pop    %ecx
    2c03:	68 00 02 00 00       	push   $0x200
    2c08:	68 91 54 00 00       	push   $0x5491
    2c0d:	e8 d0 1c 00 00       	call   48e2 <open>
  if(fd < 0){
    2c12:	83 c4 10             	add    $0x10,%esp
    2c15:	85 c0                	test   %eax,%eax
    2c17:	0f 88 de 00 00 00    	js     2cfb <bigdir+0x11b>
  close(fd);
    2c1d:	83 ec 0c             	sub    $0xc,%esp
    2c20:	8d 7d de             	lea    -0x22(%ebp),%edi
  for(i = 0; i < 500; i++){
    2c23:	31 f6                	xor    %esi,%esi
  close(fd);
    2c25:	50                   	push   %eax
    2c26:	e8 9f 1c 00 00       	call   48ca <close>
    2c2b:	83 c4 10             	add    $0x10,%esp
    2c2e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    2c30:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    2c32:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    2c35:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    2c39:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    2c3c:	57                   	push   %edi
    2c3d:	68 91 54 00 00       	push   $0x5491
    name[1] = '0' + (i / 64);
    2c42:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    2c45:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    2c49:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    2c4c:	89 f0                	mov    %esi,%eax
    2c4e:	83 e0 3f             	and    $0x3f,%eax
    2c51:	83 c0 30             	add    $0x30,%eax
    2c54:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    2c57:	e8 a6 1c 00 00       	call   4902 <link>
    2c5c:	83 c4 10             	add    $0x10,%esp
    2c5f:	85 c0                	test   %eax,%eax
    2c61:	89 c3                	mov    %eax,%ebx
    2c63:	75 6e                	jne    2cd3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    2c65:	83 c6 01             	add    $0x1,%esi
    2c68:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    2c6e:	75 c0                	jne    2c30 <bigdir+0x50>
  unlink("bd");
    2c70:	83 ec 0c             	sub    $0xc,%esp
    2c73:	68 91 54 00 00       	push   $0x5491
    2c78:	e8 75 1c 00 00       	call   48f2 <unlink>
    2c7d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    2c80:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    2c82:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    2c85:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    2c89:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    2c8c:	57                   	push   %edi
    name[3] = '\0';
    2c8d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    2c91:	83 c0 30             	add    $0x30,%eax
    2c94:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    2c97:	89 d8                	mov    %ebx,%eax
    2c99:	83 e0 3f             	and    $0x3f,%eax
    2c9c:	83 c0 30             	add    $0x30,%eax
    2c9f:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    2ca2:	e8 4b 1c 00 00       	call   48f2 <unlink>
    2ca7:	83 c4 10             	add    $0x10,%esp
    2caa:	85 c0                	test   %eax,%eax
    2cac:	75 39                	jne    2ce7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    2cae:	83 c3 01             	add    $0x1,%ebx
    2cb1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2cb7:	75 c7                	jne    2c80 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    2cb9:	83 ec 08             	sub    $0x8,%esp
    2cbc:	68 d3 54 00 00       	push   $0x54d3
    2cc1:	6a 01                	push   $0x1
    2cc3:	e8 38 1d 00 00       	call   4a00 <printf>
}
    2cc8:	83 c4 10             	add    $0x10,%esp
    2ccb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2cce:	5b                   	pop    %ebx
    2ccf:	5e                   	pop    %esi
    2cd0:	5f                   	pop    %edi
    2cd1:	5d                   	pop    %ebp
    2cd2:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    2cd3:	83 ec 08             	sub    $0x8,%esp
    2cd6:	68 aa 54 00 00       	push   $0x54aa
    2cdb:	6a 01                	push   $0x1
    2cdd:	e8 1e 1d 00 00       	call   4a00 <printf>
      exit();
    2ce2:	e8 bb 1b 00 00       	call   48a2 <exit>
      printf(1, "bigdir unlink failed");
    2ce7:	83 ec 08             	sub    $0x8,%esp
    2cea:	68 be 54 00 00       	push   $0x54be
    2cef:	6a 01                	push   $0x1
    2cf1:	e8 0a 1d 00 00       	call   4a00 <printf>
      exit();
    2cf6:	e8 a7 1b 00 00       	call   48a2 <exit>
    printf(1, "bigdir create failed\n");
    2cfb:	50                   	push   %eax
    2cfc:	50                   	push   %eax
    2cfd:	68 94 54 00 00       	push   $0x5494
    2d02:	6a 01                	push   $0x1
    2d04:	e8 f7 1c 00 00       	call   4a00 <printf>
    exit();
    2d09:	e8 94 1b 00 00       	call   48a2 <exit>
    2d0e:	66 90                	xchg   %ax,%ax

00002d10 <subdir>:
{
    2d10:	55                   	push   %ebp
    2d11:	89 e5                	mov    %esp,%ebp
    2d13:	53                   	push   %ebx
    2d14:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    2d17:	68 de 54 00 00       	push   $0x54de
    2d1c:	6a 01                	push   $0x1
    2d1e:	e8 dd 1c 00 00       	call   4a00 <printf>
  unlink("ff");
    2d23:	c7 04 24 67 55 00 00 	movl   $0x5567,(%esp)
    2d2a:	e8 c3 1b 00 00       	call   48f2 <unlink>
  if(mkdir("dd") != 0){
    2d2f:	c7 04 24 04 56 00 00 	movl   $0x5604,(%esp)
    2d36:	e8 cf 1b 00 00       	call   490a <mkdir>
    2d3b:	83 c4 10             	add    $0x10,%esp
    2d3e:	85 c0                	test   %eax,%eax
    2d40:	0f 85 b3 05 00 00    	jne    32f9 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2d46:	83 ec 08             	sub    $0x8,%esp
    2d49:	68 02 02 00 00       	push   $0x202
    2d4e:	68 3d 55 00 00       	push   $0x553d
    2d53:	e8 8a 1b 00 00       	call   48e2 <open>
  if(fd < 0){
    2d58:	83 c4 10             	add    $0x10,%esp
    2d5b:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2d5d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2d5f:	0f 88 81 05 00 00    	js     32e6 <subdir+0x5d6>
  write(fd, "ff", 2);
    2d65:	83 ec 04             	sub    $0x4,%esp
    2d68:	6a 02                	push   $0x2
    2d6a:	68 67 55 00 00       	push   $0x5567
    2d6f:	50                   	push   %eax
    2d70:	e8 4d 1b 00 00       	call   48c2 <write>
  close(fd);
    2d75:	89 1c 24             	mov    %ebx,(%esp)
    2d78:	e8 4d 1b 00 00       	call   48ca <close>
  if(unlink("dd") >= 0){
    2d7d:	c7 04 24 04 56 00 00 	movl   $0x5604,(%esp)
    2d84:	e8 69 1b 00 00       	call   48f2 <unlink>
    2d89:	83 c4 10             	add    $0x10,%esp
    2d8c:	85 c0                	test   %eax,%eax
    2d8e:	0f 89 3f 05 00 00    	jns    32d3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    2d94:	83 ec 0c             	sub    $0xc,%esp
    2d97:	68 18 55 00 00       	push   $0x5518
    2d9c:	e8 69 1b 00 00       	call   490a <mkdir>
    2da1:	83 c4 10             	add    $0x10,%esp
    2da4:	85 c0                	test   %eax,%eax
    2da6:	0f 85 14 05 00 00    	jne    32c0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2dac:	83 ec 08             	sub    $0x8,%esp
    2daf:	68 02 02 00 00       	push   $0x202
    2db4:	68 3a 55 00 00       	push   $0x553a
    2db9:	e8 24 1b 00 00       	call   48e2 <open>
  if(fd < 0){
    2dbe:	83 c4 10             	add    $0x10,%esp
    2dc1:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2dc3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2dc5:	0f 88 24 04 00 00    	js     31ef <subdir+0x4df>
  write(fd, "FF", 2);
    2dcb:	83 ec 04             	sub    $0x4,%esp
    2dce:	6a 02                	push   $0x2
    2dd0:	68 5b 55 00 00       	push   $0x555b
    2dd5:	50                   	push   %eax
    2dd6:	e8 e7 1a 00 00       	call   48c2 <write>
  close(fd);
    2ddb:	89 1c 24             	mov    %ebx,(%esp)
    2dde:	e8 e7 1a 00 00       	call   48ca <close>
  fd = open("dd/dd/../ff", 0);
    2de3:	58                   	pop    %eax
    2de4:	5a                   	pop    %edx
    2de5:	6a 00                	push   $0x0
    2de7:	68 5e 55 00 00       	push   $0x555e
    2dec:	e8 f1 1a 00 00       	call   48e2 <open>
  if(fd < 0){
    2df1:	83 c4 10             	add    $0x10,%esp
    2df4:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2df6:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2df8:	0f 88 de 03 00 00    	js     31dc <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    2dfe:	83 ec 04             	sub    $0x4,%esp
    2e01:	68 00 20 00 00       	push   $0x2000
    2e06:	68 60 96 00 00       	push   $0x9660
    2e0b:	50                   	push   %eax
    2e0c:	e8 a9 1a 00 00       	call   48ba <read>
  if(cc != 2 || buf[0] != 'f'){
    2e11:	83 c4 10             	add    $0x10,%esp
    2e14:	83 f8 02             	cmp    $0x2,%eax
    2e17:	0f 85 3a 03 00 00    	jne    3157 <subdir+0x447>
    2e1d:	80 3d 60 96 00 00 66 	cmpb   $0x66,0x9660
    2e24:	0f 85 2d 03 00 00    	jne    3157 <subdir+0x447>
  close(fd);
    2e2a:	83 ec 0c             	sub    $0xc,%esp
    2e2d:	53                   	push   %ebx
    2e2e:	e8 97 1a 00 00       	call   48ca <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2e33:	5b                   	pop    %ebx
    2e34:	58                   	pop    %eax
    2e35:	68 9e 55 00 00       	push   $0x559e
    2e3a:	68 3a 55 00 00       	push   $0x553a
    2e3f:	e8 be 1a 00 00       	call   4902 <link>
    2e44:	83 c4 10             	add    $0x10,%esp
    2e47:	85 c0                	test   %eax,%eax
    2e49:	0f 85 c6 03 00 00    	jne    3215 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    2e4f:	83 ec 0c             	sub    $0xc,%esp
    2e52:	68 3a 55 00 00       	push   $0x553a
    2e57:	e8 96 1a 00 00       	call   48f2 <unlink>
    2e5c:	83 c4 10             	add    $0x10,%esp
    2e5f:	85 c0                	test   %eax,%eax
    2e61:	0f 85 16 03 00 00    	jne    317d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2e67:	83 ec 08             	sub    $0x8,%esp
    2e6a:	6a 00                	push   $0x0
    2e6c:	68 3a 55 00 00       	push   $0x553a
    2e71:	e8 6c 1a 00 00       	call   48e2 <open>
    2e76:	83 c4 10             	add    $0x10,%esp
    2e79:	85 c0                	test   %eax,%eax
    2e7b:	0f 89 2c 04 00 00    	jns    32ad <subdir+0x59d>
  if(chdir("dd") != 0){
    2e81:	83 ec 0c             	sub    $0xc,%esp
    2e84:	68 04 56 00 00       	push   $0x5604
    2e89:	e8 84 1a 00 00       	call   4912 <chdir>
    2e8e:	83 c4 10             	add    $0x10,%esp
    2e91:	85 c0                	test   %eax,%eax
    2e93:	0f 85 01 04 00 00    	jne    329a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    2e99:	83 ec 0c             	sub    $0xc,%esp
    2e9c:	68 d2 55 00 00       	push   $0x55d2
    2ea1:	e8 6c 1a 00 00       	call   4912 <chdir>
    2ea6:	83 c4 10             	add    $0x10,%esp
    2ea9:	85 c0                	test   %eax,%eax
    2eab:	0f 85 b9 02 00 00    	jne    316a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    2eb1:	83 ec 0c             	sub    $0xc,%esp
    2eb4:	68 f8 55 00 00       	push   $0x55f8
    2eb9:	e8 54 1a 00 00       	call   4912 <chdir>
    2ebe:	83 c4 10             	add    $0x10,%esp
    2ec1:	85 c0                	test   %eax,%eax
    2ec3:	0f 85 a1 02 00 00    	jne    316a <subdir+0x45a>
  if(chdir("./..") != 0){
    2ec9:	83 ec 0c             	sub    $0xc,%esp
    2ecc:	68 07 56 00 00       	push   $0x5607
    2ed1:	e8 3c 1a 00 00       	call   4912 <chdir>
    2ed6:	83 c4 10             	add    $0x10,%esp
    2ed9:	85 c0                	test   %eax,%eax
    2edb:	0f 85 21 03 00 00    	jne    3202 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    2ee1:	83 ec 08             	sub    $0x8,%esp
    2ee4:	6a 00                	push   $0x0
    2ee6:	68 9e 55 00 00       	push   $0x559e
    2eeb:	e8 f2 19 00 00       	call   48e2 <open>
  if(fd < 0){
    2ef0:	83 c4 10             	add    $0x10,%esp
    2ef3:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2ef5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2ef7:	0f 88 e0 04 00 00    	js     33dd <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    2efd:	83 ec 04             	sub    $0x4,%esp
    2f00:	68 00 20 00 00       	push   $0x2000
    2f05:	68 60 96 00 00       	push   $0x9660
    2f0a:	50                   	push   %eax
    2f0b:	e8 aa 19 00 00       	call   48ba <read>
    2f10:	83 c4 10             	add    $0x10,%esp
    2f13:	83 f8 02             	cmp    $0x2,%eax
    2f16:	0f 85 ae 04 00 00    	jne    33ca <subdir+0x6ba>
  close(fd);
    2f1c:	83 ec 0c             	sub    $0xc,%esp
    2f1f:	53                   	push   %ebx
    2f20:	e8 a5 19 00 00       	call   48ca <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2f25:	59                   	pop    %ecx
    2f26:	5b                   	pop    %ebx
    2f27:	6a 00                	push   $0x0
    2f29:	68 3a 55 00 00       	push   $0x553a
    2f2e:	e8 af 19 00 00       	call   48e2 <open>
    2f33:	83 c4 10             	add    $0x10,%esp
    2f36:	85 c0                	test   %eax,%eax
    2f38:	0f 89 65 02 00 00    	jns    31a3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2f3e:	83 ec 08             	sub    $0x8,%esp
    2f41:	68 02 02 00 00       	push   $0x202
    2f46:	68 52 56 00 00       	push   $0x5652
    2f4b:	e8 92 19 00 00       	call   48e2 <open>
    2f50:	83 c4 10             	add    $0x10,%esp
    2f53:	85 c0                	test   %eax,%eax
    2f55:	0f 89 35 02 00 00    	jns    3190 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    2f5b:	83 ec 08             	sub    $0x8,%esp
    2f5e:	68 02 02 00 00       	push   $0x202
    2f63:	68 77 56 00 00       	push   $0x5677
    2f68:	e8 75 19 00 00       	call   48e2 <open>
    2f6d:	83 c4 10             	add    $0x10,%esp
    2f70:	85 c0                	test   %eax,%eax
    2f72:	0f 89 0f 03 00 00    	jns    3287 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    2f78:	83 ec 08             	sub    $0x8,%esp
    2f7b:	68 00 02 00 00       	push   $0x200
    2f80:	68 04 56 00 00       	push   $0x5604
    2f85:	e8 58 19 00 00       	call   48e2 <open>
    2f8a:	83 c4 10             	add    $0x10,%esp
    2f8d:	85 c0                	test   %eax,%eax
    2f8f:	0f 89 df 02 00 00    	jns    3274 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    2f95:	83 ec 08             	sub    $0x8,%esp
    2f98:	6a 02                	push   $0x2
    2f9a:	68 04 56 00 00       	push   $0x5604
    2f9f:	e8 3e 19 00 00       	call   48e2 <open>
    2fa4:	83 c4 10             	add    $0x10,%esp
    2fa7:	85 c0                	test   %eax,%eax
    2fa9:	0f 89 b2 02 00 00    	jns    3261 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    2faf:	83 ec 08             	sub    $0x8,%esp
    2fb2:	6a 01                	push   $0x1
    2fb4:	68 04 56 00 00       	push   $0x5604
    2fb9:	e8 24 19 00 00       	call   48e2 <open>
    2fbe:	83 c4 10             	add    $0x10,%esp
    2fc1:	85 c0                	test   %eax,%eax
    2fc3:	0f 89 85 02 00 00    	jns    324e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2fc9:	83 ec 08             	sub    $0x8,%esp
    2fcc:	68 e6 56 00 00       	push   $0x56e6
    2fd1:	68 52 56 00 00       	push   $0x5652
    2fd6:	e8 27 19 00 00       	call   4902 <link>
    2fdb:	83 c4 10             	add    $0x10,%esp
    2fde:	85 c0                	test   %eax,%eax
    2fe0:	0f 84 55 02 00 00    	je     323b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2fe6:	83 ec 08             	sub    $0x8,%esp
    2fe9:	68 e6 56 00 00       	push   $0x56e6
    2fee:	68 77 56 00 00       	push   $0x5677
    2ff3:	e8 0a 19 00 00       	call   4902 <link>
    2ff8:	83 c4 10             	add    $0x10,%esp
    2ffb:	85 c0                	test   %eax,%eax
    2ffd:	0f 84 25 02 00 00    	je     3228 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    3003:	83 ec 08             	sub    $0x8,%esp
    3006:	68 9e 55 00 00       	push   $0x559e
    300b:	68 3d 55 00 00       	push   $0x553d
    3010:	e8 ed 18 00 00       	call   4902 <link>
    3015:	83 c4 10             	add    $0x10,%esp
    3018:	85 c0                	test   %eax,%eax
    301a:	0f 84 a9 01 00 00    	je     31c9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    3020:	83 ec 0c             	sub    $0xc,%esp
    3023:	68 52 56 00 00       	push   $0x5652
    3028:	e8 dd 18 00 00       	call   490a <mkdir>
    302d:	83 c4 10             	add    $0x10,%esp
    3030:	85 c0                	test   %eax,%eax
    3032:	0f 84 7e 01 00 00    	je     31b6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    3038:	83 ec 0c             	sub    $0xc,%esp
    303b:	68 77 56 00 00       	push   $0x5677
    3040:	e8 c5 18 00 00       	call   490a <mkdir>
    3045:	83 c4 10             	add    $0x10,%esp
    3048:	85 c0                	test   %eax,%eax
    304a:	0f 84 67 03 00 00    	je     33b7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    3050:	83 ec 0c             	sub    $0xc,%esp
    3053:	68 9e 55 00 00       	push   $0x559e
    3058:	e8 ad 18 00 00       	call   490a <mkdir>
    305d:	83 c4 10             	add    $0x10,%esp
    3060:	85 c0                	test   %eax,%eax
    3062:	0f 84 3c 03 00 00    	je     33a4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    3068:	83 ec 0c             	sub    $0xc,%esp
    306b:	68 77 56 00 00       	push   $0x5677
    3070:	e8 7d 18 00 00       	call   48f2 <unlink>
    3075:	83 c4 10             	add    $0x10,%esp
    3078:	85 c0                	test   %eax,%eax
    307a:	0f 84 11 03 00 00    	je     3391 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    3080:	83 ec 0c             	sub    $0xc,%esp
    3083:	68 52 56 00 00       	push   $0x5652
    3088:	e8 65 18 00 00       	call   48f2 <unlink>
    308d:	83 c4 10             	add    $0x10,%esp
    3090:	85 c0                	test   %eax,%eax
    3092:	0f 84 e6 02 00 00    	je     337e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    3098:	83 ec 0c             	sub    $0xc,%esp
    309b:	68 3d 55 00 00       	push   $0x553d
    30a0:	e8 6d 18 00 00       	call   4912 <chdir>
    30a5:	83 c4 10             	add    $0x10,%esp
    30a8:	85 c0                	test   %eax,%eax
    30aa:	0f 84 bb 02 00 00    	je     336b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    30b0:	83 ec 0c             	sub    $0xc,%esp
    30b3:	68 e9 56 00 00       	push   $0x56e9
    30b8:	e8 55 18 00 00       	call   4912 <chdir>
    30bd:	83 c4 10             	add    $0x10,%esp
    30c0:	85 c0                	test   %eax,%eax
    30c2:	0f 84 90 02 00 00    	je     3358 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    30c8:	83 ec 0c             	sub    $0xc,%esp
    30cb:	68 9e 55 00 00       	push   $0x559e
    30d0:	e8 1d 18 00 00       	call   48f2 <unlink>
    30d5:	83 c4 10             	add    $0x10,%esp
    30d8:	85 c0                	test   %eax,%eax
    30da:	0f 85 9d 00 00 00    	jne    317d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    30e0:	83 ec 0c             	sub    $0xc,%esp
    30e3:	68 3d 55 00 00       	push   $0x553d
    30e8:	e8 05 18 00 00       	call   48f2 <unlink>
    30ed:	83 c4 10             	add    $0x10,%esp
    30f0:	85 c0                	test   %eax,%eax
    30f2:	0f 85 4d 02 00 00    	jne    3345 <subdir+0x635>
  if(unlink("dd") == 0){
    30f8:	83 ec 0c             	sub    $0xc,%esp
    30fb:	68 04 56 00 00       	push   $0x5604
    3100:	e8 ed 17 00 00       	call   48f2 <unlink>
    3105:	83 c4 10             	add    $0x10,%esp
    3108:	85 c0                	test   %eax,%eax
    310a:	0f 84 22 02 00 00    	je     3332 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    3110:	83 ec 0c             	sub    $0xc,%esp
    3113:	68 19 55 00 00       	push   $0x5519
    3118:	e8 d5 17 00 00       	call   48f2 <unlink>
    311d:	83 c4 10             	add    $0x10,%esp
    3120:	85 c0                	test   %eax,%eax
    3122:	0f 88 f7 01 00 00    	js     331f <subdir+0x60f>
  if(unlink("dd") < 0){
    3128:	83 ec 0c             	sub    $0xc,%esp
    312b:	68 04 56 00 00       	push   $0x5604
    3130:	e8 bd 17 00 00       	call   48f2 <unlink>
    3135:	83 c4 10             	add    $0x10,%esp
    3138:	85 c0                	test   %eax,%eax
    313a:	0f 88 cc 01 00 00    	js     330c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    3140:	83 ec 08             	sub    $0x8,%esp
    3143:	68 e6 57 00 00       	push   $0x57e6
    3148:	6a 01                	push   $0x1
    314a:	e8 b1 18 00 00       	call   4a00 <printf>
}
    314f:	83 c4 10             	add    $0x10,%esp
    3152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3155:	c9                   	leave  
    3156:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    3157:	50                   	push   %eax
    3158:	50                   	push   %eax
    3159:	68 83 55 00 00       	push   $0x5583
    315e:	6a 01                	push   $0x1
    3160:	e8 9b 18 00 00       	call   4a00 <printf>
    exit();
    3165:	e8 38 17 00 00       	call   48a2 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    316a:	50                   	push   %eax
    316b:	50                   	push   %eax
    316c:	68 de 55 00 00       	push   $0x55de
    3171:	6a 01                	push   $0x1
    3173:	e8 88 18 00 00       	call   4a00 <printf>
    exit();
    3178:	e8 25 17 00 00       	call   48a2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    317d:	52                   	push   %edx
    317e:	52                   	push   %edx
    317f:	68 a9 55 00 00       	push   $0x55a9
    3184:	6a 01                	push   $0x1
    3186:	e8 75 18 00 00       	call   4a00 <printf>
    exit();
    318b:	e8 12 17 00 00       	call   48a2 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    3190:	50                   	push   %eax
    3191:	50                   	push   %eax
    3192:	68 5b 56 00 00       	push   $0x565b
    3197:	6a 01                	push   $0x1
    3199:	e8 62 18 00 00       	call   4a00 <printf>
    exit();
    319e:	e8 ff 16 00 00       	call   48a2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    31a3:	52                   	push   %edx
    31a4:	52                   	push   %edx
    31a5:	68 40 60 00 00       	push   $0x6040
    31aa:	6a 01                	push   $0x1
    31ac:	e8 4f 18 00 00       	call   4a00 <printf>
    exit();
    31b1:	e8 ec 16 00 00       	call   48a2 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    31b6:	52                   	push   %edx
    31b7:	52                   	push   %edx
    31b8:	68 ef 56 00 00       	push   $0x56ef
    31bd:	6a 01                	push   $0x1
    31bf:	e8 3c 18 00 00       	call   4a00 <printf>
    exit();
    31c4:	e8 d9 16 00 00       	call   48a2 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    31c9:	51                   	push   %ecx
    31ca:	51                   	push   %ecx
    31cb:	68 b0 60 00 00       	push   $0x60b0
    31d0:	6a 01                	push   $0x1
    31d2:	e8 29 18 00 00       	call   4a00 <printf>
    exit();
    31d7:	e8 c6 16 00 00       	call   48a2 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    31dc:	50                   	push   %eax
    31dd:	50                   	push   %eax
    31de:	68 6a 55 00 00       	push   $0x556a
    31e3:	6a 01                	push   $0x1
    31e5:	e8 16 18 00 00       	call   4a00 <printf>
    exit();
    31ea:	e8 b3 16 00 00       	call   48a2 <exit>
    printf(1, "create dd/dd/ff failed\n");
    31ef:	51                   	push   %ecx
    31f0:	51                   	push   %ecx
    31f1:	68 43 55 00 00       	push   $0x5543
    31f6:	6a 01                	push   $0x1
    31f8:	e8 03 18 00 00       	call   4a00 <printf>
    exit();
    31fd:	e8 a0 16 00 00       	call   48a2 <exit>
    printf(1, "chdir ./.. failed\n");
    3202:	50                   	push   %eax
    3203:	50                   	push   %eax
    3204:	68 0c 56 00 00       	push   $0x560c
    3209:	6a 01                	push   $0x1
    320b:	e8 f0 17 00 00       	call   4a00 <printf>
    exit();
    3210:	e8 8d 16 00 00       	call   48a2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    3215:	51                   	push   %ecx
    3216:	51                   	push   %ecx
    3217:	68 f8 5f 00 00       	push   $0x5ff8
    321c:	6a 01                	push   $0x1
    321e:	e8 dd 17 00 00       	call   4a00 <printf>
    exit();
    3223:	e8 7a 16 00 00       	call   48a2 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    3228:	53                   	push   %ebx
    3229:	53                   	push   %ebx
    322a:	68 8c 60 00 00       	push   $0x608c
    322f:	6a 01                	push   $0x1
    3231:	e8 ca 17 00 00       	call   4a00 <printf>
    exit();
    3236:	e8 67 16 00 00       	call   48a2 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    323b:	50                   	push   %eax
    323c:	50                   	push   %eax
    323d:	68 68 60 00 00       	push   $0x6068
    3242:	6a 01                	push   $0x1
    3244:	e8 b7 17 00 00       	call   4a00 <printf>
    exit();
    3249:	e8 54 16 00 00       	call   48a2 <exit>
    printf(1, "open dd wronly succeeded!\n");
    324e:	50                   	push   %eax
    324f:	50                   	push   %eax
    3250:	68 cb 56 00 00       	push   $0x56cb
    3255:	6a 01                	push   $0x1
    3257:	e8 a4 17 00 00       	call   4a00 <printf>
    exit();
    325c:	e8 41 16 00 00       	call   48a2 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    3261:	50                   	push   %eax
    3262:	50                   	push   %eax
    3263:	68 b2 56 00 00       	push   $0x56b2
    3268:	6a 01                	push   $0x1
    326a:	e8 91 17 00 00       	call   4a00 <printf>
    exit();
    326f:	e8 2e 16 00 00       	call   48a2 <exit>
    printf(1, "create dd succeeded!\n");
    3274:	50                   	push   %eax
    3275:	50                   	push   %eax
    3276:	68 9c 56 00 00       	push   $0x569c
    327b:	6a 01                	push   $0x1
    327d:	e8 7e 17 00 00       	call   4a00 <printf>
    exit();
    3282:	e8 1b 16 00 00       	call   48a2 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    3287:	50                   	push   %eax
    3288:	50                   	push   %eax
    3289:	68 80 56 00 00       	push   $0x5680
    328e:	6a 01                	push   $0x1
    3290:	e8 6b 17 00 00       	call   4a00 <printf>
    exit();
    3295:	e8 08 16 00 00       	call   48a2 <exit>
    printf(1, "chdir dd failed\n");
    329a:	50                   	push   %eax
    329b:	50                   	push   %eax
    329c:	68 c1 55 00 00       	push   $0x55c1
    32a1:	6a 01                	push   $0x1
    32a3:	e8 58 17 00 00       	call   4a00 <printf>
    exit();
    32a8:	e8 f5 15 00 00       	call   48a2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    32ad:	50                   	push   %eax
    32ae:	50                   	push   %eax
    32af:	68 1c 60 00 00       	push   $0x601c
    32b4:	6a 01                	push   $0x1
    32b6:	e8 45 17 00 00       	call   4a00 <printf>
    exit();
    32bb:	e8 e2 15 00 00       	call   48a2 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    32c0:	53                   	push   %ebx
    32c1:	53                   	push   %ebx
    32c2:	68 1f 55 00 00       	push   $0x551f
    32c7:	6a 01                	push   $0x1
    32c9:	e8 32 17 00 00       	call   4a00 <printf>
    exit();
    32ce:	e8 cf 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    32d3:	50                   	push   %eax
    32d4:	50                   	push   %eax
    32d5:	68 d0 5f 00 00       	push   $0x5fd0
    32da:	6a 01                	push   $0x1
    32dc:	e8 1f 17 00 00       	call   4a00 <printf>
    exit();
    32e1:	e8 bc 15 00 00       	call   48a2 <exit>
    printf(1, "create dd/ff failed\n");
    32e6:	50                   	push   %eax
    32e7:	50                   	push   %eax
    32e8:	68 03 55 00 00       	push   $0x5503
    32ed:	6a 01                	push   $0x1
    32ef:	e8 0c 17 00 00       	call   4a00 <printf>
    exit();
    32f4:	e8 a9 15 00 00       	call   48a2 <exit>
    printf(1, "subdir mkdir dd failed\n");
    32f9:	50                   	push   %eax
    32fa:	50                   	push   %eax
    32fb:	68 eb 54 00 00       	push   $0x54eb
    3300:	6a 01                	push   $0x1
    3302:	e8 f9 16 00 00       	call   4a00 <printf>
    exit();
    3307:	e8 96 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd failed\n");
    330c:	50                   	push   %eax
    330d:	50                   	push   %eax
    330e:	68 d4 57 00 00       	push   $0x57d4
    3313:	6a 01                	push   $0x1
    3315:	e8 e6 16 00 00       	call   4a00 <printf>
    exit();
    331a:	e8 83 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd/dd failed\n");
    331f:	52                   	push   %edx
    3320:	52                   	push   %edx
    3321:	68 bf 57 00 00       	push   $0x57bf
    3326:	6a 01                	push   $0x1
    3328:	e8 d3 16 00 00       	call   4a00 <printf>
    exit();
    332d:	e8 70 15 00 00       	call   48a2 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    3332:	51                   	push   %ecx
    3333:	51                   	push   %ecx
    3334:	68 d4 60 00 00       	push   $0x60d4
    3339:	6a 01                	push   $0x1
    333b:	e8 c0 16 00 00       	call   4a00 <printf>
    exit();
    3340:	e8 5d 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd/ff failed\n");
    3345:	53                   	push   %ebx
    3346:	53                   	push   %ebx
    3347:	68 aa 57 00 00       	push   $0x57aa
    334c:	6a 01                	push   $0x1
    334e:	e8 ad 16 00 00       	call   4a00 <printf>
    exit();
    3353:	e8 4a 15 00 00       	call   48a2 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    3358:	50                   	push   %eax
    3359:	50                   	push   %eax
    335a:	68 92 57 00 00       	push   $0x5792
    335f:	6a 01                	push   $0x1
    3361:	e8 9a 16 00 00       	call   4a00 <printf>
    exit();
    3366:	e8 37 15 00 00       	call   48a2 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    336b:	50                   	push   %eax
    336c:	50                   	push   %eax
    336d:	68 7a 57 00 00       	push   $0x577a
    3372:	6a 01                	push   $0x1
    3374:	e8 87 16 00 00       	call   4a00 <printf>
    exit();
    3379:	e8 24 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    337e:	50                   	push   %eax
    337f:	50                   	push   %eax
    3380:	68 5e 57 00 00       	push   $0x575e
    3385:	6a 01                	push   $0x1
    3387:	e8 74 16 00 00       	call   4a00 <printf>
    exit();
    338c:	e8 11 15 00 00       	call   48a2 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    3391:	50                   	push   %eax
    3392:	50                   	push   %eax
    3393:	68 42 57 00 00       	push   $0x5742
    3398:	6a 01                	push   $0x1
    339a:	e8 61 16 00 00       	call   4a00 <printf>
    exit();
    339f:	e8 fe 14 00 00       	call   48a2 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    33a4:	50                   	push   %eax
    33a5:	50                   	push   %eax
    33a6:	68 25 57 00 00       	push   $0x5725
    33ab:	6a 01                	push   $0x1
    33ad:	e8 4e 16 00 00       	call   4a00 <printf>
    exit();
    33b2:	e8 eb 14 00 00       	call   48a2 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    33b7:	50                   	push   %eax
    33b8:	50                   	push   %eax
    33b9:	68 0a 57 00 00       	push   $0x570a
    33be:	6a 01                	push   $0x1
    33c0:	e8 3b 16 00 00       	call   4a00 <printf>
    exit();
    33c5:	e8 d8 14 00 00       	call   48a2 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    33ca:	50                   	push   %eax
    33cb:	50                   	push   %eax
    33cc:	68 37 56 00 00       	push   $0x5637
    33d1:	6a 01                	push   $0x1
    33d3:	e8 28 16 00 00       	call   4a00 <printf>
    exit();
    33d8:	e8 c5 14 00 00       	call   48a2 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    33dd:	50                   	push   %eax
    33de:	50                   	push   %eax
    33df:	68 1f 56 00 00       	push   $0x561f
    33e4:	6a 01                	push   $0x1
    33e6:	e8 15 16 00 00       	call   4a00 <printf>
    exit();
    33eb:	e8 b2 14 00 00       	call   48a2 <exit>

000033f0 <bigwrite>:
{
    33f0:	55                   	push   %ebp
    33f1:	89 e5                	mov    %esp,%ebp
    33f3:	56                   	push   %esi
    33f4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    33f5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    33fa:	83 ec 08             	sub    $0x8,%esp
    33fd:	68 f1 57 00 00       	push   $0x57f1
    3402:	6a 01                	push   $0x1
    3404:	e8 f7 15 00 00       	call   4a00 <printf>
  unlink("bigwrite");
    3409:	c7 04 24 00 58 00 00 	movl   $0x5800,(%esp)
    3410:	e8 dd 14 00 00       	call   48f2 <unlink>
    3415:	83 c4 10             	add    $0x10,%esp
    3418:	90                   	nop
    3419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    3420:	83 ec 08             	sub    $0x8,%esp
    3423:	68 02 02 00 00       	push   $0x202
    3428:	68 00 58 00 00       	push   $0x5800
    342d:	e8 b0 14 00 00       	call   48e2 <open>
    if(fd < 0){
    3432:	83 c4 10             	add    $0x10,%esp
    3435:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    3437:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    3439:	78 7e                	js     34b9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    343b:	83 ec 04             	sub    $0x4,%esp
    343e:	53                   	push   %ebx
    343f:	68 60 96 00 00       	push   $0x9660
    3444:	50                   	push   %eax
    3445:	e8 78 14 00 00       	call   48c2 <write>
      if(cc != sz){
    344a:	83 c4 10             	add    $0x10,%esp
    344d:	39 d8                	cmp    %ebx,%eax
    344f:	75 55                	jne    34a6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    3451:	83 ec 04             	sub    $0x4,%esp
    3454:	53                   	push   %ebx
    3455:	68 60 96 00 00       	push   $0x9660
    345a:	56                   	push   %esi
    345b:	e8 62 14 00 00       	call   48c2 <write>
      if(cc != sz){
    3460:	83 c4 10             	add    $0x10,%esp
    3463:	39 d8                	cmp    %ebx,%eax
    3465:	75 3f                	jne    34a6 <bigwrite+0xb6>
    close(fd);
    3467:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    346a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    3470:	56                   	push   %esi
    3471:	e8 54 14 00 00       	call   48ca <close>
    unlink("bigwrite");
    3476:	c7 04 24 00 58 00 00 	movl   $0x5800,(%esp)
    347d:	e8 70 14 00 00       	call   48f2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    3482:	83 c4 10             	add    $0x10,%esp
    3485:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    348b:	75 93                	jne    3420 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    348d:	83 ec 08             	sub    $0x8,%esp
    3490:	68 33 58 00 00       	push   $0x5833
    3495:	6a 01                	push   $0x1
    3497:	e8 64 15 00 00       	call   4a00 <printf>
}
    349c:	83 c4 10             	add    $0x10,%esp
    349f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    34a2:	5b                   	pop    %ebx
    34a3:	5e                   	pop    %esi
    34a4:	5d                   	pop    %ebp
    34a5:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    34a6:	50                   	push   %eax
    34a7:	53                   	push   %ebx
    34a8:	68 21 58 00 00       	push   $0x5821
    34ad:	6a 01                	push   $0x1
    34af:	e8 4c 15 00 00       	call   4a00 <printf>
        exit();
    34b4:	e8 e9 13 00 00       	call   48a2 <exit>
      printf(1, "cannot create bigwrite\n");
    34b9:	83 ec 08             	sub    $0x8,%esp
    34bc:	68 09 58 00 00       	push   $0x5809
    34c1:	6a 01                	push   $0x1
    34c3:	e8 38 15 00 00       	call   4a00 <printf>
      exit();
    34c8:	e8 d5 13 00 00       	call   48a2 <exit>
    34cd:	8d 76 00             	lea    0x0(%esi),%esi

000034d0 <bigfile>:
{
    34d0:	55                   	push   %ebp
    34d1:	89 e5                	mov    %esp,%ebp
    34d3:	57                   	push   %edi
    34d4:	56                   	push   %esi
    34d5:	53                   	push   %ebx
    34d6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    34d9:	68 40 58 00 00       	push   $0x5840
    34de:	6a 01                	push   $0x1
    34e0:	e8 1b 15 00 00       	call   4a00 <printf>
  unlink("bigfile");
    34e5:	c7 04 24 5c 58 00 00 	movl   $0x585c,(%esp)
    34ec:	e8 01 14 00 00       	call   48f2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    34f1:	58                   	pop    %eax
    34f2:	5a                   	pop    %edx
    34f3:	68 02 02 00 00       	push   $0x202
    34f8:	68 5c 58 00 00       	push   $0x585c
    34fd:	e8 e0 13 00 00       	call   48e2 <open>
  if(fd < 0){
    3502:	83 c4 10             	add    $0x10,%esp
    3505:	85 c0                	test   %eax,%eax
    3507:	0f 88 5e 01 00 00    	js     366b <bigfile+0x19b>
    350d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    350f:	31 db                	xor    %ebx,%ebx
    3511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    3518:	83 ec 04             	sub    $0x4,%esp
    351b:	68 58 02 00 00       	push   $0x258
    3520:	53                   	push   %ebx
    3521:	68 60 96 00 00       	push   $0x9660
    3526:	e8 d5 11 00 00       	call   4700 <memset>
    if(write(fd, buf, 600) != 600){
    352b:	83 c4 0c             	add    $0xc,%esp
    352e:	68 58 02 00 00       	push   $0x258
    3533:	68 60 96 00 00       	push   $0x9660
    3538:	56                   	push   %esi
    3539:	e8 84 13 00 00       	call   48c2 <write>
    353e:	83 c4 10             	add    $0x10,%esp
    3541:	3d 58 02 00 00       	cmp    $0x258,%eax
    3546:	0f 85 f8 00 00 00    	jne    3644 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    354c:	83 c3 01             	add    $0x1,%ebx
    354f:	83 fb 14             	cmp    $0x14,%ebx
    3552:	75 c4                	jne    3518 <bigfile+0x48>
  close(fd);
    3554:	83 ec 0c             	sub    $0xc,%esp
    3557:	56                   	push   %esi
    3558:	e8 6d 13 00 00       	call   48ca <close>
  fd = open("bigfile", 0);
    355d:	5e                   	pop    %esi
    355e:	5f                   	pop    %edi
    355f:	6a 00                	push   $0x0
    3561:	68 5c 58 00 00       	push   $0x585c
    3566:	e8 77 13 00 00       	call   48e2 <open>
  if(fd < 0){
    356b:	83 c4 10             	add    $0x10,%esp
    356e:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    3570:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    3572:	0f 88 e0 00 00 00    	js     3658 <bigfile+0x188>
  total = 0;
    3578:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    357a:	31 ff                	xor    %edi,%edi
    357c:	eb 30                	jmp    35ae <bigfile+0xde>
    357e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    3580:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    3585:	0f 85 91 00 00 00    	jne    361c <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    358b:	0f be 05 60 96 00 00 	movsbl 0x9660,%eax
    3592:	89 fa                	mov    %edi,%edx
    3594:	d1 fa                	sar    %edx
    3596:	39 d0                	cmp    %edx,%eax
    3598:	75 6e                	jne    3608 <bigfile+0x138>
    359a:	0f be 15 8b 97 00 00 	movsbl 0x978b,%edx
    35a1:	39 d0                	cmp    %edx,%eax
    35a3:	75 63                	jne    3608 <bigfile+0x138>
    total += cc;
    35a5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    35ab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    35ae:	83 ec 04             	sub    $0x4,%esp
    35b1:	68 2c 01 00 00       	push   $0x12c
    35b6:	68 60 96 00 00       	push   $0x9660
    35bb:	56                   	push   %esi
    35bc:	e8 f9 12 00 00       	call   48ba <read>
    if(cc < 0){
    35c1:	83 c4 10             	add    $0x10,%esp
    35c4:	85 c0                	test   %eax,%eax
    35c6:	78 68                	js     3630 <bigfile+0x160>
    if(cc == 0)
    35c8:	75 b6                	jne    3580 <bigfile+0xb0>
  close(fd);
    35ca:	83 ec 0c             	sub    $0xc,%esp
    35cd:	56                   	push   %esi
    35ce:	e8 f7 12 00 00       	call   48ca <close>
  if(total != 20*600){
    35d3:	83 c4 10             	add    $0x10,%esp
    35d6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    35dc:	0f 85 9c 00 00 00    	jne    367e <bigfile+0x1ae>
  unlink("bigfile");
    35e2:	83 ec 0c             	sub    $0xc,%esp
    35e5:	68 5c 58 00 00       	push   $0x585c
    35ea:	e8 03 13 00 00       	call   48f2 <unlink>
  printf(1, "bigfile test ok\n");
    35ef:	58                   	pop    %eax
    35f0:	5a                   	pop    %edx
    35f1:	68 eb 58 00 00       	push   $0x58eb
    35f6:	6a 01                	push   $0x1
    35f8:	e8 03 14 00 00       	call   4a00 <printf>
}
    35fd:	83 c4 10             	add    $0x10,%esp
    3600:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3603:	5b                   	pop    %ebx
    3604:	5e                   	pop    %esi
    3605:	5f                   	pop    %edi
    3606:	5d                   	pop    %ebp
    3607:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    3608:	83 ec 08             	sub    $0x8,%esp
    360b:	68 b8 58 00 00       	push   $0x58b8
    3610:	6a 01                	push   $0x1
    3612:	e8 e9 13 00 00       	call   4a00 <printf>
      exit();
    3617:	e8 86 12 00 00       	call   48a2 <exit>
      printf(1, "short read bigfile\n");
    361c:	83 ec 08             	sub    $0x8,%esp
    361f:	68 a4 58 00 00       	push   $0x58a4
    3624:	6a 01                	push   $0x1
    3626:	e8 d5 13 00 00       	call   4a00 <printf>
      exit();
    362b:	e8 72 12 00 00       	call   48a2 <exit>
      printf(1, "read bigfile failed\n");
    3630:	83 ec 08             	sub    $0x8,%esp
    3633:	68 8f 58 00 00       	push   $0x588f
    3638:	6a 01                	push   $0x1
    363a:	e8 c1 13 00 00       	call   4a00 <printf>
      exit();
    363f:	e8 5e 12 00 00       	call   48a2 <exit>
      printf(1, "write bigfile failed\n");
    3644:	83 ec 08             	sub    $0x8,%esp
    3647:	68 64 58 00 00       	push   $0x5864
    364c:	6a 01                	push   $0x1
    364e:	e8 ad 13 00 00       	call   4a00 <printf>
      exit();
    3653:	e8 4a 12 00 00       	call   48a2 <exit>
    printf(1, "cannot open bigfile\n");
    3658:	53                   	push   %ebx
    3659:	53                   	push   %ebx
    365a:	68 7a 58 00 00       	push   $0x587a
    365f:	6a 01                	push   $0x1
    3661:	e8 9a 13 00 00       	call   4a00 <printf>
    exit();
    3666:	e8 37 12 00 00       	call   48a2 <exit>
    printf(1, "cannot create bigfile");
    366b:	50                   	push   %eax
    366c:	50                   	push   %eax
    366d:	68 4e 58 00 00       	push   $0x584e
    3672:	6a 01                	push   $0x1
    3674:	e8 87 13 00 00       	call   4a00 <printf>
    exit();
    3679:	e8 24 12 00 00       	call   48a2 <exit>
    printf(1, "read bigfile wrong total\n");
    367e:	51                   	push   %ecx
    367f:	51                   	push   %ecx
    3680:	68 d1 58 00 00       	push   $0x58d1
    3685:	6a 01                	push   $0x1
    3687:	e8 74 13 00 00       	call   4a00 <printf>
    exit();
    368c:	e8 11 12 00 00       	call   48a2 <exit>
    3691:	eb 0d                	jmp    36a0 <fourteen>
    3693:	90                   	nop
    3694:	90                   	nop
    3695:	90                   	nop
    3696:	90                   	nop
    3697:	90                   	nop
    3698:	90                   	nop
    3699:	90                   	nop
    369a:	90                   	nop
    369b:	90                   	nop
    369c:	90                   	nop
    369d:	90                   	nop
    369e:	90                   	nop
    369f:	90                   	nop

000036a0 <fourteen>:
{
    36a0:	55                   	push   %ebp
    36a1:	89 e5                	mov    %esp,%ebp
    36a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    36a6:	68 fc 58 00 00       	push   $0x58fc
    36ab:	6a 01                	push   $0x1
    36ad:	e8 4e 13 00 00       	call   4a00 <printf>
  if(mkdir("12345678901234") != 0){
    36b2:	c7 04 24 37 59 00 00 	movl   $0x5937,(%esp)
    36b9:	e8 4c 12 00 00       	call   490a <mkdir>
    36be:	83 c4 10             	add    $0x10,%esp
    36c1:	85 c0                	test   %eax,%eax
    36c3:	0f 85 97 00 00 00    	jne    3760 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    36c9:	83 ec 0c             	sub    $0xc,%esp
    36cc:	68 f4 60 00 00       	push   $0x60f4
    36d1:	e8 34 12 00 00       	call   490a <mkdir>
    36d6:	83 c4 10             	add    $0x10,%esp
    36d9:	85 c0                	test   %eax,%eax
    36db:	0f 85 de 00 00 00    	jne    37bf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    36e1:	83 ec 08             	sub    $0x8,%esp
    36e4:	68 00 02 00 00       	push   $0x200
    36e9:	68 44 61 00 00       	push   $0x6144
    36ee:	e8 ef 11 00 00       	call   48e2 <open>
  if(fd < 0){
    36f3:	83 c4 10             	add    $0x10,%esp
    36f6:	85 c0                	test   %eax,%eax
    36f8:	0f 88 ae 00 00 00    	js     37ac <fourteen+0x10c>
  close(fd);
    36fe:	83 ec 0c             	sub    $0xc,%esp
    3701:	50                   	push   %eax
    3702:	e8 c3 11 00 00       	call   48ca <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    3707:	58                   	pop    %eax
    3708:	5a                   	pop    %edx
    3709:	6a 00                	push   $0x0
    370b:	68 b4 61 00 00       	push   $0x61b4
    3710:	e8 cd 11 00 00       	call   48e2 <open>
  if(fd < 0){
    3715:	83 c4 10             	add    $0x10,%esp
    3718:	85 c0                	test   %eax,%eax
    371a:	78 7d                	js     3799 <fourteen+0xf9>
  close(fd);
    371c:	83 ec 0c             	sub    $0xc,%esp
    371f:	50                   	push   %eax
    3720:	e8 a5 11 00 00       	call   48ca <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    3725:	c7 04 24 28 59 00 00 	movl   $0x5928,(%esp)
    372c:	e8 d9 11 00 00       	call   490a <mkdir>
    3731:	83 c4 10             	add    $0x10,%esp
    3734:	85 c0                	test   %eax,%eax
    3736:	74 4e                	je     3786 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    3738:	83 ec 0c             	sub    $0xc,%esp
    373b:	68 50 62 00 00       	push   $0x6250
    3740:	e8 c5 11 00 00       	call   490a <mkdir>
    3745:	83 c4 10             	add    $0x10,%esp
    3748:	85 c0                	test   %eax,%eax
    374a:	74 27                	je     3773 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    374c:	83 ec 08             	sub    $0x8,%esp
    374f:	68 46 59 00 00       	push   $0x5946
    3754:	6a 01                	push   $0x1
    3756:	e8 a5 12 00 00       	call   4a00 <printf>
}
    375b:	83 c4 10             	add    $0x10,%esp
    375e:	c9                   	leave  
    375f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    3760:	50                   	push   %eax
    3761:	50                   	push   %eax
    3762:	68 0b 59 00 00       	push   $0x590b
    3767:	6a 01                	push   $0x1
    3769:	e8 92 12 00 00       	call   4a00 <printf>
    exit();
    376e:	e8 2f 11 00 00       	call   48a2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    3773:	50                   	push   %eax
    3774:	50                   	push   %eax
    3775:	68 70 62 00 00       	push   $0x6270
    377a:	6a 01                	push   $0x1
    377c:	e8 7f 12 00 00       	call   4a00 <printf>
    exit();
    3781:	e8 1c 11 00 00       	call   48a2 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3786:	52                   	push   %edx
    3787:	52                   	push   %edx
    3788:	68 20 62 00 00       	push   $0x6220
    378d:	6a 01                	push   $0x1
    378f:	e8 6c 12 00 00       	call   4a00 <printf>
    exit();
    3794:	e8 09 11 00 00       	call   48a2 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    3799:	51                   	push   %ecx
    379a:	51                   	push   %ecx
    379b:	68 e4 61 00 00       	push   $0x61e4
    37a0:	6a 01                	push   $0x1
    37a2:	e8 59 12 00 00       	call   4a00 <printf>
    exit();
    37a7:	e8 f6 10 00 00       	call   48a2 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    37ac:	51                   	push   %ecx
    37ad:	51                   	push   %ecx
    37ae:	68 74 61 00 00       	push   $0x6174
    37b3:	6a 01                	push   $0x1
    37b5:	e8 46 12 00 00       	call   4a00 <printf>
    exit();
    37ba:	e8 e3 10 00 00       	call   48a2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    37bf:	50                   	push   %eax
    37c0:	50                   	push   %eax
    37c1:	68 14 61 00 00       	push   $0x6114
    37c6:	6a 01                	push   $0x1
    37c8:	e8 33 12 00 00       	call   4a00 <printf>
    exit();
    37cd:	e8 d0 10 00 00       	call   48a2 <exit>
    37d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    37d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000037e0 <rmdot>:
{
    37e0:	55                   	push   %ebp
    37e1:	89 e5                	mov    %esp,%ebp
    37e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    37e6:	68 53 59 00 00       	push   $0x5953
    37eb:	6a 01                	push   $0x1
    37ed:	e8 0e 12 00 00       	call   4a00 <printf>
  if(mkdir("dots") != 0){
    37f2:	c7 04 24 5f 59 00 00 	movl   $0x595f,(%esp)
    37f9:	e8 0c 11 00 00       	call   490a <mkdir>
    37fe:	83 c4 10             	add    $0x10,%esp
    3801:	85 c0                	test   %eax,%eax
    3803:	0f 85 b0 00 00 00    	jne    38b9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    3809:	83 ec 0c             	sub    $0xc,%esp
    380c:	68 5f 59 00 00       	push   $0x595f
    3811:	e8 fc 10 00 00       	call   4912 <chdir>
    3816:	83 c4 10             	add    $0x10,%esp
    3819:	85 c0                	test   %eax,%eax
    381b:	0f 85 1d 01 00 00    	jne    393e <rmdot+0x15e>
  if(unlink(".") == 0){
    3821:	83 ec 0c             	sub    $0xc,%esp
    3824:	68 0a 56 00 00       	push   $0x560a
    3829:	e8 c4 10 00 00       	call   48f2 <unlink>
    382e:	83 c4 10             	add    $0x10,%esp
    3831:	85 c0                	test   %eax,%eax
    3833:	0f 84 f2 00 00 00    	je     392b <rmdot+0x14b>
  if(unlink("..") == 0){
    3839:	83 ec 0c             	sub    $0xc,%esp
    383c:	68 09 56 00 00       	push   $0x5609
    3841:	e8 ac 10 00 00       	call   48f2 <unlink>
    3846:	83 c4 10             	add    $0x10,%esp
    3849:	85 c0                	test   %eax,%eax
    384b:	0f 84 c7 00 00 00    	je     3918 <rmdot+0x138>
  if(chdir("/") != 0){
    3851:	83 ec 0c             	sub    $0xc,%esp
    3854:	68 dd 4d 00 00       	push   $0x4ddd
    3859:	e8 b4 10 00 00       	call   4912 <chdir>
    385e:	83 c4 10             	add    $0x10,%esp
    3861:	85 c0                	test   %eax,%eax
    3863:	0f 85 9c 00 00 00    	jne    3905 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    3869:	83 ec 0c             	sub    $0xc,%esp
    386c:	68 a7 59 00 00       	push   $0x59a7
    3871:	e8 7c 10 00 00       	call   48f2 <unlink>
    3876:	83 c4 10             	add    $0x10,%esp
    3879:	85 c0                	test   %eax,%eax
    387b:	74 75                	je     38f2 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    387d:	83 ec 0c             	sub    $0xc,%esp
    3880:	68 c5 59 00 00       	push   $0x59c5
    3885:	e8 68 10 00 00       	call   48f2 <unlink>
    388a:	83 c4 10             	add    $0x10,%esp
    388d:	85 c0                	test   %eax,%eax
    388f:	74 4e                	je     38df <rmdot+0xff>
  if(unlink("dots") != 0){
    3891:	83 ec 0c             	sub    $0xc,%esp
    3894:	68 5f 59 00 00       	push   $0x595f
    3899:	e8 54 10 00 00       	call   48f2 <unlink>
    389e:	83 c4 10             	add    $0x10,%esp
    38a1:	85 c0                	test   %eax,%eax
    38a3:	75 27                	jne    38cc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    38a5:	83 ec 08             	sub    $0x8,%esp
    38a8:	68 fa 59 00 00       	push   $0x59fa
    38ad:	6a 01                	push   $0x1
    38af:	e8 4c 11 00 00       	call   4a00 <printf>
}
    38b4:	83 c4 10             	add    $0x10,%esp
    38b7:	c9                   	leave  
    38b8:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    38b9:	50                   	push   %eax
    38ba:	50                   	push   %eax
    38bb:	68 64 59 00 00       	push   $0x5964
    38c0:	6a 01                	push   $0x1
    38c2:	e8 39 11 00 00       	call   4a00 <printf>
    exit();
    38c7:	e8 d6 0f 00 00       	call   48a2 <exit>
    printf(1, "unlink dots failed!\n");
    38cc:	50                   	push   %eax
    38cd:	50                   	push   %eax
    38ce:	68 e5 59 00 00       	push   $0x59e5
    38d3:	6a 01                	push   $0x1
    38d5:	e8 26 11 00 00       	call   4a00 <printf>
    exit();
    38da:	e8 c3 0f 00 00       	call   48a2 <exit>
    printf(1, "unlink dots/.. worked!\n");
    38df:	52                   	push   %edx
    38e0:	52                   	push   %edx
    38e1:	68 cd 59 00 00       	push   $0x59cd
    38e6:	6a 01                	push   $0x1
    38e8:	e8 13 11 00 00       	call   4a00 <printf>
    exit();
    38ed:	e8 b0 0f 00 00       	call   48a2 <exit>
    printf(1, "unlink dots/. worked!\n");
    38f2:	51                   	push   %ecx
    38f3:	51                   	push   %ecx
    38f4:	68 ae 59 00 00       	push   $0x59ae
    38f9:	6a 01                	push   $0x1
    38fb:	e8 00 11 00 00       	call   4a00 <printf>
    exit();
    3900:	e8 9d 0f 00 00       	call   48a2 <exit>
    printf(1, "chdir / failed\n");
    3905:	50                   	push   %eax
    3906:	50                   	push   %eax
    3907:	68 df 4d 00 00       	push   $0x4ddf
    390c:	6a 01                	push   $0x1
    390e:	e8 ed 10 00 00       	call   4a00 <printf>
    exit();
    3913:	e8 8a 0f 00 00       	call   48a2 <exit>
    printf(1, "rm .. worked!\n");
    3918:	50                   	push   %eax
    3919:	50                   	push   %eax
    391a:	68 98 59 00 00       	push   $0x5998
    391f:	6a 01                	push   $0x1
    3921:	e8 da 10 00 00       	call   4a00 <printf>
    exit();
    3926:	e8 77 0f 00 00       	call   48a2 <exit>
    printf(1, "rm . worked!\n");
    392b:	50                   	push   %eax
    392c:	50                   	push   %eax
    392d:	68 8a 59 00 00       	push   $0x598a
    3932:	6a 01                	push   $0x1
    3934:	e8 c7 10 00 00       	call   4a00 <printf>
    exit();
    3939:	e8 64 0f 00 00       	call   48a2 <exit>
    printf(1, "chdir dots failed\n");
    393e:	50                   	push   %eax
    393f:	50                   	push   %eax
    3940:	68 77 59 00 00       	push   $0x5977
    3945:	6a 01                	push   $0x1
    3947:	e8 b4 10 00 00       	call   4a00 <printf>
    exit();
    394c:	e8 51 0f 00 00       	call   48a2 <exit>
    3951:	eb 0d                	jmp    3960 <dirfile>
    3953:	90                   	nop
    3954:	90                   	nop
    3955:	90                   	nop
    3956:	90                   	nop
    3957:	90                   	nop
    3958:	90                   	nop
    3959:	90                   	nop
    395a:	90                   	nop
    395b:	90                   	nop
    395c:	90                   	nop
    395d:	90                   	nop
    395e:	90                   	nop
    395f:	90                   	nop

00003960 <dirfile>:
{
    3960:	55                   	push   %ebp
    3961:	89 e5                	mov    %esp,%ebp
    3963:	53                   	push   %ebx
    3964:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    3967:	68 04 5a 00 00       	push   $0x5a04
    396c:	6a 01                	push   $0x1
    396e:	e8 8d 10 00 00       	call   4a00 <printf>
  fd = open("dirfile", O_CREATE);
    3973:	59                   	pop    %ecx
    3974:	5b                   	pop    %ebx
    3975:	68 00 02 00 00       	push   $0x200
    397a:	68 11 5a 00 00       	push   $0x5a11
    397f:	e8 5e 0f 00 00       	call   48e2 <open>
  if(fd < 0){
    3984:	83 c4 10             	add    $0x10,%esp
    3987:	85 c0                	test   %eax,%eax
    3989:	0f 88 43 01 00 00    	js     3ad2 <dirfile+0x172>
  close(fd);
    398f:	83 ec 0c             	sub    $0xc,%esp
    3992:	50                   	push   %eax
    3993:	e8 32 0f 00 00       	call   48ca <close>
  if(chdir("dirfile") == 0){
    3998:	c7 04 24 11 5a 00 00 	movl   $0x5a11,(%esp)
    399f:	e8 6e 0f 00 00       	call   4912 <chdir>
    39a4:	83 c4 10             	add    $0x10,%esp
    39a7:	85 c0                	test   %eax,%eax
    39a9:	0f 84 10 01 00 00    	je     3abf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    39af:	83 ec 08             	sub    $0x8,%esp
    39b2:	6a 00                	push   $0x0
    39b4:	68 4a 5a 00 00       	push   $0x5a4a
    39b9:	e8 24 0f 00 00       	call   48e2 <open>
  if(fd >= 0){
    39be:	83 c4 10             	add    $0x10,%esp
    39c1:	85 c0                	test   %eax,%eax
    39c3:	0f 89 e3 00 00 00    	jns    3aac <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    39c9:	83 ec 08             	sub    $0x8,%esp
    39cc:	68 00 02 00 00       	push   $0x200
    39d1:	68 4a 5a 00 00       	push   $0x5a4a
    39d6:	e8 07 0f 00 00       	call   48e2 <open>
  if(fd >= 0){
    39db:	83 c4 10             	add    $0x10,%esp
    39de:	85 c0                	test   %eax,%eax
    39e0:	0f 89 c6 00 00 00    	jns    3aac <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    39e6:	83 ec 0c             	sub    $0xc,%esp
    39e9:	68 4a 5a 00 00       	push   $0x5a4a
    39ee:	e8 17 0f 00 00       	call   490a <mkdir>
    39f3:	83 c4 10             	add    $0x10,%esp
    39f6:	85 c0                	test   %eax,%eax
    39f8:	0f 84 46 01 00 00    	je     3b44 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    39fe:	83 ec 0c             	sub    $0xc,%esp
    3a01:	68 4a 5a 00 00       	push   $0x5a4a
    3a06:	e8 e7 0e 00 00       	call   48f2 <unlink>
    3a0b:	83 c4 10             	add    $0x10,%esp
    3a0e:	85 c0                	test   %eax,%eax
    3a10:	0f 84 1b 01 00 00    	je     3b31 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    3a16:	83 ec 08             	sub    $0x8,%esp
    3a19:	68 4a 5a 00 00       	push   $0x5a4a
    3a1e:	68 ae 5a 00 00       	push   $0x5aae
    3a23:	e8 da 0e 00 00       	call   4902 <link>
    3a28:	83 c4 10             	add    $0x10,%esp
    3a2b:	85 c0                	test   %eax,%eax
    3a2d:	0f 84 eb 00 00 00    	je     3b1e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    3a33:	83 ec 0c             	sub    $0xc,%esp
    3a36:	68 11 5a 00 00       	push   $0x5a11
    3a3b:	e8 b2 0e 00 00       	call   48f2 <unlink>
    3a40:	83 c4 10             	add    $0x10,%esp
    3a43:	85 c0                	test   %eax,%eax
    3a45:	0f 85 c0 00 00 00    	jne    3b0b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    3a4b:	83 ec 08             	sub    $0x8,%esp
    3a4e:	6a 02                	push   $0x2
    3a50:	68 0a 56 00 00       	push   $0x560a
    3a55:	e8 88 0e 00 00       	call   48e2 <open>
  if(fd >= 0){
    3a5a:	83 c4 10             	add    $0x10,%esp
    3a5d:	85 c0                	test   %eax,%eax
    3a5f:	0f 89 93 00 00 00    	jns    3af8 <dirfile+0x198>
  fd = open(".", 0);
    3a65:	83 ec 08             	sub    $0x8,%esp
    3a68:	6a 00                	push   $0x0
    3a6a:	68 0a 56 00 00       	push   $0x560a
    3a6f:	e8 6e 0e 00 00       	call   48e2 <open>
  if(write(fd, "x", 1) > 0){
    3a74:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    3a77:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3a79:	6a 01                	push   $0x1
    3a7b:	68 ed 56 00 00       	push   $0x56ed
    3a80:	50                   	push   %eax
    3a81:	e8 3c 0e 00 00       	call   48c2 <write>
    3a86:	83 c4 10             	add    $0x10,%esp
    3a89:	85 c0                	test   %eax,%eax
    3a8b:	7f 58                	jg     3ae5 <dirfile+0x185>
  close(fd);
    3a8d:	83 ec 0c             	sub    $0xc,%esp
    3a90:	53                   	push   %ebx
    3a91:	e8 34 0e 00 00       	call   48ca <close>
  printf(1, "dir vs file OK\n");
    3a96:	58                   	pop    %eax
    3a97:	5a                   	pop    %edx
    3a98:	68 e1 5a 00 00       	push   $0x5ae1
    3a9d:	6a 01                	push   $0x1
    3a9f:	e8 5c 0f 00 00       	call   4a00 <printf>
}
    3aa4:	83 c4 10             	add    $0x10,%esp
    3aa7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3aaa:	c9                   	leave  
    3aab:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3aac:	50                   	push   %eax
    3aad:	50                   	push   %eax
    3aae:	68 55 5a 00 00       	push   $0x5a55
    3ab3:	6a 01                	push   $0x1
    3ab5:	e8 46 0f 00 00       	call   4a00 <printf>
    exit();
    3aba:	e8 e3 0d 00 00       	call   48a2 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    3abf:	50                   	push   %eax
    3ac0:	50                   	push   %eax
    3ac1:	68 30 5a 00 00       	push   $0x5a30
    3ac6:	6a 01                	push   $0x1
    3ac8:	e8 33 0f 00 00       	call   4a00 <printf>
    exit();
    3acd:	e8 d0 0d 00 00       	call   48a2 <exit>
    printf(1, "create dirfile failed\n");
    3ad2:	52                   	push   %edx
    3ad3:	52                   	push   %edx
    3ad4:	68 19 5a 00 00       	push   $0x5a19
    3ad9:	6a 01                	push   $0x1
    3adb:	e8 20 0f 00 00       	call   4a00 <printf>
    exit();
    3ae0:	e8 bd 0d 00 00       	call   48a2 <exit>
    printf(1, "write . succeeded!\n");
    3ae5:	51                   	push   %ecx
    3ae6:	51                   	push   %ecx
    3ae7:	68 cd 5a 00 00       	push   $0x5acd
    3aec:	6a 01                	push   $0x1
    3aee:	e8 0d 0f 00 00       	call   4a00 <printf>
    exit();
    3af3:	e8 aa 0d 00 00       	call   48a2 <exit>
    printf(1, "open . for writing succeeded!\n");
    3af8:	53                   	push   %ebx
    3af9:	53                   	push   %ebx
    3afa:	68 c4 62 00 00       	push   $0x62c4
    3aff:	6a 01                	push   $0x1
    3b01:	e8 fa 0e 00 00       	call   4a00 <printf>
    exit();
    3b06:	e8 97 0d 00 00       	call   48a2 <exit>
    printf(1, "unlink dirfile failed!\n");
    3b0b:	50                   	push   %eax
    3b0c:	50                   	push   %eax
    3b0d:	68 b5 5a 00 00       	push   $0x5ab5
    3b12:	6a 01                	push   $0x1
    3b14:	e8 e7 0e 00 00       	call   4a00 <printf>
    exit();
    3b19:	e8 84 0d 00 00       	call   48a2 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3b1e:	50                   	push   %eax
    3b1f:	50                   	push   %eax
    3b20:	68 a4 62 00 00       	push   $0x62a4
    3b25:	6a 01                	push   $0x1
    3b27:	e8 d4 0e 00 00       	call   4a00 <printf>
    exit();
    3b2c:	e8 71 0d 00 00       	call   48a2 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3b31:	50                   	push   %eax
    3b32:	50                   	push   %eax
    3b33:	68 90 5a 00 00       	push   $0x5a90
    3b38:	6a 01                	push   $0x1
    3b3a:	e8 c1 0e 00 00       	call   4a00 <printf>
    exit();
    3b3f:	e8 5e 0d 00 00       	call   48a2 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3b44:	50                   	push   %eax
    3b45:	50                   	push   %eax
    3b46:	68 73 5a 00 00       	push   $0x5a73
    3b4b:	6a 01                	push   $0x1
    3b4d:	e8 ae 0e 00 00       	call   4a00 <printf>
    exit();
    3b52:	e8 4b 0d 00 00       	call   48a2 <exit>
    3b57:	89 f6                	mov    %esi,%esi
    3b59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003b60 <iref>:
{
    3b60:	55                   	push   %ebp
    3b61:	89 e5                	mov    %esp,%ebp
    3b63:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3b64:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3b69:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    3b6c:	68 f1 5a 00 00       	push   $0x5af1
    3b71:	6a 01                	push   $0x1
    3b73:	e8 88 0e 00 00       	call   4a00 <printf>
    3b78:	83 c4 10             	add    $0x10,%esp
    3b7b:	90                   	nop
    3b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    3b80:	83 ec 0c             	sub    $0xc,%esp
    3b83:	68 02 5b 00 00       	push   $0x5b02
    3b88:	e8 7d 0d 00 00       	call   490a <mkdir>
    3b8d:	83 c4 10             	add    $0x10,%esp
    3b90:	85 c0                	test   %eax,%eax
    3b92:	0f 85 bb 00 00 00    	jne    3c53 <iref+0xf3>
    if(chdir("irefd") != 0){
    3b98:	83 ec 0c             	sub    $0xc,%esp
    3b9b:	68 02 5b 00 00       	push   $0x5b02
    3ba0:	e8 6d 0d 00 00       	call   4912 <chdir>
    3ba5:	83 c4 10             	add    $0x10,%esp
    3ba8:	85 c0                	test   %eax,%eax
    3baa:	0f 85 b7 00 00 00    	jne    3c67 <iref+0x107>
    mkdir("");
    3bb0:	83 ec 0c             	sub    $0xc,%esp
    3bb3:	68 b7 51 00 00       	push   $0x51b7
    3bb8:	e8 4d 0d 00 00       	call   490a <mkdir>
    link("README", "");
    3bbd:	59                   	pop    %ecx
    3bbe:	58                   	pop    %eax
    3bbf:	68 b7 51 00 00       	push   $0x51b7
    3bc4:	68 ae 5a 00 00       	push   $0x5aae
    3bc9:	e8 34 0d 00 00       	call   4902 <link>
    fd = open("", O_CREATE);
    3bce:	58                   	pop    %eax
    3bcf:	5a                   	pop    %edx
    3bd0:	68 00 02 00 00       	push   $0x200
    3bd5:	68 b7 51 00 00       	push   $0x51b7
    3bda:	e8 03 0d 00 00       	call   48e2 <open>
    if(fd >= 0)
    3bdf:	83 c4 10             	add    $0x10,%esp
    3be2:	85 c0                	test   %eax,%eax
    3be4:	78 0c                	js     3bf2 <iref+0x92>
      close(fd);
    3be6:	83 ec 0c             	sub    $0xc,%esp
    3be9:	50                   	push   %eax
    3bea:	e8 db 0c 00 00       	call   48ca <close>
    3bef:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    3bf2:	83 ec 08             	sub    $0x8,%esp
    3bf5:	68 00 02 00 00       	push   $0x200
    3bfa:	68 ec 56 00 00       	push   $0x56ec
    3bff:	e8 de 0c 00 00       	call   48e2 <open>
    if(fd >= 0)
    3c04:	83 c4 10             	add    $0x10,%esp
    3c07:	85 c0                	test   %eax,%eax
    3c09:	78 0c                	js     3c17 <iref+0xb7>
      close(fd);
    3c0b:	83 ec 0c             	sub    $0xc,%esp
    3c0e:	50                   	push   %eax
    3c0f:	e8 b6 0c 00 00       	call   48ca <close>
    3c14:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    3c17:	83 ec 0c             	sub    $0xc,%esp
    3c1a:	68 ec 56 00 00       	push   $0x56ec
    3c1f:	e8 ce 0c 00 00       	call   48f2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    3c24:	83 c4 10             	add    $0x10,%esp
    3c27:	83 eb 01             	sub    $0x1,%ebx
    3c2a:	0f 85 50 ff ff ff    	jne    3b80 <iref+0x20>
  chdir("/");
    3c30:	83 ec 0c             	sub    $0xc,%esp
    3c33:	68 dd 4d 00 00       	push   $0x4ddd
    3c38:	e8 d5 0c 00 00       	call   4912 <chdir>
  printf(1, "empty file name OK\n");
    3c3d:	58                   	pop    %eax
    3c3e:	5a                   	pop    %edx
    3c3f:	68 30 5b 00 00       	push   $0x5b30
    3c44:	6a 01                	push   $0x1
    3c46:	e8 b5 0d 00 00       	call   4a00 <printf>
}
    3c4b:	83 c4 10             	add    $0x10,%esp
    3c4e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3c51:	c9                   	leave  
    3c52:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3c53:	83 ec 08             	sub    $0x8,%esp
    3c56:	68 08 5b 00 00       	push   $0x5b08
    3c5b:	6a 01                	push   $0x1
    3c5d:	e8 9e 0d 00 00       	call   4a00 <printf>
      exit();
    3c62:	e8 3b 0c 00 00       	call   48a2 <exit>
      printf(1, "chdir irefd failed\n");
    3c67:	83 ec 08             	sub    $0x8,%esp
    3c6a:	68 1c 5b 00 00       	push   $0x5b1c
    3c6f:	6a 01                	push   $0x1
    3c71:	e8 8a 0d 00 00       	call   4a00 <printf>
      exit();
    3c76:	e8 27 0c 00 00       	call   48a2 <exit>
    3c7b:	90                   	nop
    3c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003c80 <forktest>:
{
    3c80:	55                   	push   %ebp
    3c81:	89 e5                	mov    %esp,%ebp
    3c83:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3c84:	31 db                	xor    %ebx,%ebx
{
    3c86:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    3c89:	68 44 5b 00 00       	push   $0x5b44
    3c8e:	6a 01                	push   $0x1
    3c90:	e8 6b 0d 00 00       	call   4a00 <printf>
    3c95:	83 c4 10             	add    $0x10,%esp
    3c98:	eb 13                	jmp    3cad <forktest+0x2d>
    3c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    3ca0:	74 62                	je     3d04 <forktest+0x84>
  for(n=0; n<1000; n++){
    3ca2:	83 c3 01             	add    $0x1,%ebx
    3ca5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3cab:	74 43                	je     3cf0 <forktest+0x70>
    pid = fork();
    3cad:	e8 e8 0b 00 00       	call   489a <fork>
    if(pid < 0)
    3cb2:	85 c0                	test   %eax,%eax
    3cb4:	79 ea                	jns    3ca0 <forktest+0x20>
  for(; n > 0; n--){
    3cb6:	85 db                	test   %ebx,%ebx
    3cb8:	74 14                	je     3cce <forktest+0x4e>
    3cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    3cc0:	e8 e5 0b 00 00       	call   48aa <wait>
    3cc5:	85 c0                	test   %eax,%eax
    3cc7:	78 40                	js     3d09 <forktest+0x89>
  for(; n > 0; n--){
    3cc9:	83 eb 01             	sub    $0x1,%ebx
    3ccc:	75 f2                	jne    3cc0 <forktest+0x40>
  if(wait() != -1){
    3cce:	e8 d7 0b 00 00       	call   48aa <wait>
    3cd3:	83 f8 ff             	cmp    $0xffffffff,%eax
    3cd6:	75 45                	jne    3d1d <forktest+0x9d>
  printf(1, "fork test OK\n");
    3cd8:	83 ec 08             	sub    $0x8,%esp
    3cdb:	68 76 5b 00 00       	push   $0x5b76
    3ce0:	6a 01                	push   $0x1
    3ce2:	e8 19 0d 00 00       	call   4a00 <printf>
}
    3ce7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3cea:	c9                   	leave  
    3ceb:	c3                   	ret    
    3cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fork claimed to work 1000 times!\n");
    3cf0:	83 ec 08             	sub    $0x8,%esp
    3cf3:	68 e4 62 00 00       	push   $0x62e4
    3cf8:	6a 01                	push   $0x1
    3cfa:	e8 01 0d 00 00       	call   4a00 <printf>
    exit();
    3cff:	e8 9e 0b 00 00       	call   48a2 <exit>
      exit();
    3d04:	e8 99 0b 00 00       	call   48a2 <exit>
      printf(1, "wait stopped early\n");
    3d09:	83 ec 08             	sub    $0x8,%esp
    3d0c:	68 4f 5b 00 00       	push   $0x5b4f
    3d11:	6a 01                	push   $0x1
    3d13:	e8 e8 0c 00 00       	call   4a00 <printf>
      exit();
    3d18:	e8 85 0b 00 00       	call   48a2 <exit>
    printf(1, "wait got too many\n");
    3d1d:	50                   	push   %eax
    3d1e:	50                   	push   %eax
    3d1f:	68 63 5b 00 00       	push   $0x5b63
    3d24:	6a 01                	push   $0x1
    3d26:	e8 d5 0c 00 00       	call   4a00 <printf>
    exit();
    3d2b:	e8 72 0b 00 00       	call   48a2 <exit>

00003d30 <sbrktest>:
{
    3d30:	55                   	push   %ebp
    3d31:	89 e5                	mov    %esp,%ebp
    3d33:	57                   	push   %edi
    3d34:	56                   	push   %esi
    3d35:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    3d36:	31 ff                	xor    %edi,%edi
{
    3d38:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    3d3b:	68 84 5b 00 00       	push   $0x5b84
    3d40:	ff 35 84 6e 00 00    	pushl  0x6e84
    3d46:	e8 b5 0c 00 00       	call   4a00 <printf>
  oldbrk = sbrk(0);
    3d4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d52:	e8 d3 0b 00 00       	call   492a <sbrk>
  a = sbrk(0);
    3d57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3d5e:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    3d60:	e8 c5 0b 00 00       	call   492a <sbrk>
    3d65:	83 c4 10             	add    $0x10,%esp
    3d68:	89 c6                	mov    %eax,%esi
    3d6a:	eb 06                	jmp    3d72 <sbrktest+0x42>
    3d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    a = b + 1;
    3d70:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    3d72:	83 ec 0c             	sub    $0xc,%esp
    3d75:	6a 01                	push   $0x1
    3d77:	e8 ae 0b 00 00       	call   492a <sbrk>
    if(b != a){
    3d7c:	83 c4 10             	add    $0x10,%esp
    3d7f:	39 f0                	cmp    %esi,%eax
    3d81:	0f 85 62 02 00 00    	jne    3fe9 <sbrktest+0x2b9>
  for(i = 0; i < 5000; i++){
    3d87:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    3d8a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    3d8d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    3d90:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3d96:	75 d8                	jne    3d70 <sbrktest+0x40>
  pid = fork();
    3d98:	e8 fd 0a 00 00       	call   489a <fork>
  if(pid < 0){
    3d9d:	85 c0                	test   %eax,%eax
  pid = fork();
    3d9f:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    3da1:	0f 88 82 03 00 00    	js     4129 <sbrktest+0x3f9>
  c = sbrk(1);
    3da7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    3daa:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    3dad:	6a 01                	push   $0x1
    3daf:	e8 76 0b 00 00       	call   492a <sbrk>
  c = sbrk(1);
    3db4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3dbb:	e8 6a 0b 00 00       	call   492a <sbrk>
  if(c != a + 1){
    3dc0:	83 c4 10             	add    $0x10,%esp
    3dc3:	39 f0                	cmp    %esi,%eax
    3dc5:	0f 85 47 03 00 00    	jne    4112 <sbrktest+0x3e2>
  if(pid == 0)
    3dcb:	85 ff                	test   %edi,%edi
    3dcd:	0f 84 3a 03 00 00    	je     410d <sbrktest+0x3dd>
  wait();
    3dd3:	e8 d2 0a 00 00       	call   48aa <wait>
  a = sbrk(0);
    3dd8:	83 ec 0c             	sub    $0xc,%esp
    3ddb:	6a 00                	push   $0x0
    3ddd:	e8 48 0b 00 00       	call   492a <sbrk>
    3de2:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    3de4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3de9:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    3deb:	89 04 24             	mov    %eax,(%esp)
    3dee:	e8 37 0b 00 00       	call   492a <sbrk>
  if (p != a) {
    3df3:	83 c4 10             	add    $0x10,%esp
    3df6:	39 c6                	cmp    %eax,%esi
    3df8:	0f 85 f8 02 00 00    	jne    40f6 <sbrktest+0x3c6>
  a = sbrk(0);
    3dfe:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    3e01:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3e08:	6a 00                	push   $0x0
    3e0a:	e8 1b 0b 00 00       	call   492a <sbrk>
  c = sbrk(-4096);
    3e0f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3e16:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    3e18:	e8 0d 0b 00 00       	call   492a <sbrk>
  if(c == (char*)0xffffffff){
    3e1d:	83 c4 10             	add    $0x10,%esp
    3e20:	83 f8 ff             	cmp    $0xffffffff,%eax
    3e23:	0f 84 b6 02 00 00    	je     40df <sbrktest+0x3af>
  c = sbrk(0);
    3e29:	83 ec 0c             	sub    $0xc,%esp
    3e2c:	6a 00                	push   $0x0
    3e2e:	e8 f7 0a 00 00       	call   492a <sbrk>
  if(c != a - 4096){
    3e33:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3e39:	83 c4 10             	add    $0x10,%esp
    3e3c:	39 d0                	cmp    %edx,%eax
    3e3e:	0f 85 84 02 00 00    	jne    40c8 <sbrktest+0x398>
  a = sbrk(0);
    3e44:	83 ec 0c             	sub    $0xc,%esp
    3e47:	6a 00                	push   $0x0
    3e49:	e8 dc 0a 00 00       	call   492a <sbrk>
    3e4e:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3e50:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3e57:	e8 ce 0a 00 00       	call   492a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3e5c:	83 c4 10             	add    $0x10,%esp
    3e5f:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    3e61:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3e63:	0f 85 48 02 00 00    	jne    40b1 <sbrktest+0x381>
    3e69:	83 ec 0c             	sub    $0xc,%esp
    3e6c:	6a 00                	push   $0x0
    3e6e:	e8 b7 0a 00 00       	call   492a <sbrk>
    3e73:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3e79:	83 c4 10             	add    $0x10,%esp
    3e7c:	39 d0                	cmp    %edx,%eax
    3e7e:	0f 85 2d 02 00 00    	jne    40b1 <sbrktest+0x381>
  if(*lastaddr == 99){
    3e84:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3e8b:	0f 84 09 02 00 00    	je     409a <sbrktest+0x36a>
  a = sbrk(0);
    3e91:	83 ec 0c             	sub    $0xc,%esp
    3e94:	6a 00                	push   $0x0
    3e96:	e8 8f 0a 00 00       	call   492a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3e9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3ea2:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    3ea4:	e8 81 0a 00 00       	call   492a <sbrk>
    3ea9:	89 d9                	mov    %ebx,%ecx
    3eab:	29 c1                	sub    %eax,%ecx
    3ead:	89 0c 24             	mov    %ecx,(%esp)
    3eb0:	e8 75 0a 00 00       	call   492a <sbrk>
  if(c != a){
    3eb5:	83 c4 10             	add    $0x10,%esp
    3eb8:	39 c6                	cmp    %eax,%esi
    3eba:	0f 85 c3 01 00 00    	jne    4083 <sbrktest+0x353>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3ec0:	be 00 00 00 80       	mov    $0x80000000,%esi
    ppid = getpid();
    3ec5:	e8 58 0a 00 00       	call   4922 <getpid>
    3eca:	89 c7                	mov    %eax,%edi
    pid = fork();
    3ecc:	e8 c9 09 00 00       	call   489a <fork>
    if(pid < 0){
    3ed1:	85 c0                	test   %eax,%eax
    3ed3:	0f 88 93 01 00 00    	js     406c <sbrktest+0x33c>
    if(pid == 0){
    3ed9:	0f 84 6b 01 00 00    	je     404a <sbrktest+0x31a>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3edf:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait();
    3ee5:	e8 c0 09 00 00       	call   48aa <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3eea:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    3ef0:	75 d3                	jne    3ec5 <sbrktest+0x195>
  if(pipe(fds) != 0){
    3ef2:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3ef5:	83 ec 0c             	sub    $0xc,%esp
    3ef8:	50                   	push   %eax
    3ef9:	e8 b4 09 00 00       	call   48b2 <pipe>
    3efe:	83 c4 10             	add    $0x10,%esp
    3f01:	85 c0                	test   %eax,%eax
    3f03:	0f 85 2e 01 00 00    	jne    4037 <sbrktest+0x307>
    3f09:	8d 7d c0             	lea    -0x40(%ebp),%edi
    3f0c:	89 fe                	mov    %edi,%esi
    3f0e:	eb 23                	jmp    3f33 <sbrktest+0x203>
    if(pids[i] != -1)
    3f10:	83 f8 ff             	cmp    $0xffffffff,%eax
    3f13:	74 14                	je     3f29 <sbrktest+0x1f9>
      read(fds[0], &scratch, 1);
    3f15:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3f18:	83 ec 04             	sub    $0x4,%esp
    3f1b:	6a 01                	push   $0x1
    3f1d:	50                   	push   %eax
    3f1e:	ff 75 b8             	pushl  -0x48(%ebp)
    3f21:	e8 94 09 00 00       	call   48ba <read>
    3f26:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3f29:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3f2c:	83 c6 04             	add    $0x4,%esi
    3f2f:	39 c6                	cmp    %eax,%esi
    3f31:	74 4f                	je     3f82 <sbrktest+0x252>
    if((pids[i] = fork()) == 0){
    3f33:	e8 62 09 00 00       	call   489a <fork>
    3f38:	85 c0                	test   %eax,%eax
    3f3a:	89 06                	mov    %eax,(%esi)
    3f3c:	75 d2                	jne    3f10 <sbrktest+0x1e0>
      sbrk(BIG - (uint)sbrk(0));
    3f3e:	83 ec 0c             	sub    $0xc,%esp
    3f41:	6a 00                	push   $0x0
    3f43:	e8 e2 09 00 00       	call   492a <sbrk>
    3f48:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3f4d:	29 c2                	sub    %eax,%edx
    3f4f:	89 14 24             	mov    %edx,(%esp)
    3f52:	e8 d3 09 00 00       	call   492a <sbrk>
      write(fds[1], "x", 1);
    3f57:	83 c4 0c             	add    $0xc,%esp
    3f5a:	6a 01                	push   $0x1
    3f5c:	68 ed 56 00 00       	push   $0x56ed
    3f61:	ff 75 bc             	pushl  -0x44(%ebp)
    3f64:	e8 59 09 00 00       	call   48c2 <write>
    3f69:	83 c4 10             	add    $0x10,%esp
    3f6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3f70:	83 ec 0c             	sub    $0xc,%esp
    3f73:	68 e8 03 00 00       	push   $0x3e8
    3f78:	e8 b5 09 00 00       	call   4932 <sleep>
    3f7d:	83 c4 10             	add    $0x10,%esp
    3f80:	eb ee                	jmp    3f70 <sbrktest+0x240>
  c = sbrk(4096);
    3f82:	83 ec 0c             	sub    $0xc,%esp
    3f85:	68 00 10 00 00       	push   $0x1000
    3f8a:	e8 9b 09 00 00       	call   492a <sbrk>
    3f8f:	83 c4 10             	add    $0x10,%esp
    3f92:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    if(pids[i] == -1)
    3f95:	8b 07                	mov    (%edi),%eax
    3f97:	83 f8 ff             	cmp    $0xffffffff,%eax
    3f9a:	74 11                	je     3fad <sbrktest+0x27d>
    kill(pids[i]);
    3f9c:	83 ec 0c             	sub    $0xc,%esp
    3f9f:	50                   	push   %eax
    3fa0:	e8 2d 09 00 00       	call   48d2 <kill>
    wait();
    3fa5:	e8 00 09 00 00       	call   48aa <wait>
    3faa:	83 c4 10             	add    $0x10,%esp
    3fad:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3fb0:	39 fe                	cmp    %edi,%esi
    3fb2:	75 e1                	jne    3f95 <sbrktest+0x265>
  if(c == (char*)0xffffffff){
    3fb4:	83 7d a4 ff          	cmpl   $0xffffffff,-0x5c(%ebp)
    3fb8:	74 66                	je     4020 <sbrktest+0x2f0>
  if(sbrk(0) > oldbrk)
    3fba:	83 ec 0c             	sub    $0xc,%esp
    3fbd:	6a 00                	push   $0x0
    3fbf:	e8 66 09 00 00       	call   492a <sbrk>
    3fc4:	83 c4 10             	add    $0x10,%esp
    3fc7:	39 d8                	cmp    %ebx,%eax
    3fc9:	77 3c                	ja     4007 <sbrktest+0x2d7>
  printf(stdout, "sbrk test OK\n");
    3fcb:	83 ec 08             	sub    $0x8,%esp
    3fce:	68 2c 5c 00 00       	push   $0x5c2c
    3fd3:	ff 35 84 6e 00 00    	pushl  0x6e84
    3fd9:	e8 22 0a 00 00       	call   4a00 <printf>
}
    3fde:	83 c4 10             	add    $0x10,%esp
    3fe1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3fe4:	5b                   	pop    %ebx
    3fe5:	5e                   	pop    %esi
    3fe6:	5f                   	pop    %edi
    3fe7:	5d                   	pop    %ebp
    3fe8:	c3                   	ret    
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3fe9:	83 ec 0c             	sub    $0xc,%esp
    3fec:	50                   	push   %eax
    3fed:	56                   	push   %esi
    3fee:	57                   	push   %edi
    3fef:	68 8f 5b 00 00       	push   $0x5b8f
    3ff4:	ff 35 84 6e 00 00    	pushl  0x6e84
    3ffa:	e8 01 0a 00 00       	call   4a00 <printf>
      exit();
    3fff:	83 c4 20             	add    $0x20,%esp
    4002:	e8 9b 08 00 00       	call   48a2 <exit>
    sbrk(-(sbrk(0) - oldbrk));
    4007:	83 ec 0c             	sub    $0xc,%esp
    400a:	6a 00                	push   $0x0
    400c:	e8 19 09 00 00       	call   492a <sbrk>
    4011:	29 c3                	sub    %eax,%ebx
    4013:	89 1c 24             	mov    %ebx,(%esp)
    4016:	e8 0f 09 00 00       	call   492a <sbrk>
    401b:	83 c4 10             	add    $0x10,%esp
    401e:	eb ab                	jmp    3fcb <sbrktest+0x29b>
    printf(stdout, "failed sbrk leaked memory\n");
    4020:	50                   	push   %eax
    4021:	50                   	push   %eax
    4022:	68 11 5c 00 00       	push   $0x5c11
    4027:	ff 35 84 6e 00 00    	pushl  0x6e84
    402d:	e8 ce 09 00 00       	call   4a00 <printf>
    exit();
    4032:	e8 6b 08 00 00       	call   48a2 <exit>
    printf(1, "pipe() failed\n");
    4037:	52                   	push   %edx
    4038:	52                   	push   %edx
    4039:	68 cd 50 00 00       	push   $0x50cd
    403e:	6a 01                	push   $0x1
    4040:	e8 bb 09 00 00       	call   4a00 <printf>
    exit();
    4045:	e8 58 08 00 00       	call   48a2 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    404a:	0f be 06             	movsbl (%esi),%eax
    404d:	50                   	push   %eax
    404e:	56                   	push   %esi
    404f:	68 f8 5b 00 00       	push   $0x5bf8
    4054:	ff 35 84 6e 00 00    	pushl  0x6e84
    405a:	e8 a1 09 00 00       	call   4a00 <printf>
      kill(ppid);
    405f:	89 3c 24             	mov    %edi,(%esp)
    4062:	e8 6b 08 00 00       	call   48d2 <kill>
      exit();
    4067:	e8 36 08 00 00       	call   48a2 <exit>
      printf(stdout, "fork failed\n");
    406c:	51                   	push   %ecx
    406d:	51                   	push   %ecx
    406e:	68 d5 5c 00 00       	push   $0x5cd5
    4073:	ff 35 84 6e 00 00    	pushl  0x6e84
    4079:	e8 82 09 00 00       	call   4a00 <printf>
      exit();
    407e:	e8 1f 08 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    4083:	50                   	push   %eax
    4084:	56                   	push   %esi
    4085:	68 d8 63 00 00       	push   $0x63d8
    408a:	ff 35 84 6e 00 00    	pushl  0x6e84
    4090:	e8 6b 09 00 00       	call   4a00 <printf>
    exit();
    4095:	e8 08 08 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    409a:	53                   	push   %ebx
    409b:	53                   	push   %ebx
    409c:	68 a8 63 00 00       	push   $0x63a8
    40a1:	ff 35 84 6e 00 00    	pushl  0x6e84
    40a7:	e8 54 09 00 00       	call   4a00 <printf>
    exit();
    40ac:	e8 f1 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    40b1:	57                   	push   %edi
    40b2:	56                   	push   %esi
    40b3:	68 80 63 00 00       	push   $0x6380
    40b8:	ff 35 84 6e 00 00    	pushl  0x6e84
    40be:	e8 3d 09 00 00       	call   4a00 <printf>
    exit();
    40c3:	e8 da 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    40c8:	50                   	push   %eax
    40c9:	56                   	push   %esi
    40ca:	68 48 63 00 00       	push   $0x6348
    40cf:	ff 35 84 6e 00 00    	pushl  0x6e84
    40d5:	e8 26 09 00 00       	call   4a00 <printf>
    exit();
    40da:	e8 c3 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    40df:	56                   	push   %esi
    40e0:	56                   	push   %esi
    40e1:	68 dd 5b 00 00       	push   $0x5bdd
    40e6:	ff 35 84 6e 00 00    	pushl  0x6e84
    40ec:	e8 0f 09 00 00       	call   4a00 <printf>
    exit();
    40f1:	e8 ac 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    40f6:	57                   	push   %edi
    40f7:	57                   	push   %edi
    40f8:	68 08 63 00 00       	push   $0x6308
    40fd:	ff 35 84 6e 00 00    	pushl  0x6e84
    4103:	e8 f8 08 00 00       	call   4a00 <printf>
    exit();
    4108:	e8 95 07 00 00       	call   48a2 <exit>
    exit();
    410d:	e8 90 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    4112:	50                   	push   %eax
    4113:	50                   	push   %eax
    4114:	68 c1 5b 00 00       	push   $0x5bc1
    4119:	ff 35 84 6e 00 00    	pushl  0x6e84
    411f:	e8 dc 08 00 00       	call   4a00 <printf>
    exit();
    4124:	e8 79 07 00 00       	call   48a2 <exit>
    printf(stdout, "sbrk test fork failed\n");
    4129:	50                   	push   %eax
    412a:	50                   	push   %eax
    412b:	68 aa 5b 00 00       	push   $0x5baa
    4130:	ff 35 84 6e 00 00    	pushl  0x6e84
    4136:	e8 c5 08 00 00       	call   4a00 <printf>
    exit();
    413b:	e8 62 07 00 00       	call   48a2 <exit>

00004140 <validateint>:
{
    4140:	55                   	push   %ebp
    4141:	89 e5                	mov    %esp,%ebp
}
    4143:	5d                   	pop    %ebp
    4144:	c3                   	ret    
    4145:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004150 <validatetest>:
{
    4150:	55                   	push   %ebp
    4151:	89 e5                	mov    %esp,%ebp
    4153:	56                   	push   %esi
    4154:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    4155:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    4157:	83 ec 08             	sub    $0x8,%esp
    415a:	68 3a 5c 00 00       	push   $0x5c3a
    415f:	ff 35 84 6e 00 00    	pushl  0x6e84
    4165:	e8 96 08 00 00       	call   4a00 <printf>
    416a:	83 c4 10             	add    $0x10,%esp
    416d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    4170:	e8 25 07 00 00       	call   489a <fork>
    4175:	85 c0                	test   %eax,%eax
    4177:	89 c6                	mov    %eax,%esi
    4179:	74 63                	je     41de <validatetest+0x8e>
    sleep(0);
    417b:	83 ec 0c             	sub    $0xc,%esp
    417e:	6a 00                	push   $0x0
    4180:	e8 ad 07 00 00       	call   4932 <sleep>
    sleep(0);
    4185:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    418c:	e8 a1 07 00 00       	call   4932 <sleep>
    kill(pid);
    4191:	89 34 24             	mov    %esi,(%esp)
    4194:	e8 39 07 00 00       	call   48d2 <kill>
    wait();
    4199:	e8 0c 07 00 00       	call   48aa <wait>
    if(link("nosuchfile", (char*)p) != -1){
    419e:	58                   	pop    %eax
    419f:	5a                   	pop    %edx
    41a0:	53                   	push   %ebx
    41a1:	68 49 5c 00 00       	push   $0x5c49
    41a6:	e8 57 07 00 00       	call   4902 <link>
    41ab:	83 c4 10             	add    $0x10,%esp
    41ae:	83 f8 ff             	cmp    $0xffffffff,%eax
    41b1:	75 30                	jne    41e3 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    41b3:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    41b9:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    41bf:	75 af                	jne    4170 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    41c1:	83 ec 08             	sub    $0x8,%esp
    41c4:	68 6d 5c 00 00       	push   $0x5c6d
    41c9:	ff 35 84 6e 00 00    	pushl  0x6e84
    41cf:	e8 2c 08 00 00       	call   4a00 <printf>
}
    41d4:	83 c4 10             	add    $0x10,%esp
    41d7:	8d 65 f8             	lea    -0x8(%ebp),%esp
    41da:	5b                   	pop    %ebx
    41db:	5e                   	pop    %esi
    41dc:	5d                   	pop    %ebp
    41dd:	c3                   	ret    
      exit();
    41de:	e8 bf 06 00 00       	call   48a2 <exit>
      printf(stdout, "link should not succeed\n");
    41e3:	83 ec 08             	sub    $0x8,%esp
    41e6:	68 54 5c 00 00       	push   $0x5c54
    41eb:	ff 35 84 6e 00 00    	pushl  0x6e84
    41f1:	e8 0a 08 00 00       	call   4a00 <printf>
      exit();
    41f6:	e8 a7 06 00 00       	call   48a2 <exit>
    41fb:	90                   	nop
    41fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004200 <bsstest>:
{
    4200:	55                   	push   %ebp
    4201:	89 e5                	mov    %esp,%ebp
    4203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    4206:	68 7a 5c 00 00       	push   $0x5c7a
    420b:	ff 35 84 6e 00 00    	pushl  0x6e84
    4211:	e8 ea 07 00 00       	call   4a00 <printf>
    if(uninit[i] != '\0'){
    4216:	83 c4 10             	add    $0x10,%esp
    4219:	80 3d 40 6f 00 00 00 	cmpb   $0x0,0x6f40
    4220:	75 39                	jne    425b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    4222:	b8 01 00 00 00       	mov    $0x1,%eax
    4227:	89 f6                	mov    %esi,%esi
    4229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(uninit[i] != '\0'){
    4230:	80 b8 40 6f 00 00 00 	cmpb   $0x0,0x6f40(%eax)
    4237:	75 22                	jne    425b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    4239:	83 c0 01             	add    $0x1,%eax
    423c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    4241:	75 ed                	jne    4230 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    4243:	83 ec 08             	sub    $0x8,%esp
    4246:	68 95 5c 00 00       	push   $0x5c95
    424b:	ff 35 84 6e 00 00    	pushl  0x6e84
    4251:	e8 aa 07 00 00       	call   4a00 <printf>
}
    4256:	83 c4 10             	add    $0x10,%esp
    4259:	c9                   	leave  
    425a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    425b:	83 ec 08             	sub    $0x8,%esp
    425e:	68 84 5c 00 00       	push   $0x5c84
    4263:	ff 35 84 6e 00 00    	pushl  0x6e84
    4269:	e8 92 07 00 00       	call   4a00 <printf>
      exit();
    426e:	e8 2f 06 00 00       	call   48a2 <exit>
    4273:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004280 <bigargtest>:
{
    4280:	55                   	push   %ebp
    4281:	89 e5                	mov    %esp,%ebp
    4283:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    4286:	68 a2 5c 00 00       	push   $0x5ca2
    428b:	e8 62 06 00 00       	call   48f2 <unlink>
  pid = fork();
    4290:	e8 05 06 00 00       	call   489a <fork>
  if(pid == 0){
    4295:	83 c4 10             	add    $0x10,%esp
    4298:	85 c0                	test   %eax,%eax
    429a:	74 3f                	je     42db <bigargtest+0x5b>
  } else if(pid < 0){
    429c:	0f 88 c2 00 00 00    	js     4364 <bigargtest+0xe4>
  wait();
    42a2:	e8 03 06 00 00       	call   48aa <wait>
  fd = open("bigarg-ok", 0);
    42a7:	83 ec 08             	sub    $0x8,%esp
    42aa:	6a 00                	push   $0x0
    42ac:	68 a2 5c 00 00       	push   $0x5ca2
    42b1:	e8 2c 06 00 00       	call   48e2 <open>
  if(fd < 0){
    42b6:	83 c4 10             	add    $0x10,%esp
    42b9:	85 c0                	test   %eax,%eax
    42bb:	0f 88 8c 00 00 00    	js     434d <bigargtest+0xcd>
  close(fd);
    42c1:	83 ec 0c             	sub    $0xc,%esp
    42c4:	50                   	push   %eax
    42c5:	e8 00 06 00 00       	call   48ca <close>
  unlink("bigarg-ok");
    42ca:	c7 04 24 a2 5c 00 00 	movl   $0x5ca2,(%esp)
    42d1:	e8 1c 06 00 00       	call   48f2 <unlink>
}
    42d6:	83 c4 10             	add    $0x10,%esp
    42d9:	c9                   	leave  
    42da:	c3                   	ret    
    42db:	b8 a0 6e 00 00       	mov    $0x6ea0,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    42e0:	c7 00 fc 63 00 00    	movl   $0x63fc,(%eax)
    42e6:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    42e9:	3d 1c 6f 00 00       	cmp    $0x6f1c,%eax
    42ee:	75 f0                	jne    42e0 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    42f0:	51                   	push   %ecx
    42f1:	51                   	push   %ecx
    42f2:	68 ac 5c 00 00       	push   $0x5cac
    42f7:	ff 35 84 6e 00 00    	pushl  0x6e84
    args[MAXARG-1] = 0;
    42fd:	c7 05 1c 6f 00 00 00 	movl   $0x0,0x6f1c
    4304:	00 00 00 
    printf(stdout, "bigarg test\n");
    4307:	e8 f4 06 00 00       	call   4a00 <printf>
    exec("echo", args);
    430c:	58                   	pop    %eax
    430d:	5a                   	pop    %edx
    430e:	68 a0 6e 00 00       	push   $0x6ea0
    4313:	68 79 4e 00 00       	push   $0x4e79
    4318:	e8 bd 05 00 00       	call   48da <exec>
    printf(stdout, "bigarg test ok\n");
    431d:	59                   	pop    %ecx
    431e:	58                   	pop    %eax
    431f:	68 b9 5c 00 00       	push   $0x5cb9
    4324:	ff 35 84 6e 00 00    	pushl  0x6e84
    432a:	e8 d1 06 00 00       	call   4a00 <printf>
    fd = open("bigarg-ok", O_CREATE);
    432f:	58                   	pop    %eax
    4330:	5a                   	pop    %edx
    4331:	68 00 02 00 00       	push   $0x200
    4336:	68 a2 5c 00 00       	push   $0x5ca2
    433b:	e8 a2 05 00 00       	call   48e2 <open>
    close(fd);
    4340:	89 04 24             	mov    %eax,(%esp)
    4343:	e8 82 05 00 00       	call   48ca <close>
    exit();
    4348:	e8 55 05 00 00       	call   48a2 <exit>
    printf(stdout, "bigarg test failed!\n");
    434d:	50                   	push   %eax
    434e:	50                   	push   %eax
    434f:	68 e2 5c 00 00       	push   $0x5ce2
    4354:	ff 35 84 6e 00 00    	pushl  0x6e84
    435a:	e8 a1 06 00 00       	call   4a00 <printf>
    exit();
    435f:	e8 3e 05 00 00       	call   48a2 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    4364:	52                   	push   %edx
    4365:	52                   	push   %edx
    4366:	68 c9 5c 00 00       	push   $0x5cc9
    436b:	ff 35 84 6e 00 00    	pushl  0x6e84
    4371:	e8 8a 06 00 00       	call   4a00 <printf>
    exit();
    4376:	e8 27 05 00 00       	call   48a2 <exit>
    437b:	90                   	nop
    437c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004380 <fsfull>:
{
    4380:	55                   	push   %ebp
    4381:	89 e5                	mov    %esp,%ebp
    4383:	57                   	push   %edi
    4384:	56                   	push   %esi
    4385:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    4386:	31 db                	xor    %ebx,%ebx
{
    4388:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    438b:	68 f7 5c 00 00       	push   $0x5cf7
    4390:	6a 01                	push   $0x1
    4392:	e8 69 06 00 00       	call   4a00 <printf>
    4397:	83 c4 10             	add    $0x10,%esp
    439a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    43a0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    43a5:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    43aa:	83 ec 04             	sub    $0x4,%esp
    name[1] = '0' + nfiles / 1000;
    43ad:	f7 e3                	mul    %ebx
    name[0] = 'f';
    43af:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    43b3:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    43b7:	c1 ea 06             	shr    $0x6,%edx
    43ba:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    43bd:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    43c3:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    43c6:	89 d8                	mov    %ebx,%eax
    43c8:	29 d0                	sub    %edx,%eax
    43ca:	89 c2                	mov    %eax,%edx
    43cc:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    43d1:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    43d3:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    43d8:	c1 ea 05             	shr    $0x5,%edx
    43db:	83 c2 30             	add    $0x30,%edx
    43de:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    43e1:	f7 e3                	mul    %ebx
    43e3:	89 d8                	mov    %ebx,%eax
    43e5:	c1 ea 05             	shr    $0x5,%edx
    43e8:	6b d2 64             	imul   $0x64,%edx,%edx
    43eb:	29 d0                	sub    %edx,%eax
    43ed:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    43ef:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    43f1:	c1 ea 03             	shr    $0x3,%edx
    43f4:	83 c2 30             	add    $0x30,%edx
    43f7:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    43fa:	f7 e1                	mul    %ecx
    43fc:	89 d9                	mov    %ebx,%ecx
    43fe:	c1 ea 03             	shr    $0x3,%edx
    4401:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4404:	01 c0                	add    %eax,%eax
    4406:	29 c1                	sub    %eax,%ecx
    4408:	89 c8                	mov    %ecx,%eax
    440a:	83 c0 30             	add    $0x30,%eax
    440d:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    4410:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4413:	50                   	push   %eax
    4414:	68 04 5d 00 00       	push   $0x5d04
    4419:	6a 01                	push   $0x1
    441b:	e8 e0 05 00 00       	call   4a00 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    4420:	58                   	pop    %eax
    4421:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4424:	5a                   	pop    %edx
    4425:	68 02 02 00 00       	push   $0x202
    442a:	50                   	push   %eax
    442b:	e8 b2 04 00 00       	call   48e2 <open>
    if(fd < 0){
    4430:	83 c4 10             	add    $0x10,%esp
    4433:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    4435:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    4437:	78 57                	js     4490 <fsfull+0x110>
    int total = 0;
    4439:	31 f6                	xor    %esi,%esi
    443b:	eb 05                	jmp    4442 <fsfull+0xc2>
    443d:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    4440:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    4442:	83 ec 04             	sub    $0x4,%esp
    4445:	68 00 02 00 00       	push   $0x200
    444a:	68 60 96 00 00       	push   $0x9660
    444f:	57                   	push   %edi
    4450:	e8 6d 04 00 00       	call   48c2 <write>
      if(cc < 512)
    4455:	83 c4 10             	add    $0x10,%esp
    4458:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    445d:	7f e1                	jg     4440 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    445f:	83 ec 04             	sub    $0x4,%esp
    4462:	56                   	push   %esi
    4463:	68 20 5d 00 00       	push   $0x5d20
    4468:	6a 01                	push   $0x1
    446a:	e8 91 05 00 00       	call   4a00 <printf>
    close(fd);
    446f:	89 3c 24             	mov    %edi,(%esp)
    4472:	e8 53 04 00 00       	call   48ca <close>
    if(total == 0)
    4477:	83 c4 10             	add    $0x10,%esp
    447a:	85 f6                	test   %esi,%esi
    447c:	74 28                	je     44a6 <fsfull+0x126>
  for(nfiles = 0; ; nfiles++){
    447e:	83 c3 01             	add    $0x1,%ebx
    4481:	e9 1a ff ff ff       	jmp    43a0 <fsfull+0x20>
    4486:	8d 76 00             	lea    0x0(%esi),%esi
    4489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "open %s failed\n", name);
    4490:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4493:	83 ec 04             	sub    $0x4,%esp
    4496:	50                   	push   %eax
    4497:	68 10 5d 00 00       	push   $0x5d10
    449c:	6a 01                	push   $0x1
    449e:	e8 5d 05 00 00       	call   4a00 <printf>
      break;
    44a3:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    44a6:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    44ab:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    name[1] = '0' + nfiles / 1000;
    44b0:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    44b2:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    44b7:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + nfiles / 1000;
    44ba:	f7 e7                	mul    %edi
    name[0] = 'f';
    44bc:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    44c0:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    44c4:	c1 ea 06             	shr    $0x6,%edx
    44c7:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    44ca:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    44d0:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    44d3:	89 d8                	mov    %ebx,%eax
    44d5:	29 d0                	sub    %edx,%eax
    44d7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    44d9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    44db:	c1 ea 05             	shr    $0x5,%edx
    44de:	83 c2 30             	add    $0x30,%edx
    44e1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    44e4:	f7 e6                	mul    %esi
    44e6:	89 d8                	mov    %ebx,%eax
    44e8:	c1 ea 05             	shr    $0x5,%edx
    44eb:	6b d2 64             	imul   $0x64,%edx,%edx
    44ee:	29 d0                	sub    %edx,%eax
    44f0:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    44f2:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    44f4:	c1 ea 03             	shr    $0x3,%edx
    44f7:	83 c2 30             	add    $0x30,%edx
    44fa:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    44fd:	f7 e1                	mul    %ecx
    44ff:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    4501:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    4504:	c1 ea 03             	shr    $0x3,%edx
    4507:	8d 04 92             	lea    (%edx,%edx,4),%eax
    450a:	01 c0                	add    %eax,%eax
    450c:	29 c1                	sub    %eax,%ecx
    450e:	89 c8                	mov    %ecx,%eax
    4510:	83 c0 30             	add    $0x30,%eax
    4513:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    4516:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4519:	50                   	push   %eax
    451a:	e8 d3 03 00 00       	call   48f2 <unlink>
  while(nfiles >= 0){
    451f:	83 c4 10             	add    $0x10,%esp
    4522:	83 fb ff             	cmp    $0xffffffff,%ebx
    4525:	75 89                	jne    44b0 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    4527:	83 ec 08             	sub    $0x8,%esp
    452a:	68 30 5d 00 00       	push   $0x5d30
    452f:	6a 01                	push   $0x1
    4531:	e8 ca 04 00 00       	call   4a00 <printf>
}
    4536:	83 c4 10             	add    $0x10,%esp
    4539:	8d 65 f4             	lea    -0xc(%ebp),%esp
    453c:	5b                   	pop    %ebx
    453d:	5e                   	pop    %esi
    453e:	5f                   	pop    %edi
    453f:	5d                   	pop    %ebp
    4540:	c3                   	ret    
    4541:	eb 0d                	jmp    4550 <uio>
    4543:	90                   	nop
    4544:	90                   	nop
    4545:	90                   	nop
    4546:	90                   	nop
    4547:	90                   	nop
    4548:	90                   	nop
    4549:	90                   	nop
    454a:	90                   	nop
    454b:	90                   	nop
    454c:	90                   	nop
    454d:	90                   	nop
    454e:	90                   	nop
    454f:	90                   	nop

00004550 <uio>:
{
    4550:	55                   	push   %ebp
    4551:	89 e5                	mov    %esp,%ebp
    4553:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    4556:	68 46 5d 00 00       	push   $0x5d46
    455b:	6a 01                	push   $0x1
    455d:	e8 9e 04 00 00       	call   4a00 <printf>
  pid = fork();
    4562:	e8 33 03 00 00       	call   489a <fork>
  if(pid == 0){
    4567:	83 c4 10             	add    $0x10,%esp
    456a:	85 c0                	test   %eax,%eax
    456c:	74 1b                	je     4589 <uio+0x39>
  } else if(pid < 0){
    456e:	78 3d                	js     45ad <uio+0x5d>
  wait();
    4570:	e8 35 03 00 00       	call   48aa <wait>
  printf(1, "uio test done\n");
    4575:	83 ec 08             	sub    $0x8,%esp
    4578:	68 50 5d 00 00       	push   $0x5d50
    457d:	6a 01                	push   $0x1
    457f:	e8 7c 04 00 00       	call   4a00 <printf>
}
    4584:	83 c4 10             	add    $0x10,%esp
    4587:	c9                   	leave  
    4588:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    4589:	b8 09 00 00 00       	mov    $0x9,%eax
    458e:	ba 70 00 00 00       	mov    $0x70,%edx
    4593:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    4594:	ba 71 00 00 00       	mov    $0x71,%edx
    4599:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    459a:	52                   	push   %edx
    459b:	52                   	push   %edx
    459c:	68 dc 64 00 00       	push   $0x64dc
    45a1:	6a 01                	push   $0x1
    45a3:	e8 58 04 00 00       	call   4a00 <printf>
    exit();
    45a8:	e8 f5 02 00 00       	call   48a2 <exit>
    printf (1, "fork failed\n");
    45ad:	50                   	push   %eax
    45ae:	50                   	push   %eax
    45af:	68 d5 5c 00 00       	push   $0x5cd5
    45b4:	6a 01                	push   $0x1
    45b6:	e8 45 04 00 00       	call   4a00 <printf>
    exit();
    45bb:	e8 e2 02 00 00       	call   48a2 <exit>

000045c0 <argptest>:
{
    45c0:	55                   	push   %ebp
    45c1:	89 e5                	mov    %esp,%ebp
    45c3:	53                   	push   %ebx
    45c4:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    45c7:	6a 00                	push   $0x0
    45c9:	68 5f 5d 00 00       	push   $0x5d5f
    45ce:	e8 0f 03 00 00       	call   48e2 <open>
  if (fd < 0) {
    45d3:	83 c4 10             	add    $0x10,%esp
    45d6:	85 c0                	test   %eax,%eax
    45d8:	78 39                	js     4613 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    45da:	83 ec 0c             	sub    $0xc,%esp
    45dd:	89 c3                	mov    %eax,%ebx
    45df:	6a 00                	push   $0x0
    45e1:	e8 44 03 00 00       	call   492a <sbrk>
    45e6:	83 c4 0c             	add    $0xc,%esp
    45e9:	83 e8 01             	sub    $0x1,%eax
    45ec:	6a ff                	push   $0xffffffff
    45ee:	50                   	push   %eax
    45ef:	53                   	push   %ebx
    45f0:	e8 c5 02 00 00       	call   48ba <read>
  close(fd);
    45f5:	89 1c 24             	mov    %ebx,(%esp)
    45f8:	e8 cd 02 00 00       	call   48ca <close>
  printf(1, "arg test passed\n");
    45fd:	58                   	pop    %eax
    45fe:	5a                   	pop    %edx
    45ff:	68 71 5d 00 00       	push   $0x5d71
    4604:	6a 01                	push   $0x1
    4606:	e8 f5 03 00 00       	call   4a00 <printf>
}
    460b:	83 c4 10             	add    $0x10,%esp
    460e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4611:	c9                   	leave  
    4612:	c3                   	ret    
    printf(2, "open failed\n");
    4613:	51                   	push   %ecx
    4614:	51                   	push   %ecx
    4615:	68 64 5d 00 00       	push   $0x5d64
    461a:	6a 02                	push   $0x2
    461c:	e8 df 03 00 00       	call   4a00 <printf>
    exit();
    4621:	e8 7c 02 00 00       	call   48a2 <exit>
    4626:	8d 76 00             	lea    0x0(%esi),%esi
    4629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004630 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    4630:	69 05 80 6e 00 00 0d 	imul   $0x19660d,0x6e80,%eax
    4637:	66 19 00 
{
    463a:	55                   	push   %ebp
    463b:	89 e5                	mov    %esp,%ebp
}
    463d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    463e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4643:	a3 80 6e 00 00       	mov    %eax,0x6e80
}
    4648:	c3                   	ret    
    4649:	66 90                	xchg   %ax,%ax
    464b:	66 90                	xchg   %ax,%ax
    464d:	66 90                	xchg   %ax,%ax
    464f:	90                   	nop

00004650 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    4650:	55                   	push   %ebp
    4651:	89 e5                	mov    %esp,%ebp
    4653:	53                   	push   %ebx
    4654:	8b 45 08             	mov    0x8(%ebp),%eax
    4657:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    465a:	89 c2                	mov    %eax,%edx
    465c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4660:	83 c1 01             	add    $0x1,%ecx
    4663:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    4667:	83 c2 01             	add    $0x1,%edx
    466a:	84 db                	test   %bl,%bl
    466c:	88 5a ff             	mov    %bl,-0x1(%edx)
    466f:	75 ef                	jne    4660 <strcpy+0x10>
    ;
  return os;
}
    4671:	5b                   	pop    %ebx
    4672:	5d                   	pop    %ebp
    4673:	c3                   	ret    
    4674:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    467a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004680 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    4680:	55                   	push   %ebp
    4681:	89 e5                	mov    %esp,%ebp
    4683:	53                   	push   %ebx
    4684:	8b 55 08             	mov    0x8(%ebp),%edx
    4687:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    468a:	0f b6 02             	movzbl (%edx),%eax
    468d:	0f b6 19             	movzbl (%ecx),%ebx
    4690:	84 c0                	test   %al,%al
    4692:	75 1c                	jne    46b0 <strcmp+0x30>
    4694:	eb 2a                	jmp    46c0 <strcmp+0x40>
    4696:	8d 76 00             	lea    0x0(%esi),%esi
    4699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    46a0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    46a3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    46a6:	83 c1 01             	add    $0x1,%ecx
    46a9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    46ac:	84 c0                	test   %al,%al
    46ae:	74 10                	je     46c0 <strcmp+0x40>
    46b0:	38 d8                	cmp    %bl,%al
    46b2:	74 ec                	je     46a0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    46b4:	29 d8                	sub    %ebx,%eax
}
    46b6:	5b                   	pop    %ebx
    46b7:	5d                   	pop    %ebp
    46b8:	c3                   	ret    
    46b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    46c0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    46c2:	29 d8                	sub    %ebx,%eax
}
    46c4:	5b                   	pop    %ebx
    46c5:	5d                   	pop    %ebp
    46c6:	c3                   	ret    
    46c7:	89 f6                	mov    %esi,%esi
    46c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000046d0 <strlen>:

uint
strlen(char *s)
{
    46d0:	55                   	push   %ebp
    46d1:	89 e5                	mov    %esp,%ebp
    46d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    46d6:	80 39 00             	cmpb   $0x0,(%ecx)
    46d9:	74 15                	je     46f0 <strlen+0x20>
    46db:	31 d2                	xor    %edx,%edx
    46dd:	8d 76 00             	lea    0x0(%esi),%esi
    46e0:	83 c2 01             	add    $0x1,%edx
    46e3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    46e7:	89 d0                	mov    %edx,%eax
    46e9:	75 f5                	jne    46e0 <strlen+0x10>
    ;
  return n;
}
    46eb:	5d                   	pop    %ebp
    46ec:	c3                   	ret    
    46ed:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    46f0:	31 c0                	xor    %eax,%eax
}
    46f2:	5d                   	pop    %ebp
    46f3:	c3                   	ret    
    46f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    46fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004700 <memset>:

void*
memset(void *dst, int c, uint n)
{
    4700:	55                   	push   %ebp
    4701:	89 e5                	mov    %esp,%ebp
    4703:	57                   	push   %edi
    4704:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    4707:	8b 4d 10             	mov    0x10(%ebp),%ecx
    470a:	8b 45 0c             	mov    0xc(%ebp),%eax
    470d:	89 d7                	mov    %edx,%edi
    470f:	fc                   	cld    
    4710:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    4712:	89 d0                	mov    %edx,%eax
    4714:	5f                   	pop    %edi
    4715:	5d                   	pop    %ebp
    4716:	c3                   	ret    
    4717:	89 f6                	mov    %esi,%esi
    4719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004720 <strchr>:

char*
strchr(const char *s, char c)
{
    4720:	55                   	push   %ebp
    4721:	89 e5                	mov    %esp,%ebp
    4723:	53                   	push   %ebx
    4724:	8b 45 08             	mov    0x8(%ebp),%eax
    4727:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    472a:	0f b6 10             	movzbl (%eax),%edx
    472d:	84 d2                	test   %dl,%dl
    472f:	74 1d                	je     474e <strchr+0x2e>
    if(*s == c)
    4731:	38 d3                	cmp    %dl,%bl
    4733:	89 d9                	mov    %ebx,%ecx
    4735:	75 0d                	jne    4744 <strchr+0x24>
    4737:	eb 17                	jmp    4750 <strchr+0x30>
    4739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4740:	38 ca                	cmp    %cl,%dl
    4742:	74 0c                	je     4750 <strchr+0x30>
  for(; *s; s++)
    4744:	83 c0 01             	add    $0x1,%eax
    4747:	0f b6 10             	movzbl (%eax),%edx
    474a:	84 d2                	test   %dl,%dl
    474c:	75 f2                	jne    4740 <strchr+0x20>
      return (char*)s;
  return 0;
    474e:	31 c0                	xor    %eax,%eax
}
    4750:	5b                   	pop    %ebx
    4751:	5d                   	pop    %ebp
    4752:	c3                   	ret    
    4753:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004760 <gets>:

char*
gets(char *buf, int max)
{
    4760:	55                   	push   %ebp
    4761:	89 e5                	mov    %esp,%ebp
    4763:	57                   	push   %edi
    4764:	56                   	push   %esi
    4765:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4766:	31 f6                	xor    %esi,%esi
    4768:	89 f3                	mov    %esi,%ebx
{
    476a:	83 ec 1c             	sub    $0x1c,%esp
    476d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    4770:	eb 2f                	jmp    47a1 <gets+0x41>
    4772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    4778:	8d 45 e7             	lea    -0x19(%ebp),%eax
    477b:	83 ec 04             	sub    $0x4,%esp
    477e:	6a 01                	push   $0x1
    4780:	50                   	push   %eax
    4781:	6a 00                	push   $0x0
    4783:	e8 32 01 00 00       	call   48ba <read>
    if(cc < 1)
    4788:	83 c4 10             	add    $0x10,%esp
    478b:	85 c0                	test   %eax,%eax
    478d:	7e 1c                	jle    47ab <gets+0x4b>
      break;
    buf[i++] = c;
    478f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    4793:	83 c7 01             	add    $0x1,%edi
    4796:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    4799:	3c 0a                	cmp    $0xa,%al
    479b:	74 23                	je     47c0 <gets+0x60>
    479d:	3c 0d                	cmp    $0xd,%al
    479f:	74 1f                	je     47c0 <gets+0x60>
  for(i=0; i+1 < max; ){
    47a1:	83 c3 01             	add    $0x1,%ebx
    47a4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    47a7:	89 fe                	mov    %edi,%esi
    47a9:	7c cd                	jl     4778 <gets+0x18>
    47ab:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    47ad:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    47b0:	c6 03 00             	movb   $0x0,(%ebx)
}
    47b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    47b6:	5b                   	pop    %ebx
    47b7:	5e                   	pop    %esi
    47b8:	5f                   	pop    %edi
    47b9:	5d                   	pop    %ebp
    47ba:	c3                   	ret    
    47bb:	90                   	nop
    47bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    47c0:	8b 75 08             	mov    0x8(%ebp),%esi
    47c3:	8b 45 08             	mov    0x8(%ebp),%eax
    47c6:	01 de                	add    %ebx,%esi
    47c8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    47ca:	c6 03 00             	movb   $0x0,(%ebx)
}
    47cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    47d0:	5b                   	pop    %ebx
    47d1:	5e                   	pop    %esi
    47d2:	5f                   	pop    %edi
    47d3:	5d                   	pop    %ebp
    47d4:	c3                   	ret    
    47d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    47d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000047e0 <stat>:

int
stat(char *n, struct stat *st)
{
    47e0:	55                   	push   %ebp
    47e1:	89 e5                	mov    %esp,%ebp
    47e3:	56                   	push   %esi
    47e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    47e5:	83 ec 08             	sub    $0x8,%esp
    47e8:	6a 00                	push   $0x0
    47ea:	ff 75 08             	pushl  0x8(%ebp)
    47ed:	e8 f0 00 00 00       	call   48e2 <open>
  if(fd < 0)
    47f2:	83 c4 10             	add    $0x10,%esp
    47f5:	85 c0                	test   %eax,%eax
    47f7:	78 27                	js     4820 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    47f9:	83 ec 08             	sub    $0x8,%esp
    47fc:	ff 75 0c             	pushl  0xc(%ebp)
    47ff:	89 c3                	mov    %eax,%ebx
    4801:	50                   	push   %eax
    4802:	e8 f3 00 00 00       	call   48fa <fstat>
  close(fd);
    4807:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    480a:	89 c6                	mov    %eax,%esi
  close(fd);
    480c:	e8 b9 00 00 00       	call   48ca <close>
  return r;
    4811:	83 c4 10             	add    $0x10,%esp
}
    4814:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4817:	89 f0                	mov    %esi,%eax
    4819:	5b                   	pop    %ebx
    481a:	5e                   	pop    %esi
    481b:	5d                   	pop    %ebp
    481c:	c3                   	ret    
    481d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    4820:	be ff ff ff ff       	mov    $0xffffffff,%esi
    4825:	eb ed                	jmp    4814 <stat+0x34>
    4827:	89 f6                	mov    %esi,%esi
    4829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004830 <atoi>:

int
atoi(const char *s)
{
    4830:	55                   	push   %ebp
    4831:	89 e5                	mov    %esp,%ebp
    4833:	53                   	push   %ebx
    4834:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    4837:	0f be 11             	movsbl (%ecx),%edx
    483a:	8d 42 d0             	lea    -0x30(%edx),%eax
    483d:	3c 09                	cmp    $0x9,%al
  n = 0;
    483f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    4844:	77 1f                	ja     4865 <atoi+0x35>
    4846:	8d 76 00             	lea    0x0(%esi),%esi
    4849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    4850:	8d 04 80             	lea    (%eax,%eax,4),%eax
    4853:	83 c1 01             	add    $0x1,%ecx
    4856:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    485a:	0f be 11             	movsbl (%ecx),%edx
    485d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    4860:	80 fb 09             	cmp    $0x9,%bl
    4863:	76 eb                	jbe    4850 <atoi+0x20>
  return n;
}
    4865:	5b                   	pop    %ebx
    4866:	5d                   	pop    %ebp
    4867:	c3                   	ret    
    4868:	90                   	nop
    4869:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004870 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    4870:	55                   	push   %ebp
    4871:	89 e5                	mov    %esp,%ebp
    4873:	56                   	push   %esi
    4874:	53                   	push   %ebx
    4875:	8b 5d 10             	mov    0x10(%ebp),%ebx
    4878:	8b 45 08             	mov    0x8(%ebp),%eax
    487b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    487e:	85 db                	test   %ebx,%ebx
    4880:	7e 14                	jle    4896 <memmove+0x26>
    4882:	31 d2                	xor    %edx,%edx
    4884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    4888:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    488c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    488f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    4892:	39 d3                	cmp    %edx,%ebx
    4894:	75 f2                	jne    4888 <memmove+0x18>
  return vdst;
}
    4896:	5b                   	pop    %ebx
    4897:	5e                   	pop    %esi
    4898:	5d                   	pop    %ebp
    4899:	c3                   	ret    

0000489a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    489a:	b8 01 00 00 00       	mov    $0x1,%eax
    489f:	cd 40                	int    $0x40
    48a1:	c3                   	ret    

000048a2 <exit>:
SYSCALL(exit)
    48a2:	b8 02 00 00 00       	mov    $0x2,%eax
    48a7:	cd 40                	int    $0x40
    48a9:	c3                   	ret    

000048aa <wait>:
SYSCALL(wait)
    48aa:	b8 03 00 00 00       	mov    $0x3,%eax
    48af:	cd 40                	int    $0x40
    48b1:	c3                   	ret    

000048b2 <pipe>:
SYSCALL(pipe)
    48b2:	b8 04 00 00 00       	mov    $0x4,%eax
    48b7:	cd 40                	int    $0x40
    48b9:	c3                   	ret    

000048ba <read>:
SYSCALL(read)
    48ba:	b8 05 00 00 00       	mov    $0x5,%eax
    48bf:	cd 40                	int    $0x40
    48c1:	c3                   	ret    

000048c2 <write>:
SYSCALL(write)
    48c2:	b8 10 00 00 00       	mov    $0x10,%eax
    48c7:	cd 40                	int    $0x40
    48c9:	c3                   	ret    

000048ca <close>:
SYSCALL(close)
    48ca:	b8 15 00 00 00       	mov    $0x15,%eax
    48cf:	cd 40                	int    $0x40
    48d1:	c3                   	ret    

000048d2 <kill>:
SYSCALL(kill)
    48d2:	b8 06 00 00 00       	mov    $0x6,%eax
    48d7:	cd 40                	int    $0x40
    48d9:	c3                   	ret    

000048da <exec>:
SYSCALL(exec)
    48da:	b8 07 00 00 00       	mov    $0x7,%eax
    48df:	cd 40                	int    $0x40
    48e1:	c3                   	ret    

000048e2 <open>:
SYSCALL(open)
    48e2:	b8 0f 00 00 00       	mov    $0xf,%eax
    48e7:	cd 40                	int    $0x40
    48e9:	c3                   	ret    

000048ea <mknod>:
SYSCALL(mknod)
    48ea:	b8 11 00 00 00       	mov    $0x11,%eax
    48ef:	cd 40                	int    $0x40
    48f1:	c3                   	ret    

000048f2 <unlink>:
SYSCALL(unlink)
    48f2:	b8 12 00 00 00       	mov    $0x12,%eax
    48f7:	cd 40                	int    $0x40
    48f9:	c3                   	ret    

000048fa <fstat>:
SYSCALL(fstat)
    48fa:	b8 08 00 00 00       	mov    $0x8,%eax
    48ff:	cd 40                	int    $0x40
    4901:	c3                   	ret    

00004902 <link>:
SYSCALL(link)
    4902:	b8 13 00 00 00       	mov    $0x13,%eax
    4907:	cd 40                	int    $0x40
    4909:	c3                   	ret    

0000490a <mkdir>:
SYSCALL(mkdir)
    490a:	b8 14 00 00 00       	mov    $0x14,%eax
    490f:	cd 40                	int    $0x40
    4911:	c3                   	ret    

00004912 <chdir>:
SYSCALL(chdir)
    4912:	b8 09 00 00 00       	mov    $0x9,%eax
    4917:	cd 40                	int    $0x40
    4919:	c3                   	ret    

0000491a <dup>:
SYSCALL(dup)
    491a:	b8 0a 00 00 00       	mov    $0xa,%eax
    491f:	cd 40                	int    $0x40
    4921:	c3                   	ret    

00004922 <getpid>:
SYSCALL(getpid)
    4922:	b8 0b 00 00 00       	mov    $0xb,%eax
    4927:	cd 40                	int    $0x40
    4929:	c3                   	ret    

0000492a <sbrk>:
SYSCALL(sbrk)
    492a:	b8 0c 00 00 00       	mov    $0xc,%eax
    492f:	cd 40                	int    $0x40
    4931:	c3                   	ret    

00004932 <sleep>:
SYSCALL(sleep)
    4932:	b8 0d 00 00 00       	mov    $0xd,%eax
    4937:	cd 40                	int    $0x40
    4939:	c3                   	ret    

0000493a <uptime>:
SYSCALL(uptime)
    493a:	b8 0e 00 00 00       	mov    $0xe,%eax
    493f:	cd 40                	int    $0x40
    4941:	c3                   	ret    

00004942 <shm_open>:
SYSCALL(shm_open)
    4942:	b8 16 00 00 00       	mov    $0x16,%eax
    4947:	cd 40                	int    $0x40
    4949:	c3                   	ret    

0000494a <shm_close>:
SYSCALL(shm_close)	
    494a:	b8 17 00 00 00       	mov    $0x17,%eax
    494f:	cd 40                	int    $0x40
    4951:	c3                   	ret    
    4952:	66 90                	xchg   %ax,%ax
    4954:	66 90                	xchg   %ax,%ax
    4956:	66 90                	xchg   %ax,%ax
    4958:	66 90                	xchg   %ax,%ax
    495a:	66 90                	xchg   %ax,%ax
    495c:	66 90                	xchg   %ax,%ax
    495e:	66 90                	xchg   %ax,%ax

00004960 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4960:	55                   	push   %ebp
    4961:	89 e5                	mov    %esp,%ebp
    4963:	57                   	push   %edi
    4964:	56                   	push   %esi
    4965:	53                   	push   %ebx
    4966:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    4969:	85 d2                	test   %edx,%edx
{
    496b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    496e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    4970:	79 76                	jns    49e8 <printint+0x88>
    4972:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    4976:	74 70                	je     49e8 <printint+0x88>
    x = -xx;
    4978:	f7 d8                	neg    %eax
    neg = 1;
    497a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    4981:	31 f6                	xor    %esi,%esi
    4983:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    4986:	eb 0a                	jmp    4992 <printint+0x32>
    4988:	90                   	nop
    4989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    4990:	89 fe                	mov    %edi,%esi
    4992:	31 d2                	xor    %edx,%edx
    4994:	8d 7e 01             	lea    0x1(%esi),%edi
    4997:	f7 f1                	div    %ecx
    4999:	0f b6 92 34 65 00 00 	movzbl 0x6534(%edx),%edx
  }while((x /= base) != 0);
    49a0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    49a2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    49a5:	75 e9                	jne    4990 <printint+0x30>
  if(neg)
    49a7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    49aa:	85 c0                	test   %eax,%eax
    49ac:	74 08                	je     49b6 <printint+0x56>
    buf[i++] = '-';
    49ae:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    49b3:	8d 7e 02             	lea    0x2(%esi),%edi
    49b6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    49ba:	8b 7d c0             	mov    -0x40(%ebp),%edi
    49bd:	8d 76 00             	lea    0x0(%esi),%esi
    49c0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    49c3:	83 ec 04             	sub    $0x4,%esp
    49c6:	83 ee 01             	sub    $0x1,%esi
    49c9:	6a 01                	push   $0x1
    49cb:	53                   	push   %ebx
    49cc:	57                   	push   %edi
    49cd:	88 45 d7             	mov    %al,-0x29(%ebp)
    49d0:	e8 ed fe ff ff       	call   48c2 <write>

  while(--i >= 0)
    49d5:	83 c4 10             	add    $0x10,%esp
    49d8:	39 de                	cmp    %ebx,%esi
    49da:	75 e4                	jne    49c0 <printint+0x60>
    putc(fd, buf[i]);
}
    49dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    49df:	5b                   	pop    %ebx
    49e0:	5e                   	pop    %esi
    49e1:	5f                   	pop    %edi
    49e2:	5d                   	pop    %ebp
    49e3:	c3                   	ret    
    49e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    49e8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    49ef:	eb 90                	jmp    4981 <printint+0x21>
    49f1:	eb 0d                	jmp    4a00 <printf>
    49f3:	90                   	nop
    49f4:	90                   	nop
    49f5:	90                   	nop
    49f6:	90                   	nop
    49f7:	90                   	nop
    49f8:	90                   	nop
    49f9:	90                   	nop
    49fa:	90                   	nop
    49fb:	90                   	nop
    49fc:	90                   	nop
    49fd:	90                   	nop
    49fe:	90                   	nop
    49ff:	90                   	nop

00004a00 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4a00:	55                   	push   %ebp
    4a01:	89 e5                	mov    %esp,%ebp
    4a03:	57                   	push   %edi
    4a04:	56                   	push   %esi
    4a05:	53                   	push   %ebx
    4a06:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4a09:	8b 75 0c             	mov    0xc(%ebp),%esi
    4a0c:	0f b6 1e             	movzbl (%esi),%ebx
    4a0f:	84 db                	test   %bl,%bl
    4a11:	0f 84 b3 00 00 00    	je     4aca <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    4a17:	8d 45 10             	lea    0x10(%ebp),%eax
    4a1a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    4a1d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    4a1f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    4a22:	eb 2f                	jmp    4a53 <printf+0x53>
    4a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4a28:	83 f8 25             	cmp    $0x25,%eax
    4a2b:	0f 84 a7 00 00 00    	je     4ad8 <printf+0xd8>
  write(fd, &c, 1);
    4a31:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4a34:	83 ec 04             	sub    $0x4,%esp
    4a37:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    4a3a:	6a 01                	push   $0x1
    4a3c:	50                   	push   %eax
    4a3d:	ff 75 08             	pushl  0x8(%ebp)
    4a40:	e8 7d fe ff ff       	call   48c2 <write>
    4a45:	83 c4 10             	add    $0x10,%esp
    4a48:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    4a4b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    4a4f:	84 db                	test   %bl,%bl
    4a51:	74 77                	je     4aca <printf+0xca>
    if(state == 0){
    4a53:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    4a55:	0f be cb             	movsbl %bl,%ecx
    4a58:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4a5b:	74 cb                	je     4a28 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    4a5d:	83 ff 25             	cmp    $0x25,%edi
    4a60:	75 e6                	jne    4a48 <printf+0x48>
      if(c == 'd'){
    4a62:	83 f8 64             	cmp    $0x64,%eax
    4a65:	0f 84 05 01 00 00    	je     4b70 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4a6b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    4a71:	83 f9 70             	cmp    $0x70,%ecx
    4a74:	74 72                	je     4ae8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4a76:	83 f8 73             	cmp    $0x73,%eax
    4a79:	0f 84 99 00 00 00    	je     4b18 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    4a7f:	83 f8 63             	cmp    $0x63,%eax
    4a82:	0f 84 08 01 00 00    	je     4b90 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4a88:	83 f8 25             	cmp    $0x25,%eax
    4a8b:	0f 84 ef 00 00 00    	je     4b80 <printf+0x180>
  write(fd, &c, 1);
    4a91:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4a94:	83 ec 04             	sub    $0x4,%esp
    4a97:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    4a9b:	6a 01                	push   $0x1
    4a9d:	50                   	push   %eax
    4a9e:	ff 75 08             	pushl  0x8(%ebp)
    4aa1:	e8 1c fe ff ff       	call   48c2 <write>
    4aa6:	83 c4 0c             	add    $0xc,%esp
    4aa9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    4aac:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    4aaf:	6a 01                	push   $0x1
    4ab1:	50                   	push   %eax
    4ab2:	ff 75 08             	pushl  0x8(%ebp)
    4ab5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4ab8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    4aba:	e8 03 fe ff ff       	call   48c2 <write>
  for(i = 0; fmt[i]; i++){
    4abf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    4ac3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    4ac6:	84 db                	test   %bl,%bl
    4ac8:	75 89                	jne    4a53 <printf+0x53>
    }
  }
}
    4aca:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4acd:	5b                   	pop    %ebx
    4ace:	5e                   	pop    %esi
    4acf:	5f                   	pop    %edi
    4ad0:	5d                   	pop    %ebp
    4ad1:	c3                   	ret    
    4ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    4ad8:	bf 25 00 00 00       	mov    $0x25,%edi
    4add:	e9 66 ff ff ff       	jmp    4a48 <printf+0x48>
    4ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4ae8:	83 ec 0c             	sub    $0xc,%esp
    4aeb:	b9 10 00 00 00       	mov    $0x10,%ecx
    4af0:	6a 00                	push   $0x0
    4af2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    4af5:	8b 45 08             	mov    0x8(%ebp),%eax
    4af8:	8b 17                	mov    (%edi),%edx
    4afa:	e8 61 fe ff ff       	call   4960 <printint>
        ap++;
    4aff:	89 f8                	mov    %edi,%eax
    4b01:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4b04:	31 ff                	xor    %edi,%edi
        ap++;
    4b06:	83 c0 04             	add    $0x4,%eax
    4b09:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    4b0c:	e9 37 ff ff ff       	jmp    4a48 <printf+0x48>
    4b11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4b18:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4b1b:	8b 08                	mov    (%eax),%ecx
        ap++;
    4b1d:	83 c0 04             	add    $0x4,%eax
    4b20:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    4b23:	85 c9                	test   %ecx,%ecx
    4b25:	0f 84 8e 00 00 00    	je     4bb9 <printf+0x1b9>
        while(*s != 0){
    4b2b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    4b2e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    4b30:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    4b32:	84 c0                	test   %al,%al
    4b34:	0f 84 0e ff ff ff    	je     4a48 <printf+0x48>
    4b3a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    4b3d:	89 de                	mov    %ebx,%esi
    4b3f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4b42:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    4b45:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    4b48:	83 ec 04             	sub    $0x4,%esp
          s++;
    4b4b:	83 c6 01             	add    $0x1,%esi
    4b4e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    4b51:	6a 01                	push   $0x1
    4b53:	57                   	push   %edi
    4b54:	53                   	push   %ebx
    4b55:	e8 68 fd ff ff       	call   48c2 <write>
        while(*s != 0){
    4b5a:	0f b6 06             	movzbl (%esi),%eax
    4b5d:	83 c4 10             	add    $0x10,%esp
    4b60:	84 c0                	test   %al,%al
    4b62:	75 e4                	jne    4b48 <printf+0x148>
    4b64:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    4b67:	31 ff                	xor    %edi,%edi
    4b69:	e9 da fe ff ff       	jmp    4a48 <printf+0x48>
    4b6e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    4b70:	83 ec 0c             	sub    $0xc,%esp
    4b73:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4b78:	6a 01                	push   $0x1
    4b7a:	e9 73 ff ff ff       	jmp    4af2 <printf+0xf2>
    4b7f:	90                   	nop
  write(fd, &c, 1);
    4b80:	83 ec 04             	sub    $0x4,%esp
    4b83:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4b86:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4b89:	6a 01                	push   $0x1
    4b8b:	e9 21 ff ff ff       	jmp    4ab1 <printf+0xb1>
        putc(fd, *ap);
    4b90:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    4b93:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    4b96:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    4b98:	6a 01                	push   $0x1
        ap++;
    4b9a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    4b9d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4ba0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    4ba3:	50                   	push   %eax
    4ba4:	ff 75 08             	pushl  0x8(%ebp)
    4ba7:	e8 16 fd ff ff       	call   48c2 <write>
        ap++;
    4bac:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    4baf:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4bb2:	31 ff                	xor    %edi,%edi
    4bb4:	e9 8f fe ff ff       	jmp    4a48 <printf+0x48>
          s = "(null)";
    4bb9:	bb 2c 65 00 00       	mov    $0x652c,%ebx
        while(*s != 0){
    4bbe:	b8 28 00 00 00       	mov    $0x28,%eax
    4bc3:	e9 72 ff ff ff       	jmp    4b3a <printf+0x13a>
    4bc8:	66 90                	xchg   %ax,%ax
    4bca:	66 90                	xchg   %ax,%ax
    4bcc:	66 90                	xchg   %ax,%ax
    4bce:	66 90                	xchg   %ax,%ax

00004bd0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4bd0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4bd1:	a1 20 6f 00 00       	mov    0x6f20,%eax
{
    4bd6:	89 e5                	mov    %esp,%ebp
    4bd8:	57                   	push   %edi
    4bd9:	56                   	push   %esi
    4bda:	53                   	push   %ebx
    4bdb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    4bde:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    4be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4be8:	39 c8                	cmp    %ecx,%eax
    4bea:	8b 10                	mov    (%eax),%edx
    4bec:	73 32                	jae    4c20 <free+0x50>
    4bee:	39 d1                	cmp    %edx,%ecx
    4bf0:	72 04                	jb     4bf6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4bf2:	39 d0                	cmp    %edx,%eax
    4bf4:	72 32                	jb     4c28 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4bf6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4bf9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4bfc:	39 fa                	cmp    %edi,%edx
    4bfe:	74 30                	je     4c30 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    4c00:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4c03:	8b 50 04             	mov    0x4(%eax),%edx
    4c06:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4c09:	39 f1                	cmp    %esi,%ecx
    4c0b:	74 3a                	je     4c47 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4c0d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    4c0f:	a3 20 6f 00 00       	mov    %eax,0x6f20
}
    4c14:	5b                   	pop    %ebx
    4c15:	5e                   	pop    %esi
    4c16:	5f                   	pop    %edi
    4c17:	5d                   	pop    %ebp
    4c18:	c3                   	ret    
    4c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4c20:	39 d0                	cmp    %edx,%eax
    4c22:	72 04                	jb     4c28 <free+0x58>
    4c24:	39 d1                	cmp    %edx,%ecx
    4c26:	72 ce                	jb     4bf6 <free+0x26>
{
    4c28:	89 d0                	mov    %edx,%eax
    4c2a:	eb bc                	jmp    4be8 <free+0x18>
    4c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4c30:	03 72 04             	add    0x4(%edx),%esi
    4c33:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4c36:	8b 10                	mov    (%eax),%edx
    4c38:	8b 12                	mov    (%edx),%edx
    4c3a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4c3d:	8b 50 04             	mov    0x4(%eax),%edx
    4c40:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4c43:	39 f1                	cmp    %esi,%ecx
    4c45:	75 c6                	jne    4c0d <free+0x3d>
    p->s.size += bp->s.size;
    4c47:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    4c4a:	a3 20 6f 00 00       	mov    %eax,0x6f20
    p->s.size += bp->s.size;
    4c4f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4c52:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4c55:	89 10                	mov    %edx,(%eax)
}
    4c57:	5b                   	pop    %ebx
    4c58:	5e                   	pop    %esi
    4c59:	5f                   	pop    %edi
    4c5a:	5d                   	pop    %ebp
    4c5b:	c3                   	ret    
    4c5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004c60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4c60:	55                   	push   %ebp
    4c61:	89 e5                	mov    %esp,%ebp
    4c63:	57                   	push   %edi
    4c64:	56                   	push   %esi
    4c65:	53                   	push   %ebx
    4c66:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4c69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    4c6c:	8b 15 20 6f 00 00    	mov    0x6f20,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4c72:	8d 78 07             	lea    0x7(%eax),%edi
    4c75:	c1 ef 03             	shr    $0x3,%edi
    4c78:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    4c7b:	85 d2                	test   %edx,%edx
    4c7d:	0f 84 9d 00 00 00    	je     4d20 <malloc+0xc0>
    4c83:	8b 02                	mov    (%edx),%eax
    4c85:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4c88:	39 cf                	cmp    %ecx,%edi
    4c8a:	76 6c                	jbe    4cf8 <malloc+0x98>
    4c8c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4c92:	bb 00 10 00 00       	mov    $0x1000,%ebx
    4c97:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    4c9a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    4ca1:	eb 0e                	jmp    4cb1 <malloc+0x51>
    4ca3:	90                   	nop
    4ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4ca8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4caa:	8b 48 04             	mov    0x4(%eax),%ecx
    4cad:	39 f9                	cmp    %edi,%ecx
    4caf:	73 47                	jae    4cf8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4cb1:	39 05 20 6f 00 00    	cmp    %eax,0x6f20
    4cb7:	89 c2                	mov    %eax,%edx
    4cb9:	75 ed                	jne    4ca8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    4cbb:	83 ec 0c             	sub    $0xc,%esp
    4cbe:	56                   	push   %esi
    4cbf:	e8 66 fc ff ff       	call   492a <sbrk>
  if(p == (char*)-1)
    4cc4:	83 c4 10             	add    $0x10,%esp
    4cc7:	83 f8 ff             	cmp    $0xffffffff,%eax
    4cca:	74 1c                	je     4ce8 <malloc+0x88>
  hp->s.size = nu;
    4ccc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    4ccf:	83 ec 0c             	sub    $0xc,%esp
    4cd2:	83 c0 08             	add    $0x8,%eax
    4cd5:	50                   	push   %eax
    4cd6:	e8 f5 fe ff ff       	call   4bd0 <free>
  return freep;
    4cdb:	8b 15 20 6f 00 00    	mov    0x6f20,%edx
      if((p = morecore(nunits)) == 0)
    4ce1:	83 c4 10             	add    $0x10,%esp
    4ce4:	85 d2                	test   %edx,%edx
    4ce6:	75 c0                	jne    4ca8 <malloc+0x48>
        return 0;
  }
}
    4ce8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    4ceb:	31 c0                	xor    %eax,%eax
}
    4ced:	5b                   	pop    %ebx
    4cee:	5e                   	pop    %esi
    4cef:	5f                   	pop    %edi
    4cf0:	5d                   	pop    %ebp
    4cf1:	c3                   	ret    
    4cf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    4cf8:	39 cf                	cmp    %ecx,%edi
    4cfa:	74 54                	je     4d50 <malloc+0xf0>
        p->s.size -= nunits;
    4cfc:	29 f9                	sub    %edi,%ecx
    4cfe:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    4d01:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    4d04:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    4d07:	89 15 20 6f 00 00    	mov    %edx,0x6f20
}
    4d0d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    4d10:	83 c0 08             	add    $0x8,%eax
}
    4d13:	5b                   	pop    %ebx
    4d14:	5e                   	pop    %esi
    4d15:	5f                   	pop    %edi
    4d16:	5d                   	pop    %ebp
    4d17:	c3                   	ret    
    4d18:	90                   	nop
    4d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    4d20:	c7 05 20 6f 00 00 24 	movl   $0x6f24,0x6f20
    4d27:	6f 00 00 
    4d2a:	c7 05 24 6f 00 00 24 	movl   $0x6f24,0x6f24
    4d31:	6f 00 00 
    base.s.size = 0;
    4d34:	b8 24 6f 00 00       	mov    $0x6f24,%eax
    4d39:	c7 05 28 6f 00 00 00 	movl   $0x0,0x6f28
    4d40:	00 00 00 
    4d43:	e9 44 ff ff ff       	jmp    4c8c <malloc+0x2c>
    4d48:	90                   	nop
    4d49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    4d50:	8b 08                	mov    (%eax),%ecx
    4d52:	89 0a                	mov    %ecx,(%edx)
    4d54:	eb b1                	jmp    4d07 <malloc+0xa7>
    4d56:	66 90                	xchg   %ax,%ax
    4d58:	66 90                	xchg   %ax,%ax
    4d5a:	66 90                	xchg   %ax,%ax
    4d5c:	66 90                	xchg   %ax,%ax
    4d5e:	66 90                	xchg   %ax,%ax

00004d60 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    4d60:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    4d61:	b9 01 00 00 00       	mov    $0x1,%ecx
    4d66:	89 e5                	mov    %esp,%ebp
    4d68:	8b 55 08             	mov    0x8(%ebp),%edx
    4d6b:	90                   	nop
    4d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4d70:	89 c8                	mov    %ecx,%eax
    4d72:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    4d75:	85 c0                	test   %eax,%eax
    4d77:	75 f7                	jne    4d70 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    4d79:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    4d7e:	5d                   	pop    %ebp
    4d7f:	c3                   	ret    

00004d80 <urelease>:

void urelease (struct uspinlock *lk) {
    4d80:	55                   	push   %ebp
    4d81:	89 e5                	mov    %esp,%ebp
    4d83:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    4d86:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    4d8b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    4d91:	5d                   	pop    %ebp
    4d92:	c3                   	ret    
