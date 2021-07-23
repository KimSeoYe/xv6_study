
_shm_cnt:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
   struct uspinlock lock;
   int cnt;
};

int main(int argc, char *argv[])
{
    1000:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1004:	83 e4 f0             	and    $0xfffffff0,%esp
    1007:	ff 71 fc             	pushl  -0x4(%ecx)
    100a:	55                   	push   %ebp
    100b:	89 e5                	mov    %esp,%ebp
    100d:	57                   	push   %edi
    100e:	56                   	push   %esi
    100f:	53                   	push   %ebx
    1010:	51                   	push   %ecx
     uacquire(&(counter->lock));
     counter->cnt++;
     urelease(&(counter->lock));

//print something because we are curious and to give a chance to switch process
     if(i%1000 == 0)
    1011:	bb d3 4d 62 10       	mov    $0x10624dd3,%ebx
{
    1016:	83 ec 28             	sub    $0x28,%esp
  pid=fork();
    1019:	e8 1c 03 00 00       	call   133a <fork>
  sleep(1);
    101e:	83 ec 0c             	sub    $0xc,%esp
  pid=fork();
    1021:	89 c6                	mov    %eax,%esi
    1023:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  sleep(1);
    1026:	6a 01                	push   $0x1
    1028:	e8 a5 03 00 00       	call   13d2 <sleep>
shm_open(1,(char **)&counter);
    102d:	5f                   	pop    %edi
    102e:	58                   	pop    %eax
    102f:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1032:	50                   	push   %eax
    1033:	6a 01                	push   $0x1
    1035:	e8 a8 03 00 00       	call   13e2 <shm_open>
    103a:	83 c4 10             	add    $0x10,%esp
    103d:	b8 3b 18 00 00       	mov    $0x183b,%eax
    1042:	85 f6                	test   %esi,%esi
    1044:	be 34 18 00 00       	mov    $0x1834,%esi
    1049:	0f 44 f0             	cmove  %eax,%esi
  for(i = 0; i < 10000; i++)
    104c:	31 ff                	xor    %edi,%edi
    104e:	66 90                	xchg   %ax,%ax
     uacquire(&(counter->lock));
    1050:	83 ec 0c             	sub    $0xc,%esp
    1053:	ff 75 e4             	pushl  -0x1c(%ebp)
    1056:	e8 a5 07 00 00       	call   1800 <uacquire>
     counter->cnt++;
    105b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    105e:	83 40 04 01          	addl   $0x1,0x4(%eax)
     urelease(&(counter->lock));
    1062:	89 04 24             	mov    %eax,(%esp)
    1065:	e8 b6 07 00 00       	call   1820 <urelease>
     if(i%1000 == 0)
    106a:	89 f8                	mov    %edi,%eax
    106c:	83 c4 10             	add    $0x10,%esp
    106f:	f7 e3                	mul    %ebx
    1071:	c1 ea 06             	shr    $0x6,%edx
    1074:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    107a:	39 d7                	cmp    %edx,%edi
    107c:	75 1a                	jne    1098 <main+0x98>
       printf(1,"Counter in %s is %d at address %x\n",pid? "Parent" : "Child", counter->cnt, counter);
    107e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1081:	83 ec 0c             	sub    $0xc,%esp
    1084:	50                   	push   %eax
    1085:	ff 70 04             	pushl  0x4(%eax)
    1088:	56                   	push   %esi
    1089:	68 74 18 00 00       	push   $0x1874
    108e:	6a 01                	push   $0x1
    1090:	e8 0b 04 00 00       	call   14a0 <printf>
    1095:	83 c4 20             	add    $0x20,%esp
  for(i = 0; i < 10000; i++)
    1098:	83 c7 01             	add    $0x1,%edi
    109b:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
    10a1:	75 ad                	jne    1050 <main+0x50>
}
  
  if(pid)
    10a3:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    10a6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    10a9:	85 db                	test   %ebx,%ebx
    10ab:	8b 40 04             	mov    0x4(%eax),%eax
    10ae:	74 25                	je     10d5 <main+0xd5>
     {
       printf(1,"Counter in parent is %d\n",counter->cnt);
    10b0:	51                   	push   %ecx
    10b1:	50                   	push   %eax
    10b2:	68 41 18 00 00       	push   $0x1841
    10b7:	6a 01                	push   $0x1
    10b9:	e8 e2 03 00 00       	call   14a0 <printf>
    wait();
    10be:	e8 87 02 00 00       	call   134a <wait>
    10c3:	83 c4 10             	add    $0x10,%esp
    } else
    printf(1,"Counter in child is %d\n\n",counter->cnt);

//shm_close: first process will just detach, next one will free up the shm_table entry (but for now not the page)
   shm_close(1);
    10c6:	83 ec 0c             	sub    $0xc,%esp
    10c9:	6a 01                	push   $0x1
    10cb:	e8 1a 03 00 00       	call   13ea <shm_close>
   exit();
    10d0:	e8 6d 02 00 00       	call   1342 <exit>
    printf(1,"Counter in child is %d\n\n",counter->cnt);
    10d5:	52                   	push   %edx
    10d6:	50                   	push   %eax
    10d7:	68 5a 18 00 00       	push   $0x185a
    10dc:	6a 01                	push   $0x1
    10de:	e8 bd 03 00 00       	call   14a0 <printf>
    10e3:	83 c4 10             	add    $0x10,%esp
    10e6:	eb de                	jmp    10c6 <main+0xc6>
    10e8:	66 90                	xchg   %ax,%ax
    10ea:	66 90                	xchg   %ax,%ax
    10ec:	66 90                	xchg   %ax,%ax
    10ee:	66 90                	xchg   %ax,%ax

000010f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    10f0:	55                   	push   %ebp
    10f1:	89 e5                	mov    %esp,%ebp
    10f3:	53                   	push   %ebx
    10f4:	8b 45 08             	mov    0x8(%ebp),%eax
    10f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    10fa:	89 c2                	mov    %eax,%edx
    10fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1100:	83 c1 01             	add    $0x1,%ecx
    1103:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1107:	83 c2 01             	add    $0x1,%edx
    110a:	84 db                	test   %bl,%bl
    110c:	88 5a ff             	mov    %bl,-0x1(%edx)
    110f:	75 ef                	jne    1100 <strcpy+0x10>
    ;
  return os;
}
    1111:	5b                   	pop    %ebx
    1112:	5d                   	pop    %ebp
    1113:	c3                   	ret    
    1114:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    111a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001120 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	53                   	push   %ebx
    1124:	8b 55 08             	mov    0x8(%ebp),%edx
    1127:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    112a:	0f b6 02             	movzbl (%edx),%eax
    112d:	0f b6 19             	movzbl (%ecx),%ebx
    1130:	84 c0                	test   %al,%al
    1132:	75 1c                	jne    1150 <strcmp+0x30>
    1134:	eb 2a                	jmp    1160 <strcmp+0x40>
    1136:	8d 76 00             	lea    0x0(%esi),%esi
    1139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1140:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1143:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1146:	83 c1 01             	add    $0x1,%ecx
    1149:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    114c:	84 c0                	test   %al,%al
    114e:	74 10                	je     1160 <strcmp+0x40>
    1150:	38 d8                	cmp    %bl,%al
    1152:	74 ec                	je     1140 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1154:	29 d8                	sub    %ebx,%eax
}
    1156:	5b                   	pop    %ebx
    1157:	5d                   	pop    %ebp
    1158:	c3                   	ret    
    1159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1160:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1162:	29 d8                	sub    %ebx,%eax
}
    1164:	5b                   	pop    %ebx
    1165:	5d                   	pop    %ebp
    1166:	c3                   	ret    
    1167:	89 f6                	mov    %esi,%esi
    1169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001170 <strlen>:

uint
strlen(char *s)
{
    1170:	55                   	push   %ebp
    1171:	89 e5                	mov    %esp,%ebp
    1173:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1176:	80 39 00             	cmpb   $0x0,(%ecx)
    1179:	74 15                	je     1190 <strlen+0x20>
    117b:	31 d2                	xor    %edx,%edx
    117d:	8d 76 00             	lea    0x0(%esi),%esi
    1180:	83 c2 01             	add    $0x1,%edx
    1183:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1187:	89 d0                	mov    %edx,%eax
    1189:	75 f5                	jne    1180 <strlen+0x10>
    ;
  return n;
}
    118b:	5d                   	pop    %ebp
    118c:	c3                   	ret    
    118d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    1190:	31 c0                	xor    %eax,%eax
}
    1192:	5d                   	pop    %ebp
    1193:	c3                   	ret    
    1194:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    119a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	57                   	push   %edi
    11a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    11a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    11aa:	8b 45 0c             	mov    0xc(%ebp),%eax
    11ad:	89 d7                	mov    %edx,%edi
    11af:	fc                   	cld    
    11b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    11b2:	89 d0                	mov    %edx,%eax
    11b4:	5f                   	pop    %edi
    11b5:	5d                   	pop    %ebp
    11b6:	c3                   	ret    
    11b7:	89 f6                	mov    %esi,%esi
    11b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011c0 <strchr>:

char*
strchr(const char *s, char c)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	53                   	push   %ebx
    11c4:	8b 45 08             	mov    0x8(%ebp),%eax
    11c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    11ca:	0f b6 10             	movzbl (%eax),%edx
    11cd:	84 d2                	test   %dl,%dl
    11cf:	74 1d                	je     11ee <strchr+0x2e>
    if(*s == c)
    11d1:	38 d3                	cmp    %dl,%bl
    11d3:	89 d9                	mov    %ebx,%ecx
    11d5:	75 0d                	jne    11e4 <strchr+0x24>
    11d7:	eb 17                	jmp    11f0 <strchr+0x30>
    11d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11e0:	38 ca                	cmp    %cl,%dl
    11e2:	74 0c                	je     11f0 <strchr+0x30>
  for(; *s; s++)
    11e4:	83 c0 01             	add    $0x1,%eax
    11e7:	0f b6 10             	movzbl (%eax),%edx
    11ea:	84 d2                	test   %dl,%dl
    11ec:	75 f2                	jne    11e0 <strchr+0x20>
      return (char*)s;
  return 0;
    11ee:	31 c0                	xor    %eax,%eax
}
    11f0:	5b                   	pop    %ebx
    11f1:	5d                   	pop    %ebp
    11f2:	c3                   	ret    
    11f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001200 <gets>:

char*
gets(char *buf, int max)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	57                   	push   %edi
    1204:	56                   	push   %esi
    1205:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1206:	31 f6                	xor    %esi,%esi
    1208:	89 f3                	mov    %esi,%ebx
{
    120a:	83 ec 1c             	sub    $0x1c,%esp
    120d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1210:	eb 2f                	jmp    1241 <gets+0x41>
    1212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1218:	8d 45 e7             	lea    -0x19(%ebp),%eax
    121b:	83 ec 04             	sub    $0x4,%esp
    121e:	6a 01                	push   $0x1
    1220:	50                   	push   %eax
    1221:	6a 00                	push   $0x0
    1223:	e8 32 01 00 00       	call   135a <read>
    if(cc < 1)
    1228:	83 c4 10             	add    $0x10,%esp
    122b:	85 c0                	test   %eax,%eax
    122d:	7e 1c                	jle    124b <gets+0x4b>
      break;
    buf[i++] = c;
    122f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1233:	83 c7 01             	add    $0x1,%edi
    1236:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1239:	3c 0a                	cmp    $0xa,%al
    123b:	74 23                	je     1260 <gets+0x60>
    123d:	3c 0d                	cmp    $0xd,%al
    123f:	74 1f                	je     1260 <gets+0x60>
  for(i=0; i+1 < max; ){
    1241:	83 c3 01             	add    $0x1,%ebx
    1244:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1247:	89 fe                	mov    %edi,%esi
    1249:	7c cd                	jl     1218 <gets+0x18>
    124b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    124d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1250:	c6 03 00             	movb   $0x0,(%ebx)
}
    1253:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1256:	5b                   	pop    %ebx
    1257:	5e                   	pop    %esi
    1258:	5f                   	pop    %edi
    1259:	5d                   	pop    %ebp
    125a:	c3                   	ret    
    125b:	90                   	nop
    125c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1260:	8b 75 08             	mov    0x8(%ebp),%esi
    1263:	8b 45 08             	mov    0x8(%ebp),%eax
    1266:	01 de                	add    %ebx,%esi
    1268:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    126a:	c6 03 00             	movb   $0x0,(%ebx)
}
    126d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1270:	5b                   	pop    %ebx
    1271:	5e                   	pop    %esi
    1272:	5f                   	pop    %edi
    1273:	5d                   	pop    %ebp
    1274:	c3                   	ret    
    1275:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001280 <stat>:

int
stat(char *n, struct stat *st)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	56                   	push   %esi
    1284:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1285:	83 ec 08             	sub    $0x8,%esp
    1288:	6a 00                	push   $0x0
    128a:	ff 75 08             	pushl  0x8(%ebp)
    128d:	e8 f0 00 00 00       	call   1382 <open>
  if(fd < 0)
    1292:	83 c4 10             	add    $0x10,%esp
    1295:	85 c0                	test   %eax,%eax
    1297:	78 27                	js     12c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1299:	83 ec 08             	sub    $0x8,%esp
    129c:	ff 75 0c             	pushl  0xc(%ebp)
    129f:	89 c3                	mov    %eax,%ebx
    12a1:	50                   	push   %eax
    12a2:	e8 f3 00 00 00       	call   139a <fstat>
  close(fd);
    12a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    12aa:	89 c6                	mov    %eax,%esi
  close(fd);
    12ac:	e8 b9 00 00 00       	call   136a <close>
  return r;
    12b1:	83 c4 10             	add    $0x10,%esp
}
    12b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12b7:	89 f0                	mov    %esi,%eax
    12b9:	5b                   	pop    %ebx
    12ba:	5e                   	pop    %esi
    12bb:	5d                   	pop    %ebp
    12bc:	c3                   	ret    
    12bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    12c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    12c5:	eb ed                	jmp    12b4 <stat+0x34>
    12c7:	89 f6                	mov    %esi,%esi
    12c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012d0 <atoi>:

int
atoi(const char *s)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	53                   	push   %ebx
    12d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    12d7:	0f be 11             	movsbl (%ecx),%edx
    12da:	8d 42 d0             	lea    -0x30(%edx),%eax
    12dd:	3c 09                	cmp    $0x9,%al
  n = 0;
    12df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    12e4:	77 1f                	ja     1305 <atoi+0x35>
    12e6:	8d 76 00             	lea    0x0(%esi),%esi
    12e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    12f0:	8d 04 80             	lea    (%eax,%eax,4),%eax
    12f3:	83 c1 01             	add    $0x1,%ecx
    12f6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    12fa:	0f be 11             	movsbl (%ecx),%edx
    12fd:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1300:	80 fb 09             	cmp    $0x9,%bl
    1303:	76 eb                	jbe    12f0 <atoi+0x20>
  return n;
}
    1305:	5b                   	pop    %ebx
    1306:	5d                   	pop    %ebp
    1307:	c3                   	ret    
    1308:	90                   	nop
    1309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001310 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	56                   	push   %esi
    1314:	53                   	push   %ebx
    1315:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1318:	8b 45 08             	mov    0x8(%ebp),%eax
    131b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    131e:	85 db                	test   %ebx,%ebx
    1320:	7e 14                	jle    1336 <memmove+0x26>
    1322:	31 d2                	xor    %edx,%edx
    1324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1328:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    132c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    132f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1332:	39 d3                	cmp    %edx,%ebx
    1334:	75 f2                	jne    1328 <memmove+0x18>
  return vdst;
}
    1336:	5b                   	pop    %ebx
    1337:	5e                   	pop    %esi
    1338:	5d                   	pop    %ebp
    1339:	c3                   	ret    

0000133a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    133a:	b8 01 00 00 00       	mov    $0x1,%eax
    133f:	cd 40                	int    $0x40
    1341:	c3                   	ret    

00001342 <exit>:
SYSCALL(exit)
    1342:	b8 02 00 00 00       	mov    $0x2,%eax
    1347:	cd 40                	int    $0x40
    1349:	c3                   	ret    

0000134a <wait>:
SYSCALL(wait)
    134a:	b8 03 00 00 00       	mov    $0x3,%eax
    134f:	cd 40                	int    $0x40
    1351:	c3                   	ret    

00001352 <pipe>:
SYSCALL(pipe)
    1352:	b8 04 00 00 00       	mov    $0x4,%eax
    1357:	cd 40                	int    $0x40
    1359:	c3                   	ret    

0000135a <read>:
SYSCALL(read)
    135a:	b8 05 00 00 00       	mov    $0x5,%eax
    135f:	cd 40                	int    $0x40
    1361:	c3                   	ret    

00001362 <write>:
SYSCALL(write)
    1362:	b8 10 00 00 00       	mov    $0x10,%eax
    1367:	cd 40                	int    $0x40
    1369:	c3                   	ret    

0000136a <close>:
SYSCALL(close)
    136a:	b8 15 00 00 00       	mov    $0x15,%eax
    136f:	cd 40                	int    $0x40
    1371:	c3                   	ret    

00001372 <kill>:
SYSCALL(kill)
    1372:	b8 06 00 00 00       	mov    $0x6,%eax
    1377:	cd 40                	int    $0x40
    1379:	c3                   	ret    

0000137a <exec>:
SYSCALL(exec)
    137a:	b8 07 00 00 00       	mov    $0x7,%eax
    137f:	cd 40                	int    $0x40
    1381:	c3                   	ret    

00001382 <open>:
SYSCALL(open)
    1382:	b8 0f 00 00 00       	mov    $0xf,%eax
    1387:	cd 40                	int    $0x40
    1389:	c3                   	ret    

0000138a <mknod>:
SYSCALL(mknod)
    138a:	b8 11 00 00 00       	mov    $0x11,%eax
    138f:	cd 40                	int    $0x40
    1391:	c3                   	ret    

00001392 <unlink>:
SYSCALL(unlink)
    1392:	b8 12 00 00 00       	mov    $0x12,%eax
    1397:	cd 40                	int    $0x40
    1399:	c3                   	ret    

0000139a <fstat>:
SYSCALL(fstat)
    139a:	b8 08 00 00 00       	mov    $0x8,%eax
    139f:	cd 40                	int    $0x40
    13a1:	c3                   	ret    

000013a2 <link>:
SYSCALL(link)
    13a2:	b8 13 00 00 00       	mov    $0x13,%eax
    13a7:	cd 40                	int    $0x40
    13a9:	c3                   	ret    

000013aa <mkdir>:
SYSCALL(mkdir)
    13aa:	b8 14 00 00 00       	mov    $0x14,%eax
    13af:	cd 40                	int    $0x40
    13b1:	c3                   	ret    

000013b2 <chdir>:
SYSCALL(chdir)
    13b2:	b8 09 00 00 00       	mov    $0x9,%eax
    13b7:	cd 40                	int    $0x40
    13b9:	c3                   	ret    

000013ba <dup>:
SYSCALL(dup)
    13ba:	b8 0a 00 00 00       	mov    $0xa,%eax
    13bf:	cd 40                	int    $0x40
    13c1:	c3                   	ret    

000013c2 <getpid>:
SYSCALL(getpid)
    13c2:	b8 0b 00 00 00       	mov    $0xb,%eax
    13c7:	cd 40                	int    $0x40
    13c9:	c3                   	ret    

000013ca <sbrk>:
SYSCALL(sbrk)
    13ca:	b8 0c 00 00 00       	mov    $0xc,%eax
    13cf:	cd 40                	int    $0x40
    13d1:	c3                   	ret    

000013d2 <sleep>:
SYSCALL(sleep)
    13d2:	b8 0d 00 00 00       	mov    $0xd,%eax
    13d7:	cd 40                	int    $0x40
    13d9:	c3                   	ret    

000013da <uptime>:
SYSCALL(uptime)
    13da:	b8 0e 00 00 00       	mov    $0xe,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <shm_open>:
SYSCALL(shm_open)
    13e2:	b8 16 00 00 00       	mov    $0x16,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <shm_close>:
SYSCALL(shm_close)	
    13ea:	b8 17 00 00 00       	mov    $0x17,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    
    13f2:	66 90                	xchg   %ax,%ax
    13f4:	66 90                	xchg   %ax,%ax
    13f6:	66 90                	xchg   %ax,%ax
    13f8:	66 90                	xchg   %ax,%ax
    13fa:	66 90                	xchg   %ax,%ax
    13fc:	66 90                	xchg   %ax,%ax
    13fe:	66 90                	xchg   %ax,%ax

00001400 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1400:	55                   	push   %ebp
    1401:	89 e5                	mov    %esp,%ebp
    1403:	57                   	push   %edi
    1404:	56                   	push   %esi
    1405:	53                   	push   %ebx
    1406:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1409:	85 d2                	test   %edx,%edx
{
    140b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    140e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1410:	79 76                	jns    1488 <printint+0x88>
    1412:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1416:	74 70                	je     1488 <printint+0x88>
    x = -xx;
    1418:	f7 d8                	neg    %eax
    neg = 1;
    141a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1421:	31 f6                	xor    %esi,%esi
    1423:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1426:	eb 0a                	jmp    1432 <printint+0x32>
    1428:	90                   	nop
    1429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1430:	89 fe                	mov    %edi,%esi
    1432:	31 d2                	xor    %edx,%edx
    1434:	8d 7e 01             	lea    0x1(%esi),%edi
    1437:	f7 f1                	div    %ecx
    1439:	0f b6 92 a0 18 00 00 	movzbl 0x18a0(%edx),%edx
  }while((x /= base) != 0);
    1440:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1442:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1445:	75 e9                	jne    1430 <printint+0x30>
  if(neg)
    1447:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    144a:	85 c0                	test   %eax,%eax
    144c:	74 08                	je     1456 <printint+0x56>
    buf[i++] = '-';
    144e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1453:	8d 7e 02             	lea    0x2(%esi),%edi
    1456:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    145a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    145d:	8d 76 00             	lea    0x0(%esi),%esi
    1460:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1463:	83 ec 04             	sub    $0x4,%esp
    1466:	83 ee 01             	sub    $0x1,%esi
    1469:	6a 01                	push   $0x1
    146b:	53                   	push   %ebx
    146c:	57                   	push   %edi
    146d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1470:	e8 ed fe ff ff       	call   1362 <write>

  while(--i >= 0)
    1475:	83 c4 10             	add    $0x10,%esp
    1478:	39 de                	cmp    %ebx,%esi
    147a:	75 e4                	jne    1460 <printint+0x60>
    putc(fd, buf[i]);
}
    147c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    147f:	5b                   	pop    %ebx
    1480:	5e                   	pop    %esi
    1481:	5f                   	pop    %edi
    1482:	5d                   	pop    %ebp
    1483:	c3                   	ret    
    1484:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1488:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    148f:	eb 90                	jmp    1421 <printint+0x21>
    1491:	eb 0d                	jmp    14a0 <printf>
    1493:	90                   	nop
    1494:	90                   	nop
    1495:	90                   	nop
    1496:	90                   	nop
    1497:	90                   	nop
    1498:	90                   	nop
    1499:	90                   	nop
    149a:	90                   	nop
    149b:	90                   	nop
    149c:	90                   	nop
    149d:	90                   	nop
    149e:	90                   	nop
    149f:	90                   	nop

000014a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    14a0:	55                   	push   %ebp
    14a1:	89 e5                	mov    %esp,%ebp
    14a3:	57                   	push   %edi
    14a4:	56                   	push   %esi
    14a5:	53                   	push   %ebx
    14a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    14a9:	8b 75 0c             	mov    0xc(%ebp),%esi
    14ac:	0f b6 1e             	movzbl (%esi),%ebx
    14af:	84 db                	test   %bl,%bl
    14b1:	0f 84 b3 00 00 00    	je     156a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    14b7:	8d 45 10             	lea    0x10(%ebp),%eax
    14ba:	83 c6 01             	add    $0x1,%esi
  state = 0;
    14bd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    14bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    14c2:	eb 2f                	jmp    14f3 <printf+0x53>
    14c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    14c8:	83 f8 25             	cmp    $0x25,%eax
    14cb:	0f 84 a7 00 00 00    	je     1578 <printf+0xd8>
  write(fd, &c, 1);
    14d1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    14d4:	83 ec 04             	sub    $0x4,%esp
    14d7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    14da:	6a 01                	push   $0x1
    14dc:	50                   	push   %eax
    14dd:	ff 75 08             	pushl  0x8(%ebp)
    14e0:	e8 7d fe ff ff       	call   1362 <write>
    14e5:	83 c4 10             	add    $0x10,%esp
    14e8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    14eb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    14ef:	84 db                	test   %bl,%bl
    14f1:	74 77                	je     156a <printf+0xca>
    if(state == 0){
    14f3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    14f5:	0f be cb             	movsbl %bl,%ecx
    14f8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    14fb:	74 cb                	je     14c8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    14fd:	83 ff 25             	cmp    $0x25,%edi
    1500:	75 e6                	jne    14e8 <printf+0x48>
      if(c == 'd'){
    1502:	83 f8 64             	cmp    $0x64,%eax
    1505:	0f 84 05 01 00 00    	je     1610 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    150b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1511:	83 f9 70             	cmp    $0x70,%ecx
    1514:	74 72                	je     1588 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1516:	83 f8 73             	cmp    $0x73,%eax
    1519:	0f 84 99 00 00 00    	je     15b8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    151f:	83 f8 63             	cmp    $0x63,%eax
    1522:	0f 84 08 01 00 00    	je     1630 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1528:	83 f8 25             	cmp    $0x25,%eax
    152b:	0f 84 ef 00 00 00    	je     1620 <printf+0x180>
  write(fd, &c, 1);
    1531:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1534:	83 ec 04             	sub    $0x4,%esp
    1537:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    153b:	6a 01                	push   $0x1
    153d:	50                   	push   %eax
    153e:	ff 75 08             	pushl  0x8(%ebp)
    1541:	e8 1c fe ff ff       	call   1362 <write>
    1546:	83 c4 0c             	add    $0xc,%esp
    1549:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    154c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    154f:	6a 01                	push   $0x1
    1551:	50                   	push   %eax
    1552:	ff 75 08             	pushl  0x8(%ebp)
    1555:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1558:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    155a:	e8 03 fe ff ff       	call   1362 <write>
  for(i = 0; fmt[i]; i++){
    155f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1563:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1566:	84 db                	test   %bl,%bl
    1568:	75 89                	jne    14f3 <printf+0x53>
    }
  }
}
    156a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    156d:	5b                   	pop    %ebx
    156e:	5e                   	pop    %esi
    156f:	5f                   	pop    %edi
    1570:	5d                   	pop    %ebp
    1571:	c3                   	ret    
    1572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1578:	bf 25 00 00 00       	mov    $0x25,%edi
    157d:	e9 66 ff ff ff       	jmp    14e8 <printf+0x48>
    1582:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1588:	83 ec 0c             	sub    $0xc,%esp
    158b:	b9 10 00 00 00       	mov    $0x10,%ecx
    1590:	6a 00                	push   $0x0
    1592:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1595:	8b 45 08             	mov    0x8(%ebp),%eax
    1598:	8b 17                	mov    (%edi),%edx
    159a:	e8 61 fe ff ff       	call   1400 <printint>
        ap++;
    159f:	89 f8                	mov    %edi,%eax
    15a1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    15a4:	31 ff                	xor    %edi,%edi
        ap++;
    15a6:	83 c0 04             	add    $0x4,%eax
    15a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    15ac:	e9 37 ff ff ff       	jmp    14e8 <printf+0x48>
    15b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    15b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    15bb:	8b 08                	mov    (%eax),%ecx
        ap++;
    15bd:	83 c0 04             	add    $0x4,%eax
    15c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    15c3:	85 c9                	test   %ecx,%ecx
    15c5:	0f 84 8e 00 00 00    	je     1659 <printf+0x1b9>
        while(*s != 0){
    15cb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    15ce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    15d0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    15d2:	84 c0                	test   %al,%al
    15d4:	0f 84 0e ff ff ff    	je     14e8 <printf+0x48>
    15da:	89 75 d0             	mov    %esi,-0x30(%ebp)
    15dd:	89 de                	mov    %ebx,%esi
    15df:	8b 5d 08             	mov    0x8(%ebp),%ebx
    15e2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    15e5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    15e8:	83 ec 04             	sub    $0x4,%esp
          s++;
    15eb:	83 c6 01             	add    $0x1,%esi
    15ee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    15f1:	6a 01                	push   $0x1
    15f3:	57                   	push   %edi
    15f4:	53                   	push   %ebx
    15f5:	e8 68 fd ff ff       	call   1362 <write>
        while(*s != 0){
    15fa:	0f b6 06             	movzbl (%esi),%eax
    15fd:	83 c4 10             	add    $0x10,%esp
    1600:	84 c0                	test   %al,%al
    1602:	75 e4                	jne    15e8 <printf+0x148>
    1604:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1607:	31 ff                	xor    %edi,%edi
    1609:	e9 da fe ff ff       	jmp    14e8 <printf+0x48>
    160e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1610:	83 ec 0c             	sub    $0xc,%esp
    1613:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1618:	6a 01                	push   $0x1
    161a:	e9 73 ff ff ff       	jmp    1592 <printf+0xf2>
    161f:	90                   	nop
  write(fd, &c, 1);
    1620:	83 ec 04             	sub    $0x4,%esp
    1623:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1626:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1629:	6a 01                	push   $0x1
    162b:	e9 21 ff ff ff       	jmp    1551 <printf+0xb1>
        putc(fd, *ap);
    1630:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1633:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1636:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1638:	6a 01                	push   $0x1
        ap++;
    163a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    163d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1640:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1643:	50                   	push   %eax
    1644:	ff 75 08             	pushl  0x8(%ebp)
    1647:	e8 16 fd ff ff       	call   1362 <write>
        ap++;
    164c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    164f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1652:	31 ff                	xor    %edi,%edi
    1654:	e9 8f fe ff ff       	jmp    14e8 <printf+0x48>
          s = "(null)";
    1659:	bb 98 18 00 00       	mov    $0x1898,%ebx
        while(*s != 0){
    165e:	b8 28 00 00 00       	mov    $0x28,%eax
    1663:	e9 72 ff ff ff       	jmp    15da <printf+0x13a>
    1668:	66 90                	xchg   %ax,%ax
    166a:	66 90                	xchg   %ax,%ax
    166c:	66 90                	xchg   %ax,%ax
    166e:	66 90                	xchg   %ax,%ax

00001670 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1670:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1671:	a1 90 1b 00 00       	mov    0x1b90,%eax
{
    1676:	89 e5                	mov    %esp,%ebp
    1678:	57                   	push   %edi
    1679:	56                   	push   %esi
    167a:	53                   	push   %ebx
    167b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    167e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1688:	39 c8                	cmp    %ecx,%eax
    168a:	8b 10                	mov    (%eax),%edx
    168c:	73 32                	jae    16c0 <free+0x50>
    168e:	39 d1                	cmp    %edx,%ecx
    1690:	72 04                	jb     1696 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1692:	39 d0                	cmp    %edx,%eax
    1694:	72 32                	jb     16c8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1696:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1699:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    169c:	39 fa                	cmp    %edi,%edx
    169e:	74 30                	je     16d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    16a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    16a3:	8b 50 04             	mov    0x4(%eax),%edx
    16a6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    16a9:	39 f1                	cmp    %esi,%ecx
    16ab:	74 3a                	je     16e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    16ad:	89 08                	mov    %ecx,(%eax)
  freep = p;
    16af:	a3 90 1b 00 00       	mov    %eax,0x1b90
}
    16b4:	5b                   	pop    %ebx
    16b5:	5e                   	pop    %esi
    16b6:	5f                   	pop    %edi
    16b7:	5d                   	pop    %ebp
    16b8:	c3                   	ret    
    16b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    16c0:	39 d0                	cmp    %edx,%eax
    16c2:	72 04                	jb     16c8 <free+0x58>
    16c4:	39 d1                	cmp    %edx,%ecx
    16c6:	72 ce                	jb     1696 <free+0x26>
{
    16c8:	89 d0                	mov    %edx,%eax
    16ca:	eb bc                	jmp    1688 <free+0x18>
    16cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    16d0:	03 72 04             	add    0x4(%edx),%esi
    16d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    16d6:	8b 10                	mov    (%eax),%edx
    16d8:	8b 12                	mov    (%edx),%edx
    16da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    16dd:	8b 50 04             	mov    0x4(%eax),%edx
    16e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    16e3:	39 f1                	cmp    %esi,%ecx
    16e5:	75 c6                	jne    16ad <free+0x3d>
    p->s.size += bp->s.size;
    16e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    16ea:	a3 90 1b 00 00       	mov    %eax,0x1b90
    p->s.size += bp->s.size;
    16ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    16f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    16f5:	89 10                	mov    %edx,(%eax)
}
    16f7:	5b                   	pop    %ebx
    16f8:	5e                   	pop    %esi
    16f9:	5f                   	pop    %edi
    16fa:	5d                   	pop    %ebp
    16fb:	c3                   	ret    
    16fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001700 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1700:	55                   	push   %ebp
    1701:	89 e5                	mov    %esp,%ebp
    1703:	57                   	push   %edi
    1704:	56                   	push   %esi
    1705:	53                   	push   %ebx
    1706:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1709:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    170c:	8b 15 90 1b 00 00    	mov    0x1b90,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1712:	8d 78 07             	lea    0x7(%eax),%edi
    1715:	c1 ef 03             	shr    $0x3,%edi
    1718:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    171b:	85 d2                	test   %edx,%edx
    171d:	0f 84 9d 00 00 00    	je     17c0 <malloc+0xc0>
    1723:	8b 02                	mov    (%edx),%eax
    1725:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1728:	39 cf                	cmp    %ecx,%edi
    172a:	76 6c                	jbe    1798 <malloc+0x98>
    172c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1732:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1737:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    173a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1741:	eb 0e                	jmp    1751 <malloc+0x51>
    1743:	90                   	nop
    1744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1748:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    174a:	8b 48 04             	mov    0x4(%eax),%ecx
    174d:	39 f9                	cmp    %edi,%ecx
    174f:	73 47                	jae    1798 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1751:	39 05 90 1b 00 00    	cmp    %eax,0x1b90
    1757:	89 c2                	mov    %eax,%edx
    1759:	75 ed                	jne    1748 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    175b:	83 ec 0c             	sub    $0xc,%esp
    175e:	56                   	push   %esi
    175f:	e8 66 fc ff ff       	call   13ca <sbrk>
  if(p == (char*)-1)
    1764:	83 c4 10             	add    $0x10,%esp
    1767:	83 f8 ff             	cmp    $0xffffffff,%eax
    176a:	74 1c                	je     1788 <malloc+0x88>
  hp->s.size = nu;
    176c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    176f:	83 ec 0c             	sub    $0xc,%esp
    1772:	83 c0 08             	add    $0x8,%eax
    1775:	50                   	push   %eax
    1776:	e8 f5 fe ff ff       	call   1670 <free>
  return freep;
    177b:	8b 15 90 1b 00 00    	mov    0x1b90,%edx
      if((p = morecore(nunits)) == 0)
    1781:	83 c4 10             	add    $0x10,%esp
    1784:	85 d2                	test   %edx,%edx
    1786:	75 c0                	jne    1748 <malloc+0x48>
        return 0;
  }
}
    1788:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    178b:	31 c0                	xor    %eax,%eax
}
    178d:	5b                   	pop    %ebx
    178e:	5e                   	pop    %esi
    178f:	5f                   	pop    %edi
    1790:	5d                   	pop    %ebp
    1791:	c3                   	ret    
    1792:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1798:	39 cf                	cmp    %ecx,%edi
    179a:	74 54                	je     17f0 <malloc+0xf0>
        p->s.size -= nunits;
    179c:	29 f9                	sub    %edi,%ecx
    179e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    17a1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    17a4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    17a7:	89 15 90 1b 00 00    	mov    %edx,0x1b90
}
    17ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    17b0:	83 c0 08             	add    $0x8,%eax
}
    17b3:	5b                   	pop    %ebx
    17b4:	5e                   	pop    %esi
    17b5:	5f                   	pop    %edi
    17b6:	5d                   	pop    %ebp
    17b7:	c3                   	ret    
    17b8:	90                   	nop
    17b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    17c0:	c7 05 90 1b 00 00 94 	movl   $0x1b94,0x1b90
    17c7:	1b 00 00 
    17ca:	c7 05 94 1b 00 00 94 	movl   $0x1b94,0x1b94
    17d1:	1b 00 00 
    base.s.size = 0;
    17d4:	b8 94 1b 00 00       	mov    $0x1b94,%eax
    17d9:	c7 05 98 1b 00 00 00 	movl   $0x0,0x1b98
    17e0:	00 00 00 
    17e3:	e9 44 ff ff ff       	jmp    172c <malloc+0x2c>
    17e8:	90                   	nop
    17e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    17f0:	8b 08                	mov    (%eax),%ecx
    17f2:	89 0a                	mov    %ecx,(%edx)
    17f4:	eb b1                	jmp    17a7 <malloc+0xa7>
    17f6:	66 90                	xchg   %ax,%ax
    17f8:	66 90                	xchg   %ax,%ax
    17fa:	66 90                	xchg   %ax,%ax
    17fc:	66 90                	xchg   %ax,%ax
    17fe:	66 90                	xchg   %ax,%ax

00001800 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1800:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1801:	b9 01 00 00 00       	mov    $0x1,%ecx
    1806:	89 e5                	mov    %esp,%ebp
    1808:	8b 55 08             	mov    0x8(%ebp),%edx
    180b:	90                   	nop
    180c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1810:	89 c8                	mov    %ecx,%eax
    1812:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1815:	85 c0                	test   %eax,%eax
    1817:	75 f7                	jne    1810 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1819:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    181e:	5d                   	pop    %ebp
    181f:	c3                   	ret    

00001820 <urelease>:

void urelease (struct uspinlock *lk) {
    1820:	55                   	push   %ebp
    1821:	89 e5                	mov    %esp,%ebp
    1823:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1826:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    182b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1831:	5d                   	pop    %ebp
    1832:	c3                   	ret    
