
_ln:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
  if(argc != 3){
    1007:	83 39 03             	cmpl   $0x3,(%ecx)
{
    100a:	ff 71 fc             	pushl  -0x4(%ecx)
    100d:	55                   	push   %ebp
    100e:	89 e5                	mov    %esp,%ebp
    1010:	53                   	push   %ebx
    1011:	51                   	push   %ecx
    1012:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc != 3){
    1015:	74 13                	je     102a <main+0x2a>
    printf(2, "Usage: ln old new\n");
    1017:	52                   	push   %edx
    1018:	52                   	push   %edx
    1019:	68 a4 17 00 00       	push   $0x17a4
    101e:	6a 02                	push   $0x2
    1020:	e8 eb 03 00 00       	call   1410 <printf>
    exit();
    1025:	e8 88 02 00 00       	call   12b2 <exit>
  }
  if(link(argv[1], argv[2]) < 0)
    102a:	50                   	push   %eax
    102b:	50                   	push   %eax
    102c:	ff 73 08             	pushl  0x8(%ebx)
    102f:	ff 73 04             	pushl  0x4(%ebx)
    1032:	e8 db 02 00 00       	call   1312 <link>
    1037:	83 c4 10             	add    $0x10,%esp
    103a:	85 c0                	test   %eax,%eax
    103c:	78 05                	js     1043 <main+0x43>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  exit();
    103e:	e8 6f 02 00 00       	call   12b2 <exit>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
    1043:	ff 73 08             	pushl  0x8(%ebx)
    1046:	ff 73 04             	pushl  0x4(%ebx)
    1049:	68 b7 17 00 00       	push   $0x17b7
    104e:	6a 02                	push   $0x2
    1050:	e8 bb 03 00 00       	call   1410 <printf>
    1055:	83 c4 10             	add    $0x10,%esp
    1058:	eb e4                	jmp    103e <main+0x3e>
    105a:	66 90                	xchg   %ax,%ax
    105c:	66 90                	xchg   %ax,%ax
    105e:	66 90                	xchg   %ax,%ax

00001060 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1060:	55                   	push   %ebp
    1061:	89 e5                	mov    %esp,%ebp
    1063:	53                   	push   %ebx
    1064:	8b 45 08             	mov    0x8(%ebp),%eax
    1067:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    106a:	89 c2                	mov    %eax,%edx
    106c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1070:	83 c1 01             	add    $0x1,%ecx
    1073:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1077:	83 c2 01             	add    $0x1,%edx
    107a:	84 db                	test   %bl,%bl
    107c:	88 5a ff             	mov    %bl,-0x1(%edx)
    107f:	75 ef                	jne    1070 <strcpy+0x10>
    ;
  return os;
}
    1081:	5b                   	pop    %ebx
    1082:	5d                   	pop    %ebp
    1083:	c3                   	ret    
    1084:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    108a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1090:	55                   	push   %ebp
    1091:	89 e5                	mov    %esp,%ebp
    1093:	53                   	push   %ebx
    1094:	8b 55 08             	mov    0x8(%ebp),%edx
    1097:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    109a:	0f b6 02             	movzbl (%edx),%eax
    109d:	0f b6 19             	movzbl (%ecx),%ebx
    10a0:	84 c0                	test   %al,%al
    10a2:	75 1c                	jne    10c0 <strcmp+0x30>
    10a4:	eb 2a                	jmp    10d0 <strcmp+0x40>
    10a6:	8d 76 00             	lea    0x0(%esi),%esi
    10a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    10b0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10b3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    10b6:	83 c1 01             	add    $0x1,%ecx
    10b9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    10bc:	84 c0                	test   %al,%al
    10be:	74 10                	je     10d0 <strcmp+0x40>
    10c0:	38 d8                	cmp    %bl,%al
    10c2:	74 ec                	je     10b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10c4:	29 d8                	sub    %ebx,%eax
}
    10c6:	5b                   	pop    %ebx
    10c7:	5d                   	pop    %ebp
    10c8:	c3                   	ret    
    10c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10d2:	29 d8                	sub    %ebx,%eax
}
    10d4:	5b                   	pop    %ebx
    10d5:	5d                   	pop    %ebp
    10d6:	c3                   	ret    
    10d7:	89 f6                	mov    %esi,%esi
    10d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010e0 <strlen>:

uint
strlen(char *s)
{
    10e0:	55                   	push   %ebp
    10e1:	89 e5                	mov    %esp,%ebp
    10e3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    10e6:	80 39 00             	cmpb   $0x0,(%ecx)
    10e9:	74 15                	je     1100 <strlen+0x20>
    10eb:	31 d2                	xor    %edx,%edx
    10ed:	8d 76 00             	lea    0x0(%esi),%esi
    10f0:	83 c2 01             	add    $0x1,%edx
    10f3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    10f7:	89 d0                	mov    %edx,%eax
    10f9:	75 f5                	jne    10f0 <strlen+0x10>
    ;
  return n;
}
    10fb:	5d                   	pop    %ebp
    10fc:	c3                   	ret    
    10fd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    1100:	31 c0                	xor    %eax,%eax
}
    1102:	5d                   	pop    %ebp
    1103:	c3                   	ret    
    1104:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    110a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001110 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1110:	55                   	push   %ebp
    1111:	89 e5                	mov    %esp,%ebp
    1113:	57                   	push   %edi
    1114:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1117:	8b 4d 10             	mov    0x10(%ebp),%ecx
    111a:	8b 45 0c             	mov    0xc(%ebp),%eax
    111d:	89 d7                	mov    %edx,%edi
    111f:	fc                   	cld    
    1120:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1122:	89 d0                	mov    %edx,%eax
    1124:	5f                   	pop    %edi
    1125:	5d                   	pop    %ebp
    1126:	c3                   	ret    
    1127:	89 f6                	mov    %esi,%esi
    1129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001130 <strchr>:

char*
strchr(const char *s, char c)
{
    1130:	55                   	push   %ebp
    1131:	89 e5                	mov    %esp,%ebp
    1133:	53                   	push   %ebx
    1134:	8b 45 08             	mov    0x8(%ebp),%eax
    1137:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    113a:	0f b6 10             	movzbl (%eax),%edx
    113d:	84 d2                	test   %dl,%dl
    113f:	74 1d                	je     115e <strchr+0x2e>
    if(*s == c)
    1141:	38 d3                	cmp    %dl,%bl
    1143:	89 d9                	mov    %ebx,%ecx
    1145:	75 0d                	jne    1154 <strchr+0x24>
    1147:	eb 17                	jmp    1160 <strchr+0x30>
    1149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1150:	38 ca                	cmp    %cl,%dl
    1152:	74 0c                	je     1160 <strchr+0x30>
  for(; *s; s++)
    1154:	83 c0 01             	add    $0x1,%eax
    1157:	0f b6 10             	movzbl (%eax),%edx
    115a:	84 d2                	test   %dl,%dl
    115c:	75 f2                	jne    1150 <strchr+0x20>
      return (char*)s;
  return 0;
    115e:	31 c0                	xor    %eax,%eax
}
    1160:	5b                   	pop    %ebx
    1161:	5d                   	pop    %ebp
    1162:	c3                   	ret    
    1163:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001170 <gets>:

char*
gets(char *buf, int max)
{
    1170:	55                   	push   %ebp
    1171:	89 e5                	mov    %esp,%ebp
    1173:	57                   	push   %edi
    1174:	56                   	push   %esi
    1175:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1176:	31 f6                	xor    %esi,%esi
    1178:	89 f3                	mov    %esi,%ebx
{
    117a:	83 ec 1c             	sub    $0x1c,%esp
    117d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1180:	eb 2f                	jmp    11b1 <gets+0x41>
    1182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1188:	8d 45 e7             	lea    -0x19(%ebp),%eax
    118b:	83 ec 04             	sub    $0x4,%esp
    118e:	6a 01                	push   $0x1
    1190:	50                   	push   %eax
    1191:	6a 00                	push   $0x0
    1193:	e8 32 01 00 00       	call   12ca <read>
    if(cc < 1)
    1198:	83 c4 10             	add    $0x10,%esp
    119b:	85 c0                	test   %eax,%eax
    119d:	7e 1c                	jle    11bb <gets+0x4b>
      break;
    buf[i++] = c;
    119f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11a3:	83 c7 01             	add    $0x1,%edi
    11a6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11a9:	3c 0a                	cmp    $0xa,%al
    11ab:	74 23                	je     11d0 <gets+0x60>
    11ad:	3c 0d                	cmp    $0xd,%al
    11af:	74 1f                	je     11d0 <gets+0x60>
  for(i=0; i+1 < max; ){
    11b1:	83 c3 01             	add    $0x1,%ebx
    11b4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11b7:	89 fe                	mov    %edi,%esi
    11b9:	7c cd                	jl     1188 <gets+0x18>
    11bb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11bd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11c0:	c6 03 00             	movb   $0x0,(%ebx)
}
    11c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11c6:	5b                   	pop    %ebx
    11c7:	5e                   	pop    %esi
    11c8:	5f                   	pop    %edi
    11c9:	5d                   	pop    %ebp
    11ca:	c3                   	ret    
    11cb:	90                   	nop
    11cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11d0:	8b 75 08             	mov    0x8(%ebp),%esi
    11d3:	8b 45 08             	mov    0x8(%ebp),%eax
    11d6:	01 de                	add    %ebx,%esi
    11d8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11da:	c6 03 00             	movb   $0x0,(%ebx)
}
    11dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11e0:	5b                   	pop    %ebx
    11e1:	5e                   	pop    %esi
    11e2:	5f                   	pop    %edi
    11e3:	5d                   	pop    %ebp
    11e4:	c3                   	ret    
    11e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011f0 <stat>:

int
stat(char *n, struct stat *st)
{
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	56                   	push   %esi
    11f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11f5:	83 ec 08             	sub    $0x8,%esp
    11f8:	6a 00                	push   $0x0
    11fa:	ff 75 08             	pushl  0x8(%ebp)
    11fd:	e8 f0 00 00 00       	call   12f2 <open>
  if(fd < 0)
    1202:	83 c4 10             	add    $0x10,%esp
    1205:	85 c0                	test   %eax,%eax
    1207:	78 27                	js     1230 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1209:	83 ec 08             	sub    $0x8,%esp
    120c:	ff 75 0c             	pushl  0xc(%ebp)
    120f:	89 c3                	mov    %eax,%ebx
    1211:	50                   	push   %eax
    1212:	e8 f3 00 00 00       	call   130a <fstat>
  close(fd);
    1217:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    121a:	89 c6                	mov    %eax,%esi
  close(fd);
    121c:	e8 b9 00 00 00       	call   12da <close>
  return r;
    1221:	83 c4 10             	add    $0x10,%esp
}
    1224:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1227:	89 f0                	mov    %esi,%eax
    1229:	5b                   	pop    %ebx
    122a:	5e                   	pop    %esi
    122b:	5d                   	pop    %ebp
    122c:	c3                   	ret    
    122d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1230:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1235:	eb ed                	jmp    1224 <stat+0x34>
    1237:	89 f6                	mov    %esi,%esi
    1239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001240 <atoi>:

int
atoi(const char *s)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	53                   	push   %ebx
    1244:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1247:	0f be 11             	movsbl (%ecx),%edx
    124a:	8d 42 d0             	lea    -0x30(%edx),%eax
    124d:	3c 09                	cmp    $0x9,%al
  n = 0;
    124f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1254:	77 1f                	ja     1275 <atoi+0x35>
    1256:	8d 76 00             	lea    0x0(%esi),%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1260:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1263:	83 c1 01             	add    $0x1,%ecx
    1266:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    126a:	0f be 11             	movsbl (%ecx),%edx
    126d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1270:	80 fb 09             	cmp    $0x9,%bl
    1273:	76 eb                	jbe    1260 <atoi+0x20>
  return n;
}
    1275:	5b                   	pop    %ebx
    1276:	5d                   	pop    %ebp
    1277:	c3                   	ret    
    1278:	90                   	nop
    1279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001280 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	56                   	push   %esi
    1284:	53                   	push   %ebx
    1285:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1288:	8b 45 08             	mov    0x8(%ebp),%eax
    128b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    128e:	85 db                	test   %ebx,%ebx
    1290:	7e 14                	jle    12a6 <memmove+0x26>
    1292:	31 d2                	xor    %edx,%edx
    1294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1298:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    129c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    129f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    12a2:	39 d3                	cmp    %edx,%ebx
    12a4:	75 f2                	jne    1298 <memmove+0x18>
  return vdst;
}
    12a6:	5b                   	pop    %ebx
    12a7:	5e                   	pop    %esi
    12a8:	5d                   	pop    %ebp
    12a9:	c3                   	ret    

000012aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    12aa:	b8 01 00 00 00       	mov    $0x1,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <exit>:
SYSCALL(exit)
    12b2:	b8 02 00 00 00       	mov    $0x2,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <wait>:
SYSCALL(wait)
    12ba:	b8 03 00 00 00       	mov    $0x3,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <pipe>:
SYSCALL(pipe)
    12c2:	b8 04 00 00 00       	mov    $0x4,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <read>:
SYSCALL(read)
    12ca:	b8 05 00 00 00       	mov    $0x5,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <write>:
SYSCALL(write)
    12d2:	b8 10 00 00 00       	mov    $0x10,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <close>:
SYSCALL(close)
    12da:	b8 15 00 00 00       	mov    $0x15,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <kill>:
SYSCALL(kill)
    12e2:	b8 06 00 00 00       	mov    $0x6,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <exec>:
SYSCALL(exec)
    12ea:	b8 07 00 00 00       	mov    $0x7,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <open>:
SYSCALL(open)
    12f2:	b8 0f 00 00 00       	mov    $0xf,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <mknod>:
SYSCALL(mknod)
    12fa:	b8 11 00 00 00       	mov    $0x11,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <unlink>:
SYSCALL(unlink)
    1302:	b8 12 00 00 00       	mov    $0x12,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <fstat>:
SYSCALL(fstat)
    130a:	b8 08 00 00 00       	mov    $0x8,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    

00001312 <link>:
SYSCALL(link)
    1312:	b8 13 00 00 00       	mov    $0x13,%eax
    1317:	cd 40                	int    $0x40
    1319:	c3                   	ret    

0000131a <mkdir>:
SYSCALL(mkdir)
    131a:	b8 14 00 00 00       	mov    $0x14,%eax
    131f:	cd 40                	int    $0x40
    1321:	c3                   	ret    

00001322 <chdir>:
SYSCALL(chdir)
    1322:	b8 09 00 00 00       	mov    $0x9,%eax
    1327:	cd 40                	int    $0x40
    1329:	c3                   	ret    

0000132a <dup>:
SYSCALL(dup)
    132a:	b8 0a 00 00 00       	mov    $0xa,%eax
    132f:	cd 40                	int    $0x40
    1331:	c3                   	ret    

00001332 <getpid>:
SYSCALL(getpid)
    1332:	b8 0b 00 00 00       	mov    $0xb,%eax
    1337:	cd 40                	int    $0x40
    1339:	c3                   	ret    

0000133a <sbrk>:
SYSCALL(sbrk)
    133a:	b8 0c 00 00 00       	mov    $0xc,%eax
    133f:	cd 40                	int    $0x40
    1341:	c3                   	ret    

00001342 <sleep>:
SYSCALL(sleep)
    1342:	b8 0d 00 00 00       	mov    $0xd,%eax
    1347:	cd 40                	int    $0x40
    1349:	c3                   	ret    

0000134a <uptime>:
SYSCALL(uptime)
    134a:	b8 0e 00 00 00       	mov    $0xe,%eax
    134f:	cd 40                	int    $0x40
    1351:	c3                   	ret    

00001352 <shm_open>:
SYSCALL(shm_open)
    1352:	b8 16 00 00 00       	mov    $0x16,%eax
    1357:	cd 40                	int    $0x40
    1359:	c3                   	ret    

0000135a <shm_close>:
SYSCALL(shm_close)	
    135a:	b8 17 00 00 00       	mov    $0x17,%eax
    135f:	cd 40                	int    $0x40
    1361:	c3                   	ret    
    1362:	66 90                	xchg   %ax,%ax
    1364:	66 90                	xchg   %ax,%ax
    1366:	66 90                	xchg   %ax,%ax
    1368:	66 90                	xchg   %ax,%ax
    136a:	66 90                	xchg   %ax,%ax
    136c:	66 90                	xchg   %ax,%ax
    136e:	66 90                	xchg   %ax,%ax

00001370 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1370:	55                   	push   %ebp
    1371:	89 e5                	mov    %esp,%ebp
    1373:	57                   	push   %edi
    1374:	56                   	push   %esi
    1375:	53                   	push   %ebx
    1376:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1379:	85 d2                	test   %edx,%edx
{
    137b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    137e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1380:	79 76                	jns    13f8 <printint+0x88>
    1382:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1386:	74 70                	je     13f8 <printint+0x88>
    x = -xx;
    1388:	f7 d8                	neg    %eax
    neg = 1;
    138a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1391:	31 f6                	xor    %esi,%esi
    1393:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1396:	eb 0a                	jmp    13a2 <printint+0x32>
    1398:	90                   	nop
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    13a0:	89 fe                	mov    %edi,%esi
    13a2:	31 d2                	xor    %edx,%edx
    13a4:	8d 7e 01             	lea    0x1(%esi),%edi
    13a7:	f7 f1                	div    %ecx
    13a9:	0f b6 92 d4 17 00 00 	movzbl 0x17d4(%edx),%edx
  }while((x /= base) != 0);
    13b0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    13b2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    13b5:	75 e9                	jne    13a0 <printint+0x30>
  if(neg)
    13b7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    13ba:	85 c0                	test   %eax,%eax
    13bc:	74 08                	je     13c6 <printint+0x56>
    buf[i++] = '-';
    13be:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    13c3:	8d 7e 02             	lea    0x2(%esi),%edi
    13c6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    13ca:	8b 7d c0             	mov    -0x40(%ebp),%edi
    13cd:	8d 76 00             	lea    0x0(%esi),%esi
    13d0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    13d3:	83 ec 04             	sub    $0x4,%esp
    13d6:	83 ee 01             	sub    $0x1,%esi
    13d9:	6a 01                	push   $0x1
    13db:	53                   	push   %ebx
    13dc:	57                   	push   %edi
    13dd:	88 45 d7             	mov    %al,-0x29(%ebp)
    13e0:	e8 ed fe ff ff       	call   12d2 <write>

  while(--i >= 0)
    13e5:	83 c4 10             	add    $0x10,%esp
    13e8:	39 de                	cmp    %ebx,%esi
    13ea:	75 e4                	jne    13d0 <printint+0x60>
    putc(fd, buf[i]);
}
    13ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13ef:	5b                   	pop    %ebx
    13f0:	5e                   	pop    %esi
    13f1:	5f                   	pop    %edi
    13f2:	5d                   	pop    %ebp
    13f3:	c3                   	ret    
    13f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    13f8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13ff:	eb 90                	jmp    1391 <printint+0x21>
    1401:	eb 0d                	jmp    1410 <printf>
    1403:	90                   	nop
    1404:	90                   	nop
    1405:	90                   	nop
    1406:	90                   	nop
    1407:	90                   	nop
    1408:	90                   	nop
    1409:	90                   	nop
    140a:	90                   	nop
    140b:	90                   	nop
    140c:	90                   	nop
    140d:	90                   	nop
    140e:	90                   	nop
    140f:	90                   	nop

00001410 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1410:	55                   	push   %ebp
    1411:	89 e5                	mov    %esp,%ebp
    1413:	57                   	push   %edi
    1414:	56                   	push   %esi
    1415:	53                   	push   %ebx
    1416:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1419:	8b 75 0c             	mov    0xc(%ebp),%esi
    141c:	0f b6 1e             	movzbl (%esi),%ebx
    141f:	84 db                	test   %bl,%bl
    1421:	0f 84 b3 00 00 00    	je     14da <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    1427:	8d 45 10             	lea    0x10(%ebp),%eax
    142a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    142d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    142f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1432:	eb 2f                	jmp    1463 <printf+0x53>
    1434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1438:	83 f8 25             	cmp    $0x25,%eax
    143b:	0f 84 a7 00 00 00    	je     14e8 <printf+0xd8>
  write(fd, &c, 1);
    1441:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1444:	83 ec 04             	sub    $0x4,%esp
    1447:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    144a:	6a 01                	push   $0x1
    144c:	50                   	push   %eax
    144d:	ff 75 08             	pushl  0x8(%ebp)
    1450:	e8 7d fe ff ff       	call   12d2 <write>
    1455:	83 c4 10             	add    $0x10,%esp
    1458:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    145b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    145f:	84 db                	test   %bl,%bl
    1461:	74 77                	je     14da <printf+0xca>
    if(state == 0){
    1463:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1465:	0f be cb             	movsbl %bl,%ecx
    1468:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    146b:	74 cb                	je     1438 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    146d:	83 ff 25             	cmp    $0x25,%edi
    1470:	75 e6                	jne    1458 <printf+0x48>
      if(c == 'd'){
    1472:	83 f8 64             	cmp    $0x64,%eax
    1475:	0f 84 05 01 00 00    	je     1580 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    147b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1481:	83 f9 70             	cmp    $0x70,%ecx
    1484:	74 72                	je     14f8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1486:	83 f8 73             	cmp    $0x73,%eax
    1489:	0f 84 99 00 00 00    	je     1528 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    148f:	83 f8 63             	cmp    $0x63,%eax
    1492:	0f 84 08 01 00 00    	je     15a0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1498:	83 f8 25             	cmp    $0x25,%eax
    149b:	0f 84 ef 00 00 00    	je     1590 <printf+0x180>
  write(fd, &c, 1);
    14a1:	8d 45 e7             	lea    -0x19(%ebp),%eax
    14a4:	83 ec 04             	sub    $0x4,%esp
    14a7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    14ab:	6a 01                	push   $0x1
    14ad:	50                   	push   %eax
    14ae:	ff 75 08             	pushl  0x8(%ebp)
    14b1:	e8 1c fe ff ff       	call   12d2 <write>
    14b6:	83 c4 0c             	add    $0xc,%esp
    14b9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    14bc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    14bf:	6a 01                	push   $0x1
    14c1:	50                   	push   %eax
    14c2:	ff 75 08             	pushl  0x8(%ebp)
    14c5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    14c8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    14ca:	e8 03 fe ff ff       	call   12d2 <write>
  for(i = 0; fmt[i]; i++){
    14cf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    14d3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    14d6:	84 db                	test   %bl,%bl
    14d8:	75 89                	jne    1463 <printf+0x53>
    }
  }
}
    14da:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14dd:	5b                   	pop    %ebx
    14de:	5e                   	pop    %esi
    14df:	5f                   	pop    %edi
    14e0:	5d                   	pop    %ebp
    14e1:	c3                   	ret    
    14e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    14e8:	bf 25 00 00 00       	mov    $0x25,%edi
    14ed:	e9 66 ff ff ff       	jmp    1458 <printf+0x48>
    14f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    14f8:	83 ec 0c             	sub    $0xc,%esp
    14fb:	b9 10 00 00 00       	mov    $0x10,%ecx
    1500:	6a 00                	push   $0x0
    1502:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1505:	8b 45 08             	mov    0x8(%ebp),%eax
    1508:	8b 17                	mov    (%edi),%edx
    150a:	e8 61 fe ff ff       	call   1370 <printint>
        ap++;
    150f:	89 f8                	mov    %edi,%eax
    1511:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1514:	31 ff                	xor    %edi,%edi
        ap++;
    1516:	83 c0 04             	add    $0x4,%eax
    1519:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    151c:	e9 37 ff ff ff       	jmp    1458 <printf+0x48>
    1521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1528:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    152b:	8b 08                	mov    (%eax),%ecx
        ap++;
    152d:	83 c0 04             	add    $0x4,%eax
    1530:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1533:	85 c9                	test   %ecx,%ecx
    1535:	0f 84 8e 00 00 00    	je     15c9 <printf+0x1b9>
        while(*s != 0){
    153b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    153e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1540:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1542:	84 c0                	test   %al,%al
    1544:	0f 84 0e ff ff ff    	je     1458 <printf+0x48>
    154a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    154d:	89 de                	mov    %ebx,%esi
    154f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1552:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1555:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1558:	83 ec 04             	sub    $0x4,%esp
          s++;
    155b:	83 c6 01             	add    $0x1,%esi
    155e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1561:	6a 01                	push   $0x1
    1563:	57                   	push   %edi
    1564:	53                   	push   %ebx
    1565:	e8 68 fd ff ff       	call   12d2 <write>
        while(*s != 0){
    156a:	0f b6 06             	movzbl (%esi),%eax
    156d:	83 c4 10             	add    $0x10,%esp
    1570:	84 c0                	test   %al,%al
    1572:	75 e4                	jne    1558 <printf+0x148>
    1574:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1577:	31 ff                	xor    %edi,%edi
    1579:	e9 da fe ff ff       	jmp    1458 <printf+0x48>
    157e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1580:	83 ec 0c             	sub    $0xc,%esp
    1583:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1588:	6a 01                	push   $0x1
    158a:	e9 73 ff ff ff       	jmp    1502 <printf+0xf2>
    158f:	90                   	nop
  write(fd, &c, 1);
    1590:	83 ec 04             	sub    $0x4,%esp
    1593:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1596:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1599:	6a 01                	push   $0x1
    159b:	e9 21 ff ff ff       	jmp    14c1 <printf+0xb1>
        putc(fd, *ap);
    15a0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    15a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    15a6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    15a8:	6a 01                	push   $0x1
        ap++;
    15aa:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    15ad:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    15b0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    15b3:	50                   	push   %eax
    15b4:	ff 75 08             	pushl  0x8(%ebp)
    15b7:	e8 16 fd ff ff       	call   12d2 <write>
        ap++;
    15bc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    15bf:	83 c4 10             	add    $0x10,%esp
      state = 0;
    15c2:	31 ff                	xor    %edi,%edi
    15c4:	e9 8f fe ff ff       	jmp    1458 <printf+0x48>
          s = "(null)";
    15c9:	bb cb 17 00 00       	mov    $0x17cb,%ebx
        while(*s != 0){
    15ce:	b8 28 00 00 00       	mov    $0x28,%eax
    15d3:	e9 72 ff ff ff       	jmp    154a <printf+0x13a>
    15d8:	66 90                	xchg   %ax,%ax
    15da:	66 90                	xchg   %ax,%ax
    15dc:	66 90                	xchg   %ax,%ax
    15de:	66 90                	xchg   %ax,%ax

000015e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    15e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15e1:	a1 bc 1a 00 00       	mov    0x1abc,%eax
{
    15e6:	89 e5                	mov    %esp,%ebp
    15e8:	57                   	push   %edi
    15e9:	56                   	push   %esi
    15ea:	53                   	push   %ebx
    15eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    15ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    15f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15f8:	39 c8                	cmp    %ecx,%eax
    15fa:	8b 10                	mov    (%eax),%edx
    15fc:	73 32                	jae    1630 <free+0x50>
    15fe:	39 d1                	cmp    %edx,%ecx
    1600:	72 04                	jb     1606 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1602:	39 d0                	cmp    %edx,%eax
    1604:	72 32                	jb     1638 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1606:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1609:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    160c:	39 fa                	cmp    %edi,%edx
    160e:	74 30                	je     1640 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1610:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1613:	8b 50 04             	mov    0x4(%eax),%edx
    1616:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1619:	39 f1                	cmp    %esi,%ecx
    161b:	74 3a                	je     1657 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    161d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    161f:	a3 bc 1a 00 00       	mov    %eax,0x1abc
}
    1624:	5b                   	pop    %ebx
    1625:	5e                   	pop    %esi
    1626:	5f                   	pop    %edi
    1627:	5d                   	pop    %ebp
    1628:	c3                   	ret    
    1629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1630:	39 d0                	cmp    %edx,%eax
    1632:	72 04                	jb     1638 <free+0x58>
    1634:	39 d1                	cmp    %edx,%ecx
    1636:	72 ce                	jb     1606 <free+0x26>
{
    1638:	89 d0                	mov    %edx,%eax
    163a:	eb bc                	jmp    15f8 <free+0x18>
    163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1640:	03 72 04             	add    0x4(%edx),%esi
    1643:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1646:	8b 10                	mov    (%eax),%edx
    1648:	8b 12                	mov    (%edx),%edx
    164a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    164d:	8b 50 04             	mov    0x4(%eax),%edx
    1650:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1653:	39 f1                	cmp    %esi,%ecx
    1655:	75 c6                	jne    161d <free+0x3d>
    p->s.size += bp->s.size;
    1657:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    165a:	a3 bc 1a 00 00       	mov    %eax,0x1abc
    p->s.size += bp->s.size;
    165f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1662:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1665:	89 10                	mov    %edx,(%eax)
}
    1667:	5b                   	pop    %ebx
    1668:	5e                   	pop    %esi
    1669:	5f                   	pop    %edi
    166a:	5d                   	pop    %ebp
    166b:	c3                   	ret    
    166c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001670 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1670:	55                   	push   %ebp
    1671:	89 e5                	mov    %esp,%ebp
    1673:	57                   	push   %edi
    1674:	56                   	push   %esi
    1675:	53                   	push   %ebx
    1676:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1679:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    167c:	8b 15 bc 1a 00 00    	mov    0x1abc,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1682:	8d 78 07             	lea    0x7(%eax),%edi
    1685:	c1 ef 03             	shr    $0x3,%edi
    1688:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    168b:	85 d2                	test   %edx,%edx
    168d:	0f 84 9d 00 00 00    	je     1730 <malloc+0xc0>
    1693:	8b 02                	mov    (%edx),%eax
    1695:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1698:	39 cf                	cmp    %ecx,%edi
    169a:	76 6c                	jbe    1708 <malloc+0x98>
    169c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    16a2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    16a7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    16aa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    16b1:	eb 0e                	jmp    16c1 <malloc+0x51>
    16b3:	90                   	nop
    16b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    16b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    16ba:	8b 48 04             	mov    0x4(%eax),%ecx
    16bd:	39 f9                	cmp    %edi,%ecx
    16bf:	73 47                	jae    1708 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    16c1:	39 05 bc 1a 00 00    	cmp    %eax,0x1abc
    16c7:	89 c2                	mov    %eax,%edx
    16c9:	75 ed                	jne    16b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    16cb:	83 ec 0c             	sub    $0xc,%esp
    16ce:	56                   	push   %esi
    16cf:	e8 66 fc ff ff       	call   133a <sbrk>
  if(p == (char*)-1)
    16d4:	83 c4 10             	add    $0x10,%esp
    16d7:	83 f8 ff             	cmp    $0xffffffff,%eax
    16da:	74 1c                	je     16f8 <malloc+0x88>
  hp->s.size = nu;
    16dc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    16df:	83 ec 0c             	sub    $0xc,%esp
    16e2:	83 c0 08             	add    $0x8,%eax
    16e5:	50                   	push   %eax
    16e6:	e8 f5 fe ff ff       	call   15e0 <free>
  return freep;
    16eb:	8b 15 bc 1a 00 00    	mov    0x1abc,%edx
      if((p = morecore(nunits)) == 0)
    16f1:	83 c4 10             	add    $0x10,%esp
    16f4:	85 d2                	test   %edx,%edx
    16f6:	75 c0                	jne    16b8 <malloc+0x48>
        return 0;
  }
}
    16f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    16fb:	31 c0                	xor    %eax,%eax
}
    16fd:	5b                   	pop    %ebx
    16fe:	5e                   	pop    %esi
    16ff:	5f                   	pop    %edi
    1700:	5d                   	pop    %ebp
    1701:	c3                   	ret    
    1702:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1708:	39 cf                	cmp    %ecx,%edi
    170a:	74 54                	je     1760 <malloc+0xf0>
        p->s.size -= nunits;
    170c:	29 f9                	sub    %edi,%ecx
    170e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1711:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1714:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1717:	89 15 bc 1a 00 00    	mov    %edx,0x1abc
}
    171d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1720:	83 c0 08             	add    $0x8,%eax
}
    1723:	5b                   	pop    %ebx
    1724:	5e                   	pop    %esi
    1725:	5f                   	pop    %edi
    1726:	5d                   	pop    %ebp
    1727:	c3                   	ret    
    1728:	90                   	nop
    1729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1730:	c7 05 bc 1a 00 00 c0 	movl   $0x1ac0,0x1abc
    1737:	1a 00 00 
    173a:	c7 05 c0 1a 00 00 c0 	movl   $0x1ac0,0x1ac0
    1741:	1a 00 00 
    base.s.size = 0;
    1744:	b8 c0 1a 00 00       	mov    $0x1ac0,%eax
    1749:	c7 05 c4 1a 00 00 00 	movl   $0x0,0x1ac4
    1750:	00 00 00 
    1753:	e9 44 ff ff ff       	jmp    169c <malloc+0x2c>
    1758:	90                   	nop
    1759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1760:	8b 08                	mov    (%eax),%ecx
    1762:	89 0a                	mov    %ecx,(%edx)
    1764:	eb b1                	jmp    1717 <malloc+0xa7>
    1766:	66 90                	xchg   %ax,%ax
    1768:	66 90                	xchg   %ax,%ax
    176a:	66 90                	xchg   %ax,%ax
    176c:	66 90                	xchg   %ax,%ax
    176e:	66 90                	xchg   %ax,%ax

00001770 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1770:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1771:	b9 01 00 00 00       	mov    $0x1,%ecx
    1776:	89 e5                	mov    %esp,%ebp
    1778:	8b 55 08             	mov    0x8(%ebp),%edx
    177b:	90                   	nop
    177c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1780:	89 c8                	mov    %ecx,%eax
    1782:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1785:	85 c0                	test   %eax,%eax
    1787:	75 f7                	jne    1780 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1789:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    178e:	5d                   	pop    %ebp
    178f:	c3                   	ret    

00001790 <urelease>:

void urelease (struct uspinlock *lk) {
    1790:	55                   	push   %ebp
    1791:	89 e5                	mov    %esp,%ebp
    1793:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1796:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    179b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    17a1:	5d                   	pop    %ebp
    17a2:	c3                   	ret    
