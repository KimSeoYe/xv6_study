
_cat:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  }
}

int
main(int argc, char *argv[])
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
    1011:	be 01 00 00 00       	mov    $0x1,%esi
    1016:	83 ec 18             	sub    $0x18,%esp
    1019:	8b 01                	mov    (%ecx),%eax
    101b:	8b 59 04             	mov    0x4(%ecx),%ebx
    101e:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
    1021:	83 f8 01             	cmp    $0x1,%eax
{
    1024:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(argc <= 1){
    1027:	7e 54                	jle    107d <main+0x7d>
    1029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cat(0);
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	6a 00                	push   $0x0
    1035:	ff 33                	pushl  (%ebx)
    1037:	e8 66 03 00 00       	call   13a2 <open>
    103c:	83 c4 10             	add    $0x10,%esp
    103f:	85 c0                	test   %eax,%eax
    1041:	89 c7                	mov    %eax,%edi
    1043:	78 24                	js     1069 <main+0x69>
      printf(1, "cat: cannot open %s\n", argv[i]);
      exit();
    }
    cat(fd);
    1045:	83 ec 0c             	sub    $0xc,%esp
  for(i = 1; i < argc; i++){
    1048:	83 c6 01             	add    $0x1,%esi
    104b:	83 c3 04             	add    $0x4,%ebx
    cat(fd);
    104e:	50                   	push   %eax
    104f:	e8 3c 00 00 00       	call   1090 <cat>
    close(fd);
    1054:	89 3c 24             	mov    %edi,(%esp)
    1057:	e8 2e 03 00 00       	call   138a <close>
  for(i = 1; i < argc; i++){
    105c:	83 c4 10             	add    $0x10,%esp
    105f:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    1062:	75 cc                	jne    1030 <main+0x30>
  }
  exit();
    1064:	e8 f9 02 00 00       	call   1362 <exit>
      printf(1, "cat: cannot open %s\n", argv[i]);
    1069:	50                   	push   %eax
    106a:	ff 33                	pushl  (%ebx)
    106c:	68 77 18 00 00       	push   $0x1877
    1071:	6a 01                	push   $0x1
    1073:	e8 48 04 00 00       	call   14c0 <printf>
      exit();
    1078:	e8 e5 02 00 00       	call   1362 <exit>
    cat(0);
    107d:	83 ec 0c             	sub    $0xc,%esp
    1080:	6a 00                	push   $0x0
    1082:	e8 09 00 00 00       	call   1090 <cat>
    exit();
    1087:	e8 d6 02 00 00       	call   1362 <exit>
    108c:	66 90                	xchg   %ax,%ax
    108e:	66 90                	xchg   %ax,%ax

00001090 <cat>:
{
    1090:	55                   	push   %ebp
    1091:	89 e5                	mov    %esp,%ebp
    1093:	56                   	push   %esi
    1094:	53                   	push   %ebx
    1095:	8b 75 08             	mov    0x8(%ebp),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0) {
    1098:	eb 1d                	jmp    10b7 <cat+0x27>
    109a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (write(1, buf, n) != n) {
    10a0:	83 ec 04             	sub    $0x4,%esp
    10a3:	53                   	push   %ebx
    10a4:	68 e0 1b 00 00       	push   $0x1be0
    10a9:	6a 01                	push   $0x1
    10ab:	e8 d2 02 00 00       	call   1382 <write>
    10b0:	83 c4 10             	add    $0x10,%esp
    10b3:	39 d8                	cmp    %ebx,%eax
    10b5:	75 26                	jne    10dd <cat+0x4d>
  while((n = read(fd, buf, sizeof(buf))) > 0) {
    10b7:	83 ec 04             	sub    $0x4,%esp
    10ba:	68 00 02 00 00       	push   $0x200
    10bf:	68 e0 1b 00 00       	push   $0x1be0
    10c4:	56                   	push   %esi
    10c5:	e8 b0 02 00 00       	call   137a <read>
    10ca:	83 c4 10             	add    $0x10,%esp
    10cd:	83 f8 00             	cmp    $0x0,%eax
    10d0:	89 c3                	mov    %eax,%ebx
    10d2:	7f cc                	jg     10a0 <cat+0x10>
  if(n < 0){
    10d4:	75 1b                	jne    10f1 <cat+0x61>
}
    10d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    10d9:	5b                   	pop    %ebx
    10da:	5e                   	pop    %esi
    10db:	5d                   	pop    %ebp
    10dc:	c3                   	ret    
      printf(1, "cat: write error\n");
    10dd:	83 ec 08             	sub    $0x8,%esp
    10e0:	68 54 18 00 00       	push   $0x1854
    10e5:	6a 01                	push   $0x1
    10e7:	e8 d4 03 00 00       	call   14c0 <printf>
      exit();
    10ec:	e8 71 02 00 00       	call   1362 <exit>
    printf(1, "cat: read error\n");
    10f1:	50                   	push   %eax
    10f2:	50                   	push   %eax
    10f3:	68 66 18 00 00       	push   $0x1866
    10f8:	6a 01                	push   $0x1
    10fa:	e8 c1 03 00 00       	call   14c0 <printf>
    exit();
    10ff:	e8 5e 02 00 00       	call   1362 <exit>
    1104:	66 90                	xchg   %ax,%ax
    1106:	66 90                	xchg   %ax,%ax
    1108:	66 90                	xchg   %ax,%ax
    110a:	66 90                	xchg   %ax,%ax
    110c:	66 90                	xchg   %ax,%ax
    110e:	66 90                	xchg   %ax,%ax

00001110 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1110:	55                   	push   %ebp
    1111:	89 e5                	mov    %esp,%ebp
    1113:	53                   	push   %ebx
    1114:	8b 45 08             	mov    0x8(%ebp),%eax
    1117:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    111a:	89 c2                	mov    %eax,%edx
    111c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1120:	83 c1 01             	add    $0x1,%ecx
    1123:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1127:	83 c2 01             	add    $0x1,%edx
    112a:	84 db                	test   %bl,%bl
    112c:	88 5a ff             	mov    %bl,-0x1(%edx)
    112f:	75 ef                	jne    1120 <strcpy+0x10>
    ;
  return os;
}
    1131:	5b                   	pop    %ebx
    1132:	5d                   	pop    %ebp
    1133:	c3                   	ret    
    1134:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    113a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001140 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	53                   	push   %ebx
    1144:	8b 55 08             	mov    0x8(%ebp),%edx
    1147:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    114a:	0f b6 02             	movzbl (%edx),%eax
    114d:	0f b6 19             	movzbl (%ecx),%ebx
    1150:	84 c0                	test   %al,%al
    1152:	75 1c                	jne    1170 <strcmp+0x30>
    1154:	eb 2a                	jmp    1180 <strcmp+0x40>
    1156:	8d 76 00             	lea    0x0(%esi),%esi
    1159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1160:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1163:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1166:	83 c1 01             	add    $0x1,%ecx
    1169:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    116c:	84 c0                	test   %al,%al
    116e:	74 10                	je     1180 <strcmp+0x40>
    1170:	38 d8                	cmp    %bl,%al
    1172:	74 ec                	je     1160 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1174:	29 d8                	sub    %ebx,%eax
}
    1176:	5b                   	pop    %ebx
    1177:	5d                   	pop    %ebp
    1178:	c3                   	ret    
    1179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1180:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1182:	29 d8                	sub    %ebx,%eax
}
    1184:	5b                   	pop    %ebx
    1185:	5d                   	pop    %ebp
    1186:	c3                   	ret    
    1187:	89 f6                	mov    %esi,%esi
    1189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001190 <strlen>:

uint
strlen(char *s)
{
    1190:	55                   	push   %ebp
    1191:	89 e5                	mov    %esp,%ebp
    1193:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1196:	80 39 00             	cmpb   $0x0,(%ecx)
    1199:	74 15                	je     11b0 <strlen+0x20>
    119b:	31 d2                	xor    %edx,%edx
    119d:	8d 76 00             	lea    0x0(%esi),%esi
    11a0:	83 c2 01             	add    $0x1,%edx
    11a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    11a7:	89 d0                	mov    %edx,%eax
    11a9:	75 f5                	jne    11a0 <strlen+0x10>
    ;
  return n;
}
    11ab:	5d                   	pop    %ebp
    11ac:	c3                   	ret    
    11ad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    11b0:	31 c0                	xor    %eax,%eax
}
    11b2:	5d                   	pop    %ebp
    11b3:	c3                   	ret    
    11b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    11c0:	55                   	push   %ebp
    11c1:	89 e5                	mov    %esp,%ebp
    11c3:	57                   	push   %edi
    11c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    11c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    11ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    11cd:	89 d7                	mov    %edx,%edi
    11cf:	fc                   	cld    
    11d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    11d2:	89 d0                	mov    %edx,%eax
    11d4:	5f                   	pop    %edi
    11d5:	5d                   	pop    %ebp
    11d6:	c3                   	ret    
    11d7:	89 f6                	mov    %esi,%esi
    11d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000011e0 <strchr>:

char*
strchr(const char *s, char c)
{
    11e0:	55                   	push   %ebp
    11e1:	89 e5                	mov    %esp,%ebp
    11e3:	53                   	push   %ebx
    11e4:	8b 45 08             	mov    0x8(%ebp),%eax
    11e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    11ea:	0f b6 10             	movzbl (%eax),%edx
    11ed:	84 d2                	test   %dl,%dl
    11ef:	74 1d                	je     120e <strchr+0x2e>
    if(*s == c)
    11f1:	38 d3                	cmp    %dl,%bl
    11f3:	89 d9                	mov    %ebx,%ecx
    11f5:	75 0d                	jne    1204 <strchr+0x24>
    11f7:	eb 17                	jmp    1210 <strchr+0x30>
    11f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1200:	38 ca                	cmp    %cl,%dl
    1202:	74 0c                	je     1210 <strchr+0x30>
  for(; *s; s++)
    1204:	83 c0 01             	add    $0x1,%eax
    1207:	0f b6 10             	movzbl (%eax),%edx
    120a:	84 d2                	test   %dl,%dl
    120c:	75 f2                	jne    1200 <strchr+0x20>
      return (char*)s;
  return 0;
    120e:	31 c0                	xor    %eax,%eax
}
    1210:	5b                   	pop    %ebx
    1211:	5d                   	pop    %ebp
    1212:	c3                   	ret    
    1213:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001220 <gets>:

char*
gets(char *buf, int max)
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	57                   	push   %edi
    1224:	56                   	push   %esi
    1225:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1226:	31 f6                	xor    %esi,%esi
    1228:	89 f3                	mov    %esi,%ebx
{
    122a:	83 ec 1c             	sub    $0x1c,%esp
    122d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1230:	eb 2f                	jmp    1261 <gets+0x41>
    1232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1238:	8d 45 e7             	lea    -0x19(%ebp),%eax
    123b:	83 ec 04             	sub    $0x4,%esp
    123e:	6a 01                	push   $0x1
    1240:	50                   	push   %eax
    1241:	6a 00                	push   $0x0
    1243:	e8 32 01 00 00       	call   137a <read>
    if(cc < 1)
    1248:	83 c4 10             	add    $0x10,%esp
    124b:	85 c0                	test   %eax,%eax
    124d:	7e 1c                	jle    126b <gets+0x4b>
      break;
    buf[i++] = c;
    124f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1253:	83 c7 01             	add    $0x1,%edi
    1256:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1259:	3c 0a                	cmp    $0xa,%al
    125b:	74 23                	je     1280 <gets+0x60>
    125d:	3c 0d                	cmp    $0xd,%al
    125f:	74 1f                	je     1280 <gets+0x60>
  for(i=0; i+1 < max; ){
    1261:	83 c3 01             	add    $0x1,%ebx
    1264:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1267:	89 fe                	mov    %edi,%esi
    1269:	7c cd                	jl     1238 <gets+0x18>
    126b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    126d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1270:	c6 03 00             	movb   $0x0,(%ebx)
}
    1273:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1276:	5b                   	pop    %ebx
    1277:	5e                   	pop    %esi
    1278:	5f                   	pop    %edi
    1279:	5d                   	pop    %ebp
    127a:	c3                   	ret    
    127b:	90                   	nop
    127c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1280:	8b 75 08             	mov    0x8(%ebp),%esi
    1283:	8b 45 08             	mov    0x8(%ebp),%eax
    1286:	01 de                	add    %ebx,%esi
    1288:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    128a:	c6 03 00             	movb   $0x0,(%ebx)
}
    128d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1290:	5b                   	pop    %ebx
    1291:	5e                   	pop    %esi
    1292:	5f                   	pop    %edi
    1293:	5d                   	pop    %ebp
    1294:	c3                   	ret    
    1295:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012a0 <stat>:

int
stat(char *n, struct stat *st)
{
    12a0:	55                   	push   %ebp
    12a1:	89 e5                	mov    %esp,%ebp
    12a3:	56                   	push   %esi
    12a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12a5:	83 ec 08             	sub    $0x8,%esp
    12a8:	6a 00                	push   $0x0
    12aa:	ff 75 08             	pushl  0x8(%ebp)
    12ad:	e8 f0 00 00 00       	call   13a2 <open>
  if(fd < 0)
    12b2:	83 c4 10             	add    $0x10,%esp
    12b5:	85 c0                	test   %eax,%eax
    12b7:	78 27                	js     12e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    12b9:	83 ec 08             	sub    $0x8,%esp
    12bc:	ff 75 0c             	pushl  0xc(%ebp)
    12bf:	89 c3                	mov    %eax,%ebx
    12c1:	50                   	push   %eax
    12c2:	e8 f3 00 00 00       	call   13ba <fstat>
  close(fd);
    12c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    12ca:	89 c6                	mov    %eax,%esi
  close(fd);
    12cc:	e8 b9 00 00 00       	call   138a <close>
  return r;
    12d1:	83 c4 10             	add    $0x10,%esp
}
    12d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12d7:	89 f0                	mov    %esi,%eax
    12d9:	5b                   	pop    %ebx
    12da:	5e                   	pop    %esi
    12db:	5d                   	pop    %ebp
    12dc:	c3                   	ret    
    12dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    12e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    12e5:	eb ed                	jmp    12d4 <stat+0x34>
    12e7:	89 f6                	mov    %esi,%esi
    12e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000012f0 <atoi>:

int
atoi(const char *s)
{
    12f0:	55                   	push   %ebp
    12f1:	89 e5                	mov    %esp,%ebp
    12f3:	53                   	push   %ebx
    12f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    12f7:	0f be 11             	movsbl (%ecx),%edx
    12fa:	8d 42 d0             	lea    -0x30(%edx),%eax
    12fd:	3c 09                	cmp    $0x9,%al
  n = 0;
    12ff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1304:	77 1f                	ja     1325 <atoi+0x35>
    1306:	8d 76 00             	lea    0x0(%esi),%esi
    1309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1310:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1313:	83 c1 01             	add    $0x1,%ecx
    1316:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    131a:	0f be 11             	movsbl (%ecx),%edx
    131d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1320:	80 fb 09             	cmp    $0x9,%bl
    1323:	76 eb                	jbe    1310 <atoi+0x20>
  return n;
}
    1325:	5b                   	pop    %ebx
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
    1328:	90                   	nop
    1329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001330 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	56                   	push   %esi
    1334:	53                   	push   %ebx
    1335:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1338:	8b 45 08             	mov    0x8(%ebp),%eax
    133b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    133e:	85 db                	test   %ebx,%ebx
    1340:	7e 14                	jle    1356 <memmove+0x26>
    1342:	31 d2                	xor    %edx,%edx
    1344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    134c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    134f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1352:	39 d3                	cmp    %edx,%ebx
    1354:	75 f2                	jne    1348 <memmove+0x18>
  return vdst;
}
    1356:	5b                   	pop    %ebx
    1357:	5e                   	pop    %esi
    1358:	5d                   	pop    %ebp
    1359:	c3                   	ret    

0000135a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    135a:	b8 01 00 00 00       	mov    $0x1,%eax
    135f:	cd 40                	int    $0x40
    1361:	c3                   	ret    

00001362 <exit>:
SYSCALL(exit)
    1362:	b8 02 00 00 00       	mov    $0x2,%eax
    1367:	cd 40                	int    $0x40
    1369:	c3                   	ret    

0000136a <wait>:
SYSCALL(wait)
    136a:	b8 03 00 00 00       	mov    $0x3,%eax
    136f:	cd 40                	int    $0x40
    1371:	c3                   	ret    

00001372 <pipe>:
SYSCALL(pipe)
    1372:	b8 04 00 00 00       	mov    $0x4,%eax
    1377:	cd 40                	int    $0x40
    1379:	c3                   	ret    

0000137a <read>:
SYSCALL(read)
    137a:	b8 05 00 00 00       	mov    $0x5,%eax
    137f:	cd 40                	int    $0x40
    1381:	c3                   	ret    

00001382 <write>:
SYSCALL(write)
    1382:	b8 10 00 00 00       	mov    $0x10,%eax
    1387:	cd 40                	int    $0x40
    1389:	c3                   	ret    

0000138a <close>:
SYSCALL(close)
    138a:	b8 15 00 00 00       	mov    $0x15,%eax
    138f:	cd 40                	int    $0x40
    1391:	c3                   	ret    

00001392 <kill>:
SYSCALL(kill)
    1392:	b8 06 00 00 00       	mov    $0x6,%eax
    1397:	cd 40                	int    $0x40
    1399:	c3                   	ret    

0000139a <exec>:
SYSCALL(exec)
    139a:	b8 07 00 00 00       	mov    $0x7,%eax
    139f:	cd 40                	int    $0x40
    13a1:	c3                   	ret    

000013a2 <open>:
SYSCALL(open)
    13a2:	b8 0f 00 00 00       	mov    $0xf,%eax
    13a7:	cd 40                	int    $0x40
    13a9:	c3                   	ret    

000013aa <mknod>:
SYSCALL(mknod)
    13aa:	b8 11 00 00 00       	mov    $0x11,%eax
    13af:	cd 40                	int    $0x40
    13b1:	c3                   	ret    

000013b2 <unlink>:
SYSCALL(unlink)
    13b2:	b8 12 00 00 00       	mov    $0x12,%eax
    13b7:	cd 40                	int    $0x40
    13b9:	c3                   	ret    

000013ba <fstat>:
SYSCALL(fstat)
    13ba:	b8 08 00 00 00       	mov    $0x8,%eax
    13bf:	cd 40                	int    $0x40
    13c1:	c3                   	ret    

000013c2 <link>:
SYSCALL(link)
    13c2:	b8 13 00 00 00       	mov    $0x13,%eax
    13c7:	cd 40                	int    $0x40
    13c9:	c3                   	ret    

000013ca <mkdir>:
SYSCALL(mkdir)
    13ca:	b8 14 00 00 00       	mov    $0x14,%eax
    13cf:	cd 40                	int    $0x40
    13d1:	c3                   	ret    

000013d2 <chdir>:
SYSCALL(chdir)
    13d2:	b8 09 00 00 00       	mov    $0x9,%eax
    13d7:	cd 40                	int    $0x40
    13d9:	c3                   	ret    

000013da <dup>:
SYSCALL(dup)
    13da:	b8 0a 00 00 00       	mov    $0xa,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <getpid>:
SYSCALL(getpid)
    13e2:	b8 0b 00 00 00       	mov    $0xb,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <sbrk>:
SYSCALL(sbrk)
    13ea:	b8 0c 00 00 00       	mov    $0xc,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    

000013f2 <sleep>:
SYSCALL(sleep)
    13f2:	b8 0d 00 00 00       	mov    $0xd,%eax
    13f7:	cd 40                	int    $0x40
    13f9:	c3                   	ret    

000013fa <uptime>:
SYSCALL(uptime)
    13fa:	b8 0e 00 00 00       	mov    $0xe,%eax
    13ff:	cd 40                	int    $0x40
    1401:	c3                   	ret    

00001402 <shm_open>:
SYSCALL(shm_open)
    1402:	b8 16 00 00 00       	mov    $0x16,%eax
    1407:	cd 40                	int    $0x40
    1409:	c3                   	ret    

0000140a <shm_close>:
SYSCALL(shm_close)	
    140a:	b8 17 00 00 00       	mov    $0x17,%eax
    140f:	cd 40                	int    $0x40
    1411:	c3                   	ret    
    1412:	66 90                	xchg   %ax,%ax
    1414:	66 90                	xchg   %ax,%ax
    1416:	66 90                	xchg   %ax,%ax
    1418:	66 90                	xchg   %ax,%ax
    141a:	66 90                	xchg   %ax,%ax
    141c:	66 90                	xchg   %ax,%ax
    141e:	66 90                	xchg   %ax,%ax

00001420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	57                   	push   %edi
    1424:	56                   	push   %esi
    1425:	53                   	push   %ebx
    1426:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1429:	85 d2                	test   %edx,%edx
{
    142b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    142e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1430:	79 76                	jns    14a8 <printint+0x88>
    1432:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1436:	74 70                	je     14a8 <printint+0x88>
    x = -xx;
    1438:	f7 d8                	neg    %eax
    neg = 1;
    143a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1441:	31 f6                	xor    %esi,%esi
    1443:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1446:	eb 0a                	jmp    1452 <printint+0x32>
    1448:	90                   	nop
    1449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1450:	89 fe                	mov    %edi,%esi
    1452:	31 d2                	xor    %edx,%edx
    1454:	8d 7e 01             	lea    0x1(%esi),%edi
    1457:	f7 f1                	div    %ecx
    1459:	0f b6 92 94 18 00 00 	movzbl 0x1894(%edx),%edx
  }while((x /= base) != 0);
    1460:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1462:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1465:	75 e9                	jne    1450 <printint+0x30>
  if(neg)
    1467:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    146a:	85 c0                	test   %eax,%eax
    146c:	74 08                	je     1476 <printint+0x56>
    buf[i++] = '-';
    146e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1473:	8d 7e 02             	lea    0x2(%esi),%edi
    1476:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    147a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    147d:	8d 76 00             	lea    0x0(%esi),%esi
    1480:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    1483:	83 ec 04             	sub    $0x4,%esp
    1486:	83 ee 01             	sub    $0x1,%esi
    1489:	6a 01                	push   $0x1
    148b:	53                   	push   %ebx
    148c:	57                   	push   %edi
    148d:	88 45 d7             	mov    %al,-0x29(%ebp)
    1490:	e8 ed fe ff ff       	call   1382 <write>

  while(--i >= 0)
    1495:	83 c4 10             	add    $0x10,%esp
    1498:	39 de                	cmp    %ebx,%esi
    149a:	75 e4                	jne    1480 <printint+0x60>
    putc(fd, buf[i]);
}
    149c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    149f:	5b                   	pop    %ebx
    14a0:	5e                   	pop    %esi
    14a1:	5f                   	pop    %edi
    14a2:	5d                   	pop    %ebp
    14a3:	c3                   	ret    
    14a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    14a8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    14af:	eb 90                	jmp    1441 <printint+0x21>
    14b1:	eb 0d                	jmp    14c0 <printf>
    14b3:	90                   	nop
    14b4:	90                   	nop
    14b5:	90                   	nop
    14b6:	90                   	nop
    14b7:	90                   	nop
    14b8:	90                   	nop
    14b9:	90                   	nop
    14ba:	90                   	nop
    14bb:	90                   	nop
    14bc:	90                   	nop
    14bd:	90                   	nop
    14be:	90                   	nop
    14bf:	90                   	nop

000014c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    14c0:	55                   	push   %ebp
    14c1:	89 e5                	mov    %esp,%ebp
    14c3:	57                   	push   %edi
    14c4:	56                   	push   %esi
    14c5:	53                   	push   %ebx
    14c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    14c9:	8b 75 0c             	mov    0xc(%ebp),%esi
    14cc:	0f b6 1e             	movzbl (%esi),%ebx
    14cf:	84 db                	test   %bl,%bl
    14d1:	0f 84 b3 00 00 00    	je     158a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    14d7:	8d 45 10             	lea    0x10(%ebp),%eax
    14da:	83 c6 01             	add    $0x1,%esi
  state = 0;
    14dd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    14df:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    14e2:	eb 2f                	jmp    1513 <printf+0x53>
    14e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    14e8:	83 f8 25             	cmp    $0x25,%eax
    14eb:	0f 84 a7 00 00 00    	je     1598 <printf+0xd8>
  write(fd, &c, 1);
    14f1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    14f4:	83 ec 04             	sub    $0x4,%esp
    14f7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    14fa:	6a 01                	push   $0x1
    14fc:	50                   	push   %eax
    14fd:	ff 75 08             	pushl  0x8(%ebp)
    1500:	e8 7d fe ff ff       	call   1382 <write>
    1505:	83 c4 10             	add    $0x10,%esp
    1508:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    150b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    150f:	84 db                	test   %bl,%bl
    1511:	74 77                	je     158a <printf+0xca>
    if(state == 0){
    1513:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1515:	0f be cb             	movsbl %bl,%ecx
    1518:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    151b:	74 cb                	je     14e8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    151d:	83 ff 25             	cmp    $0x25,%edi
    1520:	75 e6                	jne    1508 <printf+0x48>
      if(c == 'd'){
    1522:	83 f8 64             	cmp    $0x64,%eax
    1525:	0f 84 05 01 00 00    	je     1630 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    152b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1531:	83 f9 70             	cmp    $0x70,%ecx
    1534:	74 72                	je     15a8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1536:	83 f8 73             	cmp    $0x73,%eax
    1539:	0f 84 99 00 00 00    	je     15d8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    153f:	83 f8 63             	cmp    $0x63,%eax
    1542:	0f 84 08 01 00 00    	je     1650 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1548:	83 f8 25             	cmp    $0x25,%eax
    154b:	0f 84 ef 00 00 00    	je     1640 <printf+0x180>
  write(fd, &c, 1);
    1551:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1554:	83 ec 04             	sub    $0x4,%esp
    1557:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    155b:	6a 01                	push   $0x1
    155d:	50                   	push   %eax
    155e:	ff 75 08             	pushl  0x8(%ebp)
    1561:	e8 1c fe ff ff       	call   1382 <write>
    1566:	83 c4 0c             	add    $0xc,%esp
    1569:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    156c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    156f:	6a 01                	push   $0x1
    1571:	50                   	push   %eax
    1572:	ff 75 08             	pushl  0x8(%ebp)
    1575:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1578:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    157a:	e8 03 fe ff ff       	call   1382 <write>
  for(i = 0; fmt[i]; i++){
    157f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1583:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1586:	84 db                	test   %bl,%bl
    1588:	75 89                	jne    1513 <printf+0x53>
    }
  }
}
    158a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    158d:	5b                   	pop    %ebx
    158e:	5e                   	pop    %esi
    158f:	5f                   	pop    %edi
    1590:	5d                   	pop    %ebp
    1591:	c3                   	ret    
    1592:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1598:	bf 25 00 00 00       	mov    $0x25,%edi
    159d:	e9 66 ff ff ff       	jmp    1508 <printf+0x48>
    15a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    15a8:	83 ec 0c             	sub    $0xc,%esp
    15ab:	b9 10 00 00 00       	mov    $0x10,%ecx
    15b0:	6a 00                	push   $0x0
    15b2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    15b5:	8b 45 08             	mov    0x8(%ebp),%eax
    15b8:	8b 17                	mov    (%edi),%edx
    15ba:	e8 61 fe ff ff       	call   1420 <printint>
        ap++;
    15bf:	89 f8                	mov    %edi,%eax
    15c1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    15c4:	31 ff                	xor    %edi,%edi
        ap++;
    15c6:	83 c0 04             	add    $0x4,%eax
    15c9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    15cc:	e9 37 ff ff ff       	jmp    1508 <printf+0x48>
    15d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    15d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    15db:	8b 08                	mov    (%eax),%ecx
        ap++;
    15dd:	83 c0 04             	add    $0x4,%eax
    15e0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    15e3:	85 c9                	test   %ecx,%ecx
    15e5:	0f 84 8e 00 00 00    	je     1679 <printf+0x1b9>
        while(*s != 0){
    15eb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    15ee:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    15f0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    15f2:	84 c0                	test   %al,%al
    15f4:	0f 84 0e ff ff ff    	je     1508 <printf+0x48>
    15fa:	89 75 d0             	mov    %esi,-0x30(%ebp)
    15fd:	89 de                	mov    %ebx,%esi
    15ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1602:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1605:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1608:	83 ec 04             	sub    $0x4,%esp
          s++;
    160b:	83 c6 01             	add    $0x1,%esi
    160e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1611:	6a 01                	push   $0x1
    1613:	57                   	push   %edi
    1614:	53                   	push   %ebx
    1615:	e8 68 fd ff ff       	call   1382 <write>
        while(*s != 0){
    161a:	0f b6 06             	movzbl (%esi),%eax
    161d:	83 c4 10             	add    $0x10,%esp
    1620:	84 c0                	test   %al,%al
    1622:	75 e4                	jne    1608 <printf+0x148>
    1624:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1627:	31 ff                	xor    %edi,%edi
    1629:	e9 da fe ff ff       	jmp    1508 <printf+0x48>
    162e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1630:	83 ec 0c             	sub    $0xc,%esp
    1633:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1638:	6a 01                	push   $0x1
    163a:	e9 73 ff ff ff       	jmp    15b2 <printf+0xf2>
    163f:	90                   	nop
  write(fd, &c, 1);
    1640:	83 ec 04             	sub    $0x4,%esp
    1643:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1646:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1649:	6a 01                	push   $0x1
    164b:	e9 21 ff ff ff       	jmp    1571 <printf+0xb1>
        putc(fd, *ap);
    1650:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1653:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1656:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1658:	6a 01                	push   $0x1
        ap++;
    165a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    165d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1660:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1663:	50                   	push   %eax
    1664:	ff 75 08             	pushl  0x8(%ebp)
    1667:	e8 16 fd ff ff       	call   1382 <write>
        ap++;
    166c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    166f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1672:	31 ff                	xor    %edi,%edi
    1674:	e9 8f fe ff ff       	jmp    1508 <printf+0x48>
          s = "(null)";
    1679:	bb 8c 18 00 00       	mov    $0x188c,%ebx
        while(*s != 0){
    167e:	b8 28 00 00 00       	mov    $0x28,%eax
    1683:	e9 72 ff ff ff       	jmp    15fa <printf+0x13a>
    1688:	66 90                	xchg   %ax,%ax
    168a:	66 90                	xchg   %ax,%ax
    168c:	66 90                	xchg   %ax,%ax
    168e:	66 90                	xchg   %ax,%ax

00001690 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1690:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1691:	a1 c0 1b 00 00       	mov    0x1bc0,%eax
{
    1696:	89 e5                	mov    %esp,%ebp
    1698:	57                   	push   %edi
    1699:	56                   	push   %esi
    169a:	53                   	push   %ebx
    169b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    169e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    16a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    16a8:	39 c8                	cmp    %ecx,%eax
    16aa:	8b 10                	mov    (%eax),%edx
    16ac:	73 32                	jae    16e0 <free+0x50>
    16ae:	39 d1                	cmp    %edx,%ecx
    16b0:	72 04                	jb     16b6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    16b2:	39 d0                	cmp    %edx,%eax
    16b4:	72 32                	jb     16e8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    16b6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    16b9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    16bc:	39 fa                	cmp    %edi,%edx
    16be:	74 30                	je     16f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    16c0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    16c3:	8b 50 04             	mov    0x4(%eax),%edx
    16c6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    16c9:	39 f1                	cmp    %esi,%ecx
    16cb:	74 3a                	je     1707 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    16cd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    16cf:	a3 c0 1b 00 00       	mov    %eax,0x1bc0
}
    16d4:	5b                   	pop    %ebx
    16d5:	5e                   	pop    %esi
    16d6:	5f                   	pop    %edi
    16d7:	5d                   	pop    %ebp
    16d8:	c3                   	ret    
    16d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    16e0:	39 d0                	cmp    %edx,%eax
    16e2:	72 04                	jb     16e8 <free+0x58>
    16e4:	39 d1                	cmp    %edx,%ecx
    16e6:	72 ce                	jb     16b6 <free+0x26>
{
    16e8:	89 d0                	mov    %edx,%eax
    16ea:	eb bc                	jmp    16a8 <free+0x18>
    16ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    16f0:	03 72 04             	add    0x4(%edx),%esi
    16f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    16f6:	8b 10                	mov    (%eax),%edx
    16f8:	8b 12                	mov    (%edx),%edx
    16fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    16fd:	8b 50 04             	mov    0x4(%eax),%edx
    1700:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1703:	39 f1                	cmp    %esi,%ecx
    1705:	75 c6                	jne    16cd <free+0x3d>
    p->s.size += bp->s.size;
    1707:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    170a:	a3 c0 1b 00 00       	mov    %eax,0x1bc0
    p->s.size += bp->s.size;
    170f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1712:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1715:	89 10                	mov    %edx,(%eax)
}
    1717:	5b                   	pop    %ebx
    1718:	5e                   	pop    %esi
    1719:	5f                   	pop    %edi
    171a:	5d                   	pop    %ebp
    171b:	c3                   	ret    
    171c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001720 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1720:	55                   	push   %ebp
    1721:	89 e5                	mov    %esp,%ebp
    1723:	57                   	push   %edi
    1724:	56                   	push   %esi
    1725:	53                   	push   %ebx
    1726:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1729:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    172c:	8b 15 c0 1b 00 00    	mov    0x1bc0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1732:	8d 78 07             	lea    0x7(%eax),%edi
    1735:	c1 ef 03             	shr    $0x3,%edi
    1738:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    173b:	85 d2                	test   %edx,%edx
    173d:	0f 84 9d 00 00 00    	je     17e0 <malloc+0xc0>
    1743:	8b 02                	mov    (%edx),%eax
    1745:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1748:	39 cf                	cmp    %ecx,%edi
    174a:	76 6c                	jbe    17b8 <malloc+0x98>
    174c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1752:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1757:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    175a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1761:	eb 0e                	jmp    1771 <malloc+0x51>
    1763:	90                   	nop
    1764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1768:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    176a:	8b 48 04             	mov    0x4(%eax),%ecx
    176d:	39 f9                	cmp    %edi,%ecx
    176f:	73 47                	jae    17b8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1771:	39 05 c0 1b 00 00    	cmp    %eax,0x1bc0
    1777:	89 c2                	mov    %eax,%edx
    1779:	75 ed                	jne    1768 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    177b:	83 ec 0c             	sub    $0xc,%esp
    177e:	56                   	push   %esi
    177f:	e8 66 fc ff ff       	call   13ea <sbrk>
  if(p == (char*)-1)
    1784:	83 c4 10             	add    $0x10,%esp
    1787:	83 f8 ff             	cmp    $0xffffffff,%eax
    178a:	74 1c                	je     17a8 <malloc+0x88>
  hp->s.size = nu;
    178c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    178f:	83 ec 0c             	sub    $0xc,%esp
    1792:	83 c0 08             	add    $0x8,%eax
    1795:	50                   	push   %eax
    1796:	e8 f5 fe ff ff       	call   1690 <free>
  return freep;
    179b:	8b 15 c0 1b 00 00    	mov    0x1bc0,%edx
      if((p = morecore(nunits)) == 0)
    17a1:	83 c4 10             	add    $0x10,%esp
    17a4:	85 d2                	test   %edx,%edx
    17a6:	75 c0                	jne    1768 <malloc+0x48>
        return 0;
  }
}
    17a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    17ab:	31 c0                	xor    %eax,%eax
}
    17ad:	5b                   	pop    %ebx
    17ae:	5e                   	pop    %esi
    17af:	5f                   	pop    %edi
    17b0:	5d                   	pop    %ebp
    17b1:	c3                   	ret    
    17b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    17b8:	39 cf                	cmp    %ecx,%edi
    17ba:	74 54                	je     1810 <malloc+0xf0>
        p->s.size -= nunits;
    17bc:	29 f9                	sub    %edi,%ecx
    17be:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    17c1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    17c4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    17c7:	89 15 c0 1b 00 00    	mov    %edx,0x1bc0
}
    17cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    17d0:	83 c0 08             	add    $0x8,%eax
}
    17d3:	5b                   	pop    %ebx
    17d4:	5e                   	pop    %esi
    17d5:	5f                   	pop    %edi
    17d6:	5d                   	pop    %ebp
    17d7:	c3                   	ret    
    17d8:	90                   	nop
    17d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    17e0:	c7 05 c0 1b 00 00 c4 	movl   $0x1bc4,0x1bc0
    17e7:	1b 00 00 
    17ea:	c7 05 c4 1b 00 00 c4 	movl   $0x1bc4,0x1bc4
    17f1:	1b 00 00 
    base.s.size = 0;
    17f4:	b8 c4 1b 00 00       	mov    $0x1bc4,%eax
    17f9:	c7 05 c8 1b 00 00 00 	movl   $0x0,0x1bc8
    1800:	00 00 00 
    1803:	e9 44 ff ff ff       	jmp    174c <malloc+0x2c>
    1808:	90                   	nop
    1809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1810:	8b 08                	mov    (%eax),%ecx
    1812:	89 0a                	mov    %ecx,(%edx)
    1814:	eb b1                	jmp    17c7 <malloc+0xa7>
    1816:	66 90                	xchg   %ax,%ax
    1818:	66 90                	xchg   %ax,%ax
    181a:	66 90                	xchg   %ax,%ax
    181c:	66 90                	xchg   %ax,%ax
    181e:	66 90                	xchg   %ax,%ax

00001820 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1820:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1821:	b9 01 00 00 00       	mov    $0x1,%ecx
    1826:	89 e5                	mov    %esp,%ebp
    1828:	8b 55 08             	mov    0x8(%ebp),%edx
    182b:	90                   	nop
    182c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1830:	89 c8                	mov    %ecx,%eax
    1832:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1835:	85 c0                	test   %eax,%eax
    1837:	75 f7                	jne    1830 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1839:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    183e:	5d                   	pop    %ebp
    183f:	c3                   	ret    

00001840 <urelease>:

void urelease (struct uspinlock *lk) {
    1840:	55                   	push   %ebp
    1841:	89 e5                	mov    %esp,%ebp
    1843:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1846:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    184b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1851:	5d                   	pop    %ebp
    1852:	c3                   	ret    
