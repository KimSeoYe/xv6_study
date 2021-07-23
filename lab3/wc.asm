
_wc:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
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
    1027:	7e 56                	jle    107f <main+0x7f>
    1029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wc(0, "");
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	6a 00                	push   $0x0
    1035:	ff 33                	pushl  (%ebx)
    1037:	e8 d6 03 00 00       	call   1412 <open>
    103c:	83 c4 10             	add    $0x10,%esp
    103f:	85 c0                	test   %eax,%eax
    1041:	89 c7                	mov    %eax,%edi
    1043:	78 26                	js     106b <main+0x6b>
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit();
    }
    wc(fd, argv[i]);
    1045:	83 ec 08             	sub    $0x8,%esp
    1048:	ff 33                	pushl  (%ebx)
  for(i = 1; i < argc; i++){
    104a:	83 c6 01             	add    $0x1,%esi
    wc(fd, argv[i]);
    104d:	50                   	push   %eax
    104e:	83 c3 04             	add    $0x4,%ebx
    1051:	e8 4a 00 00 00       	call   10a0 <wc>
    close(fd);
    1056:	89 3c 24             	mov    %edi,(%esp)
    1059:	e8 9c 03 00 00       	call   13fa <close>
  for(i = 1; i < argc; i++){
    105e:	83 c4 10             	add    $0x10,%esp
    1061:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    1064:	75 ca                	jne    1030 <main+0x30>
  }
  exit();
    1066:	e8 67 03 00 00       	call   13d2 <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
    106b:	50                   	push   %eax
    106c:	ff 33                	pushl  (%ebx)
    106e:	68 e7 18 00 00       	push   $0x18e7
    1073:	6a 01                	push   $0x1
    1075:	e8 b6 04 00 00       	call   1530 <printf>
      exit();
    107a:	e8 53 03 00 00       	call   13d2 <exit>
    wc(0, "");
    107f:	52                   	push   %edx
    1080:	52                   	push   %edx
    1081:	68 d9 18 00 00       	push   $0x18d9
    1086:	6a 00                	push   $0x0
    1088:	e8 13 00 00 00       	call   10a0 <wc>
    exit();
    108d:	e8 40 03 00 00       	call   13d2 <exit>
    1092:	66 90                	xchg   %ax,%ax
    1094:	66 90                	xchg   %ax,%ax
    1096:	66 90                	xchg   %ax,%ax
    1098:	66 90                	xchg   %ax,%ax
    109a:	66 90                	xchg   %ax,%ax
    109c:	66 90                	xchg   %ax,%ax
    109e:	66 90                	xchg   %ax,%ax

000010a0 <wc>:
{
    10a0:	55                   	push   %ebp
    10a1:	89 e5                	mov    %esp,%ebp
    10a3:	57                   	push   %edi
    10a4:	56                   	push   %esi
    10a5:	53                   	push   %ebx
  l = w = c = 0;
    10a6:	31 db                	xor    %ebx,%ebx
{
    10a8:	83 ec 1c             	sub    $0x1c,%esp
  inword = 0;
    10ab:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  l = w = c = 0;
    10b2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    10b9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  while((n = read(fd, buf, sizeof(buf))) > 0){
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	68 00 02 00 00       	push   $0x200
    10c8:	68 60 1c 00 00       	push   $0x1c60
    10cd:	ff 75 08             	pushl  0x8(%ebp)
    10d0:	e8 15 03 00 00       	call   13ea <read>
    10d5:	83 c4 10             	add    $0x10,%esp
    10d8:	83 f8 00             	cmp    $0x0,%eax
    10db:	89 c6                	mov    %eax,%esi
    10dd:	7e 61                	jle    1140 <wc+0xa0>
    for(i=0; i<n; i++){
    10df:	31 ff                	xor    %edi,%edi
    10e1:	eb 13                	jmp    10f6 <wc+0x56>
    10e3:	90                   	nop
    10e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        inword = 0;
    10e8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    for(i=0; i<n; i++){
    10ef:	83 c7 01             	add    $0x1,%edi
    10f2:	39 fe                	cmp    %edi,%esi
    10f4:	74 42                	je     1138 <wc+0x98>
      if(buf[i] == '\n')
    10f6:	0f be 87 60 1c 00 00 	movsbl 0x1c60(%edi),%eax
        l++;
    10fd:	31 c9                	xor    %ecx,%ecx
    10ff:	3c 0a                	cmp    $0xa,%al
    1101:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
    1104:	83 ec 08             	sub    $0x8,%esp
    1107:	50                   	push   %eax
    1108:	68 c4 18 00 00       	push   $0x18c4
        l++;
    110d:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
    110f:	e8 3c 01 00 00       	call   1250 <strchr>
    1114:	83 c4 10             	add    $0x10,%esp
    1117:	85 c0                	test   %eax,%eax
    1119:	75 cd                	jne    10e8 <wc+0x48>
      else if(!inword){
    111b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    111e:	85 d2                	test   %edx,%edx
    1120:	75 cd                	jne    10ef <wc+0x4f>
    for(i=0; i<n; i++){
    1122:	83 c7 01             	add    $0x1,%edi
        w++;
    1125:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
        inword = 1;
    1129:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    for(i=0; i<n; i++){
    1130:	39 fe                	cmp    %edi,%esi
    1132:	75 c2                	jne    10f6 <wc+0x56>
    1134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1138:	01 75 e0             	add    %esi,-0x20(%ebp)
    113b:	eb 83                	jmp    10c0 <wc+0x20>
    113d:	8d 76 00             	lea    0x0(%esi),%esi
  if(n < 0){
    1140:	75 24                	jne    1166 <wc+0xc6>
  printf(1, "%d %d %d %s\n", l, w, c, name);
    1142:	83 ec 08             	sub    $0x8,%esp
    1145:	ff 75 0c             	pushl  0xc(%ebp)
    1148:	ff 75 e0             	pushl  -0x20(%ebp)
    114b:	ff 75 dc             	pushl  -0x24(%ebp)
    114e:	53                   	push   %ebx
    114f:	68 da 18 00 00       	push   $0x18da
    1154:	6a 01                	push   $0x1
    1156:	e8 d5 03 00 00       	call   1530 <printf>
}
    115b:	83 c4 20             	add    $0x20,%esp
    115e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1161:	5b                   	pop    %ebx
    1162:	5e                   	pop    %esi
    1163:	5f                   	pop    %edi
    1164:	5d                   	pop    %ebp
    1165:	c3                   	ret    
    printf(1, "wc: read error\n");
    1166:	50                   	push   %eax
    1167:	50                   	push   %eax
    1168:	68 ca 18 00 00       	push   $0x18ca
    116d:	6a 01                	push   $0x1
    116f:	e8 bc 03 00 00       	call   1530 <printf>
    exit();
    1174:	e8 59 02 00 00       	call   13d2 <exit>
    1179:	66 90                	xchg   %ax,%ax
    117b:	66 90                	xchg   %ax,%ax
    117d:	66 90                	xchg   %ax,%ax
    117f:	90                   	nop

00001180 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1180:	55                   	push   %ebp
    1181:	89 e5                	mov    %esp,%ebp
    1183:	53                   	push   %ebx
    1184:	8b 45 08             	mov    0x8(%ebp),%eax
    1187:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    118a:	89 c2                	mov    %eax,%edx
    118c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1190:	83 c1 01             	add    $0x1,%ecx
    1193:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1197:	83 c2 01             	add    $0x1,%edx
    119a:	84 db                	test   %bl,%bl
    119c:	88 5a ff             	mov    %bl,-0x1(%edx)
    119f:	75 ef                	jne    1190 <strcpy+0x10>
    ;
  return os;
}
    11a1:	5b                   	pop    %ebx
    11a2:	5d                   	pop    %ebp
    11a3:	c3                   	ret    
    11a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000011b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    11b0:	55                   	push   %ebp
    11b1:	89 e5                	mov    %esp,%ebp
    11b3:	53                   	push   %ebx
    11b4:	8b 55 08             	mov    0x8(%ebp),%edx
    11b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    11ba:	0f b6 02             	movzbl (%edx),%eax
    11bd:	0f b6 19             	movzbl (%ecx),%ebx
    11c0:	84 c0                	test   %al,%al
    11c2:	75 1c                	jne    11e0 <strcmp+0x30>
    11c4:	eb 2a                	jmp    11f0 <strcmp+0x40>
    11c6:	8d 76 00             	lea    0x0(%esi),%esi
    11c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    11d0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11d3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    11d6:	83 c1 01             	add    $0x1,%ecx
    11d9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    11dc:	84 c0                	test   %al,%al
    11de:	74 10                	je     11f0 <strcmp+0x40>
    11e0:	38 d8                	cmp    %bl,%al
    11e2:	74 ec                	je     11d0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11e4:	29 d8                	sub    %ebx,%eax
}
    11e6:	5b                   	pop    %ebx
    11e7:	5d                   	pop    %ebp
    11e8:	c3                   	ret    
    11e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11f0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11f2:	29 d8                	sub    %ebx,%eax
}
    11f4:	5b                   	pop    %ebx
    11f5:	5d                   	pop    %ebp
    11f6:	c3                   	ret    
    11f7:	89 f6                	mov    %esi,%esi
    11f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001200 <strlen>:

uint
strlen(char *s)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    1206:	80 39 00             	cmpb   $0x0,(%ecx)
    1209:	74 15                	je     1220 <strlen+0x20>
    120b:	31 d2                	xor    %edx,%edx
    120d:	8d 76 00             	lea    0x0(%esi),%esi
    1210:	83 c2 01             	add    $0x1,%edx
    1213:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    1217:	89 d0                	mov    %edx,%eax
    1219:	75 f5                	jne    1210 <strlen+0x10>
    ;
  return n;
}
    121b:	5d                   	pop    %ebp
    121c:	c3                   	ret    
    121d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    1220:	31 c0                	xor    %eax,%eax
}
    1222:	5d                   	pop    %ebp
    1223:	c3                   	ret    
    1224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    122a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001230 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	57                   	push   %edi
    1234:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1237:	8b 4d 10             	mov    0x10(%ebp),%ecx
    123a:	8b 45 0c             	mov    0xc(%ebp),%eax
    123d:	89 d7                	mov    %edx,%edi
    123f:	fc                   	cld    
    1240:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1242:	89 d0                	mov    %edx,%eax
    1244:	5f                   	pop    %edi
    1245:	5d                   	pop    %ebp
    1246:	c3                   	ret    
    1247:	89 f6                	mov    %esi,%esi
    1249:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001250 <strchr>:

char*
strchr(const char *s, char c)
{
    1250:	55                   	push   %ebp
    1251:	89 e5                	mov    %esp,%ebp
    1253:	53                   	push   %ebx
    1254:	8b 45 08             	mov    0x8(%ebp),%eax
    1257:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    125a:	0f b6 10             	movzbl (%eax),%edx
    125d:	84 d2                	test   %dl,%dl
    125f:	74 1d                	je     127e <strchr+0x2e>
    if(*s == c)
    1261:	38 d3                	cmp    %dl,%bl
    1263:	89 d9                	mov    %ebx,%ecx
    1265:	75 0d                	jne    1274 <strchr+0x24>
    1267:	eb 17                	jmp    1280 <strchr+0x30>
    1269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1270:	38 ca                	cmp    %cl,%dl
    1272:	74 0c                	je     1280 <strchr+0x30>
  for(; *s; s++)
    1274:	83 c0 01             	add    $0x1,%eax
    1277:	0f b6 10             	movzbl (%eax),%edx
    127a:	84 d2                	test   %dl,%dl
    127c:	75 f2                	jne    1270 <strchr+0x20>
      return (char*)s;
  return 0;
    127e:	31 c0                	xor    %eax,%eax
}
    1280:	5b                   	pop    %ebx
    1281:	5d                   	pop    %ebp
    1282:	c3                   	ret    
    1283:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001290 <gets>:

char*
gets(char *buf, int max)
{
    1290:	55                   	push   %ebp
    1291:	89 e5                	mov    %esp,%ebp
    1293:	57                   	push   %edi
    1294:	56                   	push   %esi
    1295:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1296:	31 f6                	xor    %esi,%esi
    1298:	89 f3                	mov    %esi,%ebx
{
    129a:	83 ec 1c             	sub    $0x1c,%esp
    129d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    12a0:	eb 2f                	jmp    12d1 <gets+0x41>
    12a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    12a8:	8d 45 e7             	lea    -0x19(%ebp),%eax
    12ab:	83 ec 04             	sub    $0x4,%esp
    12ae:	6a 01                	push   $0x1
    12b0:	50                   	push   %eax
    12b1:	6a 00                	push   $0x0
    12b3:	e8 32 01 00 00       	call   13ea <read>
    if(cc < 1)
    12b8:	83 c4 10             	add    $0x10,%esp
    12bb:	85 c0                	test   %eax,%eax
    12bd:	7e 1c                	jle    12db <gets+0x4b>
      break;
    buf[i++] = c;
    12bf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    12c3:	83 c7 01             	add    $0x1,%edi
    12c6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    12c9:	3c 0a                	cmp    $0xa,%al
    12cb:	74 23                	je     12f0 <gets+0x60>
    12cd:	3c 0d                	cmp    $0xd,%al
    12cf:	74 1f                	je     12f0 <gets+0x60>
  for(i=0; i+1 < max; ){
    12d1:	83 c3 01             	add    $0x1,%ebx
    12d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    12d7:	89 fe                	mov    %edi,%esi
    12d9:	7c cd                	jl     12a8 <gets+0x18>
    12db:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    12dd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12e0:	c6 03 00             	movb   $0x0,(%ebx)
}
    12e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12e6:	5b                   	pop    %ebx
    12e7:	5e                   	pop    %esi
    12e8:	5f                   	pop    %edi
    12e9:	5d                   	pop    %ebp
    12ea:	c3                   	ret    
    12eb:	90                   	nop
    12ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12f0:	8b 75 08             	mov    0x8(%ebp),%esi
    12f3:	8b 45 08             	mov    0x8(%ebp),%eax
    12f6:	01 de                	add    %ebx,%esi
    12f8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12fa:	c6 03 00             	movb   $0x0,(%ebx)
}
    12fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1300:	5b                   	pop    %ebx
    1301:	5e                   	pop    %esi
    1302:	5f                   	pop    %edi
    1303:	5d                   	pop    %ebp
    1304:	c3                   	ret    
    1305:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001310 <stat>:

int
stat(char *n, struct stat *st)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	56                   	push   %esi
    1314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1315:	83 ec 08             	sub    $0x8,%esp
    1318:	6a 00                	push   $0x0
    131a:	ff 75 08             	pushl  0x8(%ebp)
    131d:	e8 f0 00 00 00       	call   1412 <open>
  if(fd < 0)
    1322:	83 c4 10             	add    $0x10,%esp
    1325:	85 c0                	test   %eax,%eax
    1327:	78 27                	js     1350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    1329:	83 ec 08             	sub    $0x8,%esp
    132c:	ff 75 0c             	pushl  0xc(%ebp)
    132f:	89 c3                	mov    %eax,%ebx
    1331:	50                   	push   %eax
    1332:	e8 f3 00 00 00       	call   142a <fstat>
  close(fd);
    1337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    133a:	89 c6                	mov    %eax,%esi
  close(fd);
    133c:	e8 b9 00 00 00       	call   13fa <close>
  return r;
    1341:	83 c4 10             	add    $0x10,%esp
}
    1344:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1347:	89 f0                	mov    %esi,%eax
    1349:	5b                   	pop    %ebx
    134a:	5e                   	pop    %esi
    134b:	5d                   	pop    %ebp
    134c:	c3                   	ret    
    134d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1350:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1355:	eb ed                	jmp    1344 <stat+0x34>
    1357:	89 f6                	mov    %esi,%esi
    1359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001360 <atoi>:

int
atoi(const char *s)
{
    1360:	55                   	push   %ebp
    1361:	89 e5                	mov    %esp,%ebp
    1363:	53                   	push   %ebx
    1364:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1367:	0f be 11             	movsbl (%ecx),%edx
    136a:	8d 42 d0             	lea    -0x30(%edx),%eax
    136d:	3c 09                	cmp    $0x9,%al
  n = 0;
    136f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1374:	77 1f                	ja     1395 <atoi+0x35>
    1376:	8d 76 00             	lea    0x0(%esi),%esi
    1379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1380:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1383:	83 c1 01             	add    $0x1,%ecx
    1386:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    138a:	0f be 11             	movsbl (%ecx),%edx
    138d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1390:	80 fb 09             	cmp    $0x9,%bl
    1393:	76 eb                	jbe    1380 <atoi+0x20>
  return n;
}
    1395:	5b                   	pop    %ebx
    1396:	5d                   	pop    %ebp
    1397:	c3                   	ret    
    1398:	90                   	nop
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000013a0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    13a0:	55                   	push   %ebp
    13a1:	89 e5                	mov    %esp,%ebp
    13a3:	56                   	push   %esi
    13a4:	53                   	push   %ebx
    13a5:	8b 5d 10             	mov    0x10(%ebp),%ebx
    13a8:	8b 45 08             	mov    0x8(%ebp),%eax
    13ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13ae:	85 db                	test   %ebx,%ebx
    13b0:	7e 14                	jle    13c6 <memmove+0x26>
    13b2:	31 d2                	xor    %edx,%edx
    13b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    13b8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    13bc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    13bf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    13c2:	39 d3                	cmp    %edx,%ebx
    13c4:	75 f2                	jne    13b8 <memmove+0x18>
  return vdst;
}
    13c6:	5b                   	pop    %ebx
    13c7:	5e                   	pop    %esi
    13c8:	5d                   	pop    %ebp
    13c9:	c3                   	ret    

000013ca <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    13ca:	b8 01 00 00 00       	mov    $0x1,%eax
    13cf:	cd 40                	int    $0x40
    13d1:	c3                   	ret    

000013d2 <exit>:
SYSCALL(exit)
    13d2:	b8 02 00 00 00       	mov    $0x2,%eax
    13d7:	cd 40                	int    $0x40
    13d9:	c3                   	ret    

000013da <wait>:
SYSCALL(wait)
    13da:	b8 03 00 00 00       	mov    $0x3,%eax
    13df:	cd 40                	int    $0x40
    13e1:	c3                   	ret    

000013e2 <pipe>:
SYSCALL(pipe)
    13e2:	b8 04 00 00 00       	mov    $0x4,%eax
    13e7:	cd 40                	int    $0x40
    13e9:	c3                   	ret    

000013ea <read>:
SYSCALL(read)
    13ea:	b8 05 00 00 00       	mov    $0x5,%eax
    13ef:	cd 40                	int    $0x40
    13f1:	c3                   	ret    

000013f2 <write>:
SYSCALL(write)
    13f2:	b8 10 00 00 00       	mov    $0x10,%eax
    13f7:	cd 40                	int    $0x40
    13f9:	c3                   	ret    

000013fa <close>:
SYSCALL(close)
    13fa:	b8 15 00 00 00       	mov    $0x15,%eax
    13ff:	cd 40                	int    $0x40
    1401:	c3                   	ret    

00001402 <kill>:
SYSCALL(kill)
    1402:	b8 06 00 00 00       	mov    $0x6,%eax
    1407:	cd 40                	int    $0x40
    1409:	c3                   	ret    

0000140a <exec>:
SYSCALL(exec)
    140a:	b8 07 00 00 00       	mov    $0x7,%eax
    140f:	cd 40                	int    $0x40
    1411:	c3                   	ret    

00001412 <open>:
SYSCALL(open)
    1412:	b8 0f 00 00 00       	mov    $0xf,%eax
    1417:	cd 40                	int    $0x40
    1419:	c3                   	ret    

0000141a <mknod>:
SYSCALL(mknod)
    141a:	b8 11 00 00 00       	mov    $0x11,%eax
    141f:	cd 40                	int    $0x40
    1421:	c3                   	ret    

00001422 <unlink>:
SYSCALL(unlink)
    1422:	b8 12 00 00 00       	mov    $0x12,%eax
    1427:	cd 40                	int    $0x40
    1429:	c3                   	ret    

0000142a <fstat>:
SYSCALL(fstat)
    142a:	b8 08 00 00 00       	mov    $0x8,%eax
    142f:	cd 40                	int    $0x40
    1431:	c3                   	ret    

00001432 <link>:
SYSCALL(link)
    1432:	b8 13 00 00 00       	mov    $0x13,%eax
    1437:	cd 40                	int    $0x40
    1439:	c3                   	ret    

0000143a <mkdir>:
SYSCALL(mkdir)
    143a:	b8 14 00 00 00       	mov    $0x14,%eax
    143f:	cd 40                	int    $0x40
    1441:	c3                   	ret    

00001442 <chdir>:
SYSCALL(chdir)
    1442:	b8 09 00 00 00       	mov    $0x9,%eax
    1447:	cd 40                	int    $0x40
    1449:	c3                   	ret    

0000144a <dup>:
SYSCALL(dup)
    144a:	b8 0a 00 00 00       	mov    $0xa,%eax
    144f:	cd 40                	int    $0x40
    1451:	c3                   	ret    

00001452 <getpid>:
SYSCALL(getpid)
    1452:	b8 0b 00 00 00       	mov    $0xb,%eax
    1457:	cd 40                	int    $0x40
    1459:	c3                   	ret    

0000145a <sbrk>:
SYSCALL(sbrk)
    145a:	b8 0c 00 00 00       	mov    $0xc,%eax
    145f:	cd 40                	int    $0x40
    1461:	c3                   	ret    

00001462 <sleep>:
SYSCALL(sleep)
    1462:	b8 0d 00 00 00       	mov    $0xd,%eax
    1467:	cd 40                	int    $0x40
    1469:	c3                   	ret    

0000146a <uptime>:
SYSCALL(uptime)
    146a:	b8 0e 00 00 00       	mov    $0xe,%eax
    146f:	cd 40                	int    $0x40
    1471:	c3                   	ret    

00001472 <shm_open>:
SYSCALL(shm_open)
    1472:	b8 16 00 00 00       	mov    $0x16,%eax
    1477:	cd 40                	int    $0x40
    1479:	c3                   	ret    

0000147a <shm_close>:
SYSCALL(shm_close)	
    147a:	b8 17 00 00 00       	mov    $0x17,%eax
    147f:	cd 40                	int    $0x40
    1481:	c3                   	ret    
    1482:	66 90                	xchg   %ax,%ax
    1484:	66 90                	xchg   %ax,%ax
    1486:	66 90                	xchg   %ax,%ax
    1488:	66 90                	xchg   %ax,%ax
    148a:	66 90                	xchg   %ax,%ax
    148c:	66 90                	xchg   %ax,%ax
    148e:	66 90                	xchg   %ax,%ax

00001490 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1490:	55                   	push   %ebp
    1491:	89 e5                	mov    %esp,%ebp
    1493:	57                   	push   %edi
    1494:	56                   	push   %esi
    1495:	53                   	push   %ebx
    1496:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1499:	85 d2                	test   %edx,%edx
{
    149b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    149e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    14a0:	79 76                	jns    1518 <printint+0x88>
    14a2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    14a6:	74 70                	je     1518 <printint+0x88>
    x = -xx;
    14a8:	f7 d8                	neg    %eax
    neg = 1;
    14aa:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    14b1:	31 f6                	xor    %esi,%esi
    14b3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    14b6:	eb 0a                	jmp    14c2 <printint+0x32>
    14b8:	90                   	nop
    14b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    14c0:	89 fe                	mov    %edi,%esi
    14c2:	31 d2                	xor    %edx,%edx
    14c4:	8d 7e 01             	lea    0x1(%esi),%edi
    14c7:	f7 f1                	div    %ecx
    14c9:	0f b6 92 04 19 00 00 	movzbl 0x1904(%edx),%edx
  }while((x /= base) != 0);
    14d0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    14d2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    14d5:	75 e9                	jne    14c0 <printint+0x30>
  if(neg)
    14d7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    14da:	85 c0                	test   %eax,%eax
    14dc:	74 08                	je     14e6 <printint+0x56>
    buf[i++] = '-';
    14de:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    14e3:	8d 7e 02             	lea    0x2(%esi),%edi
    14e6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    14ea:	8b 7d c0             	mov    -0x40(%ebp),%edi
    14ed:	8d 76 00             	lea    0x0(%esi),%esi
    14f0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    14f3:	83 ec 04             	sub    $0x4,%esp
    14f6:	83 ee 01             	sub    $0x1,%esi
    14f9:	6a 01                	push   $0x1
    14fb:	53                   	push   %ebx
    14fc:	57                   	push   %edi
    14fd:	88 45 d7             	mov    %al,-0x29(%ebp)
    1500:	e8 ed fe ff ff       	call   13f2 <write>

  while(--i >= 0)
    1505:	83 c4 10             	add    $0x10,%esp
    1508:	39 de                	cmp    %ebx,%esi
    150a:	75 e4                	jne    14f0 <printint+0x60>
    putc(fd, buf[i]);
}
    150c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    150f:	5b                   	pop    %ebx
    1510:	5e                   	pop    %esi
    1511:	5f                   	pop    %edi
    1512:	5d                   	pop    %ebp
    1513:	c3                   	ret    
    1514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1518:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    151f:	eb 90                	jmp    14b1 <printint+0x21>
    1521:	eb 0d                	jmp    1530 <printf>
    1523:	90                   	nop
    1524:	90                   	nop
    1525:	90                   	nop
    1526:	90                   	nop
    1527:	90                   	nop
    1528:	90                   	nop
    1529:	90                   	nop
    152a:	90                   	nop
    152b:	90                   	nop
    152c:	90                   	nop
    152d:	90                   	nop
    152e:	90                   	nop
    152f:	90                   	nop

00001530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1530:	55                   	push   %ebp
    1531:	89 e5                	mov    %esp,%ebp
    1533:	57                   	push   %edi
    1534:	56                   	push   %esi
    1535:	53                   	push   %ebx
    1536:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1539:	8b 75 0c             	mov    0xc(%ebp),%esi
    153c:	0f b6 1e             	movzbl (%esi),%ebx
    153f:	84 db                	test   %bl,%bl
    1541:	0f 84 b3 00 00 00    	je     15fa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    1547:	8d 45 10             	lea    0x10(%ebp),%eax
    154a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    154d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    154f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1552:	eb 2f                	jmp    1583 <printf+0x53>
    1554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1558:	83 f8 25             	cmp    $0x25,%eax
    155b:	0f 84 a7 00 00 00    	je     1608 <printf+0xd8>
  write(fd, &c, 1);
    1561:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1564:	83 ec 04             	sub    $0x4,%esp
    1567:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    156a:	6a 01                	push   $0x1
    156c:	50                   	push   %eax
    156d:	ff 75 08             	pushl  0x8(%ebp)
    1570:	e8 7d fe ff ff       	call   13f2 <write>
    1575:	83 c4 10             	add    $0x10,%esp
    1578:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    157b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    157f:	84 db                	test   %bl,%bl
    1581:	74 77                	je     15fa <printf+0xca>
    if(state == 0){
    1583:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1585:	0f be cb             	movsbl %bl,%ecx
    1588:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    158b:	74 cb                	je     1558 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    158d:	83 ff 25             	cmp    $0x25,%edi
    1590:	75 e6                	jne    1578 <printf+0x48>
      if(c == 'd'){
    1592:	83 f8 64             	cmp    $0x64,%eax
    1595:	0f 84 05 01 00 00    	je     16a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    159b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    15a1:	83 f9 70             	cmp    $0x70,%ecx
    15a4:	74 72                	je     1618 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    15a6:	83 f8 73             	cmp    $0x73,%eax
    15a9:	0f 84 99 00 00 00    	je     1648 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    15af:	83 f8 63             	cmp    $0x63,%eax
    15b2:	0f 84 08 01 00 00    	je     16c0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    15b8:	83 f8 25             	cmp    $0x25,%eax
    15bb:	0f 84 ef 00 00 00    	je     16b0 <printf+0x180>
  write(fd, &c, 1);
    15c1:	8d 45 e7             	lea    -0x19(%ebp),%eax
    15c4:	83 ec 04             	sub    $0x4,%esp
    15c7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    15cb:	6a 01                	push   $0x1
    15cd:	50                   	push   %eax
    15ce:	ff 75 08             	pushl  0x8(%ebp)
    15d1:	e8 1c fe ff ff       	call   13f2 <write>
    15d6:	83 c4 0c             	add    $0xc,%esp
    15d9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    15dc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    15df:	6a 01                	push   $0x1
    15e1:	50                   	push   %eax
    15e2:	ff 75 08             	pushl  0x8(%ebp)
    15e5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    15e8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    15ea:	e8 03 fe ff ff       	call   13f2 <write>
  for(i = 0; fmt[i]; i++){
    15ef:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    15f3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    15f6:	84 db                	test   %bl,%bl
    15f8:	75 89                	jne    1583 <printf+0x53>
    }
  }
}
    15fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    15fd:	5b                   	pop    %ebx
    15fe:	5e                   	pop    %esi
    15ff:	5f                   	pop    %edi
    1600:	5d                   	pop    %ebp
    1601:	c3                   	ret    
    1602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1608:	bf 25 00 00 00       	mov    $0x25,%edi
    160d:	e9 66 ff ff ff       	jmp    1578 <printf+0x48>
    1612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1618:	83 ec 0c             	sub    $0xc,%esp
    161b:	b9 10 00 00 00       	mov    $0x10,%ecx
    1620:	6a 00                	push   $0x0
    1622:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1625:	8b 45 08             	mov    0x8(%ebp),%eax
    1628:	8b 17                	mov    (%edi),%edx
    162a:	e8 61 fe ff ff       	call   1490 <printint>
        ap++;
    162f:	89 f8                	mov    %edi,%eax
    1631:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1634:	31 ff                	xor    %edi,%edi
        ap++;
    1636:	83 c0 04             	add    $0x4,%eax
    1639:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    163c:	e9 37 ff ff ff       	jmp    1578 <printf+0x48>
    1641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1648:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    164b:	8b 08                	mov    (%eax),%ecx
        ap++;
    164d:	83 c0 04             	add    $0x4,%eax
    1650:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1653:	85 c9                	test   %ecx,%ecx
    1655:	0f 84 8e 00 00 00    	je     16e9 <printf+0x1b9>
        while(*s != 0){
    165b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    165e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1660:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1662:	84 c0                	test   %al,%al
    1664:	0f 84 0e ff ff ff    	je     1578 <printf+0x48>
    166a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    166d:	89 de                	mov    %ebx,%esi
    166f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1672:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1675:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1678:	83 ec 04             	sub    $0x4,%esp
          s++;
    167b:	83 c6 01             	add    $0x1,%esi
    167e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1681:	6a 01                	push   $0x1
    1683:	57                   	push   %edi
    1684:	53                   	push   %ebx
    1685:	e8 68 fd ff ff       	call   13f2 <write>
        while(*s != 0){
    168a:	0f b6 06             	movzbl (%esi),%eax
    168d:	83 c4 10             	add    $0x10,%esp
    1690:	84 c0                	test   %al,%al
    1692:	75 e4                	jne    1678 <printf+0x148>
    1694:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1697:	31 ff                	xor    %edi,%edi
    1699:	e9 da fe ff ff       	jmp    1578 <printf+0x48>
    169e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    16a0:	83 ec 0c             	sub    $0xc,%esp
    16a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    16a8:	6a 01                	push   $0x1
    16aa:	e9 73 ff ff ff       	jmp    1622 <printf+0xf2>
    16af:	90                   	nop
  write(fd, &c, 1);
    16b0:	83 ec 04             	sub    $0x4,%esp
    16b3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    16b6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    16b9:	6a 01                	push   $0x1
    16bb:	e9 21 ff ff ff       	jmp    15e1 <printf+0xb1>
        putc(fd, *ap);
    16c0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    16c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    16c6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    16c8:	6a 01                	push   $0x1
        ap++;
    16ca:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    16cd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    16d0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    16d3:	50                   	push   %eax
    16d4:	ff 75 08             	pushl  0x8(%ebp)
    16d7:	e8 16 fd ff ff       	call   13f2 <write>
        ap++;
    16dc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    16df:	83 c4 10             	add    $0x10,%esp
      state = 0;
    16e2:	31 ff                	xor    %edi,%edi
    16e4:	e9 8f fe ff ff       	jmp    1578 <printf+0x48>
          s = "(null)";
    16e9:	bb fb 18 00 00       	mov    $0x18fb,%ebx
        while(*s != 0){
    16ee:	b8 28 00 00 00       	mov    $0x28,%eax
    16f3:	e9 72 ff ff ff       	jmp    166a <printf+0x13a>
    16f8:	66 90                	xchg   %ax,%ax
    16fa:	66 90                	xchg   %ax,%ax
    16fc:	66 90                	xchg   %ax,%ax
    16fe:	66 90                	xchg   %ax,%ax

00001700 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1700:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1701:	a1 40 1c 00 00       	mov    0x1c40,%eax
{
    1706:	89 e5                	mov    %esp,%ebp
    1708:	57                   	push   %edi
    1709:	56                   	push   %esi
    170a:	53                   	push   %ebx
    170b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    170e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1718:	39 c8                	cmp    %ecx,%eax
    171a:	8b 10                	mov    (%eax),%edx
    171c:	73 32                	jae    1750 <free+0x50>
    171e:	39 d1                	cmp    %edx,%ecx
    1720:	72 04                	jb     1726 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1722:	39 d0                	cmp    %edx,%eax
    1724:	72 32                	jb     1758 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1726:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1729:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    172c:	39 fa                	cmp    %edi,%edx
    172e:	74 30                	je     1760 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1730:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1733:	8b 50 04             	mov    0x4(%eax),%edx
    1736:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1739:	39 f1                	cmp    %esi,%ecx
    173b:	74 3a                	je     1777 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    173d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    173f:	a3 40 1c 00 00       	mov    %eax,0x1c40
}
    1744:	5b                   	pop    %ebx
    1745:	5e                   	pop    %esi
    1746:	5f                   	pop    %edi
    1747:	5d                   	pop    %ebp
    1748:	c3                   	ret    
    1749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1750:	39 d0                	cmp    %edx,%eax
    1752:	72 04                	jb     1758 <free+0x58>
    1754:	39 d1                	cmp    %edx,%ecx
    1756:	72 ce                	jb     1726 <free+0x26>
{
    1758:	89 d0                	mov    %edx,%eax
    175a:	eb bc                	jmp    1718 <free+0x18>
    175c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1760:	03 72 04             	add    0x4(%edx),%esi
    1763:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1766:	8b 10                	mov    (%eax),%edx
    1768:	8b 12                	mov    (%edx),%edx
    176a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    176d:	8b 50 04             	mov    0x4(%eax),%edx
    1770:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1773:	39 f1                	cmp    %esi,%ecx
    1775:	75 c6                	jne    173d <free+0x3d>
    p->s.size += bp->s.size;
    1777:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    177a:	a3 40 1c 00 00       	mov    %eax,0x1c40
    p->s.size += bp->s.size;
    177f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1782:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1785:	89 10                	mov    %edx,(%eax)
}
    1787:	5b                   	pop    %ebx
    1788:	5e                   	pop    %esi
    1789:	5f                   	pop    %edi
    178a:	5d                   	pop    %ebp
    178b:	c3                   	ret    
    178c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001790 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1790:	55                   	push   %ebp
    1791:	89 e5                	mov    %esp,%ebp
    1793:	57                   	push   %edi
    1794:	56                   	push   %esi
    1795:	53                   	push   %ebx
    1796:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1799:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    179c:	8b 15 40 1c 00 00    	mov    0x1c40,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    17a2:	8d 78 07             	lea    0x7(%eax),%edi
    17a5:	c1 ef 03             	shr    $0x3,%edi
    17a8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    17ab:	85 d2                	test   %edx,%edx
    17ad:	0f 84 9d 00 00 00    	je     1850 <malloc+0xc0>
    17b3:	8b 02                	mov    (%edx),%eax
    17b5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    17b8:	39 cf                	cmp    %ecx,%edi
    17ba:	76 6c                	jbe    1828 <malloc+0x98>
    17bc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    17c2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    17c7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    17ca:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    17d1:	eb 0e                	jmp    17e1 <malloc+0x51>
    17d3:	90                   	nop
    17d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    17d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    17da:	8b 48 04             	mov    0x4(%eax),%ecx
    17dd:	39 f9                	cmp    %edi,%ecx
    17df:	73 47                	jae    1828 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    17e1:	39 05 40 1c 00 00    	cmp    %eax,0x1c40
    17e7:	89 c2                	mov    %eax,%edx
    17e9:	75 ed                	jne    17d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    17eb:	83 ec 0c             	sub    $0xc,%esp
    17ee:	56                   	push   %esi
    17ef:	e8 66 fc ff ff       	call   145a <sbrk>
  if(p == (char*)-1)
    17f4:	83 c4 10             	add    $0x10,%esp
    17f7:	83 f8 ff             	cmp    $0xffffffff,%eax
    17fa:	74 1c                	je     1818 <malloc+0x88>
  hp->s.size = nu;
    17fc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    17ff:	83 ec 0c             	sub    $0xc,%esp
    1802:	83 c0 08             	add    $0x8,%eax
    1805:	50                   	push   %eax
    1806:	e8 f5 fe ff ff       	call   1700 <free>
  return freep;
    180b:	8b 15 40 1c 00 00    	mov    0x1c40,%edx
      if((p = morecore(nunits)) == 0)
    1811:	83 c4 10             	add    $0x10,%esp
    1814:	85 d2                	test   %edx,%edx
    1816:	75 c0                	jne    17d8 <malloc+0x48>
        return 0;
  }
}
    1818:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    181b:	31 c0                	xor    %eax,%eax
}
    181d:	5b                   	pop    %ebx
    181e:	5e                   	pop    %esi
    181f:	5f                   	pop    %edi
    1820:	5d                   	pop    %ebp
    1821:	c3                   	ret    
    1822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1828:	39 cf                	cmp    %ecx,%edi
    182a:	74 54                	je     1880 <malloc+0xf0>
        p->s.size -= nunits;
    182c:	29 f9                	sub    %edi,%ecx
    182e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1831:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1834:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1837:	89 15 40 1c 00 00    	mov    %edx,0x1c40
}
    183d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1840:	83 c0 08             	add    $0x8,%eax
}
    1843:	5b                   	pop    %ebx
    1844:	5e                   	pop    %esi
    1845:	5f                   	pop    %edi
    1846:	5d                   	pop    %ebp
    1847:	c3                   	ret    
    1848:	90                   	nop
    1849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1850:	c7 05 40 1c 00 00 44 	movl   $0x1c44,0x1c40
    1857:	1c 00 00 
    185a:	c7 05 44 1c 00 00 44 	movl   $0x1c44,0x1c44
    1861:	1c 00 00 
    base.s.size = 0;
    1864:	b8 44 1c 00 00       	mov    $0x1c44,%eax
    1869:	c7 05 48 1c 00 00 00 	movl   $0x0,0x1c48
    1870:	00 00 00 
    1873:	e9 44 ff ff ff       	jmp    17bc <malloc+0x2c>
    1878:	90                   	nop
    1879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1880:	8b 08                	mov    (%eax),%ecx
    1882:	89 0a                	mov    %ecx,(%edx)
    1884:	eb b1                	jmp    1837 <malloc+0xa7>
    1886:	66 90                	xchg   %ax,%ax
    1888:	66 90                	xchg   %ax,%ax
    188a:	66 90                	xchg   %ax,%ax
    188c:	66 90                	xchg   %ax,%ax
    188e:	66 90                	xchg   %ax,%ax

00001890 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1890:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1891:	b9 01 00 00 00       	mov    $0x1,%ecx
    1896:	89 e5                	mov    %esp,%ebp
    1898:	8b 55 08             	mov    0x8(%ebp),%edx
    189b:	90                   	nop
    189c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    18a0:	89 c8                	mov    %ecx,%eax
    18a2:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    18a5:	85 c0                	test   %eax,%eax
    18a7:	75 f7                	jne    18a0 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    18a9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    18ae:	5d                   	pop    %ebp
    18af:	c3                   	ret    

000018b0 <urelease>:

void urelease (struct uspinlock *lk) {
    18b0:	55                   	push   %ebp
    18b1:	89 e5                	mov    %esp,%ebp
    18b3:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    18b6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    18bb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    18c1:	5d                   	pop    %ebp
    18c2:	c3                   	ret    
