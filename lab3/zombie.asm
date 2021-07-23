
_zombie:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

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
  if(fork() > 0)
    1011:	e8 64 02 00 00       	call   127a <fork>
    1016:	85 c0                	test   %eax,%eax
    1018:	7e 0d                	jle    1027 <main+0x27>
    sleep(5);  // Let child exit before parent.
    101a:	83 ec 0c             	sub    $0xc,%esp
    101d:	6a 05                	push   $0x5
    101f:	e8 ee 02 00 00       	call   1312 <sleep>
    1024:	83 c4 10             	add    $0x10,%esp
  exit();
    1027:	e8 56 02 00 00       	call   1282 <exit>
    102c:	66 90                	xchg   %ax,%ax
    102e:	66 90                	xchg   %ax,%ax

00001030 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1030:	55                   	push   %ebp
    1031:	89 e5                	mov    %esp,%ebp
    1033:	53                   	push   %ebx
    1034:	8b 45 08             	mov    0x8(%ebp),%eax
    1037:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    103a:	89 c2                	mov    %eax,%edx
    103c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1040:	83 c1 01             	add    $0x1,%ecx
    1043:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1047:	83 c2 01             	add    $0x1,%edx
    104a:	84 db                	test   %bl,%bl
    104c:	88 5a ff             	mov    %bl,-0x1(%edx)
    104f:	75 ef                	jne    1040 <strcpy+0x10>
    ;
  return os;
}
    1051:	5b                   	pop    %ebx
    1052:	5d                   	pop    %ebp
    1053:	c3                   	ret    
    1054:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    105a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001060 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	53                   	push   %ebx
    1064:	8b 55 08             	mov    0x8(%ebp),%edx
    1067:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    106a:	0f b6 02             	movzbl (%edx),%eax
    106d:	0f b6 19             	movzbl (%ecx),%ebx
    1070:	84 c0                	test   %al,%al
    1072:	75 1c                	jne    1090 <strcmp+0x30>
    1074:	eb 2a                	jmp    10a0 <strcmp+0x40>
    1076:	8d 76 00             	lea    0x0(%esi),%esi
    1079:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1080:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1083:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1086:	83 c1 01             	add    $0x1,%ecx
    1089:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    108c:	84 c0                	test   %al,%al
    108e:	74 10                	je     10a0 <strcmp+0x40>
    1090:	38 d8                	cmp    %bl,%al
    1092:	74 ec                	je     1080 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1094:	29 d8                	sub    %ebx,%eax
}
    1096:	5b                   	pop    %ebx
    1097:	5d                   	pop    %ebp
    1098:	c3                   	ret    
    1099:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10a2:	29 d8                	sub    %ebx,%eax
}
    10a4:	5b                   	pop    %ebx
    10a5:	5d                   	pop    %ebp
    10a6:	c3                   	ret    
    10a7:	89 f6                	mov    %esi,%esi
    10a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010b0 <strlen>:

uint
strlen(char *s)
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    10b6:	80 39 00             	cmpb   $0x0,(%ecx)
    10b9:	74 15                	je     10d0 <strlen+0x20>
    10bb:	31 d2                	xor    %edx,%edx
    10bd:	8d 76 00             	lea    0x0(%esi),%esi
    10c0:	83 c2 01             	add    $0x1,%edx
    10c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    10c7:	89 d0                	mov    %edx,%eax
    10c9:	75 f5                	jne    10c0 <strlen+0x10>
    ;
  return n;
}
    10cb:	5d                   	pop    %ebp
    10cc:	c3                   	ret    
    10cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    10d0:	31 c0                	xor    %eax,%eax
}
    10d2:	5d                   	pop    %ebp
    10d3:	c3                   	ret    
    10d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000010e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10e0:	55                   	push   %ebp
    10e1:	89 e5                	mov    %esp,%ebp
    10e3:	57                   	push   %edi
    10e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    10ed:	89 d7                	mov    %edx,%edi
    10ef:	fc                   	cld    
    10f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10f2:	89 d0                	mov    %edx,%eax
    10f4:	5f                   	pop    %edi
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    10f7:	89 f6                	mov    %esi,%esi
    10f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001100 <strchr>:

char*
strchr(const char *s, char c)
{
    1100:	55                   	push   %ebp
    1101:	89 e5                	mov    %esp,%ebp
    1103:	53                   	push   %ebx
    1104:	8b 45 08             	mov    0x8(%ebp),%eax
    1107:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    110a:	0f b6 10             	movzbl (%eax),%edx
    110d:	84 d2                	test   %dl,%dl
    110f:	74 1d                	je     112e <strchr+0x2e>
    if(*s == c)
    1111:	38 d3                	cmp    %dl,%bl
    1113:	89 d9                	mov    %ebx,%ecx
    1115:	75 0d                	jne    1124 <strchr+0x24>
    1117:	eb 17                	jmp    1130 <strchr+0x30>
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1120:	38 ca                	cmp    %cl,%dl
    1122:	74 0c                	je     1130 <strchr+0x30>
  for(; *s; s++)
    1124:	83 c0 01             	add    $0x1,%eax
    1127:	0f b6 10             	movzbl (%eax),%edx
    112a:	84 d2                	test   %dl,%dl
    112c:	75 f2                	jne    1120 <strchr+0x20>
      return (char*)s;
  return 0;
    112e:	31 c0                	xor    %eax,%eax
}
    1130:	5b                   	pop    %ebx
    1131:	5d                   	pop    %ebp
    1132:	c3                   	ret    
    1133:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001140 <gets>:

char*
gets(char *buf, int max)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	57                   	push   %edi
    1144:	56                   	push   %esi
    1145:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1146:	31 f6                	xor    %esi,%esi
    1148:	89 f3                	mov    %esi,%ebx
{
    114a:	83 ec 1c             	sub    $0x1c,%esp
    114d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1150:	eb 2f                	jmp    1181 <gets+0x41>
    1152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1158:	8d 45 e7             	lea    -0x19(%ebp),%eax
    115b:	83 ec 04             	sub    $0x4,%esp
    115e:	6a 01                	push   $0x1
    1160:	50                   	push   %eax
    1161:	6a 00                	push   $0x0
    1163:	e8 32 01 00 00       	call   129a <read>
    if(cc < 1)
    1168:	83 c4 10             	add    $0x10,%esp
    116b:	85 c0                	test   %eax,%eax
    116d:	7e 1c                	jle    118b <gets+0x4b>
      break;
    buf[i++] = c;
    116f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1173:	83 c7 01             	add    $0x1,%edi
    1176:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1179:	3c 0a                	cmp    $0xa,%al
    117b:	74 23                	je     11a0 <gets+0x60>
    117d:	3c 0d                	cmp    $0xd,%al
    117f:	74 1f                	je     11a0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1181:	83 c3 01             	add    $0x1,%ebx
    1184:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1187:	89 fe                	mov    %edi,%esi
    1189:	7c cd                	jl     1158 <gets+0x18>
    118b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    118d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1190:	c6 03 00             	movb   $0x0,(%ebx)
}
    1193:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1196:	5b                   	pop    %ebx
    1197:	5e                   	pop    %esi
    1198:	5f                   	pop    %edi
    1199:	5d                   	pop    %ebp
    119a:	c3                   	ret    
    119b:	90                   	nop
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11a0:	8b 75 08             	mov    0x8(%ebp),%esi
    11a3:	8b 45 08             	mov    0x8(%ebp),%eax
    11a6:	01 de                	add    %ebx,%esi
    11a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11aa:	c6 03 00             	movb   $0x0,(%ebx)
}
    11ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11b0:	5b                   	pop    %ebx
    11b1:	5e                   	pop    %esi
    11b2:	5f                   	pop    %edi
    11b3:	5d                   	pop    %ebp
    11b4:	c3                   	ret    
    11b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011c0 <stat>:

int
stat(char *n, struct stat *st)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	56                   	push   %esi
    11c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11c5:	83 ec 08             	sub    $0x8,%esp
    11c8:	6a 00                	push   $0x0
    11ca:	ff 75 08             	pushl  0x8(%ebp)
    11cd:	e8 f0 00 00 00       	call   12c2 <open>
  if(fd < 0)
    11d2:	83 c4 10             	add    $0x10,%esp
    11d5:	85 c0                	test   %eax,%eax
    11d7:	78 27                	js     1200 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    11d9:	83 ec 08             	sub    $0x8,%esp
    11dc:	ff 75 0c             	pushl  0xc(%ebp)
    11df:	89 c3                	mov    %eax,%ebx
    11e1:	50                   	push   %eax
    11e2:	e8 f3 00 00 00       	call   12da <fstat>
  close(fd);
    11e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    11ea:	89 c6                	mov    %eax,%esi
  close(fd);
    11ec:	e8 b9 00 00 00       	call   12aa <close>
  return r;
    11f1:	83 c4 10             	add    $0x10,%esp
}
    11f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11f7:	89 f0                	mov    %esi,%eax
    11f9:	5b                   	pop    %ebx
    11fa:	5e                   	pop    %esi
    11fb:	5d                   	pop    %ebp
    11fc:	c3                   	ret    
    11fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1200:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1205:	eb ed                	jmp    11f4 <stat+0x34>
    1207:	89 f6                	mov    %esi,%esi
    1209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001210 <atoi>:

int
atoi(const char *s)
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	53                   	push   %ebx
    1214:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1217:	0f be 11             	movsbl (%ecx),%edx
    121a:	8d 42 d0             	lea    -0x30(%edx),%eax
    121d:	3c 09                	cmp    $0x9,%al
  n = 0;
    121f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1224:	77 1f                	ja     1245 <atoi+0x35>
    1226:	8d 76 00             	lea    0x0(%esi),%esi
    1229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1230:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1233:	83 c1 01             	add    $0x1,%ecx
    1236:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    123a:	0f be 11             	movsbl (%ecx),%edx
    123d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1240:	80 fb 09             	cmp    $0x9,%bl
    1243:	76 eb                	jbe    1230 <atoi+0x20>
  return n;
}
    1245:	5b                   	pop    %ebx
    1246:	5d                   	pop    %ebp
    1247:	c3                   	ret    
    1248:	90                   	nop
    1249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001250 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1250:	55                   	push   %ebp
    1251:	89 e5                	mov    %esp,%ebp
    1253:	56                   	push   %esi
    1254:	53                   	push   %ebx
    1255:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1258:	8b 45 08             	mov    0x8(%ebp),%eax
    125b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    125e:	85 db                	test   %ebx,%ebx
    1260:	7e 14                	jle    1276 <memmove+0x26>
    1262:	31 d2                	xor    %edx,%edx
    1264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1268:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    126c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    126f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1272:	39 d3                	cmp    %edx,%ebx
    1274:	75 f2                	jne    1268 <memmove+0x18>
  return vdst;
}
    1276:	5b                   	pop    %ebx
    1277:	5e                   	pop    %esi
    1278:	5d                   	pop    %ebp
    1279:	c3                   	ret    

0000127a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    127a:	b8 01 00 00 00       	mov    $0x1,%eax
    127f:	cd 40                	int    $0x40
    1281:	c3                   	ret    

00001282 <exit>:
SYSCALL(exit)
    1282:	b8 02 00 00 00       	mov    $0x2,%eax
    1287:	cd 40                	int    $0x40
    1289:	c3                   	ret    

0000128a <wait>:
SYSCALL(wait)
    128a:	b8 03 00 00 00       	mov    $0x3,%eax
    128f:	cd 40                	int    $0x40
    1291:	c3                   	ret    

00001292 <pipe>:
SYSCALL(pipe)
    1292:	b8 04 00 00 00       	mov    $0x4,%eax
    1297:	cd 40                	int    $0x40
    1299:	c3                   	ret    

0000129a <read>:
SYSCALL(read)
    129a:	b8 05 00 00 00       	mov    $0x5,%eax
    129f:	cd 40                	int    $0x40
    12a1:	c3                   	ret    

000012a2 <write>:
SYSCALL(write)
    12a2:	b8 10 00 00 00       	mov    $0x10,%eax
    12a7:	cd 40                	int    $0x40
    12a9:	c3                   	ret    

000012aa <close>:
SYSCALL(close)
    12aa:	b8 15 00 00 00       	mov    $0x15,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <kill>:
SYSCALL(kill)
    12b2:	b8 06 00 00 00       	mov    $0x6,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <exec>:
SYSCALL(exec)
    12ba:	b8 07 00 00 00       	mov    $0x7,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <open>:
SYSCALL(open)
    12c2:	b8 0f 00 00 00       	mov    $0xf,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <mknod>:
SYSCALL(mknod)
    12ca:	b8 11 00 00 00       	mov    $0x11,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <unlink>:
SYSCALL(unlink)
    12d2:	b8 12 00 00 00       	mov    $0x12,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <fstat>:
SYSCALL(fstat)
    12da:	b8 08 00 00 00       	mov    $0x8,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <link>:
SYSCALL(link)
    12e2:	b8 13 00 00 00       	mov    $0x13,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <mkdir>:
SYSCALL(mkdir)
    12ea:	b8 14 00 00 00       	mov    $0x14,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <chdir>:
SYSCALL(chdir)
    12f2:	b8 09 00 00 00       	mov    $0x9,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <dup>:
SYSCALL(dup)
    12fa:	b8 0a 00 00 00       	mov    $0xa,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <getpid>:
SYSCALL(getpid)
    1302:	b8 0b 00 00 00       	mov    $0xb,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <sbrk>:
SYSCALL(sbrk)
    130a:	b8 0c 00 00 00       	mov    $0xc,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    

00001312 <sleep>:
SYSCALL(sleep)
    1312:	b8 0d 00 00 00       	mov    $0xd,%eax
    1317:	cd 40                	int    $0x40
    1319:	c3                   	ret    

0000131a <uptime>:
SYSCALL(uptime)
    131a:	b8 0e 00 00 00       	mov    $0xe,%eax
    131f:	cd 40                	int    $0x40
    1321:	c3                   	ret    

00001322 <shm_open>:
SYSCALL(shm_open)
    1322:	b8 16 00 00 00       	mov    $0x16,%eax
    1327:	cd 40                	int    $0x40
    1329:	c3                   	ret    

0000132a <shm_close>:
SYSCALL(shm_close)	
    132a:	b8 17 00 00 00       	mov    $0x17,%eax
    132f:	cd 40                	int    $0x40
    1331:	c3                   	ret    
    1332:	66 90                	xchg   %ax,%ax
    1334:	66 90                	xchg   %ax,%ax
    1336:	66 90                	xchg   %ax,%ax
    1338:	66 90                	xchg   %ax,%ax
    133a:	66 90                	xchg   %ax,%ax
    133c:	66 90                	xchg   %ax,%ax
    133e:	66 90                	xchg   %ax,%ax

00001340 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1340:	55                   	push   %ebp
    1341:	89 e5                	mov    %esp,%ebp
    1343:	57                   	push   %edi
    1344:	56                   	push   %esi
    1345:	53                   	push   %ebx
    1346:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1349:	85 d2                	test   %edx,%edx
{
    134b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    134e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1350:	79 76                	jns    13c8 <printint+0x88>
    1352:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1356:	74 70                	je     13c8 <printint+0x88>
    x = -xx;
    1358:	f7 d8                	neg    %eax
    neg = 1;
    135a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1361:	31 f6                	xor    %esi,%esi
    1363:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1366:	eb 0a                	jmp    1372 <printint+0x32>
    1368:	90                   	nop
    1369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1370:	89 fe                	mov    %edi,%esi
    1372:	31 d2                	xor    %edx,%edx
    1374:	8d 7e 01             	lea    0x1(%esi),%edi
    1377:	f7 f1                	div    %ecx
    1379:	0f b6 92 7c 17 00 00 	movzbl 0x177c(%edx),%edx
  }while((x /= base) != 0);
    1380:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1382:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1385:	75 e9                	jne    1370 <printint+0x30>
  if(neg)
    1387:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    138a:	85 c0                	test   %eax,%eax
    138c:	74 08                	je     1396 <printint+0x56>
    buf[i++] = '-';
    138e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1393:	8d 7e 02             	lea    0x2(%esi),%edi
    1396:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    139a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    139d:	8d 76 00             	lea    0x0(%esi),%esi
    13a0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    13a3:	83 ec 04             	sub    $0x4,%esp
    13a6:	83 ee 01             	sub    $0x1,%esi
    13a9:	6a 01                	push   $0x1
    13ab:	53                   	push   %ebx
    13ac:	57                   	push   %edi
    13ad:	88 45 d7             	mov    %al,-0x29(%ebp)
    13b0:	e8 ed fe ff ff       	call   12a2 <write>

  while(--i >= 0)
    13b5:	83 c4 10             	add    $0x10,%esp
    13b8:	39 de                	cmp    %ebx,%esi
    13ba:	75 e4                	jne    13a0 <printint+0x60>
    putc(fd, buf[i]);
}
    13bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13bf:	5b                   	pop    %ebx
    13c0:	5e                   	pop    %esi
    13c1:	5f                   	pop    %edi
    13c2:	5d                   	pop    %ebp
    13c3:	c3                   	ret    
    13c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    13c8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13cf:	eb 90                	jmp    1361 <printint+0x21>
    13d1:	eb 0d                	jmp    13e0 <printf>
    13d3:	90                   	nop
    13d4:	90                   	nop
    13d5:	90                   	nop
    13d6:	90                   	nop
    13d7:	90                   	nop
    13d8:	90                   	nop
    13d9:	90                   	nop
    13da:	90                   	nop
    13db:	90                   	nop
    13dc:	90                   	nop
    13dd:	90                   	nop
    13de:	90                   	nop
    13df:	90                   	nop

000013e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    13e0:	55                   	push   %ebp
    13e1:	89 e5                	mov    %esp,%ebp
    13e3:	57                   	push   %edi
    13e4:	56                   	push   %esi
    13e5:	53                   	push   %ebx
    13e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    13ec:	0f b6 1e             	movzbl (%esi),%ebx
    13ef:	84 db                	test   %bl,%bl
    13f1:	0f 84 b3 00 00 00    	je     14aa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    13f7:	8d 45 10             	lea    0x10(%ebp),%eax
    13fa:	83 c6 01             	add    $0x1,%esi
  state = 0;
    13fd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    13ff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1402:	eb 2f                	jmp    1433 <printf+0x53>
    1404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1408:	83 f8 25             	cmp    $0x25,%eax
    140b:	0f 84 a7 00 00 00    	je     14b8 <printf+0xd8>
  write(fd, &c, 1);
    1411:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1414:	83 ec 04             	sub    $0x4,%esp
    1417:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    141a:	6a 01                	push   $0x1
    141c:	50                   	push   %eax
    141d:	ff 75 08             	pushl  0x8(%ebp)
    1420:	e8 7d fe ff ff       	call   12a2 <write>
    1425:	83 c4 10             	add    $0x10,%esp
    1428:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    142b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    142f:	84 db                	test   %bl,%bl
    1431:	74 77                	je     14aa <printf+0xca>
    if(state == 0){
    1433:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1435:	0f be cb             	movsbl %bl,%ecx
    1438:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    143b:	74 cb                	je     1408 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    143d:	83 ff 25             	cmp    $0x25,%edi
    1440:	75 e6                	jne    1428 <printf+0x48>
      if(c == 'd'){
    1442:	83 f8 64             	cmp    $0x64,%eax
    1445:	0f 84 05 01 00 00    	je     1550 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    144b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1451:	83 f9 70             	cmp    $0x70,%ecx
    1454:	74 72                	je     14c8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1456:	83 f8 73             	cmp    $0x73,%eax
    1459:	0f 84 99 00 00 00    	je     14f8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    145f:	83 f8 63             	cmp    $0x63,%eax
    1462:	0f 84 08 01 00 00    	je     1570 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1468:	83 f8 25             	cmp    $0x25,%eax
    146b:	0f 84 ef 00 00 00    	je     1560 <printf+0x180>
  write(fd, &c, 1);
    1471:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1474:	83 ec 04             	sub    $0x4,%esp
    1477:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    147b:	6a 01                	push   $0x1
    147d:	50                   	push   %eax
    147e:	ff 75 08             	pushl  0x8(%ebp)
    1481:	e8 1c fe ff ff       	call   12a2 <write>
    1486:	83 c4 0c             	add    $0xc,%esp
    1489:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    148c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    148f:	6a 01                	push   $0x1
    1491:	50                   	push   %eax
    1492:	ff 75 08             	pushl  0x8(%ebp)
    1495:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1498:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    149a:	e8 03 fe ff ff       	call   12a2 <write>
  for(i = 0; fmt[i]; i++){
    149f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    14a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    14a6:	84 db                	test   %bl,%bl
    14a8:	75 89                	jne    1433 <printf+0x53>
    }
  }
}
    14aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14ad:	5b                   	pop    %ebx
    14ae:	5e                   	pop    %esi
    14af:	5f                   	pop    %edi
    14b0:	5d                   	pop    %ebp
    14b1:	c3                   	ret    
    14b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    14b8:	bf 25 00 00 00       	mov    $0x25,%edi
    14bd:	e9 66 ff ff ff       	jmp    1428 <printf+0x48>
    14c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    14c8:	83 ec 0c             	sub    $0xc,%esp
    14cb:	b9 10 00 00 00       	mov    $0x10,%ecx
    14d0:	6a 00                	push   $0x0
    14d2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    14d5:	8b 45 08             	mov    0x8(%ebp),%eax
    14d8:	8b 17                	mov    (%edi),%edx
    14da:	e8 61 fe ff ff       	call   1340 <printint>
        ap++;
    14df:	89 f8                	mov    %edi,%eax
    14e1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    14e4:	31 ff                	xor    %edi,%edi
        ap++;
    14e6:	83 c0 04             	add    $0x4,%eax
    14e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    14ec:	e9 37 ff ff ff       	jmp    1428 <printf+0x48>
    14f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    14f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    14fb:	8b 08                	mov    (%eax),%ecx
        ap++;
    14fd:	83 c0 04             	add    $0x4,%eax
    1500:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1503:	85 c9                	test   %ecx,%ecx
    1505:	0f 84 8e 00 00 00    	je     1599 <printf+0x1b9>
        while(*s != 0){
    150b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    150e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1510:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1512:	84 c0                	test   %al,%al
    1514:	0f 84 0e ff ff ff    	je     1428 <printf+0x48>
    151a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    151d:	89 de                	mov    %ebx,%esi
    151f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1522:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1525:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1528:	83 ec 04             	sub    $0x4,%esp
          s++;
    152b:	83 c6 01             	add    $0x1,%esi
    152e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1531:	6a 01                	push   $0x1
    1533:	57                   	push   %edi
    1534:	53                   	push   %ebx
    1535:	e8 68 fd ff ff       	call   12a2 <write>
        while(*s != 0){
    153a:	0f b6 06             	movzbl (%esi),%eax
    153d:	83 c4 10             	add    $0x10,%esp
    1540:	84 c0                	test   %al,%al
    1542:	75 e4                	jne    1528 <printf+0x148>
    1544:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1547:	31 ff                	xor    %edi,%edi
    1549:	e9 da fe ff ff       	jmp    1428 <printf+0x48>
    154e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1550:	83 ec 0c             	sub    $0xc,%esp
    1553:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1558:	6a 01                	push   $0x1
    155a:	e9 73 ff ff ff       	jmp    14d2 <printf+0xf2>
    155f:	90                   	nop
  write(fd, &c, 1);
    1560:	83 ec 04             	sub    $0x4,%esp
    1563:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1566:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1569:	6a 01                	push   $0x1
    156b:	e9 21 ff ff ff       	jmp    1491 <printf+0xb1>
        putc(fd, *ap);
    1570:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1573:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1576:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1578:	6a 01                	push   $0x1
        ap++;
    157a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    157d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1580:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1583:	50                   	push   %eax
    1584:	ff 75 08             	pushl  0x8(%ebp)
    1587:	e8 16 fd ff ff       	call   12a2 <write>
        ap++;
    158c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    158f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1592:	31 ff                	xor    %edi,%edi
    1594:	e9 8f fe ff ff       	jmp    1428 <printf+0x48>
          s = "(null)";
    1599:	bb 74 17 00 00       	mov    $0x1774,%ebx
        while(*s != 0){
    159e:	b8 28 00 00 00       	mov    $0x28,%eax
    15a3:	e9 72 ff ff ff       	jmp    151a <printf+0x13a>
    15a8:	66 90                	xchg   %ax,%ax
    15aa:	66 90                	xchg   %ax,%ax
    15ac:	66 90                	xchg   %ax,%ax
    15ae:	66 90                	xchg   %ax,%ax

000015b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    15b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15b1:	a1 60 1a 00 00       	mov    0x1a60,%eax
{
    15b6:	89 e5                	mov    %esp,%ebp
    15b8:	57                   	push   %edi
    15b9:	56                   	push   %esi
    15ba:	53                   	push   %ebx
    15bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    15be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    15c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15c8:	39 c8                	cmp    %ecx,%eax
    15ca:	8b 10                	mov    (%eax),%edx
    15cc:	73 32                	jae    1600 <free+0x50>
    15ce:	39 d1                	cmp    %edx,%ecx
    15d0:	72 04                	jb     15d6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15d2:	39 d0                	cmp    %edx,%eax
    15d4:	72 32                	jb     1608 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    15d6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15d9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    15dc:	39 fa                	cmp    %edi,%edx
    15de:	74 30                	je     1610 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    15e0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15e3:	8b 50 04             	mov    0x4(%eax),%edx
    15e6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15e9:	39 f1                	cmp    %esi,%ecx
    15eb:	74 3a                	je     1627 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    15ed:	89 08                	mov    %ecx,(%eax)
  freep = p;
    15ef:	a3 60 1a 00 00       	mov    %eax,0x1a60
}
    15f4:	5b                   	pop    %ebx
    15f5:	5e                   	pop    %esi
    15f6:	5f                   	pop    %edi
    15f7:	5d                   	pop    %ebp
    15f8:	c3                   	ret    
    15f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1600:	39 d0                	cmp    %edx,%eax
    1602:	72 04                	jb     1608 <free+0x58>
    1604:	39 d1                	cmp    %edx,%ecx
    1606:	72 ce                	jb     15d6 <free+0x26>
{
    1608:	89 d0                	mov    %edx,%eax
    160a:	eb bc                	jmp    15c8 <free+0x18>
    160c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1610:	03 72 04             	add    0x4(%edx),%esi
    1613:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1616:	8b 10                	mov    (%eax),%edx
    1618:	8b 12                	mov    (%edx),%edx
    161a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    161d:	8b 50 04             	mov    0x4(%eax),%edx
    1620:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1623:	39 f1                	cmp    %esi,%ecx
    1625:	75 c6                	jne    15ed <free+0x3d>
    p->s.size += bp->s.size;
    1627:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    162a:	a3 60 1a 00 00       	mov    %eax,0x1a60
    p->s.size += bp->s.size;
    162f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1632:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1635:	89 10                	mov    %edx,(%eax)
}
    1637:	5b                   	pop    %ebx
    1638:	5e                   	pop    %esi
    1639:	5f                   	pop    %edi
    163a:	5d                   	pop    %ebp
    163b:	c3                   	ret    
    163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001640 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1640:	55                   	push   %ebp
    1641:	89 e5                	mov    %esp,%ebp
    1643:	57                   	push   %edi
    1644:	56                   	push   %esi
    1645:	53                   	push   %ebx
    1646:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1649:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    164c:	8b 15 60 1a 00 00    	mov    0x1a60,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1652:	8d 78 07             	lea    0x7(%eax),%edi
    1655:	c1 ef 03             	shr    $0x3,%edi
    1658:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    165b:	85 d2                	test   %edx,%edx
    165d:	0f 84 9d 00 00 00    	je     1700 <malloc+0xc0>
    1663:	8b 02                	mov    (%edx),%eax
    1665:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1668:	39 cf                	cmp    %ecx,%edi
    166a:	76 6c                	jbe    16d8 <malloc+0x98>
    166c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1672:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1677:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    167a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1681:	eb 0e                	jmp    1691 <malloc+0x51>
    1683:	90                   	nop
    1684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1688:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    168a:	8b 48 04             	mov    0x4(%eax),%ecx
    168d:	39 f9                	cmp    %edi,%ecx
    168f:	73 47                	jae    16d8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1691:	39 05 60 1a 00 00    	cmp    %eax,0x1a60
    1697:	89 c2                	mov    %eax,%edx
    1699:	75 ed                	jne    1688 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    169b:	83 ec 0c             	sub    $0xc,%esp
    169e:	56                   	push   %esi
    169f:	e8 66 fc ff ff       	call   130a <sbrk>
  if(p == (char*)-1)
    16a4:	83 c4 10             	add    $0x10,%esp
    16a7:	83 f8 ff             	cmp    $0xffffffff,%eax
    16aa:	74 1c                	je     16c8 <malloc+0x88>
  hp->s.size = nu;
    16ac:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    16af:	83 ec 0c             	sub    $0xc,%esp
    16b2:	83 c0 08             	add    $0x8,%eax
    16b5:	50                   	push   %eax
    16b6:	e8 f5 fe ff ff       	call   15b0 <free>
  return freep;
    16bb:	8b 15 60 1a 00 00    	mov    0x1a60,%edx
      if((p = morecore(nunits)) == 0)
    16c1:	83 c4 10             	add    $0x10,%esp
    16c4:	85 d2                	test   %edx,%edx
    16c6:	75 c0                	jne    1688 <malloc+0x48>
        return 0;
  }
}
    16c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    16cb:	31 c0                	xor    %eax,%eax
}
    16cd:	5b                   	pop    %ebx
    16ce:	5e                   	pop    %esi
    16cf:	5f                   	pop    %edi
    16d0:	5d                   	pop    %ebp
    16d1:	c3                   	ret    
    16d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    16d8:	39 cf                	cmp    %ecx,%edi
    16da:	74 54                	je     1730 <malloc+0xf0>
        p->s.size -= nunits;
    16dc:	29 f9                	sub    %edi,%ecx
    16de:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    16e1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    16e4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    16e7:	89 15 60 1a 00 00    	mov    %edx,0x1a60
}
    16ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    16f0:	83 c0 08             	add    $0x8,%eax
}
    16f3:	5b                   	pop    %ebx
    16f4:	5e                   	pop    %esi
    16f5:	5f                   	pop    %edi
    16f6:	5d                   	pop    %ebp
    16f7:	c3                   	ret    
    16f8:	90                   	nop
    16f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1700:	c7 05 60 1a 00 00 64 	movl   $0x1a64,0x1a60
    1707:	1a 00 00 
    170a:	c7 05 64 1a 00 00 64 	movl   $0x1a64,0x1a64
    1711:	1a 00 00 
    base.s.size = 0;
    1714:	b8 64 1a 00 00       	mov    $0x1a64,%eax
    1719:	c7 05 68 1a 00 00 00 	movl   $0x0,0x1a68
    1720:	00 00 00 
    1723:	e9 44 ff ff ff       	jmp    166c <malloc+0x2c>
    1728:	90                   	nop
    1729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1730:	8b 08                	mov    (%eax),%ecx
    1732:	89 0a                	mov    %ecx,(%edx)
    1734:	eb b1                	jmp    16e7 <malloc+0xa7>
    1736:	66 90                	xchg   %ax,%ax
    1738:	66 90                	xchg   %ax,%ax
    173a:	66 90                	xchg   %ax,%ax
    173c:	66 90                	xchg   %ax,%ax
    173e:	66 90                	xchg   %ax,%ax

00001740 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1740:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1741:	b9 01 00 00 00       	mov    $0x1,%ecx
    1746:	89 e5                	mov    %esp,%ebp
    1748:	8b 55 08             	mov    0x8(%ebp),%edx
    174b:	90                   	nop
    174c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1750:	89 c8                	mov    %ecx,%eax
    1752:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1755:	85 c0                	test   %eax,%eax
    1757:	75 f7                	jne    1750 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1759:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    175e:	5d                   	pop    %ebp
    175f:	c3                   	ret    

00001760 <urelease>:

void urelease (struct uspinlock *lk) {
    1760:	55                   	push   %ebp
    1761:	89 e5                	mov    %esp,%ebp
    1763:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1766:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    176b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1771:	5d                   	pop    %ebp
    1772:	c3                   	ret    
