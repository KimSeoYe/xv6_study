
_stressfs:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
    1007:	b8 30 00 00 00       	mov    $0x30,%eax
{
    100c:	ff 71 fc             	pushl  -0x4(%ecx)
    100f:	55                   	push   %ebp
    1010:	89 e5                	mov    %esp,%ebp
    1012:	57                   	push   %edi
    1013:	56                   	push   %esi
    1014:	53                   	push   %ebx
    1015:	51                   	push   %ecx
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
    1016:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi

  for(i = 0; i < 4; i++)
    101c:	31 db                	xor    %ebx,%ebx
{
    101e:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
    1024:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
    102b:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
    1032:	74 72 65 
  printf(1, "stressfs starting\n");
    1035:	68 84 18 00 00       	push   $0x1884
    103a:	6a 01                	push   $0x1
  char path[] = "stressfs0";
    103c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
    1043:	73 66 73 
  printf(1, "stressfs starting\n");
    1046:	e8 a5 04 00 00       	call   14f0 <printf>
  memset(data, 'a', sizeof(data));
    104b:	83 c4 0c             	add    $0xc,%esp
    104e:	68 00 02 00 00       	push   $0x200
    1053:	6a 61                	push   $0x61
    1055:	56                   	push   %esi
    1056:	e8 95 01 00 00       	call   11f0 <memset>
    105b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
    105e:	e8 27 03 00 00       	call   138a <fork>
    1063:	85 c0                	test   %eax,%eax
    1065:	0f 8f bf 00 00 00    	jg     112a <main+0x12a>
  for(i = 0; i < 4; i++)
    106b:	83 c3 01             	add    $0x1,%ebx
    106e:	83 fb 04             	cmp    $0x4,%ebx
    1071:	75 eb                	jne    105e <main+0x5e>
    1073:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
    1078:	83 ec 04             	sub    $0x4,%esp
    107b:	53                   	push   %ebx
    107c:	68 97 18 00 00       	push   $0x1897

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
    1081:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
    1086:	6a 01                	push   $0x1
    1088:	e8 63 04 00 00       	call   14f0 <printf>
  path[8] += i;
    108d:	89 f8                	mov    %edi,%eax
    108f:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
    1095:	5f                   	pop    %edi
    1096:	58                   	pop    %eax
    1097:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    109d:	68 02 02 00 00       	push   $0x202
    10a2:	50                   	push   %eax
    10a3:	e8 2a 03 00 00       	call   13d2 <open>
    10a8:	83 c4 10             	add    $0x10,%esp
    10ab:	89 c7                	mov    %eax,%edi
    10ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 20; i++)
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
    10b0:	83 ec 04             	sub    $0x4,%esp
    10b3:	68 00 02 00 00       	push   $0x200
    10b8:	56                   	push   %esi
    10b9:	57                   	push   %edi
    10ba:	e8 f3 02 00 00       	call   13b2 <write>
  for(i = 0; i < 20; i++)
    10bf:	83 c4 10             	add    $0x10,%esp
    10c2:	83 eb 01             	sub    $0x1,%ebx
    10c5:	75 e9                	jne    10b0 <main+0xb0>
  close(fd);
    10c7:	83 ec 0c             	sub    $0xc,%esp
    10ca:	57                   	push   %edi
    10cb:	e8 ea 02 00 00       	call   13ba <close>

  printf(1, "read\n");
    10d0:	58                   	pop    %eax
    10d1:	5a                   	pop    %edx
    10d2:	68 a1 18 00 00       	push   $0x18a1
    10d7:	6a 01                	push   $0x1
    10d9:	e8 12 04 00 00       	call   14f0 <printf>

  fd = open(path, O_RDONLY);
    10de:	59                   	pop    %ecx
    10df:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    10e5:	5b                   	pop    %ebx
    10e6:	6a 00                	push   $0x0
    10e8:	50                   	push   %eax
    10e9:	bb 14 00 00 00       	mov    $0x14,%ebx
    10ee:	e8 df 02 00 00       	call   13d2 <open>
    10f3:	83 c4 10             	add    $0x10,%esp
    10f6:	89 c7                	mov    %eax,%edi
    10f8:	90                   	nop
    10f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for (i = 0; i < 20; i++)
    read(fd, data, sizeof(data));
    1100:	83 ec 04             	sub    $0x4,%esp
    1103:	68 00 02 00 00       	push   $0x200
    1108:	56                   	push   %esi
    1109:	57                   	push   %edi
    110a:	e8 9b 02 00 00       	call   13aa <read>
  for (i = 0; i < 20; i++)
    110f:	83 c4 10             	add    $0x10,%esp
    1112:	83 eb 01             	sub    $0x1,%ebx
    1115:	75 e9                	jne    1100 <main+0x100>
  close(fd);
    1117:	83 ec 0c             	sub    $0xc,%esp
    111a:	57                   	push   %edi
    111b:	e8 9a 02 00 00       	call   13ba <close>

  wait();
    1120:	e8 75 02 00 00       	call   139a <wait>

  exit();
    1125:	e8 68 02 00 00       	call   1392 <exit>
    112a:	89 df                	mov    %ebx,%edi
    112c:	e9 47 ff ff ff       	jmp    1078 <main+0x78>
    1131:	66 90                	xchg   %ax,%ax
    1133:	66 90                	xchg   %ax,%ax
    1135:	66 90                	xchg   %ax,%ax
    1137:	66 90                	xchg   %ax,%ax
    1139:	66 90                	xchg   %ax,%ax
    113b:	66 90                	xchg   %ax,%ax
    113d:	66 90                	xchg   %ax,%ax
    113f:	90                   	nop

00001140 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	53                   	push   %ebx
    1144:	8b 45 08             	mov    0x8(%ebp),%eax
    1147:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    114a:	89 c2                	mov    %eax,%edx
    114c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1150:	83 c1 01             	add    $0x1,%ecx
    1153:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1157:	83 c2 01             	add    $0x1,%edx
    115a:	84 db                	test   %bl,%bl
    115c:	88 5a ff             	mov    %bl,-0x1(%edx)
    115f:	75 ef                	jne    1150 <strcpy+0x10>
    ;
  return os;
}
    1161:	5b                   	pop    %ebx
    1162:	5d                   	pop    %ebp
    1163:	c3                   	ret    
    1164:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    116a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1170:	55                   	push   %ebp
    1171:	89 e5                	mov    %esp,%ebp
    1173:	53                   	push   %ebx
    1174:	8b 55 08             	mov    0x8(%ebp),%edx
    1177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    117a:	0f b6 02             	movzbl (%edx),%eax
    117d:	0f b6 19             	movzbl (%ecx),%ebx
    1180:	84 c0                	test   %al,%al
    1182:	75 1c                	jne    11a0 <strcmp+0x30>
    1184:	eb 2a                	jmp    11b0 <strcmp+0x40>
    1186:	8d 76 00             	lea    0x0(%esi),%esi
    1189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1190:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1193:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1196:	83 c1 01             	add    $0x1,%ecx
    1199:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    119c:	84 c0                	test   %al,%al
    119e:	74 10                	je     11b0 <strcmp+0x40>
    11a0:	38 d8                	cmp    %bl,%al
    11a2:	74 ec                	je     1190 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11a4:	29 d8                	sub    %ebx,%eax
}
    11a6:	5b                   	pop    %ebx
    11a7:	5d                   	pop    %ebp
    11a8:	c3                   	ret    
    11a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11b0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11b2:	29 d8                	sub    %ebx,%eax
}
    11b4:	5b                   	pop    %ebx
    11b5:	5d                   	pop    %ebp
    11b6:	c3                   	ret    
    11b7:	89 f6                	mov    %esi,%esi
    11b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011c0 <strlen>:

uint
strlen(char *s)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    11c6:	80 39 00             	cmpb   $0x0,(%ecx)
    11c9:	74 15                	je     11e0 <strlen+0x20>
    11cb:	31 d2                	xor    %edx,%edx
    11cd:	8d 76 00             	lea    0x0(%esi),%esi
    11d0:	83 c2 01             	add    $0x1,%edx
    11d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    11d7:	89 d0                	mov    %edx,%eax
    11d9:	75 f5                	jne    11d0 <strlen+0x10>
    ;
  return n;
}
    11db:	5d                   	pop    %ebp
    11dc:	c3                   	ret    
    11dd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    11e0:	31 c0                	xor    %eax,%eax
}
    11e2:	5d                   	pop    %ebp
    11e3:	c3                   	ret    
    11e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	57                   	push   %edi
    11f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    11f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    11fa:	8b 45 0c             	mov    0xc(%ebp),%eax
    11fd:	89 d7                	mov    %edx,%edi
    11ff:	fc                   	cld    
    1200:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1202:	89 d0                	mov    %edx,%eax
    1204:	5f                   	pop    %edi
    1205:	5d                   	pop    %ebp
    1206:	c3                   	ret    
    1207:	89 f6                	mov    %esi,%esi
    1209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001210 <strchr>:

char*
strchr(const char *s, char c)
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	53                   	push   %ebx
    1214:	8b 45 08             	mov    0x8(%ebp),%eax
    1217:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    121a:	0f b6 10             	movzbl (%eax),%edx
    121d:	84 d2                	test   %dl,%dl
    121f:	74 1d                	je     123e <strchr+0x2e>
    if(*s == c)
    1221:	38 d3                	cmp    %dl,%bl
    1223:	89 d9                	mov    %ebx,%ecx
    1225:	75 0d                	jne    1234 <strchr+0x24>
    1227:	eb 17                	jmp    1240 <strchr+0x30>
    1229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1230:	38 ca                	cmp    %cl,%dl
    1232:	74 0c                	je     1240 <strchr+0x30>
  for(; *s; s++)
    1234:	83 c0 01             	add    $0x1,%eax
    1237:	0f b6 10             	movzbl (%eax),%edx
    123a:	84 d2                	test   %dl,%dl
    123c:	75 f2                	jne    1230 <strchr+0x20>
      return (char*)s;
  return 0;
    123e:	31 c0                	xor    %eax,%eax
}
    1240:	5b                   	pop    %ebx
    1241:	5d                   	pop    %ebp
    1242:	c3                   	ret    
    1243:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001250 <gets>:

char*
gets(char *buf, int max)
{
    1250:	55                   	push   %ebp
    1251:	89 e5                	mov    %esp,%ebp
    1253:	57                   	push   %edi
    1254:	56                   	push   %esi
    1255:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1256:	31 f6                	xor    %esi,%esi
    1258:	89 f3                	mov    %esi,%ebx
{
    125a:	83 ec 1c             	sub    $0x1c,%esp
    125d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1260:	eb 2f                	jmp    1291 <gets+0x41>
    1262:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1268:	8d 45 e7             	lea    -0x19(%ebp),%eax
    126b:	83 ec 04             	sub    $0x4,%esp
    126e:	6a 01                	push   $0x1
    1270:	50                   	push   %eax
    1271:	6a 00                	push   $0x0
    1273:	e8 32 01 00 00       	call   13aa <read>
    if(cc < 1)
    1278:	83 c4 10             	add    $0x10,%esp
    127b:	85 c0                	test   %eax,%eax
    127d:	7e 1c                	jle    129b <gets+0x4b>
      break;
    buf[i++] = c;
    127f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1283:	83 c7 01             	add    $0x1,%edi
    1286:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1289:	3c 0a                	cmp    $0xa,%al
    128b:	74 23                	je     12b0 <gets+0x60>
    128d:	3c 0d                	cmp    $0xd,%al
    128f:	74 1f                	je     12b0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1291:	83 c3 01             	add    $0x1,%ebx
    1294:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1297:	89 fe                	mov    %edi,%esi
    1299:	7c cd                	jl     1268 <gets+0x18>
    129b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    129d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12a0:	c6 03 00             	movb   $0x0,(%ebx)
}
    12a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12a6:	5b                   	pop    %ebx
    12a7:	5e                   	pop    %esi
    12a8:	5f                   	pop    %edi
    12a9:	5d                   	pop    %ebp
    12aa:	c3                   	ret    
    12ab:	90                   	nop
    12ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12b0:	8b 75 08             	mov    0x8(%ebp),%esi
    12b3:	8b 45 08             	mov    0x8(%ebp),%eax
    12b6:	01 de                	add    %ebx,%esi
    12b8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12ba:	c6 03 00             	movb   $0x0,(%ebx)
}
    12bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12c0:	5b                   	pop    %ebx
    12c1:	5e                   	pop    %esi
    12c2:	5f                   	pop    %edi
    12c3:	5d                   	pop    %ebp
    12c4:	c3                   	ret    
    12c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012d0 <stat>:

int
stat(char *n, struct stat *st)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	56                   	push   %esi
    12d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12d5:	83 ec 08             	sub    $0x8,%esp
    12d8:	6a 00                	push   $0x0
    12da:	ff 75 08             	pushl  0x8(%ebp)
    12dd:	e8 f0 00 00 00       	call   13d2 <open>
  if(fd < 0)
    12e2:	83 c4 10             	add    $0x10,%esp
    12e5:	85 c0                	test   %eax,%eax
    12e7:	78 27                	js     1310 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    12e9:	83 ec 08             	sub    $0x8,%esp
    12ec:	ff 75 0c             	pushl  0xc(%ebp)
    12ef:	89 c3                	mov    %eax,%ebx
    12f1:	50                   	push   %eax
    12f2:	e8 f3 00 00 00       	call   13ea <fstat>
  close(fd);
    12f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    12fa:	89 c6                	mov    %eax,%esi
  close(fd);
    12fc:	e8 b9 00 00 00       	call   13ba <close>
  return r;
    1301:	83 c4 10             	add    $0x10,%esp
}
    1304:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1307:	89 f0                	mov    %esi,%eax
    1309:	5b                   	pop    %ebx
    130a:	5e                   	pop    %esi
    130b:	5d                   	pop    %ebp
    130c:	c3                   	ret    
    130d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1310:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1315:	eb ed                	jmp    1304 <stat+0x34>
    1317:	89 f6                	mov    %esi,%esi
    1319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001320 <atoi>:

int
atoi(const char *s)
{
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	53                   	push   %ebx
    1324:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1327:	0f be 11             	movsbl (%ecx),%edx
    132a:	8d 42 d0             	lea    -0x30(%edx),%eax
    132d:	3c 09                	cmp    $0x9,%al
  n = 0;
    132f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1334:	77 1f                	ja     1355 <atoi+0x35>
    1336:	8d 76 00             	lea    0x0(%esi),%esi
    1339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1340:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1343:	83 c1 01             	add    $0x1,%ecx
    1346:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    134a:	0f be 11             	movsbl (%ecx),%edx
    134d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1350:	80 fb 09             	cmp    $0x9,%bl
    1353:	76 eb                	jbe    1340 <atoi+0x20>
  return n;
}
    1355:	5b                   	pop    %ebx
    1356:	5d                   	pop    %ebp
    1357:	c3                   	ret    
    1358:	90                   	nop
    1359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001360 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1360:	55                   	push   %ebp
    1361:	89 e5                	mov    %esp,%ebp
    1363:	56                   	push   %esi
    1364:	53                   	push   %ebx
    1365:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1368:	8b 45 08             	mov    0x8(%ebp),%eax
    136b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    136e:	85 db                	test   %ebx,%ebx
    1370:	7e 14                	jle    1386 <memmove+0x26>
    1372:	31 d2                	xor    %edx,%edx
    1374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1378:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    137c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    137f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1382:	39 d3                	cmp    %edx,%ebx
    1384:	75 f2                	jne    1378 <memmove+0x18>
  return vdst;
}
    1386:	5b                   	pop    %ebx
    1387:	5e                   	pop    %esi
    1388:	5d                   	pop    %ebp
    1389:	c3                   	ret    

0000138a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    138a:	b8 01 00 00 00       	mov    $0x1,%eax
    138f:	cd 40                	int    $0x40
    1391:	c3                   	ret    

00001392 <exit>:
SYSCALL(exit)
    1392:	b8 02 00 00 00       	mov    $0x2,%eax
    1397:	cd 40                	int    $0x40
    1399:	c3                   	ret    

0000139a <wait>:
SYSCALL(wait)
    139a:	b8 03 00 00 00       	mov    $0x3,%eax
    139f:	cd 40                	int    $0x40
    13a1:	c3                   	ret    

000013a2 <pipe>:
SYSCALL(pipe)
    13a2:	b8 04 00 00 00       	mov    $0x4,%eax
    13a7:	cd 40                	int    $0x40
    13a9:	c3                   	ret    

000013aa <read>:
SYSCALL(read)
    13aa:	b8 05 00 00 00       	mov    $0x5,%eax
    13af:	cd 40                	int    $0x40
    13b1:	c3                   	ret    

000013b2 <write>:
SYSCALL(write)
    13b2:	b8 10 00 00 00       	mov    $0x10,%eax
    13b7:	cd 40                	int    $0x40
    13b9:	c3                   	ret    

000013ba <close>:
SYSCALL(close)
    13ba:	b8 15 00 00 00       	mov    $0x15,%eax
    13bf:	cd 40                	int    $0x40
    13c1:	c3                   	ret    

000013c2 <kill>:
SYSCALL(kill)
    13c2:	b8 06 00 00 00       	mov    $0x6,%eax
    13c7:	cd 40                	int    $0x40
    13c9:	c3                   	ret    

000013ca <exec>:
SYSCALL(exec)
    13ca:	b8 07 00 00 00       	mov    $0x7,%eax
    13cf:	cd 40                	int    $0x40
    13d1:	c3                   	ret    

000013d2 <open>:
SYSCALL(open)
    13d2:	b8 0f 00 00 00       	mov    $0xf,%eax
    13d7:	cd 40                	int    $0x40
    13d9:	c3                   	ret    

000013da <mknod>:
SYSCALL(mknod)
    13da:	b8 11 00 00 00       	mov    $0x11,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <unlink>:
SYSCALL(unlink)
    13e2:	b8 12 00 00 00       	mov    $0x12,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <fstat>:
SYSCALL(fstat)
    13ea:	b8 08 00 00 00       	mov    $0x8,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    

000013f2 <link>:
SYSCALL(link)
    13f2:	b8 13 00 00 00       	mov    $0x13,%eax
    13f7:	cd 40                	int    $0x40
    13f9:	c3                   	ret    

000013fa <mkdir>:
SYSCALL(mkdir)
    13fa:	b8 14 00 00 00       	mov    $0x14,%eax
    13ff:	cd 40                	int    $0x40
    1401:	c3                   	ret    

00001402 <chdir>:
SYSCALL(chdir)
    1402:	b8 09 00 00 00       	mov    $0x9,%eax
    1407:	cd 40                	int    $0x40
    1409:	c3                   	ret    

0000140a <dup>:
SYSCALL(dup)
    140a:	b8 0a 00 00 00       	mov    $0xa,%eax
    140f:	cd 40                	int    $0x40
    1411:	c3                   	ret    

00001412 <getpid>:
SYSCALL(getpid)
    1412:	b8 0b 00 00 00       	mov    $0xb,%eax
    1417:	cd 40                	int    $0x40
    1419:	c3                   	ret    

0000141a <sbrk>:
SYSCALL(sbrk)
    141a:	b8 0c 00 00 00       	mov    $0xc,%eax
    141f:	cd 40                	int    $0x40
    1421:	c3                   	ret    

00001422 <sleep>:
SYSCALL(sleep)
    1422:	b8 0d 00 00 00       	mov    $0xd,%eax
    1427:	cd 40                	int    $0x40
    1429:	c3                   	ret    

0000142a <uptime>:
SYSCALL(uptime)
    142a:	b8 0e 00 00 00       	mov    $0xe,%eax
    142f:	cd 40                	int    $0x40
    1431:	c3                   	ret    

00001432 <shm_open>:
SYSCALL(shm_open)
    1432:	b8 16 00 00 00       	mov    $0x16,%eax
    1437:	cd 40                	int    $0x40
    1439:	c3                   	ret    

0000143a <shm_close>:
SYSCALL(shm_close)	
    143a:	b8 17 00 00 00       	mov    $0x17,%eax
    143f:	cd 40                	int    $0x40
    1441:	c3                   	ret    
    1442:	66 90                	xchg   %ax,%ax
    1444:	66 90                	xchg   %ax,%ax
    1446:	66 90                	xchg   %ax,%ax
    1448:	66 90                	xchg   %ax,%ax
    144a:	66 90                	xchg   %ax,%ax
    144c:	66 90                	xchg   %ax,%ax
    144e:	66 90                	xchg   %ax,%ax

00001450 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1450:	55                   	push   %ebp
    1451:	89 e5                	mov    %esp,%ebp
    1453:	57                   	push   %edi
    1454:	56                   	push   %esi
    1455:	53                   	push   %ebx
    1456:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1459:	85 d2                	test   %edx,%edx
{
    145b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    145e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1460:	79 76                	jns    14d8 <printint+0x88>
    1462:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1466:	74 70                	je     14d8 <printint+0x88>
    x = -xx;
    1468:	f7 d8                	neg    %eax
    neg = 1;
    146a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1471:	31 f6                	xor    %esi,%esi
    1473:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1476:	eb 0a                	jmp    1482 <printint+0x32>
    1478:	90                   	nop
    1479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1480:	89 fe                	mov    %edi,%esi
    1482:	31 d2                	xor    %edx,%edx
    1484:	8d 7e 01             	lea    0x1(%esi),%edi
    1487:	f7 f1                	div    %ecx
    1489:	0f b6 92 b0 18 00 00 	movzbl 0x18b0(%edx),%edx
  }while((x /= base) != 0);
    1490:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1492:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1495:	75 e9                	jne    1480 <printint+0x30>
  if(neg)
    1497:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    149a:	85 c0                	test   %eax,%eax
    149c:	74 08                	je     14a6 <printint+0x56>
    buf[i++] = '-';
    149e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    14a3:	8d 7e 02             	lea    0x2(%esi),%edi
    14a6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    14aa:	8b 7d c0             	mov    -0x40(%ebp),%edi
    14ad:	8d 76 00             	lea    0x0(%esi),%esi
    14b0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    14b3:	83 ec 04             	sub    $0x4,%esp
    14b6:	83 ee 01             	sub    $0x1,%esi
    14b9:	6a 01                	push   $0x1
    14bb:	53                   	push   %ebx
    14bc:	57                   	push   %edi
    14bd:	88 45 d7             	mov    %al,-0x29(%ebp)
    14c0:	e8 ed fe ff ff       	call   13b2 <write>

  while(--i >= 0)
    14c5:	83 c4 10             	add    $0x10,%esp
    14c8:	39 de                	cmp    %ebx,%esi
    14ca:	75 e4                	jne    14b0 <printint+0x60>
    putc(fd, buf[i]);
}
    14cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14cf:	5b                   	pop    %ebx
    14d0:	5e                   	pop    %esi
    14d1:	5f                   	pop    %edi
    14d2:	5d                   	pop    %ebp
    14d3:	c3                   	ret    
    14d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    14d8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    14df:	eb 90                	jmp    1471 <printint+0x21>
    14e1:	eb 0d                	jmp    14f0 <printf>
    14e3:	90                   	nop
    14e4:	90                   	nop
    14e5:	90                   	nop
    14e6:	90                   	nop
    14e7:	90                   	nop
    14e8:	90                   	nop
    14e9:	90                   	nop
    14ea:	90                   	nop
    14eb:	90                   	nop
    14ec:	90                   	nop
    14ed:	90                   	nop
    14ee:	90                   	nop
    14ef:	90                   	nop

000014f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    14f0:	55                   	push   %ebp
    14f1:	89 e5                	mov    %esp,%ebp
    14f3:	57                   	push   %edi
    14f4:	56                   	push   %esi
    14f5:	53                   	push   %ebx
    14f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    14f9:	8b 75 0c             	mov    0xc(%ebp),%esi
    14fc:	0f b6 1e             	movzbl (%esi),%ebx
    14ff:	84 db                	test   %bl,%bl
    1501:	0f 84 b3 00 00 00    	je     15ba <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    1507:	8d 45 10             	lea    0x10(%ebp),%eax
    150a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    150d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    150f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1512:	eb 2f                	jmp    1543 <printf+0x53>
    1514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1518:	83 f8 25             	cmp    $0x25,%eax
    151b:	0f 84 a7 00 00 00    	je     15c8 <printf+0xd8>
  write(fd, &c, 1);
    1521:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1524:	83 ec 04             	sub    $0x4,%esp
    1527:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    152a:	6a 01                	push   $0x1
    152c:	50                   	push   %eax
    152d:	ff 75 08             	pushl  0x8(%ebp)
    1530:	e8 7d fe ff ff       	call   13b2 <write>
    1535:	83 c4 10             	add    $0x10,%esp
    1538:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    153b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    153f:	84 db                	test   %bl,%bl
    1541:	74 77                	je     15ba <printf+0xca>
    if(state == 0){
    1543:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1545:	0f be cb             	movsbl %bl,%ecx
    1548:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    154b:	74 cb                	je     1518 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    154d:	83 ff 25             	cmp    $0x25,%edi
    1550:	75 e6                	jne    1538 <printf+0x48>
      if(c == 'd'){
    1552:	83 f8 64             	cmp    $0x64,%eax
    1555:	0f 84 05 01 00 00    	je     1660 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    155b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1561:	83 f9 70             	cmp    $0x70,%ecx
    1564:	74 72                	je     15d8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1566:	83 f8 73             	cmp    $0x73,%eax
    1569:	0f 84 99 00 00 00    	je     1608 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    156f:	83 f8 63             	cmp    $0x63,%eax
    1572:	0f 84 08 01 00 00    	je     1680 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1578:	83 f8 25             	cmp    $0x25,%eax
    157b:	0f 84 ef 00 00 00    	je     1670 <printf+0x180>
  write(fd, &c, 1);
    1581:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1584:	83 ec 04             	sub    $0x4,%esp
    1587:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    158b:	6a 01                	push   $0x1
    158d:	50                   	push   %eax
    158e:	ff 75 08             	pushl  0x8(%ebp)
    1591:	e8 1c fe ff ff       	call   13b2 <write>
    1596:	83 c4 0c             	add    $0xc,%esp
    1599:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    159c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    159f:	6a 01                	push   $0x1
    15a1:	50                   	push   %eax
    15a2:	ff 75 08             	pushl  0x8(%ebp)
    15a5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    15a8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    15aa:	e8 03 fe ff ff       	call   13b2 <write>
  for(i = 0; fmt[i]; i++){
    15af:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    15b3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    15b6:	84 db                	test   %bl,%bl
    15b8:	75 89                	jne    1543 <printf+0x53>
    }
  }
}
    15ba:	8d 65 f4             	lea    -0xc(%ebp),%esp
    15bd:	5b                   	pop    %ebx
    15be:	5e                   	pop    %esi
    15bf:	5f                   	pop    %edi
    15c0:	5d                   	pop    %ebp
    15c1:	c3                   	ret    
    15c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    15c8:	bf 25 00 00 00       	mov    $0x25,%edi
    15cd:	e9 66 ff ff ff       	jmp    1538 <printf+0x48>
    15d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    15d8:	83 ec 0c             	sub    $0xc,%esp
    15db:	b9 10 00 00 00       	mov    $0x10,%ecx
    15e0:	6a 00                	push   $0x0
    15e2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    15e5:	8b 45 08             	mov    0x8(%ebp),%eax
    15e8:	8b 17                	mov    (%edi),%edx
    15ea:	e8 61 fe ff ff       	call   1450 <printint>
        ap++;
    15ef:	89 f8                	mov    %edi,%eax
    15f1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    15f4:	31 ff                	xor    %edi,%edi
        ap++;
    15f6:	83 c0 04             	add    $0x4,%eax
    15f9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    15fc:	e9 37 ff ff ff       	jmp    1538 <printf+0x48>
    1601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1608:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    160b:	8b 08                	mov    (%eax),%ecx
        ap++;
    160d:	83 c0 04             	add    $0x4,%eax
    1610:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1613:	85 c9                	test   %ecx,%ecx
    1615:	0f 84 8e 00 00 00    	je     16a9 <printf+0x1b9>
        while(*s != 0){
    161b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    161e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1620:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1622:	84 c0                	test   %al,%al
    1624:	0f 84 0e ff ff ff    	je     1538 <printf+0x48>
    162a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    162d:	89 de                	mov    %ebx,%esi
    162f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1632:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1635:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1638:	83 ec 04             	sub    $0x4,%esp
          s++;
    163b:	83 c6 01             	add    $0x1,%esi
    163e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1641:	6a 01                	push   $0x1
    1643:	57                   	push   %edi
    1644:	53                   	push   %ebx
    1645:	e8 68 fd ff ff       	call   13b2 <write>
        while(*s != 0){
    164a:	0f b6 06             	movzbl (%esi),%eax
    164d:	83 c4 10             	add    $0x10,%esp
    1650:	84 c0                	test   %al,%al
    1652:	75 e4                	jne    1638 <printf+0x148>
    1654:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1657:	31 ff                	xor    %edi,%edi
    1659:	e9 da fe ff ff       	jmp    1538 <printf+0x48>
    165e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1660:	83 ec 0c             	sub    $0xc,%esp
    1663:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1668:	6a 01                	push   $0x1
    166a:	e9 73 ff ff ff       	jmp    15e2 <printf+0xf2>
    166f:	90                   	nop
  write(fd, &c, 1);
    1670:	83 ec 04             	sub    $0x4,%esp
    1673:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1676:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1679:	6a 01                	push   $0x1
    167b:	e9 21 ff ff ff       	jmp    15a1 <printf+0xb1>
        putc(fd, *ap);
    1680:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1683:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1686:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1688:	6a 01                	push   $0x1
        ap++;
    168a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    168d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1690:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1693:	50                   	push   %eax
    1694:	ff 75 08             	pushl  0x8(%ebp)
    1697:	e8 16 fd ff ff       	call   13b2 <write>
        ap++;
    169c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    169f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    16a2:	31 ff                	xor    %edi,%edi
    16a4:	e9 8f fe ff ff       	jmp    1538 <printf+0x48>
          s = "(null)";
    16a9:	bb a7 18 00 00       	mov    $0x18a7,%ebx
        while(*s != 0){
    16ae:	b8 28 00 00 00       	mov    $0x28,%eax
    16b3:	e9 72 ff ff ff       	jmp    162a <printf+0x13a>
    16b8:	66 90                	xchg   %ax,%ax
    16ba:	66 90                	xchg   %ax,%ax
    16bc:	66 90                	xchg   %ax,%ax
    16be:	66 90                	xchg   %ax,%ax

000016c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    16c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    16c1:	a1 a0 1b 00 00       	mov    0x1ba0,%eax
{
    16c6:	89 e5                	mov    %esp,%ebp
    16c8:	57                   	push   %edi
    16c9:	56                   	push   %esi
    16ca:	53                   	push   %ebx
    16cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    16ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    16d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    16d8:	39 c8                	cmp    %ecx,%eax
    16da:	8b 10                	mov    (%eax),%edx
    16dc:	73 32                	jae    1710 <free+0x50>
    16de:	39 d1                	cmp    %edx,%ecx
    16e0:	72 04                	jb     16e6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    16e2:	39 d0                	cmp    %edx,%eax
    16e4:	72 32                	jb     1718 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    16e6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    16e9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    16ec:	39 fa                	cmp    %edi,%edx
    16ee:	74 30                	je     1720 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    16f0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    16f3:	8b 50 04             	mov    0x4(%eax),%edx
    16f6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    16f9:	39 f1                	cmp    %esi,%ecx
    16fb:	74 3a                	je     1737 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    16fd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    16ff:	a3 a0 1b 00 00       	mov    %eax,0x1ba0
}
    1704:	5b                   	pop    %ebx
    1705:	5e                   	pop    %esi
    1706:	5f                   	pop    %edi
    1707:	5d                   	pop    %ebp
    1708:	c3                   	ret    
    1709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1710:	39 d0                	cmp    %edx,%eax
    1712:	72 04                	jb     1718 <free+0x58>
    1714:	39 d1                	cmp    %edx,%ecx
    1716:	72 ce                	jb     16e6 <free+0x26>
{
    1718:	89 d0                	mov    %edx,%eax
    171a:	eb bc                	jmp    16d8 <free+0x18>
    171c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1720:	03 72 04             	add    0x4(%edx),%esi
    1723:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1726:	8b 10                	mov    (%eax),%edx
    1728:	8b 12                	mov    (%edx),%edx
    172a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    172d:	8b 50 04             	mov    0x4(%eax),%edx
    1730:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1733:	39 f1                	cmp    %esi,%ecx
    1735:	75 c6                	jne    16fd <free+0x3d>
    p->s.size += bp->s.size;
    1737:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    173a:	a3 a0 1b 00 00       	mov    %eax,0x1ba0
    p->s.size += bp->s.size;
    173f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1742:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1745:	89 10                	mov    %edx,(%eax)
}
    1747:	5b                   	pop    %ebx
    1748:	5e                   	pop    %esi
    1749:	5f                   	pop    %edi
    174a:	5d                   	pop    %ebp
    174b:	c3                   	ret    
    174c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001750 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1750:	55                   	push   %ebp
    1751:	89 e5                	mov    %esp,%ebp
    1753:	57                   	push   %edi
    1754:	56                   	push   %esi
    1755:	53                   	push   %ebx
    1756:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1759:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    175c:	8b 15 a0 1b 00 00    	mov    0x1ba0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1762:	8d 78 07             	lea    0x7(%eax),%edi
    1765:	c1 ef 03             	shr    $0x3,%edi
    1768:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    176b:	85 d2                	test   %edx,%edx
    176d:	0f 84 9d 00 00 00    	je     1810 <malloc+0xc0>
    1773:	8b 02                	mov    (%edx),%eax
    1775:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1778:	39 cf                	cmp    %ecx,%edi
    177a:	76 6c                	jbe    17e8 <malloc+0x98>
    177c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1782:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1787:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    178a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1791:	eb 0e                	jmp    17a1 <malloc+0x51>
    1793:	90                   	nop
    1794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1798:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    179a:	8b 48 04             	mov    0x4(%eax),%ecx
    179d:	39 f9                	cmp    %edi,%ecx
    179f:	73 47                	jae    17e8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    17a1:	39 05 a0 1b 00 00    	cmp    %eax,0x1ba0
    17a7:	89 c2                	mov    %eax,%edx
    17a9:	75 ed                	jne    1798 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    17ab:	83 ec 0c             	sub    $0xc,%esp
    17ae:	56                   	push   %esi
    17af:	e8 66 fc ff ff       	call   141a <sbrk>
  if(p == (char*)-1)
    17b4:	83 c4 10             	add    $0x10,%esp
    17b7:	83 f8 ff             	cmp    $0xffffffff,%eax
    17ba:	74 1c                	je     17d8 <malloc+0x88>
  hp->s.size = nu;
    17bc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    17bf:	83 ec 0c             	sub    $0xc,%esp
    17c2:	83 c0 08             	add    $0x8,%eax
    17c5:	50                   	push   %eax
    17c6:	e8 f5 fe ff ff       	call   16c0 <free>
  return freep;
    17cb:	8b 15 a0 1b 00 00    	mov    0x1ba0,%edx
      if((p = morecore(nunits)) == 0)
    17d1:	83 c4 10             	add    $0x10,%esp
    17d4:	85 d2                	test   %edx,%edx
    17d6:	75 c0                	jne    1798 <malloc+0x48>
        return 0;
  }
}
    17d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    17db:	31 c0                	xor    %eax,%eax
}
    17dd:	5b                   	pop    %ebx
    17de:	5e                   	pop    %esi
    17df:	5f                   	pop    %edi
    17e0:	5d                   	pop    %ebp
    17e1:	c3                   	ret    
    17e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    17e8:	39 cf                	cmp    %ecx,%edi
    17ea:	74 54                	je     1840 <malloc+0xf0>
        p->s.size -= nunits;
    17ec:	29 f9                	sub    %edi,%ecx
    17ee:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    17f1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    17f4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    17f7:	89 15 a0 1b 00 00    	mov    %edx,0x1ba0
}
    17fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1800:	83 c0 08             	add    $0x8,%eax
}
    1803:	5b                   	pop    %ebx
    1804:	5e                   	pop    %esi
    1805:	5f                   	pop    %edi
    1806:	5d                   	pop    %ebp
    1807:	c3                   	ret    
    1808:	90                   	nop
    1809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1810:	c7 05 a0 1b 00 00 a4 	movl   $0x1ba4,0x1ba0
    1817:	1b 00 00 
    181a:	c7 05 a4 1b 00 00 a4 	movl   $0x1ba4,0x1ba4
    1821:	1b 00 00 
    base.s.size = 0;
    1824:	b8 a4 1b 00 00       	mov    $0x1ba4,%eax
    1829:	c7 05 a8 1b 00 00 00 	movl   $0x0,0x1ba8
    1830:	00 00 00 
    1833:	e9 44 ff ff ff       	jmp    177c <malloc+0x2c>
    1838:	90                   	nop
    1839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1840:	8b 08                	mov    (%eax),%ecx
    1842:	89 0a                	mov    %ecx,(%edx)
    1844:	eb b1                	jmp    17f7 <malloc+0xa7>
    1846:	66 90                	xchg   %ax,%ax
    1848:	66 90                	xchg   %ax,%ax
    184a:	66 90                	xchg   %ax,%ax
    184c:	66 90                	xchg   %ax,%ax
    184e:	66 90                	xchg   %ax,%ax

00001850 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1850:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1851:	b9 01 00 00 00       	mov    $0x1,%ecx
    1856:	89 e5                	mov    %esp,%ebp
    1858:	8b 55 08             	mov    0x8(%ebp),%edx
    185b:	90                   	nop
    185c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1860:	89 c8                	mov    %ecx,%eax
    1862:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1865:	85 c0                	test   %eax,%eax
    1867:	75 f7                	jne    1860 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1869:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    186e:	5d                   	pop    %ebp
    186f:	c3                   	ret    

00001870 <urelease>:

void urelease (struct uspinlock *lk) {
    1870:	55                   	push   %ebp
    1871:	89 e5                	mov    %esp,%ebp
    1873:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1876:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    187b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1881:	5d                   	pop    %ebp
    1882:	c3                   	ret    
