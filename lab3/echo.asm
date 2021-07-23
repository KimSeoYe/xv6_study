
_echo:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	ff 71 fc             	pushl  -0x4(%ecx)
    100a:	55                   	push   %ebp
    100b:	89 e5                	mov    %esp,%ebp
    100d:	56                   	push   %esi
    100e:	53                   	push   %ebx
    100f:	51                   	push   %ecx
    1010:	83 ec 0c             	sub    $0xc,%esp
    1013:	8b 01                	mov    (%ecx),%eax
    1015:	8b 51 04             	mov    0x4(%ecx),%edx
  int i;

  for(i = 1; i < argc; i++)
    1018:	83 f8 01             	cmp    $0x1,%eax
    101b:	7e 3f                	jle    105c <main+0x5c>
    101d:	8d 5a 04             	lea    0x4(%edx),%ebx
    1020:	8d 34 82             	lea    (%edx,%eax,4),%esi
    1023:	eb 18                	jmp    103d <main+0x3d>
    1025:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
    1028:	68 b4 17 00 00       	push   $0x17b4
    102d:	50                   	push   %eax
    102e:	68 b6 17 00 00       	push   $0x17b6
    1033:	6a 01                	push   $0x1
    1035:	e8 e6 03 00 00       	call   1420 <printf>
    103a:	83 c4 10             	add    $0x10,%esp
    103d:	83 c3 04             	add    $0x4,%ebx
    1040:	8b 43 fc             	mov    -0x4(%ebx),%eax
    1043:	39 f3                	cmp    %esi,%ebx
    1045:	75 e1                	jne    1028 <main+0x28>
    1047:	68 bb 17 00 00       	push   $0x17bb
    104c:	50                   	push   %eax
    104d:	68 b6 17 00 00       	push   $0x17b6
    1052:	6a 01                	push   $0x1
    1054:	e8 c7 03 00 00       	call   1420 <printf>
    1059:	83 c4 10             	add    $0x10,%esp
  exit();
    105c:	e8 61 02 00 00       	call   12c2 <exit>
    1061:	66 90                	xchg   %ax,%ax
    1063:	66 90                	xchg   %ax,%ax
    1065:	66 90                	xchg   %ax,%ax
    1067:	66 90                	xchg   %ax,%ax
    1069:	66 90                	xchg   %ax,%ax
    106b:	66 90                	xchg   %ax,%ax
    106d:	66 90                	xchg   %ax,%ax
    106f:	90                   	nop

00001070 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1070:	55                   	push   %ebp
    1071:	89 e5                	mov    %esp,%ebp
    1073:	53                   	push   %ebx
    1074:	8b 45 08             	mov    0x8(%ebp),%eax
    1077:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    107a:	89 c2                	mov    %eax,%edx
    107c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1080:	83 c1 01             	add    $0x1,%ecx
    1083:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1087:	83 c2 01             	add    $0x1,%edx
    108a:	84 db                	test   %bl,%bl
    108c:	88 5a ff             	mov    %bl,-0x1(%edx)
    108f:	75 ef                	jne    1080 <strcpy+0x10>
    ;
  return os;
}
    1091:	5b                   	pop    %ebx
    1092:	5d                   	pop    %ebp
    1093:	c3                   	ret    
    1094:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    109a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000010a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    10a0:	55                   	push   %ebp
    10a1:	89 e5                	mov    %esp,%ebp
    10a3:	53                   	push   %ebx
    10a4:	8b 55 08             	mov    0x8(%ebp),%edx
    10a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    10aa:	0f b6 02             	movzbl (%edx),%eax
    10ad:	0f b6 19             	movzbl (%ecx),%ebx
    10b0:	84 c0                	test   %al,%al
    10b2:	75 1c                	jne    10d0 <strcmp+0x30>
    10b4:	eb 2a                	jmp    10e0 <strcmp+0x40>
    10b6:	8d 76 00             	lea    0x0(%esi),%esi
    10b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    10c0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10c3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    10c6:	83 c1 01             	add    $0x1,%ecx
    10c9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    10cc:	84 c0                	test   %al,%al
    10ce:	74 10                	je     10e0 <strcmp+0x40>
    10d0:	38 d8                	cmp    %bl,%al
    10d2:	74 ec                	je     10c0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10d4:	29 d8                	sub    %ebx,%eax
}
    10d6:	5b                   	pop    %ebx
    10d7:	5d                   	pop    %ebp
    10d8:	c3                   	ret    
    10d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10e0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10e2:	29 d8                	sub    %ebx,%eax
}
    10e4:	5b                   	pop    %ebx
    10e5:	5d                   	pop    %ebp
    10e6:	c3                   	ret    
    10e7:	89 f6                	mov    %esi,%esi
    10e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010f0 <strlen>:

uint
strlen(char *s)
{
    10f0:	55                   	push   %ebp
    10f1:	89 e5                	mov    %esp,%ebp
    10f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    10f6:	80 39 00             	cmpb   $0x0,(%ecx)
    10f9:	74 15                	je     1110 <strlen+0x20>
    10fb:	31 d2                	xor    %edx,%edx
    10fd:	8d 76 00             	lea    0x0(%esi),%esi
    1100:	83 c2 01             	add    $0x1,%edx
    1103:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1107:	89 d0                	mov    %edx,%eax
    1109:	75 f5                	jne    1100 <strlen+0x10>
    ;
  return n;
}
    110b:	5d                   	pop    %ebp
    110c:	c3                   	ret    
    110d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    1110:	31 c0                	xor    %eax,%eax
}
    1112:	5d                   	pop    %ebp
    1113:	c3                   	ret    
    1114:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    111a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001120 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	57                   	push   %edi
    1124:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1127:	8b 4d 10             	mov    0x10(%ebp),%ecx
    112a:	8b 45 0c             	mov    0xc(%ebp),%eax
    112d:	89 d7                	mov    %edx,%edi
    112f:	fc                   	cld    
    1130:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1132:	89 d0                	mov    %edx,%eax
    1134:	5f                   	pop    %edi
    1135:	5d                   	pop    %ebp
    1136:	c3                   	ret    
    1137:	89 f6                	mov    %esi,%esi
    1139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001140 <strchr>:

char*
strchr(const char *s, char c)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	53                   	push   %ebx
    1144:	8b 45 08             	mov    0x8(%ebp),%eax
    1147:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    114a:	0f b6 10             	movzbl (%eax),%edx
    114d:	84 d2                	test   %dl,%dl
    114f:	74 1d                	je     116e <strchr+0x2e>
    if(*s == c)
    1151:	38 d3                	cmp    %dl,%bl
    1153:	89 d9                	mov    %ebx,%ecx
    1155:	75 0d                	jne    1164 <strchr+0x24>
    1157:	eb 17                	jmp    1170 <strchr+0x30>
    1159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1160:	38 ca                	cmp    %cl,%dl
    1162:	74 0c                	je     1170 <strchr+0x30>
  for(; *s; s++)
    1164:	83 c0 01             	add    $0x1,%eax
    1167:	0f b6 10             	movzbl (%eax),%edx
    116a:	84 d2                	test   %dl,%dl
    116c:	75 f2                	jne    1160 <strchr+0x20>
      return (char*)s;
  return 0;
    116e:	31 c0                	xor    %eax,%eax
}
    1170:	5b                   	pop    %ebx
    1171:	5d                   	pop    %ebp
    1172:	c3                   	ret    
    1173:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001180 <gets>:

char*
gets(char *buf, int max)
{
    1180:	55                   	push   %ebp
    1181:	89 e5                	mov    %esp,%ebp
    1183:	57                   	push   %edi
    1184:	56                   	push   %esi
    1185:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1186:	31 f6                	xor    %esi,%esi
    1188:	89 f3                	mov    %esi,%ebx
{
    118a:	83 ec 1c             	sub    $0x1c,%esp
    118d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1190:	eb 2f                	jmp    11c1 <gets+0x41>
    1192:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1198:	8d 45 e7             	lea    -0x19(%ebp),%eax
    119b:	83 ec 04             	sub    $0x4,%esp
    119e:	6a 01                	push   $0x1
    11a0:	50                   	push   %eax
    11a1:	6a 00                	push   $0x0
    11a3:	e8 32 01 00 00       	call   12da <read>
    if(cc < 1)
    11a8:	83 c4 10             	add    $0x10,%esp
    11ab:	85 c0                	test   %eax,%eax
    11ad:	7e 1c                	jle    11cb <gets+0x4b>
      break;
    buf[i++] = c;
    11af:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11b3:	83 c7 01             	add    $0x1,%edi
    11b6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11b9:	3c 0a                	cmp    $0xa,%al
    11bb:	74 23                	je     11e0 <gets+0x60>
    11bd:	3c 0d                	cmp    $0xd,%al
    11bf:	74 1f                	je     11e0 <gets+0x60>
  for(i=0; i+1 < max; ){
    11c1:	83 c3 01             	add    $0x1,%ebx
    11c4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11c7:	89 fe                	mov    %edi,%esi
    11c9:	7c cd                	jl     1198 <gets+0x18>
    11cb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11cd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11d0:	c6 03 00             	movb   $0x0,(%ebx)
}
    11d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11d6:	5b                   	pop    %ebx
    11d7:	5e                   	pop    %esi
    11d8:	5f                   	pop    %edi
    11d9:	5d                   	pop    %ebp
    11da:	c3                   	ret    
    11db:	90                   	nop
    11dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11e0:	8b 75 08             	mov    0x8(%ebp),%esi
    11e3:	8b 45 08             	mov    0x8(%ebp),%eax
    11e6:	01 de                	add    %ebx,%esi
    11e8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11ea:	c6 03 00             	movb   $0x0,(%ebx)
}
    11ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11f0:	5b                   	pop    %ebx
    11f1:	5e                   	pop    %esi
    11f2:	5f                   	pop    %edi
    11f3:	5d                   	pop    %ebp
    11f4:	c3                   	ret    
    11f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001200 <stat>:

int
stat(char *n, struct stat *st)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	56                   	push   %esi
    1204:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1205:	83 ec 08             	sub    $0x8,%esp
    1208:	6a 00                	push   $0x0
    120a:	ff 75 08             	pushl  0x8(%ebp)
    120d:	e8 f0 00 00 00       	call   1302 <open>
  if(fd < 0)
    1212:	83 c4 10             	add    $0x10,%esp
    1215:	85 c0                	test   %eax,%eax
    1217:	78 27                	js     1240 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1219:	83 ec 08             	sub    $0x8,%esp
    121c:	ff 75 0c             	pushl  0xc(%ebp)
    121f:	89 c3                	mov    %eax,%ebx
    1221:	50                   	push   %eax
    1222:	e8 f3 00 00 00       	call   131a <fstat>
  close(fd);
    1227:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    122a:	89 c6                	mov    %eax,%esi
  close(fd);
    122c:	e8 b9 00 00 00       	call   12ea <close>
  return r;
    1231:	83 c4 10             	add    $0x10,%esp
}
    1234:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1237:	89 f0                	mov    %esi,%eax
    1239:	5b                   	pop    %ebx
    123a:	5e                   	pop    %esi
    123b:	5d                   	pop    %ebp
    123c:	c3                   	ret    
    123d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1240:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1245:	eb ed                	jmp    1234 <stat+0x34>
    1247:	89 f6                	mov    %esi,%esi
    1249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001250 <atoi>:

int
atoi(const char *s)
{
    1250:	55                   	push   %ebp
    1251:	89 e5                	mov    %esp,%ebp
    1253:	53                   	push   %ebx
    1254:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1257:	0f be 11             	movsbl (%ecx),%edx
    125a:	8d 42 d0             	lea    -0x30(%edx),%eax
    125d:	3c 09                	cmp    $0x9,%al
  n = 0;
    125f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1264:	77 1f                	ja     1285 <atoi+0x35>
    1266:	8d 76 00             	lea    0x0(%esi),%esi
    1269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1270:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1273:	83 c1 01             	add    $0x1,%ecx
    1276:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    127a:	0f be 11             	movsbl (%ecx),%edx
    127d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1280:	80 fb 09             	cmp    $0x9,%bl
    1283:	76 eb                	jbe    1270 <atoi+0x20>
  return n;
}
    1285:	5b                   	pop    %ebx
    1286:	5d                   	pop    %ebp
    1287:	c3                   	ret    
    1288:	90                   	nop
    1289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001290 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1290:	55                   	push   %ebp
    1291:	89 e5                	mov    %esp,%ebp
    1293:	56                   	push   %esi
    1294:	53                   	push   %ebx
    1295:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1298:	8b 45 08             	mov    0x8(%ebp),%eax
    129b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    129e:	85 db                	test   %ebx,%ebx
    12a0:	7e 14                	jle    12b6 <memmove+0x26>
    12a2:	31 d2                	xor    %edx,%edx
    12a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    12a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    12ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    12af:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    12b2:	39 d3                	cmp    %edx,%ebx
    12b4:	75 f2                	jne    12a8 <memmove+0x18>
  return vdst;
}
    12b6:	5b                   	pop    %ebx
    12b7:	5e                   	pop    %esi
    12b8:	5d                   	pop    %ebp
    12b9:	c3                   	ret    

000012ba <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    12ba:	b8 01 00 00 00       	mov    $0x1,%eax
    12bf:	cd 40                	int    $0x40
    12c1:	c3                   	ret    

000012c2 <exit>:
SYSCALL(exit)
    12c2:	b8 02 00 00 00       	mov    $0x2,%eax
    12c7:	cd 40                	int    $0x40
    12c9:	c3                   	ret    

000012ca <wait>:
SYSCALL(wait)
    12ca:	b8 03 00 00 00       	mov    $0x3,%eax
    12cf:	cd 40                	int    $0x40
    12d1:	c3                   	ret    

000012d2 <pipe>:
SYSCALL(pipe)
    12d2:	b8 04 00 00 00       	mov    $0x4,%eax
    12d7:	cd 40                	int    $0x40
    12d9:	c3                   	ret    

000012da <read>:
SYSCALL(read)
    12da:	b8 05 00 00 00       	mov    $0x5,%eax
    12df:	cd 40                	int    $0x40
    12e1:	c3                   	ret    

000012e2 <write>:
SYSCALL(write)
    12e2:	b8 10 00 00 00       	mov    $0x10,%eax
    12e7:	cd 40                	int    $0x40
    12e9:	c3                   	ret    

000012ea <close>:
SYSCALL(close)
    12ea:	b8 15 00 00 00       	mov    $0x15,%eax
    12ef:	cd 40                	int    $0x40
    12f1:	c3                   	ret    

000012f2 <kill>:
SYSCALL(kill)
    12f2:	b8 06 00 00 00       	mov    $0x6,%eax
    12f7:	cd 40                	int    $0x40
    12f9:	c3                   	ret    

000012fa <exec>:
SYSCALL(exec)
    12fa:	b8 07 00 00 00       	mov    $0x7,%eax
    12ff:	cd 40                	int    $0x40
    1301:	c3                   	ret    

00001302 <open>:
SYSCALL(open)
    1302:	b8 0f 00 00 00       	mov    $0xf,%eax
    1307:	cd 40                	int    $0x40
    1309:	c3                   	ret    

0000130a <mknod>:
SYSCALL(mknod)
    130a:	b8 11 00 00 00       	mov    $0x11,%eax
    130f:	cd 40                	int    $0x40
    1311:	c3                   	ret    

00001312 <unlink>:
SYSCALL(unlink)
    1312:	b8 12 00 00 00       	mov    $0x12,%eax
    1317:	cd 40                	int    $0x40
    1319:	c3                   	ret    

0000131a <fstat>:
SYSCALL(fstat)
    131a:	b8 08 00 00 00       	mov    $0x8,%eax
    131f:	cd 40                	int    $0x40
    1321:	c3                   	ret    

00001322 <link>:
SYSCALL(link)
    1322:	b8 13 00 00 00       	mov    $0x13,%eax
    1327:	cd 40                	int    $0x40
    1329:	c3                   	ret    

0000132a <mkdir>:
SYSCALL(mkdir)
    132a:	b8 14 00 00 00       	mov    $0x14,%eax
    132f:	cd 40                	int    $0x40
    1331:	c3                   	ret    

00001332 <chdir>:
SYSCALL(chdir)
    1332:	b8 09 00 00 00       	mov    $0x9,%eax
    1337:	cd 40                	int    $0x40
    1339:	c3                   	ret    

0000133a <dup>:
SYSCALL(dup)
    133a:	b8 0a 00 00 00       	mov    $0xa,%eax
    133f:	cd 40                	int    $0x40
    1341:	c3                   	ret    

00001342 <getpid>:
SYSCALL(getpid)
    1342:	b8 0b 00 00 00       	mov    $0xb,%eax
    1347:	cd 40                	int    $0x40
    1349:	c3                   	ret    

0000134a <sbrk>:
SYSCALL(sbrk)
    134a:	b8 0c 00 00 00       	mov    $0xc,%eax
    134f:	cd 40                	int    $0x40
    1351:	c3                   	ret    

00001352 <sleep>:
SYSCALL(sleep)
    1352:	b8 0d 00 00 00       	mov    $0xd,%eax
    1357:	cd 40                	int    $0x40
    1359:	c3                   	ret    

0000135a <uptime>:
SYSCALL(uptime)
    135a:	b8 0e 00 00 00       	mov    $0xe,%eax
    135f:	cd 40                	int    $0x40
    1361:	c3                   	ret    

00001362 <shm_open>:
SYSCALL(shm_open)
    1362:	b8 16 00 00 00       	mov    $0x16,%eax
    1367:	cd 40                	int    $0x40
    1369:	c3                   	ret    

0000136a <shm_close>:
SYSCALL(shm_close)	
    136a:	b8 17 00 00 00       	mov    $0x17,%eax
    136f:	cd 40                	int    $0x40
    1371:	c3                   	ret    
    1372:	66 90                	xchg   %ax,%ax
    1374:	66 90                	xchg   %ax,%ax
    1376:	66 90                	xchg   %ax,%ax
    1378:	66 90                	xchg   %ax,%ax
    137a:	66 90                	xchg   %ax,%ax
    137c:	66 90                	xchg   %ax,%ax
    137e:	66 90                	xchg   %ax,%ax

00001380 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1380:	55                   	push   %ebp
    1381:	89 e5                	mov    %esp,%ebp
    1383:	57                   	push   %edi
    1384:	56                   	push   %esi
    1385:	53                   	push   %ebx
    1386:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1389:	85 d2                	test   %edx,%edx
{
    138b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    138e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1390:	79 76                	jns    1408 <printint+0x88>
    1392:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1396:	74 70                	je     1408 <printint+0x88>
    x = -xx;
    1398:	f7 d8                	neg    %eax
    neg = 1;
    139a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    13a1:	31 f6                	xor    %esi,%esi
    13a3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    13a6:	eb 0a                	jmp    13b2 <printint+0x32>
    13a8:	90                   	nop
    13a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    13b0:	89 fe                	mov    %edi,%esi
    13b2:	31 d2                	xor    %edx,%edx
    13b4:	8d 7e 01             	lea    0x1(%esi),%edi
    13b7:	f7 f1                	div    %ecx
    13b9:	0f b6 92 c4 17 00 00 	movzbl 0x17c4(%edx),%edx
  }while((x /= base) != 0);
    13c0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    13c2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    13c5:	75 e9                	jne    13b0 <printint+0x30>
  if(neg)
    13c7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    13ca:	85 c0                	test   %eax,%eax
    13cc:	74 08                	je     13d6 <printint+0x56>
    buf[i++] = '-';
    13ce:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    13d3:	8d 7e 02             	lea    0x2(%esi),%edi
    13d6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    13da:	8b 7d c0             	mov    -0x40(%ebp),%edi
    13dd:	8d 76 00             	lea    0x0(%esi),%esi
    13e0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    13e3:	83 ec 04             	sub    $0x4,%esp
    13e6:	83 ee 01             	sub    $0x1,%esi
    13e9:	6a 01                	push   $0x1
    13eb:	53                   	push   %ebx
    13ec:	57                   	push   %edi
    13ed:	88 45 d7             	mov    %al,-0x29(%ebp)
    13f0:	e8 ed fe ff ff       	call   12e2 <write>

  while(--i >= 0)
    13f5:	83 c4 10             	add    $0x10,%esp
    13f8:	39 de                	cmp    %ebx,%esi
    13fa:	75 e4                	jne    13e0 <printint+0x60>
    putc(fd, buf[i]);
}
    13fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13ff:	5b                   	pop    %ebx
    1400:	5e                   	pop    %esi
    1401:	5f                   	pop    %edi
    1402:	5d                   	pop    %ebp
    1403:	c3                   	ret    
    1404:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1408:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    140f:	eb 90                	jmp    13a1 <printint+0x21>
    1411:	eb 0d                	jmp    1420 <printf>
    1413:	90                   	nop
    1414:	90                   	nop
    1415:	90                   	nop
    1416:	90                   	nop
    1417:	90                   	nop
    1418:	90                   	nop
    1419:	90                   	nop
    141a:	90                   	nop
    141b:	90                   	nop
    141c:	90                   	nop
    141d:	90                   	nop
    141e:	90                   	nop
    141f:	90                   	nop

00001420 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	57                   	push   %edi
    1424:	56                   	push   %esi
    1425:	53                   	push   %ebx
    1426:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1429:	8b 75 0c             	mov    0xc(%ebp),%esi
    142c:	0f b6 1e             	movzbl (%esi),%ebx
    142f:	84 db                	test   %bl,%bl
    1431:	0f 84 b3 00 00 00    	je     14ea <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    1437:	8d 45 10             	lea    0x10(%ebp),%eax
    143a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    143d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    143f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1442:	eb 2f                	jmp    1473 <printf+0x53>
    1444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1448:	83 f8 25             	cmp    $0x25,%eax
    144b:	0f 84 a7 00 00 00    	je     14f8 <printf+0xd8>
  write(fd, &c, 1);
    1451:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1454:	83 ec 04             	sub    $0x4,%esp
    1457:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    145a:	6a 01                	push   $0x1
    145c:	50                   	push   %eax
    145d:	ff 75 08             	pushl  0x8(%ebp)
    1460:	e8 7d fe ff ff       	call   12e2 <write>
    1465:	83 c4 10             	add    $0x10,%esp
    1468:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    146b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    146f:	84 db                	test   %bl,%bl
    1471:	74 77                	je     14ea <printf+0xca>
    if(state == 0){
    1473:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1475:	0f be cb             	movsbl %bl,%ecx
    1478:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    147b:	74 cb                	je     1448 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    147d:	83 ff 25             	cmp    $0x25,%edi
    1480:	75 e6                	jne    1468 <printf+0x48>
      if(c == 'd'){
    1482:	83 f8 64             	cmp    $0x64,%eax
    1485:	0f 84 05 01 00 00    	je     1590 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    148b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1491:	83 f9 70             	cmp    $0x70,%ecx
    1494:	74 72                	je     1508 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1496:	83 f8 73             	cmp    $0x73,%eax
    1499:	0f 84 99 00 00 00    	je     1538 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    149f:	83 f8 63             	cmp    $0x63,%eax
    14a2:	0f 84 08 01 00 00    	je     15b0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    14a8:	83 f8 25             	cmp    $0x25,%eax
    14ab:	0f 84 ef 00 00 00    	je     15a0 <printf+0x180>
  write(fd, &c, 1);
    14b1:	8d 45 e7             	lea    -0x19(%ebp),%eax
    14b4:	83 ec 04             	sub    $0x4,%esp
    14b7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    14bb:	6a 01                	push   $0x1
    14bd:	50                   	push   %eax
    14be:	ff 75 08             	pushl  0x8(%ebp)
    14c1:	e8 1c fe ff ff       	call   12e2 <write>
    14c6:	83 c4 0c             	add    $0xc,%esp
    14c9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    14cc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    14cf:	6a 01                	push   $0x1
    14d1:	50                   	push   %eax
    14d2:	ff 75 08             	pushl  0x8(%ebp)
    14d5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    14d8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    14da:	e8 03 fe ff ff       	call   12e2 <write>
  for(i = 0; fmt[i]; i++){
    14df:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    14e3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    14e6:	84 db                	test   %bl,%bl
    14e8:	75 89                	jne    1473 <printf+0x53>
    }
  }
}
    14ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14ed:	5b                   	pop    %ebx
    14ee:	5e                   	pop    %esi
    14ef:	5f                   	pop    %edi
    14f0:	5d                   	pop    %ebp
    14f1:	c3                   	ret    
    14f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    14f8:	bf 25 00 00 00       	mov    $0x25,%edi
    14fd:	e9 66 ff ff ff       	jmp    1468 <printf+0x48>
    1502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1508:	83 ec 0c             	sub    $0xc,%esp
    150b:	b9 10 00 00 00       	mov    $0x10,%ecx
    1510:	6a 00                	push   $0x0
    1512:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1515:	8b 45 08             	mov    0x8(%ebp),%eax
    1518:	8b 17                	mov    (%edi),%edx
    151a:	e8 61 fe ff ff       	call   1380 <printint>
        ap++;
    151f:	89 f8                	mov    %edi,%eax
    1521:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1524:	31 ff                	xor    %edi,%edi
        ap++;
    1526:	83 c0 04             	add    $0x4,%eax
    1529:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    152c:	e9 37 ff ff ff       	jmp    1468 <printf+0x48>
    1531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1538:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    153b:	8b 08                	mov    (%eax),%ecx
        ap++;
    153d:	83 c0 04             	add    $0x4,%eax
    1540:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1543:	85 c9                	test   %ecx,%ecx
    1545:	0f 84 8e 00 00 00    	je     15d9 <printf+0x1b9>
        while(*s != 0){
    154b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    154e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1550:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1552:	84 c0                	test   %al,%al
    1554:	0f 84 0e ff ff ff    	je     1468 <printf+0x48>
    155a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    155d:	89 de                	mov    %ebx,%esi
    155f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1562:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1565:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1568:	83 ec 04             	sub    $0x4,%esp
          s++;
    156b:	83 c6 01             	add    $0x1,%esi
    156e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1571:	6a 01                	push   $0x1
    1573:	57                   	push   %edi
    1574:	53                   	push   %ebx
    1575:	e8 68 fd ff ff       	call   12e2 <write>
        while(*s != 0){
    157a:	0f b6 06             	movzbl (%esi),%eax
    157d:	83 c4 10             	add    $0x10,%esp
    1580:	84 c0                	test   %al,%al
    1582:	75 e4                	jne    1568 <printf+0x148>
    1584:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1587:	31 ff                	xor    %edi,%edi
    1589:	e9 da fe ff ff       	jmp    1468 <printf+0x48>
    158e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1590:	83 ec 0c             	sub    $0xc,%esp
    1593:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1598:	6a 01                	push   $0x1
    159a:	e9 73 ff ff ff       	jmp    1512 <printf+0xf2>
    159f:	90                   	nop
  write(fd, &c, 1);
    15a0:	83 ec 04             	sub    $0x4,%esp
    15a3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    15a6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    15a9:	6a 01                	push   $0x1
    15ab:	e9 21 ff ff ff       	jmp    14d1 <printf+0xb1>
        putc(fd, *ap);
    15b0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    15b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    15b6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    15b8:	6a 01                	push   $0x1
        ap++;
    15ba:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    15bd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    15c0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    15c3:	50                   	push   %eax
    15c4:	ff 75 08             	pushl  0x8(%ebp)
    15c7:	e8 16 fd ff ff       	call   12e2 <write>
        ap++;
    15cc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    15cf:	83 c4 10             	add    $0x10,%esp
      state = 0;
    15d2:	31 ff                	xor    %edi,%edi
    15d4:	e9 8f fe ff ff       	jmp    1468 <printf+0x48>
          s = "(null)";
    15d9:	bb bd 17 00 00       	mov    $0x17bd,%ebx
        while(*s != 0){
    15de:	b8 28 00 00 00       	mov    $0x28,%eax
    15e3:	e9 72 ff ff ff       	jmp    155a <printf+0x13a>
    15e8:	66 90                	xchg   %ax,%ax
    15ea:	66 90                	xchg   %ax,%ax
    15ec:	66 90                	xchg   %ax,%ax
    15ee:	66 90                	xchg   %ax,%ax

000015f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    15f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    15f1:	a1 b0 1a 00 00       	mov    0x1ab0,%eax
{
    15f6:	89 e5                	mov    %esp,%ebp
    15f8:	57                   	push   %edi
    15f9:	56                   	push   %esi
    15fa:	53                   	push   %ebx
    15fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    15fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1608:	39 c8                	cmp    %ecx,%eax
    160a:	8b 10                	mov    (%eax),%edx
    160c:	73 32                	jae    1640 <free+0x50>
    160e:	39 d1                	cmp    %edx,%ecx
    1610:	72 04                	jb     1616 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1612:	39 d0                	cmp    %edx,%eax
    1614:	72 32                	jb     1648 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1616:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1619:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    161c:	39 fa                	cmp    %edi,%edx
    161e:	74 30                	je     1650 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1620:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1623:	8b 50 04             	mov    0x4(%eax),%edx
    1626:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1629:	39 f1                	cmp    %esi,%ecx
    162b:	74 3a                	je     1667 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    162d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    162f:	a3 b0 1a 00 00       	mov    %eax,0x1ab0
}
    1634:	5b                   	pop    %ebx
    1635:	5e                   	pop    %esi
    1636:	5f                   	pop    %edi
    1637:	5d                   	pop    %ebp
    1638:	c3                   	ret    
    1639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1640:	39 d0                	cmp    %edx,%eax
    1642:	72 04                	jb     1648 <free+0x58>
    1644:	39 d1                	cmp    %edx,%ecx
    1646:	72 ce                	jb     1616 <free+0x26>
{
    1648:	89 d0                	mov    %edx,%eax
    164a:	eb bc                	jmp    1608 <free+0x18>
    164c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1650:	03 72 04             	add    0x4(%edx),%esi
    1653:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1656:	8b 10                	mov    (%eax),%edx
    1658:	8b 12                	mov    (%edx),%edx
    165a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    165d:	8b 50 04             	mov    0x4(%eax),%edx
    1660:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1663:	39 f1                	cmp    %esi,%ecx
    1665:	75 c6                	jne    162d <free+0x3d>
    p->s.size += bp->s.size;
    1667:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    166a:	a3 b0 1a 00 00       	mov    %eax,0x1ab0
    p->s.size += bp->s.size;
    166f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1672:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1675:	89 10                	mov    %edx,(%eax)
}
    1677:	5b                   	pop    %ebx
    1678:	5e                   	pop    %esi
    1679:	5f                   	pop    %edi
    167a:	5d                   	pop    %ebp
    167b:	c3                   	ret    
    167c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001680 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1680:	55                   	push   %ebp
    1681:	89 e5                	mov    %esp,%ebp
    1683:	57                   	push   %edi
    1684:	56                   	push   %esi
    1685:	53                   	push   %ebx
    1686:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1689:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    168c:	8b 15 b0 1a 00 00    	mov    0x1ab0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1692:	8d 78 07             	lea    0x7(%eax),%edi
    1695:	c1 ef 03             	shr    $0x3,%edi
    1698:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    169b:	85 d2                	test   %edx,%edx
    169d:	0f 84 9d 00 00 00    	je     1740 <malloc+0xc0>
    16a3:	8b 02                	mov    (%edx),%eax
    16a5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    16a8:	39 cf                	cmp    %ecx,%edi
    16aa:	76 6c                	jbe    1718 <malloc+0x98>
    16ac:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    16b2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    16b7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    16ba:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    16c1:	eb 0e                	jmp    16d1 <malloc+0x51>
    16c3:	90                   	nop
    16c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    16c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    16ca:	8b 48 04             	mov    0x4(%eax),%ecx
    16cd:	39 f9                	cmp    %edi,%ecx
    16cf:	73 47                	jae    1718 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    16d1:	39 05 b0 1a 00 00    	cmp    %eax,0x1ab0
    16d7:	89 c2                	mov    %eax,%edx
    16d9:	75 ed                	jne    16c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    16db:	83 ec 0c             	sub    $0xc,%esp
    16de:	56                   	push   %esi
    16df:	e8 66 fc ff ff       	call   134a <sbrk>
  if(p == (char*)-1)
    16e4:	83 c4 10             	add    $0x10,%esp
    16e7:	83 f8 ff             	cmp    $0xffffffff,%eax
    16ea:	74 1c                	je     1708 <malloc+0x88>
  hp->s.size = nu;
    16ec:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    16ef:	83 ec 0c             	sub    $0xc,%esp
    16f2:	83 c0 08             	add    $0x8,%eax
    16f5:	50                   	push   %eax
    16f6:	e8 f5 fe ff ff       	call   15f0 <free>
  return freep;
    16fb:	8b 15 b0 1a 00 00    	mov    0x1ab0,%edx
      if((p = morecore(nunits)) == 0)
    1701:	83 c4 10             	add    $0x10,%esp
    1704:	85 d2                	test   %edx,%edx
    1706:	75 c0                	jne    16c8 <malloc+0x48>
        return 0;
  }
}
    1708:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    170b:	31 c0                	xor    %eax,%eax
}
    170d:	5b                   	pop    %ebx
    170e:	5e                   	pop    %esi
    170f:	5f                   	pop    %edi
    1710:	5d                   	pop    %ebp
    1711:	c3                   	ret    
    1712:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1718:	39 cf                	cmp    %ecx,%edi
    171a:	74 54                	je     1770 <malloc+0xf0>
        p->s.size -= nunits;
    171c:	29 f9                	sub    %edi,%ecx
    171e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1721:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1724:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1727:	89 15 b0 1a 00 00    	mov    %edx,0x1ab0
}
    172d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1730:	83 c0 08             	add    $0x8,%eax
}
    1733:	5b                   	pop    %ebx
    1734:	5e                   	pop    %esi
    1735:	5f                   	pop    %edi
    1736:	5d                   	pop    %ebp
    1737:	c3                   	ret    
    1738:	90                   	nop
    1739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1740:	c7 05 b0 1a 00 00 b4 	movl   $0x1ab4,0x1ab0
    1747:	1a 00 00 
    174a:	c7 05 b4 1a 00 00 b4 	movl   $0x1ab4,0x1ab4
    1751:	1a 00 00 
    base.s.size = 0;
    1754:	b8 b4 1a 00 00       	mov    $0x1ab4,%eax
    1759:	c7 05 b8 1a 00 00 00 	movl   $0x0,0x1ab8
    1760:	00 00 00 
    1763:	e9 44 ff ff ff       	jmp    16ac <malloc+0x2c>
    1768:	90                   	nop
    1769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1770:	8b 08                	mov    (%eax),%ecx
    1772:	89 0a                	mov    %ecx,(%edx)
    1774:	eb b1                	jmp    1727 <malloc+0xa7>
    1776:	66 90                	xchg   %ax,%ax
    1778:	66 90                	xchg   %ax,%ax
    177a:	66 90                	xchg   %ax,%ax
    177c:	66 90                	xchg   %ax,%ax
    177e:	66 90                	xchg   %ax,%ax

00001780 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1780:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1781:	b9 01 00 00 00       	mov    $0x1,%ecx
    1786:	89 e5                	mov    %esp,%ebp
    1788:	8b 55 08             	mov    0x8(%ebp),%edx
    178b:	90                   	nop
    178c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1790:	89 c8                	mov    %ecx,%eax
    1792:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1795:	85 c0                	test   %eax,%eax
    1797:	75 f7                	jne    1790 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1799:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    179e:	5d                   	pop    %ebp
    179f:	c3                   	ret    

000017a0 <urelease>:

void urelease (struct uspinlock *lk) {
    17a0:	55                   	push   %ebp
    17a1:	89 e5                	mov    %esp,%ebp
    17a3:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    17a6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    17ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    17b1:	5d                   	pop    %ebp
    17b2:	c3                   	ret    
