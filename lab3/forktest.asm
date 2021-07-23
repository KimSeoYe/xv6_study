
_forktest:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	ff 71 fc             	pushl  -0x4(%ecx)
    100a:	55                   	push   %ebp
    100b:	89 e5                	mov    %esp,%ebp
    100d:	51                   	push   %ecx
    100e:	83 ec 04             	sub    $0x4,%esp
  forktest();
    1011:	e8 3a 00 00 00       	call   1050 <forktest>
  exit();
    1016:	e8 87 03 00 00       	call   13a2 <exit>
    101b:	66 90                	xchg   %ax,%ax
    101d:	66 90                	xchg   %ax,%ax
    101f:	90                   	nop

00001020 <printf>:
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	53                   	push   %ebx
    1024:	83 ec 10             	sub    $0x10,%esp
    1027:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
    102a:	53                   	push   %ebx
    102b:	e8 a0 01 00 00       	call   11d0 <strlen>
    1030:	83 c4 0c             	add    $0xc,%esp
    1033:	50                   	push   %eax
    1034:	53                   	push   %ebx
    1035:	ff 75 08             	pushl  0x8(%ebp)
    1038:	e8 85 03 00 00       	call   13c2 <write>
}
    103d:	83 c4 10             	add    $0x10,%esp
    1040:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1043:	c9                   	leave  
    1044:	c3                   	ret    
    1045:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001050 <forktest>:
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	53                   	push   %ebx
  for(n=0; n<N; n++){
    1054:	31 db                	xor    %ebx,%ebx
{
    1056:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
    1059:	68 54 14 00 00       	push   $0x1454
    105e:	e8 6d 01 00 00       	call   11d0 <strlen>
    1063:	83 c4 0c             	add    $0xc,%esp
    1066:	50                   	push   %eax
    1067:	68 54 14 00 00       	push   $0x1454
    106c:	6a 01                	push   $0x1
    106e:	e8 4f 03 00 00       	call   13c2 <write>
    1073:	83 c4 10             	add    $0x10,%esp
    1076:	eb 19                	jmp    1091 <forktest+0x41>
    1078:	90                   	nop
    1079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
    1080:	0f 84 7c 00 00 00    	je     1102 <forktest+0xb2>
  for(n=0; n<N; n++){
    1086:	83 c3 01             	add    $0x1,%ebx
    1089:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    108f:	74 4f                	je     10e0 <forktest+0x90>
    pid = fork();
    1091:	e8 04 03 00 00       	call   139a <fork>
    if(pid < 0)
    1096:	85 c0                	test   %eax,%eax
    1098:	79 e6                	jns    1080 <forktest+0x30>
  for(; n > 0; n--){
    109a:	85 db                	test   %ebx,%ebx
    109c:	74 10                	je     10ae <forktest+0x5e>
    109e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
    10a0:	e8 05 03 00 00       	call   13aa <wait>
    10a5:	85 c0                	test   %eax,%eax
    10a7:	78 5e                	js     1107 <forktest+0xb7>
  for(; n > 0; n--){
    10a9:	83 eb 01             	sub    $0x1,%ebx
    10ac:	75 f2                	jne    10a0 <forktest+0x50>
  if(wait() != -1){
    10ae:	e8 f7 02 00 00       	call   13aa <wait>
    10b3:	83 f8 ff             	cmp    $0xffffffff,%eax
    10b6:	75 71                	jne    1129 <forktest+0xd9>
  write(fd, s, strlen(s));
    10b8:	83 ec 0c             	sub    $0xc,%esp
    10bb:	68 86 14 00 00       	push   $0x1486
    10c0:	e8 0b 01 00 00       	call   11d0 <strlen>
    10c5:	83 c4 0c             	add    $0xc,%esp
    10c8:	50                   	push   %eax
    10c9:	68 86 14 00 00       	push   $0x1486
    10ce:	6a 01                	push   $0x1
    10d0:	e8 ed 02 00 00       	call   13c2 <write>
}
    10d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    10d8:	c9                   	leave  
    10d9:	c3                   	ret    
    10da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, s, strlen(s));
    10e0:	83 ec 0c             	sub    $0xc,%esp
    10e3:	68 94 14 00 00       	push   $0x1494
    10e8:	e8 e3 00 00 00       	call   11d0 <strlen>
    10ed:	83 c4 0c             	add    $0xc,%esp
    10f0:	50                   	push   %eax
    10f1:	68 94 14 00 00       	push   $0x1494
    10f6:	6a 01                	push   $0x1
    10f8:	e8 c5 02 00 00       	call   13c2 <write>
    exit();
    10fd:	e8 a0 02 00 00       	call   13a2 <exit>
      exit();
    1102:	e8 9b 02 00 00       	call   13a2 <exit>
  write(fd, s, strlen(s));
    1107:	83 ec 0c             	sub    $0xc,%esp
    110a:	68 5f 14 00 00       	push   $0x145f
    110f:	e8 bc 00 00 00       	call   11d0 <strlen>
    1114:	83 c4 0c             	add    $0xc,%esp
    1117:	50                   	push   %eax
    1118:	68 5f 14 00 00       	push   $0x145f
    111d:	6a 01                	push   $0x1
    111f:	e8 9e 02 00 00       	call   13c2 <write>
      exit();
    1124:	e8 79 02 00 00       	call   13a2 <exit>
  write(fd, s, strlen(s));
    1129:	83 ec 0c             	sub    $0xc,%esp
    112c:	68 73 14 00 00       	push   $0x1473
    1131:	e8 9a 00 00 00       	call   11d0 <strlen>
    1136:	83 c4 0c             	add    $0xc,%esp
    1139:	50                   	push   %eax
    113a:	68 73 14 00 00       	push   $0x1473
    113f:	6a 01                	push   $0x1
    1141:	e8 7c 02 00 00       	call   13c2 <write>
    exit();
    1146:	e8 57 02 00 00       	call   13a2 <exit>
    114b:	66 90                	xchg   %ax,%ax
    114d:	66 90                	xchg   %ax,%ax
    114f:	90                   	nop

00001150 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1150:	55                   	push   %ebp
    1151:	89 e5                	mov    %esp,%ebp
    1153:	53                   	push   %ebx
    1154:	8b 45 08             	mov    0x8(%ebp),%eax
    1157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    115a:	89 c2                	mov    %eax,%edx
    115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1160:	83 c1 01             	add    $0x1,%ecx
    1163:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1167:	83 c2 01             	add    $0x1,%edx
    116a:	84 db                	test   %bl,%bl
    116c:	88 5a ff             	mov    %bl,-0x1(%edx)
    116f:	75 ef                	jne    1160 <strcpy+0x10>
    ;
  return os;
}
    1171:	5b                   	pop    %ebx
    1172:	5d                   	pop    %ebp
    1173:	c3                   	ret    
    1174:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    117a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001180 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1180:	55                   	push   %ebp
    1181:	89 e5                	mov    %esp,%ebp
    1183:	53                   	push   %ebx
    1184:	8b 55 08             	mov    0x8(%ebp),%edx
    1187:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    118a:	0f b6 02             	movzbl (%edx),%eax
    118d:	0f b6 19             	movzbl (%ecx),%ebx
    1190:	84 c0                	test   %al,%al
    1192:	75 1c                	jne    11b0 <strcmp+0x30>
    1194:	eb 2a                	jmp    11c0 <strcmp+0x40>
    1196:	8d 76 00             	lea    0x0(%esi),%esi
    1199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    11a0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11a3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    11a6:	83 c1 01             	add    $0x1,%ecx
    11a9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    11ac:	84 c0                	test   %al,%al
    11ae:	74 10                	je     11c0 <strcmp+0x40>
    11b0:	38 d8                	cmp    %bl,%al
    11b2:	74 ec                	je     11a0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11b4:	29 d8                	sub    %ebx,%eax
}
    11b6:	5b                   	pop    %ebx
    11b7:	5d                   	pop    %ebp
    11b8:	c3                   	ret    
    11b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11c0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11c2:	29 d8                	sub    %ebx,%eax
}
    11c4:	5b                   	pop    %ebx
    11c5:	5d                   	pop    %ebp
    11c6:	c3                   	ret    
    11c7:	89 f6                	mov    %esi,%esi
    11c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011d0 <strlen>:

uint
strlen(char *s)
{
    11d0:	55                   	push   %ebp
    11d1:	89 e5                	mov    %esp,%ebp
    11d3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    11d6:	80 39 00             	cmpb   $0x0,(%ecx)
    11d9:	74 15                	je     11f0 <strlen+0x20>
    11db:	31 d2                	xor    %edx,%edx
    11dd:	8d 76 00             	lea    0x0(%esi),%esi
    11e0:	83 c2 01             	add    $0x1,%edx
    11e3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    11e7:	89 d0                	mov    %edx,%eax
    11e9:	75 f5                	jne    11e0 <strlen+0x10>
    ;
  return n;
}
    11eb:	5d                   	pop    %ebp
    11ec:	c3                   	ret    
    11ed:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    11f0:	31 c0                	xor    %eax,%eax
}
    11f2:	5d                   	pop    %ebp
    11f3:	c3                   	ret    
    11f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001200 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	57                   	push   %edi
    1204:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1207:	8b 4d 10             	mov    0x10(%ebp),%ecx
    120a:	8b 45 0c             	mov    0xc(%ebp),%eax
    120d:	89 d7                	mov    %edx,%edi
    120f:	fc                   	cld    
    1210:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1212:	89 d0                	mov    %edx,%eax
    1214:	5f                   	pop    %edi
    1215:	5d                   	pop    %ebp
    1216:	c3                   	ret    
    1217:	89 f6                	mov    %esi,%esi
    1219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001220 <strchr>:

char*
strchr(const char *s, char c)
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	53                   	push   %ebx
    1224:	8b 45 08             	mov    0x8(%ebp),%eax
    1227:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    122a:	0f b6 10             	movzbl (%eax),%edx
    122d:	84 d2                	test   %dl,%dl
    122f:	74 1d                	je     124e <strchr+0x2e>
    if(*s == c)
    1231:	38 d3                	cmp    %dl,%bl
    1233:	89 d9                	mov    %ebx,%ecx
    1235:	75 0d                	jne    1244 <strchr+0x24>
    1237:	eb 17                	jmp    1250 <strchr+0x30>
    1239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1240:	38 ca                	cmp    %cl,%dl
    1242:	74 0c                	je     1250 <strchr+0x30>
  for(; *s; s++)
    1244:	83 c0 01             	add    $0x1,%eax
    1247:	0f b6 10             	movzbl (%eax),%edx
    124a:	84 d2                	test   %dl,%dl
    124c:	75 f2                	jne    1240 <strchr+0x20>
      return (char*)s;
  return 0;
    124e:	31 c0                	xor    %eax,%eax
}
    1250:	5b                   	pop    %ebx
    1251:	5d                   	pop    %ebp
    1252:	c3                   	ret    
    1253:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001260 <gets>:

char*
gets(char *buf, int max)
{
    1260:	55                   	push   %ebp
    1261:	89 e5                	mov    %esp,%ebp
    1263:	57                   	push   %edi
    1264:	56                   	push   %esi
    1265:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1266:	31 f6                	xor    %esi,%esi
    1268:	89 f3                	mov    %esi,%ebx
{
    126a:	83 ec 1c             	sub    $0x1c,%esp
    126d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1270:	eb 2f                	jmp    12a1 <gets+0x41>
    1272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1278:	8d 45 e7             	lea    -0x19(%ebp),%eax
    127b:	83 ec 04             	sub    $0x4,%esp
    127e:	6a 01                	push   $0x1
    1280:	50                   	push   %eax
    1281:	6a 00                	push   $0x0
    1283:	e8 32 01 00 00       	call   13ba <read>
    if(cc < 1)
    1288:	83 c4 10             	add    $0x10,%esp
    128b:	85 c0                	test   %eax,%eax
    128d:	7e 1c                	jle    12ab <gets+0x4b>
      break;
    buf[i++] = c;
    128f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1293:	83 c7 01             	add    $0x1,%edi
    1296:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1299:	3c 0a                	cmp    $0xa,%al
    129b:	74 23                	je     12c0 <gets+0x60>
    129d:	3c 0d                	cmp    $0xd,%al
    129f:	74 1f                	je     12c0 <gets+0x60>
  for(i=0; i+1 < max; ){
    12a1:	83 c3 01             	add    $0x1,%ebx
    12a4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    12a7:	89 fe                	mov    %edi,%esi
    12a9:	7c cd                	jl     1278 <gets+0x18>
    12ab:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    12ad:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12b0:	c6 03 00             	movb   $0x0,(%ebx)
}
    12b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12b6:	5b                   	pop    %ebx
    12b7:	5e                   	pop    %esi
    12b8:	5f                   	pop    %edi
    12b9:	5d                   	pop    %ebp
    12ba:	c3                   	ret    
    12bb:	90                   	nop
    12bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12c0:	8b 75 08             	mov    0x8(%ebp),%esi
    12c3:	8b 45 08             	mov    0x8(%ebp),%eax
    12c6:	01 de                	add    %ebx,%esi
    12c8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12ca:	c6 03 00             	movb   $0x0,(%ebx)
}
    12cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12d0:	5b                   	pop    %ebx
    12d1:	5e                   	pop    %esi
    12d2:	5f                   	pop    %edi
    12d3:	5d                   	pop    %ebp
    12d4:	c3                   	ret    
    12d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012e0 <stat>:

int
stat(char *n, struct stat *st)
{
    12e0:	55                   	push   %ebp
    12e1:	89 e5                	mov    %esp,%ebp
    12e3:	56                   	push   %esi
    12e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12e5:	83 ec 08             	sub    $0x8,%esp
    12e8:	6a 00                	push   $0x0
    12ea:	ff 75 08             	pushl  0x8(%ebp)
    12ed:	e8 f0 00 00 00       	call   13e2 <open>
  if(fd < 0)
    12f2:	83 c4 10             	add    $0x10,%esp
    12f5:	85 c0                	test   %eax,%eax
    12f7:	78 27                	js     1320 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    12f9:	83 ec 08             	sub    $0x8,%esp
    12fc:	ff 75 0c             	pushl  0xc(%ebp)
    12ff:	89 c3                	mov    %eax,%ebx
    1301:	50                   	push   %eax
    1302:	e8 f3 00 00 00       	call   13fa <fstat>
  close(fd);
    1307:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    130a:	89 c6                	mov    %eax,%esi
  close(fd);
    130c:	e8 b9 00 00 00       	call   13ca <close>
  return r;
    1311:	83 c4 10             	add    $0x10,%esp
}
    1314:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1317:	89 f0                	mov    %esi,%eax
    1319:	5b                   	pop    %ebx
    131a:	5e                   	pop    %esi
    131b:	5d                   	pop    %ebp
    131c:	c3                   	ret    
    131d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1320:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1325:	eb ed                	jmp    1314 <stat+0x34>
    1327:	89 f6                	mov    %esi,%esi
    1329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001330 <atoi>:

int
atoi(const char *s)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	53                   	push   %ebx
    1334:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1337:	0f be 11             	movsbl (%ecx),%edx
    133a:	8d 42 d0             	lea    -0x30(%edx),%eax
    133d:	3c 09                	cmp    $0x9,%al
  n = 0;
    133f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1344:	77 1f                	ja     1365 <atoi+0x35>
    1346:	8d 76 00             	lea    0x0(%esi),%esi
    1349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1350:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1353:	83 c1 01             	add    $0x1,%ecx
    1356:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    135a:	0f be 11             	movsbl (%ecx),%edx
    135d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1360:	80 fb 09             	cmp    $0x9,%bl
    1363:	76 eb                	jbe    1350 <atoi+0x20>
  return n;
}
    1365:	5b                   	pop    %ebx
    1366:	5d                   	pop    %ebp
    1367:	c3                   	ret    
    1368:	90                   	nop
    1369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001370 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1370:	55                   	push   %ebp
    1371:	89 e5                	mov    %esp,%ebp
    1373:	56                   	push   %esi
    1374:	53                   	push   %ebx
    1375:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1378:	8b 45 08             	mov    0x8(%ebp),%eax
    137b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    137e:	85 db                	test   %ebx,%ebx
    1380:	7e 14                	jle    1396 <memmove+0x26>
    1382:	31 d2                	xor    %edx,%edx
    1384:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1388:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    138c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    138f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1392:	39 d3                	cmp    %edx,%ebx
    1394:	75 f2                	jne    1388 <memmove+0x18>
  return vdst;
}
    1396:	5b                   	pop    %ebx
    1397:	5e                   	pop    %esi
    1398:	5d                   	pop    %ebp
    1399:	c3                   	ret    

0000139a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    139a:	b8 01 00 00 00       	mov    $0x1,%eax
    139f:	cd 40                	int    $0x40
    13a1:	c3                   	ret    

000013a2 <exit>:
SYSCALL(exit)
    13a2:	b8 02 00 00 00       	mov    $0x2,%eax
    13a7:	cd 40                	int    $0x40
    13a9:	c3                   	ret    

000013aa <wait>:
SYSCALL(wait)
    13aa:	b8 03 00 00 00       	mov    $0x3,%eax
    13af:	cd 40                	int    $0x40
    13b1:	c3                   	ret    

000013b2 <pipe>:
SYSCALL(pipe)
    13b2:	b8 04 00 00 00       	mov    $0x4,%eax
    13b7:	cd 40                	int    $0x40
    13b9:	c3                   	ret    

000013ba <read>:
SYSCALL(read)
    13ba:	b8 05 00 00 00       	mov    $0x5,%eax
    13bf:	cd 40                	int    $0x40
    13c1:	c3                   	ret    

000013c2 <write>:
SYSCALL(write)
    13c2:	b8 10 00 00 00       	mov    $0x10,%eax
    13c7:	cd 40                	int    $0x40
    13c9:	c3                   	ret    

000013ca <close>:
SYSCALL(close)
    13ca:	b8 15 00 00 00       	mov    $0x15,%eax
    13cf:	cd 40                	int    $0x40
    13d1:	c3                   	ret    

000013d2 <kill>:
SYSCALL(kill)
    13d2:	b8 06 00 00 00       	mov    $0x6,%eax
    13d7:	cd 40                	int    $0x40
    13d9:	c3                   	ret    

000013da <exec>:
SYSCALL(exec)
    13da:	b8 07 00 00 00       	mov    $0x7,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <open>:
SYSCALL(open)
    13e2:	b8 0f 00 00 00       	mov    $0xf,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <mknod>:
SYSCALL(mknod)
    13ea:	b8 11 00 00 00       	mov    $0x11,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    

000013f2 <unlink>:
SYSCALL(unlink)
    13f2:	b8 12 00 00 00       	mov    $0x12,%eax
    13f7:	cd 40                	int    $0x40
    13f9:	c3                   	ret    

000013fa <fstat>:
SYSCALL(fstat)
    13fa:	b8 08 00 00 00       	mov    $0x8,%eax
    13ff:	cd 40                	int    $0x40
    1401:	c3                   	ret    

00001402 <link>:
SYSCALL(link)
    1402:	b8 13 00 00 00       	mov    $0x13,%eax
    1407:	cd 40                	int    $0x40
    1409:	c3                   	ret    

0000140a <mkdir>:
SYSCALL(mkdir)
    140a:	b8 14 00 00 00       	mov    $0x14,%eax
    140f:	cd 40                	int    $0x40
    1411:	c3                   	ret    

00001412 <chdir>:
SYSCALL(chdir)
    1412:	b8 09 00 00 00       	mov    $0x9,%eax
    1417:	cd 40                	int    $0x40
    1419:	c3                   	ret    

0000141a <dup>:
SYSCALL(dup)
    141a:	b8 0a 00 00 00       	mov    $0xa,%eax
    141f:	cd 40                	int    $0x40
    1421:	c3                   	ret    

00001422 <getpid>:
SYSCALL(getpid)
    1422:	b8 0b 00 00 00       	mov    $0xb,%eax
    1427:	cd 40                	int    $0x40
    1429:	c3                   	ret    

0000142a <sbrk>:
SYSCALL(sbrk)
    142a:	b8 0c 00 00 00       	mov    $0xc,%eax
    142f:	cd 40                	int    $0x40
    1431:	c3                   	ret    

00001432 <sleep>:
SYSCALL(sleep)
    1432:	b8 0d 00 00 00       	mov    $0xd,%eax
    1437:	cd 40                	int    $0x40
    1439:	c3                   	ret    

0000143a <uptime>:
SYSCALL(uptime)
    143a:	b8 0e 00 00 00       	mov    $0xe,%eax
    143f:	cd 40                	int    $0x40
    1441:	c3                   	ret    

00001442 <shm_open>:
SYSCALL(shm_open)
    1442:	b8 16 00 00 00       	mov    $0x16,%eax
    1447:	cd 40                	int    $0x40
    1449:	c3                   	ret    

0000144a <shm_close>:
SYSCALL(shm_close)	
    144a:	b8 17 00 00 00       	mov    $0x17,%eax
    144f:	cd 40                	int    $0x40
    1451:	c3                   	ret    
