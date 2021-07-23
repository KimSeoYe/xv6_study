
_null:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"

int main(int argc, char *argv[])
{
    1000:	55                   	push   %ebp
int *i = 0;

(*i)++;
    1001:	a1 00 00 00 00       	mov    0x0,%eax
{
    1006:	89 e5                	mov    %esp,%ebp
    1008:	0f 0b                	ud2    
    100a:	66 90                	xchg   %ax,%ax
    100c:	66 90                	xchg   %ax,%ax
    100e:	66 90                	xchg   %ax,%ax

00001010 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	53                   	push   %ebx
    1014:	8b 45 08             	mov    0x8(%ebp),%eax
    1017:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    101a:	89 c2                	mov    %eax,%edx
    101c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1020:	83 c1 01             	add    $0x1,%ecx
    1023:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1027:	83 c2 01             	add    $0x1,%edx
    102a:	84 db                	test   %bl,%bl
    102c:	88 5a ff             	mov    %bl,-0x1(%edx)
    102f:	75 ef                	jne    1020 <strcpy+0x10>
    ;
  return os;
}
    1031:	5b                   	pop    %ebx
    1032:	5d                   	pop    %ebp
    1033:	c3                   	ret    
    1034:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    103a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001040 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	53                   	push   %ebx
    1044:	8b 55 08             	mov    0x8(%ebp),%edx
    1047:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    104a:	0f b6 02             	movzbl (%edx),%eax
    104d:	0f b6 19             	movzbl (%ecx),%ebx
    1050:	84 c0                	test   %al,%al
    1052:	75 1c                	jne    1070 <strcmp+0x30>
    1054:	eb 2a                	jmp    1080 <strcmp+0x40>
    1056:	8d 76 00             	lea    0x0(%esi),%esi
    1059:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1060:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1063:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1066:	83 c1 01             	add    $0x1,%ecx
    1069:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    106c:	84 c0                	test   %al,%al
    106e:	74 10                	je     1080 <strcmp+0x40>
    1070:	38 d8                	cmp    %bl,%al
    1072:	74 ec                	je     1060 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1074:	29 d8                	sub    %ebx,%eax
}
    1076:	5b                   	pop    %ebx
    1077:	5d                   	pop    %ebp
    1078:	c3                   	ret    
    1079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1080:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1082:	29 d8                	sub    %ebx,%eax
}
    1084:	5b                   	pop    %ebx
    1085:	5d                   	pop    %ebp
    1086:	c3                   	ret    
    1087:	89 f6                	mov    %esi,%esi
    1089:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001090 <strlen>:

uint
strlen(char *s)
{
    1090:	55                   	push   %ebp
    1091:	89 e5                	mov    %esp,%ebp
    1093:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1096:	80 39 00             	cmpb   $0x0,(%ecx)
    1099:	74 15                	je     10b0 <strlen+0x20>
    109b:	31 d2                	xor    %edx,%edx
    109d:	8d 76 00             	lea    0x0(%esi),%esi
    10a0:	83 c2 01             	add    $0x1,%edx
    10a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    10a7:	89 d0                	mov    %edx,%eax
    10a9:	75 f5                	jne    10a0 <strlen+0x10>
    ;
  return n;
}
    10ab:	5d                   	pop    %ebp
    10ac:	c3                   	ret    
    10ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    10b0:	31 c0                	xor    %eax,%eax
}
    10b2:	5d                   	pop    %ebp
    10b3:	c3                   	ret    
    10b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000010c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	57                   	push   %edi
    10c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    10cd:	89 d7                	mov    %edx,%edi
    10cf:	fc                   	cld    
    10d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10d2:	89 d0                	mov    %edx,%eax
    10d4:	5f                   	pop    %edi
    10d5:	5d                   	pop    %ebp
    10d6:	c3                   	ret    
    10d7:	89 f6                	mov    %esi,%esi
    10d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010e0 <strchr>:

char*
strchr(const char *s, char c)
{
    10e0:	55                   	push   %ebp
    10e1:	89 e5                	mov    %esp,%ebp
    10e3:	53                   	push   %ebx
    10e4:	8b 45 08             	mov    0x8(%ebp),%eax
    10e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    10ea:	0f b6 10             	movzbl (%eax),%edx
    10ed:	84 d2                	test   %dl,%dl
    10ef:	74 1d                	je     110e <strchr+0x2e>
    if(*s == c)
    10f1:	38 d3                	cmp    %dl,%bl
    10f3:	89 d9                	mov    %ebx,%ecx
    10f5:	75 0d                	jne    1104 <strchr+0x24>
    10f7:	eb 17                	jmp    1110 <strchr+0x30>
    10f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1100:	38 ca                	cmp    %cl,%dl
    1102:	74 0c                	je     1110 <strchr+0x30>
  for(; *s; s++)
    1104:	83 c0 01             	add    $0x1,%eax
    1107:	0f b6 10             	movzbl (%eax),%edx
    110a:	84 d2                	test   %dl,%dl
    110c:	75 f2                	jne    1100 <strchr+0x20>
      return (char*)s;
  return 0;
    110e:	31 c0                	xor    %eax,%eax
}
    1110:	5b                   	pop    %ebx
    1111:	5d                   	pop    %ebp
    1112:	c3                   	ret    
    1113:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001120 <gets>:

char*
gets(char *buf, int max)
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	57                   	push   %edi
    1124:	56                   	push   %esi
    1125:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1126:	31 f6                	xor    %esi,%esi
    1128:	89 f3                	mov    %esi,%ebx
{
    112a:	83 ec 1c             	sub    $0x1c,%esp
    112d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1130:	eb 2f                	jmp    1161 <gets+0x41>
    1132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1138:	8d 45 e7             	lea    -0x19(%ebp),%eax
    113b:	83 ec 04             	sub    $0x4,%esp
    113e:	6a 01                	push   $0x1
    1140:	50                   	push   %eax
    1141:	6a 00                	push   $0x0
    1143:	e8 32 01 00 00       	call   127a <read>
    if(cc < 1)
    1148:	83 c4 10             	add    $0x10,%esp
    114b:	85 c0                	test   %eax,%eax
    114d:	7e 1c                	jle    116b <gets+0x4b>
      break;
    buf[i++] = c;
    114f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1153:	83 c7 01             	add    $0x1,%edi
    1156:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1159:	3c 0a                	cmp    $0xa,%al
    115b:	74 23                	je     1180 <gets+0x60>
    115d:	3c 0d                	cmp    $0xd,%al
    115f:	74 1f                	je     1180 <gets+0x60>
  for(i=0; i+1 < max; ){
    1161:	83 c3 01             	add    $0x1,%ebx
    1164:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1167:	89 fe                	mov    %edi,%esi
    1169:	7c cd                	jl     1138 <gets+0x18>
    116b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    116d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1170:	c6 03 00             	movb   $0x0,(%ebx)
}
    1173:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1176:	5b                   	pop    %ebx
    1177:	5e                   	pop    %esi
    1178:	5f                   	pop    %edi
    1179:	5d                   	pop    %ebp
    117a:	c3                   	ret    
    117b:	90                   	nop
    117c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1180:	8b 75 08             	mov    0x8(%ebp),%esi
    1183:	8b 45 08             	mov    0x8(%ebp),%eax
    1186:	01 de                	add    %ebx,%esi
    1188:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    118a:	c6 03 00             	movb   $0x0,(%ebx)
}
    118d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1190:	5b                   	pop    %ebx
    1191:	5e                   	pop    %esi
    1192:	5f                   	pop    %edi
    1193:	5d                   	pop    %ebp
    1194:	c3                   	ret    
    1195:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011a0 <stat>:

int
stat(char *n, struct stat *st)
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	56                   	push   %esi
    11a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11a5:	83 ec 08             	sub    $0x8,%esp
    11a8:	6a 00                	push   $0x0
    11aa:	ff 75 08             	pushl  0x8(%ebp)
    11ad:	e8 f0 00 00 00       	call   12a2 <open>
  if(fd < 0)
    11b2:	83 c4 10             	add    $0x10,%esp
    11b5:	85 c0                	test   %eax,%eax
    11b7:	78 27                	js     11e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    11b9:	83 ec 08             	sub    $0x8,%esp
    11bc:	ff 75 0c             	pushl  0xc(%ebp)
    11bf:	89 c3                	mov    %eax,%ebx
    11c1:	50                   	push   %eax
    11c2:	e8 f3 00 00 00       	call   12ba <fstat>
  close(fd);
    11c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    11ca:	89 c6                	mov    %eax,%esi
  close(fd);
    11cc:	e8 b9 00 00 00       	call   128a <close>
  return r;
    11d1:	83 c4 10             	add    $0x10,%esp
}
    11d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11d7:	89 f0                	mov    %esi,%eax
    11d9:	5b                   	pop    %ebx
    11da:	5e                   	pop    %esi
    11db:	5d                   	pop    %ebp
    11dc:	c3                   	ret    
    11dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    11e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    11e5:	eb ed                	jmp    11d4 <stat+0x34>
    11e7:	89 f6                	mov    %esi,%esi
    11e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011f0 <atoi>:

int
atoi(const char *s)
{
    11f0:	55                   	push   %ebp
    11f1:	89 e5                	mov    %esp,%ebp
    11f3:	53                   	push   %ebx
    11f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    11f7:	0f be 11             	movsbl (%ecx),%edx
    11fa:	8d 42 d0             	lea    -0x30(%edx),%eax
    11fd:	3c 09                	cmp    $0x9,%al
  n = 0;
    11ff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1204:	77 1f                	ja     1225 <atoi+0x35>
    1206:	8d 76 00             	lea    0x0(%esi),%esi
    1209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1210:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1213:	83 c1 01             	add    $0x1,%ecx
    1216:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    121a:	0f be 11             	movsbl (%ecx),%edx
    121d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1220:	80 fb 09             	cmp    $0x9,%bl
    1223:	76 eb                	jbe    1210 <atoi+0x20>
  return n;
}
    1225:	5b                   	pop    %ebx
    1226:	5d                   	pop    %ebp
    1227:	c3                   	ret    
    1228:	90                   	nop
    1229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001230 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	56                   	push   %esi
    1234:	53                   	push   %ebx
    1235:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1238:	8b 45 08             	mov    0x8(%ebp),%eax
    123b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    123e:	85 db                	test   %ebx,%ebx
    1240:	7e 14                	jle    1256 <memmove+0x26>
    1242:	31 d2                	xor    %edx,%edx
    1244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1248:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    124c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    124f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1252:	39 d3                	cmp    %edx,%ebx
    1254:	75 f2                	jne    1248 <memmove+0x18>
  return vdst;
}
    1256:	5b                   	pop    %ebx
    1257:	5e                   	pop    %esi
    1258:	5d                   	pop    %ebp
    1259:	c3                   	ret    

0000125a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    125a:	b8 01 00 00 00       	mov    $0x1,%eax
    125f:	cd 40                	int    $0x40
    1261:	c3                   	ret    

00001262 <exit>:
SYSCALL(exit)
    1262:	b8 02 00 00 00       	mov    $0x2,%eax
    1267:	cd 40                	int    $0x40
    1269:	c3                   	ret    

0000126a <wait>:
SYSCALL(wait)
    126a:	b8 03 00 00 00       	mov    $0x3,%eax
    126f:	cd 40                	int    $0x40
    1271:	c3                   	ret    

00001272 <pipe>:
SYSCALL(pipe)
    1272:	b8 04 00 00 00       	mov    $0x4,%eax
    1277:	cd 40                	int    $0x40
    1279:	c3                   	ret    

0000127a <read>:
SYSCALL(read)
    127a:	b8 05 00 00 00       	mov    $0x5,%eax
    127f:	cd 40                	int    $0x40
    1281:	c3                   	ret    

00001282 <write>:
SYSCALL(write)
    1282:	b8 10 00 00 00       	mov    $0x10,%eax
    1287:	cd 40                	int    $0x40
    1289:	c3                   	ret    

0000128a <close>:
SYSCALL(close)
    128a:	b8 15 00 00 00       	mov    $0x15,%eax
    128f:	cd 40                	int    $0x40
    1291:	c3                   	ret    

00001292 <kill>:
SYSCALL(kill)
    1292:	b8 06 00 00 00       	mov    $0x6,%eax
    1297:	cd 40                	int    $0x40
    1299:	c3                   	ret    

0000129a <exec>:
SYSCALL(exec)
    129a:	b8 07 00 00 00       	mov    $0x7,%eax
    129f:	cd 40                	int    $0x40
    12a1:	c3                   	ret    

000012a2 <open>:
SYSCALL(open)
    12a2:	b8 0f 00 00 00       	mov    $0xf,%eax
    12a7:	cd 40                	int    $0x40
    12a9:	c3                   	ret    

000012aa <mknod>:
SYSCALL(mknod)
    12aa:	b8 11 00 00 00       	mov    $0x11,%eax
    12af:	cd 40                	int    $0x40
    12b1:	c3                   	ret    

000012b2 <unlink>:
SYSCALL(unlink)
    12b2:	b8 12 00 00 00       	mov    $0x12,%eax
    12b7:	cd 40                	int    $0x40
    12b9:	c3                   	ret    

000012ba <fstat>:
SYSCALL(fstat)
    12ba:	b8 08 00 00 00       	mov    $0x8,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <link>:
SYSCALL(link)
    12c2:	b8 13 00 00 00       	mov    $0x13,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <mkdir>:
SYSCALL(mkdir)
    12ca:	b8 14 00 00 00       	mov    $0x14,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <chdir>:
SYSCALL(chdir)
    12d2:	b8 09 00 00 00       	mov    $0x9,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <dup>:
SYSCALL(dup)
    12da:	b8 0a 00 00 00       	mov    $0xa,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <getpid>:
SYSCALL(getpid)
    12e2:	b8 0b 00 00 00       	mov    $0xb,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <sbrk>:
SYSCALL(sbrk)
    12ea:	b8 0c 00 00 00       	mov    $0xc,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <sleep>:
SYSCALL(sleep)
    12f2:	b8 0d 00 00 00       	mov    $0xd,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <uptime>:
SYSCALL(uptime)
    12fa:	b8 0e 00 00 00       	mov    $0xe,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <shm_open>:
SYSCALL(shm_open)
    1302:	b8 16 00 00 00       	mov    $0x16,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <shm_close>:
SYSCALL(shm_close)	
    130a:	b8 17 00 00 00       	mov    $0x17,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    
    1312:	66 90                	xchg   %ax,%ax
    1314:	66 90                	xchg   %ax,%ax
    1316:	66 90                	xchg   %ax,%ax
    1318:	66 90                	xchg   %ax,%ax
    131a:	66 90                	xchg   %ax,%ax
    131c:	66 90                	xchg   %ax,%ax
    131e:	66 90                	xchg   %ax,%ax

00001320 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1320:	55                   	push   %ebp
    1321:	89 e5                	mov    %esp,%ebp
    1323:	57                   	push   %edi
    1324:	56                   	push   %esi
    1325:	53                   	push   %ebx
    1326:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1329:	85 d2                	test   %edx,%edx
{
    132b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    132e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1330:	79 76                	jns    13a8 <printint+0x88>
    1332:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1336:	74 70                	je     13a8 <printint+0x88>
    x = -xx;
    1338:	f7 d8                	neg    %eax
    neg = 1;
    133a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1341:	31 f6                	xor    %esi,%esi
    1343:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1346:	eb 0a                	jmp    1352 <printint+0x32>
    1348:	90                   	nop
    1349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1350:	89 fe                	mov    %edi,%esi
    1352:	31 d2                	xor    %edx,%edx
    1354:	8d 7e 01             	lea    0x1(%esi),%edi
    1357:	f7 f1                	div    %ecx
    1359:	0f b6 92 5c 17 00 00 	movzbl 0x175c(%edx),%edx
  }while((x /= base) != 0);
    1360:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1362:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1365:	75 e9                	jne    1350 <printint+0x30>
  if(neg)
    1367:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    136a:	85 c0                	test   %eax,%eax
    136c:	74 08                	je     1376 <printint+0x56>
    buf[i++] = '-';
    136e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1373:	8d 7e 02             	lea    0x2(%esi),%edi
    1376:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    137a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    137d:	8d 76 00             	lea    0x0(%esi),%esi
    1380:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1383:	83 ec 04             	sub    $0x4,%esp
    1386:	83 ee 01             	sub    $0x1,%esi
    1389:	6a 01                	push   $0x1
    138b:	53                   	push   %ebx
    138c:	57                   	push   %edi
    138d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1390:	e8 ed fe ff ff       	call   1282 <write>

  while(--i >= 0)
    1395:	83 c4 10             	add    $0x10,%esp
    1398:	39 de                	cmp    %ebx,%esi
    139a:	75 e4                	jne    1380 <printint+0x60>
    putc(fd, buf[i]);
}
    139c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    139f:	5b                   	pop    %ebx
    13a0:	5e                   	pop    %esi
    13a1:	5f                   	pop    %edi
    13a2:	5d                   	pop    %ebp
    13a3:	c3                   	ret    
    13a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    13a8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    13af:	eb 90                	jmp    1341 <printint+0x21>
    13b1:	eb 0d                	jmp    13c0 <printf>
    13b3:	90                   	nop
    13b4:	90                   	nop
    13b5:	90                   	nop
    13b6:	90                   	nop
    13b7:	90                   	nop
    13b8:	90                   	nop
    13b9:	90                   	nop
    13ba:	90                   	nop
    13bb:	90                   	nop
    13bc:	90                   	nop
    13bd:	90                   	nop
    13be:	90                   	nop
    13bf:	90                   	nop

000013c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    13c0:	55                   	push   %ebp
    13c1:	89 e5                	mov    %esp,%ebp
    13c3:	57                   	push   %edi
    13c4:	56                   	push   %esi
    13c5:	53                   	push   %ebx
    13c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    13c9:	8b 75 0c             	mov    0xc(%ebp),%esi
    13cc:	0f b6 1e             	movzbl (%esi),%ebx
    13cf:	84 db                	test   %bl,%bl
    13d1:	0f 84 b3 00 00 00    	je     148a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    13d7:	8d 45 10             	lea    0x10(%ebp),%eax
    13da:	83 c6 01             	add    $0x1,%esi
  state = 0;
    13dd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    13df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    13e2:	eb 2f                	jmp    1413 <printf+0x53>
    13e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    13e8:	83 f8 25             	cmp    $0x25,%eax
    13eb:	0f 84 a7 00 00 00    	je     1498 <printf+0xd8>
  write(fd, &c, 1);
    13f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    13f4:	83 ec 04             	sub    $0x4,%esp
    13f7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    13fa:	6a 01                	push   $0x1
    13fc:	50                   	push   %eax
    13fd:	ff 75 08             	pushl  0x8(%ebp)
    1400:	e8 7d fe ff ff       	call   1282 <write>
    1405:	83 c4 10             	add    $0x10,%esp
    1408:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    140b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    140f:	84 db                	test   %bl,%bl
    1411:	74 77                	je     148a <printf+0xca>
    if(state == 0){
    1413:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1415:	0f be cb             	movsbl %bl,%ecx
    1418:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    141b:	74 cb                	je     13e8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    141d:	83 ff 25             	cmp    $0x25,%edi
    1420:	75 e6                	jne    1408 <printf+0x48>
      if(c == 'd'){
    1422:	83 f8 64             	cmp    $0x64,%eax
    1425:	0f 84 05 01 00 00    	je     1530 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    142b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1431:	83 f9 70             	cmp    $0x70,%ecx
    1434:	74 72                	je     14a8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1436:	83 f8 73             	cmp    $0x73,%eax
    1439:	0f 84 99 00 00 00    	je     14d8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    143f:	83 f8 63             	cmp    $0x63,%eax
    1442:	0f 84 08 01 00 00    	je     1550 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1448:	83 f8 25             	cmp    $0x25,%eax
    144b:	0f 84 ef 00 00 00    	je     1540 <printf+0x180>
  write(fd, &c, 1);
    1451:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1454:	83 ec 04             	sub    $0x4,%esp
    1457:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    145b:	6a 01                	push   $0x1
    145d:	50                   	push   %eax
    145e:	ff 75 08             	pushl  0x8(%ebp)
    1461:	e8 1c fe ff ff       	call   1282 <write>
    1466:	83 c4 0c             	add    $0xc,%esp
    1469:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    146c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    146f:	6a 01                	push   $0x1
    1471:	50                   	push   %eax
    1472:	ff 75 08             	pushl  0x8(%ebp)
    1475:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1478:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    147a:	e8 03 fe ff ff       	call   1282 <write>
  for(i = 0; fmt[i]; i++){
    147f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1483:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1486:	84 db                	test   %bl,%bl
    1488:	75 89                	jne    1413 <printf+0x53>
    }
  }
}
    148a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    148d:	5b                   	pop    %ebx
    148e:	5e                   	pop    %esi
    148f:	5f                   	pop    %edi
    1490:	5d                   	pop    %ebp
    1491:	c3                   	ret    
    1492:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1498:	bf 25 00 00 00       	mov    $0x25,%edi
    149d:	e9 66 ff ff ff       	jmp    1408 <printf+0x48>
    14a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    14a8:	83 ec 0c             	sub    $0xc,%esp
    14ab:	b9 10 00 00 00       	mov    $0x10,%ecx
    14b0:	6a 00                	push   $0x0
    14b2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    14b5:	8b 45 08             	mov    0x8(%ebp),%eax
    14b8:	8b 17                	mov    (%edi),%edx
    14ba:	e8 61 fe ff ff       	call   1320 <printint>
        ap++;
    14bf:	89 f8                	mov    %edi,%eax
    14c1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    14c4:	31 ff                	xor    %edi,%edi
        ap++;
    14c6:	83 c0 04             	add    $0x4,%eax
    14c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    14cc:	e9 37 ff ff ff       	jmp    1408 <printf+0x48>
    14d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    14d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    14db:	8b 08                	mov    (%eax),%ecx
        ap++;
    14dd:	83 c0 04             	add    $0x4,%eax
    14e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    14e3:	85 c9                	test   %ecx,%ecx
    14e5:	0f 84 8e 00 00 00    	je     1579 <printf+0x1b9>
        while(*s != 0){
    14eb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    14ee:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    14f0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    14f2:	84 c0                	test   %al,%al
    14f4:	0f 84 0e ff ff ff    	je     1408 <printf+0x48>
    14fa:	89 75 d0             	mov    %esi,-0x30(%ebp)
    14fd:	89 de                	mov    %ebx,%esi
    14ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1502:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1505:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1508:	83 ec 04             	sub    $0x4,%esp
          s++;
    150b:	83 c6 01             	add    $0x1,%esi
    150e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1511:	6a 01                	push   $0x1
    1513:	57                   	push   %edi
    1514:	53                   	push   %ebx
    1515:	e8 68 fd ff ff       	call   1282 <write>
        while(*s != 0){
    151a:	0f b6 06             	movzbl (%esi),%eax
    151d:	83 c4 10             	add    $0x10,%esp
    1520:	84 c0                	test   %al,%al
    1522:	75 e4                	jne    1508 <printf+0x148>
    1524:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1527:	31 ff                	xor    %edi,%edi
    1529:	e9 da fe ff ff       	jmp    1408 <printf+0x48>
    152e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1530:	83 ec 0c             	sub    $0xc,%esp
    1533:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1538:	6a 01                	push   $0x1
    153a:	e9 73 ff ff ff       	jmp    14b2 <printf+0xf2>
    153f:	90                   	nop
  write(fd, &c, 1);
    1540:	83 ec 04             	sub    $0x4,%esp
    1543:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1546:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1549:	6a 01                	push   $0x1
    154b:	e9 21 ff ff ff       	jmp    1471 <printf+0xb1>
        putc(fd, *ap);
    1550:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1553:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1556:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1558:	6a 01                	push   $0x1
        ap++;
    155a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    155d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1560:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1563:	50                   	push   %eax
    1564:	ff 75 08             	pushl  0x8(%ebp)
    1567:	e8 16 fd ff ff       	call   1282 <write>
        ap++;
    156c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    156f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1572:	31 ff                	xor    %edi,%edi
    1574:	e9 8f fe ff ff       	jmp    1408 <printf+0x48>
          s = "(null)";
    1579:	bb 54 17 00 00       	mov    $0x1754,%ebx
        while(*s != 0){
    157e:	b8 28 00 00 00       	mov    $0x28,%eax
    1583:	e9 72 ff ff ff       	jmp    14fa <printf+0x13a>
    1588:	66 90                	xchg   %ax,%ax
    158a:	66 90                	xchg   %ax,%ax
    158c:	66 90                	xchg   %ax,%ax
    158e:	66 90                	xchg   %ax,%ax

00001590 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1590:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1591:	a1 38 1a 00 00       	mov    0x1a38,%eax
{
    1596:	89 e5                	mov    %esp,%ebp
    1598:	57                   	push   %edi
    1599:	56                   	push   %esi
    159a:	53                   	push   %ebx
    159b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    159e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    15a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15a8:	39 c8                	cmp    %ecx,%eax
    15aa:	8b 10                	mov    (%eax),%edx
    15ac:	73 32                	jae    15e0 <free+0x50>
    15ae:	39 d1                	cmp    %edx,%ecx
    15b0:	72 04                	jb     15b6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15b2:	39 d0                	cmp    %edx,%eax
    15b4:	72 32                	jb     15e8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    15b6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    15b9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    15bc:	39 fa                	cmp    %edi,%edx
    15be:	74 30                	je     15f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    15c0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15c3:	8b 50 04             	mov    0x4(%eax),%edx
    15c6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    15c9:	39 f1                	cmp    %esi,%ecx
    15cb:	74 3a                	je     1607 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    15cd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    15cf:	a3 38 1a 00 00       	mov    %eax,0x1a38
}
    15d4:	5b                   	pop    %ebx
    15d5:	5e                   	pop    %esi
    15d6:	5f                   	pop    %edi
    15d7:	5d                   	pop    %ebp
    15d8:	c3                   	ret    
    15d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    15e0:	39 d0                	cmp    %edx,%eax
    15e2:	72 04                	jb     15e8 <free+0x58>
    15e4:	39 d1                	cmp    %edx,%ecx
    15e6:	72 ce                	jb     15b6 <free+0x26>
{
    15e8:	89 d0                	mov    %edx,%eax
    15ea:	eb bc                	jmp    15a8 <free+0x18>
    15ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    15f0:	03 72 04             	add    0x4(%edx),%esi
    15f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    15f6:	8b 10                	mov    (%eax),%edx
    15f8:	8b 12                	mov    (%edx),%edx
    15fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    15fd:	8b 50 04             	mov    0x4(%eax),%edx
    1600:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1603:	39 f1                	cmp    %esi,%ecx
    1605:	75 c6                	jne    15cd <free+0x3d>
    p->s.size += bp->s.size;
    1607:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    160a:	a3 38 1a 00 00       	mov    %eax,0x1a38
    p->s.size += bp->s.size;
    160f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1612:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1615:	89 10                	mov    %edx,(%eax)
}
    1617:	5b                   	pop    %ebx
    1618:	5e                   	pop    %esi
    1619:	5f                   	pop    %edi
    161a:	5d                   	pop    %ebp
    161b:	c3                   	ret    
    161c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001620 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1620:	55                   	push   %ebp
    1621:	89 e5                	mov    %esp,%ebp
    1623:	57                   	push   %edi
    1624:	56                   	push   %esi
    1625:	53                   	push   %ebx
    1626:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1629:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    162c:	8b 15 38 1a 00 00    	mov    0x1a38,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1632:	8d 78 07             	lea    0x7(%eax),%edi
    1635:	c1 ef 03             	shr    $0x3,%edi
    1638:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    163b:	85 d2                	test   %edx,%edx
    163d:	0f 84 9d 00 00 00    	je     16e0 <malloc+0xc0>
    1643:	8b 02                	mov    (%edx),%eax
    1645:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1648:	39 cf                	cmp    %ecx,%edi
    164a:	76 6c                	jbe    16b8 <malloc+0x98>
    164c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1652:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1657:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    165a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1661:	eb 0e                	jmp    1671 <malloc+0x51>
    1663:	90                   	nop
    1664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1668:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    166a:	8b 48 04             	mov    0x4(%eax),%ecx
    166d:	39 f9                	cmp    %edi,%ecx
    166f:	73 47                	jae    16b8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1671:	39 05 38 1a 00 00    	cmp    %eax,0x1a38
    1677:	89 c2                	mov    %eax,%edx
    1679:	75 ed                	jne    1668 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    167b:	83 ec 0c             	sub    $0xc,%esp
    167e:	56                   	push   %esi
    167f:	e8 66 fc ff ff       	call   12ea <sbrk>
  if(p == (char*)-1)
    1684:	83 c4 10             	add    $0x10,%esp
    1687:	83 f8 ff             	cmp    $0xffffffff,%eax
    168a:	74 1c                	je     16a8 <malloc+0x88>
  hp->s.size = nu;
    168c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    168f:	83 ec 0c             	sub    $0xc,%esp
    1692:	83 c0 08             	add    $0x8,%eax
    1695:	50                   	push   %eax
    1696:	e8 f5 fe ff ff       	call   1590 <free>
  return freep;
    169b:	8b 15 38 1a 00 00    	mov    0x1a38,%edx
      if((p = morecore(nunits)) == 0)
    16a1:	83 c4 10             	add    $0x10,%esp
    16a4:	85 d2                	test   %edx,%edx
    16a6:	75 c0                	jne    1668 <malloc+0x48>
        return 0;
  }
}
    16a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    16ab:	31 c0                	xor    %eax,%eax
}
    16ad:	5b                   	pop    %ebx
    16ae:	5e                   	pop    %esi
    16af:	5f                   	pop    %edi
    16b0:	5d                   	pop    %ebp
    16b1:	c3                   	ret    
    16b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    16b8:	39 cf                	cmp    %ecx,%edi
    16ba:	74 54                	je     1710 <malloc+0xf0>
        p->s.size -= nunits;
    16bc:	29 f9                	sub    %edi,%ecx
    16be:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    16c1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    16c4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    16c7:	89 15 38 1a 00 00    	mov    %edx,0x1a38
}
    16cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    16d0:	83 c0 08             	add    $0x8,%eax
}
    16d3:	5b                   	pop    %ebx
    16d4:	5e                   	pop    %esi
    16d5:	5f                   	pop    %edi
    16d6:	5d                   	pop    %ebp
    16d7:	c3                   	ret    
    16d8:	90                   	nop
    16d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    16e0:	c7 05 38 1a 00 00 3c 	movl   $0x1a3c,0x1a38
    16e7:	1a 00 00 
    16ea:	c7 05 3c 1a 00 00 3c 	movl   $0x1a3c,0x1a3c
    16f1:	1a 00 00 
    base.s.size = 0;
    16f4:	b8 3c 1a 00 00       	mov    $0x1a3c,%eax
    16f9:	c7 05 40 1a 00 00 00 	movl   $0x0,0x1a40
    1700:	00 00 00 
    1703:	e9 44 ff ff ff       	jmp    164c <malloc+0x2c>
    1708:	90                   	nop
    1709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1710:	8b 08                	mov    (%eax),%ecx
    1712:	89 0a                	mov    %ecx,(%edx)
    1714:	eb b1                	jmp    16c7 <malloc+0xa7>
    1716:	66 90                	xchg   %ax,%ax
    1718:	66 90                	xchg   %ax,%ax
    171a:	66 90                	xchg   %ax,%ax
    171c:	66 90                	xchg   %ax,%ax
    171e:	66 90                	xchg   %ax,%ax

00001720 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1720:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1721:	b9 01 00 00 00       	mov    $0x1,%ecx
    1726:	89 e5                	mov    %esp,%ebp
    1728:	8b 55 08             	mov    0x8(%ebp),%edx
    172b:	90                   	nop
    172c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1730:	89 c8                	mov    %ecx,%eax
    1732:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1735:	85 c0                	test   %eax,%eax
    1737:	75 f7                	jne    1730 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1739:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    173e:	5d                   	pop    %ebp
    173f:	c3                   	ret    

00001740 <urelease>:

void urelease (struct uspinlock *lk) {
    1740:	55                   	push   %ebp
    1741:	89 e5                	mov    %esp,%ebp
    1743:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1746:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    174b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1751:	5d                   	pop    %ebp
    1752:	c3                   	ret    
