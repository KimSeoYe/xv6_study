
_grep:     file format elf32-i386


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
    1011:	83 ec 18             	sub    $0x18,%esp
    1014:	8b 39                	mov    (%ecx),%edi
    1016:	8b 59 04             	mov    0x4(%ecx),%ebx
  int fd, i;
  char *pattern;

  if(argc <= 1){
    1019:	83 ff 01             	cmp    $0x1,%edi
    101c:	7e 7c                	jle    109a <main+0x9a>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
    101e:	8b 43 04             	mov    0x4(%ebx),%eax
    1021:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
    1024:	83 ff 02             	cmp    $0x2,%edi
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
    1027:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
    102c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
    102f:	74 46                	je     1077 <main+0x77>
    1031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if((fd = open(argv[i], 0)) < 0){
    1038:	83 ec 08             	sub    $0x8,%esp
    103b:	6a 00                	push   $0x0
    103d:	ff 33                	pushl  (%ebx)
    103f:	e8 7e 05 00 00       	call   15c2 <open>
    1044:	83 c4 10             	add    $0x10,%esp
    1047:	85 c0                	test   %eax,%eax
    1049:	78 3b                	js     1086 <main+0x86>
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
    104b:	83 ec 08             	sub    $0x8,%esp
    104e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  for(i = 2; i < argc; i++){
    1051:	83 c6 01             	add    $0x1,%esi
    grep(pattern, fd);
    1054:	50                   	push   %eax
    1055:	ff 75 e0             	pushl  -0x20(%ebp)
    1058:	83 c3 04             	add    $0x4,%ebx
    105b:	e8 d0 01 00 00       	call   1230 <grep>
    close(fd);
    1060:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1063:	89 04 24             	mov    %eax,(%esp)
    1066:	e8 3f 05 00 00       	call   15aa <close>
  for(i = 2; i < argc; i++){
    106b:	83 c4 10             	add    $0x10,%esp
    106e:	39 f7                	cmp    %esi,%edi
    1070:	7f c6                	jg     1038 <main+0x38>
  }
  exit();
    1072:	e8 0b 05 00 00       	call   1582 <exit>
    grep(pattern, 0);
    1077:	52                   	push   %edx
    1078:	52                   	push   %edx
    1079:	6a 00                	push   $0x0
    107b:	50                   	push   %eax
    107c:	e8 af 01 00 00       	call   1230 <grep>
    exit();
    1081:	e8 fc 04 00 00       	call   1582 <exit>
      printf(1, "grep: cannot open %s\n", argv[i]);
    1086:	50                   	push   %eax
    1087:	ff 33                	pushl  (%ebx)
    1089:	68 94 1a 00 00       	push   $0x1a94
    108e:	6a 01                	push   $0x1
    1090:	e8 4b 06 00 00       	call   16e0 <printf>
      exit();
    1095:	e8 e8 04 00 00       	call   1582 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
    109a:	51                   	push   %ecx
    109b:	51                   	push   %ecx
    109c:	68 74 1a 00 00       	push   $0x1a74
    10a1:	6a 02                	push   $0x2
    10a3:	e8 38 06 00 00       	call   16e0 <printf>
    exit();
    10a8:	e8 d5 04 00 00       	call   1582 <exit>
    10ad:	66 90                	xchg   %ax,%ax
    10af:	90                   	nop

000010b0 <matchstar>:
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
{
    10b0:	55                   	push   %ebp
    10b1:	89 e5                	mov    %esp,%ebp
    10b3:	57                   	push   %edi
    10b4:	56                   	push   %esi
    10b5:	53                   	push   %ebx
    10b6:	83 ec 0c             	sub    $0xc,%esp
    10b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10bc:	8b 75 0c             	mov    0xc(%ebp),%esi
    10bf:	8b 7d 10             	mov    0x10(%ebp),%edi
    10c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
    10c8:	83 ec 08             	sub    $0x8,%esp
    10cb:	57                   	push   %edi
    10cc:	56                   	push   %esi
    10cd:	e8 3e 00 00 00       	call   1110 <matchhere>
    10d2:	83 c4 10             	add    $0x10,%esp
    10d5:	85 c0                	test   %eax,%eax
    10d7:	75 1f                	jne    10f8 <matchstar+0x48>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
    10d9:	0f be 17             	movsbl (%edi),%edx
    10dc:	84 d2                	test   %dl,%dl
    10de:	74 0c                	je     10ec <matchstar+0x3c>
    10e0:	83 c7 01             	add    $0x1,%edi
    10e3:	39 da                	cmp    %ebx,%edx
    10e5:	74 e1                	je     10c8 <matchstar+0x18>
    10e7:	83 fb 2e             	cmp    $0x2e,%ebx
    10ea:	74 dc                	je     10c8 <matchstar+0x18>
  return 0;
}
    10ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10ef:	5b                   	pop    %ebx
    10f0:	5e                   	pop    %esi
    10f1:	5f                   	pop    %edi
    10f2:	5d                   	pop    %ebp
    10f3:	c3                   	ret    
    10f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
    10fb:	b8 01 00 00 00       	mov    $0x1,%eax
}
    1100:	5b                   	pop    %ebx
    1101:	5e                   	pop    %esi
    1102:	5f                   	pop    %edi
    1103:	5d                   	pop    %ebp
    1104:	c3                   	ret    
    1105:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001110 <matchhere>:
{
    1110:	55                   	push   %ebp
    1111:	89 e5                	mov    %esp,%ebp
    1113:	57                   	push   %edi
    1114:	56                   	push   %esi
    1115:	53                   	push   %ebx
    1116:	83 ec 0c             	sub    $0xc,%esp
  if(re[0] == '\0')
    1119:	8b 45 08             	mov    0x8(%ebp),%eax
{
    111c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
    111f:	0f b6 08             	movzbl (%eax),%ecx
    1122:	84 c9                	test   %cl,%cl
    1124:	74 67                	je     118d <matchhere+0x7d>
  if(re[1] == '*')
    1126:	0f be 40 01          	movsbl 0x1(%eax),%eax
    112a:	3c 2a                	cmp    $0x2a,%al
    112c:	74 6c                	je     119a <matchhere+0x8a>
  if(re[0] == '$' && re[1] == '\0')
    112e:	80 f9 24             	cmp    $0x24,%cl
    1131:	0f b6 1f             	movzbl (%edi),%ebx
    1134:	75 08                	jne    113e <matchhere+0x2e>
    1136:	84 c0                	test   %al,%al
    1138:	0f 84 81 00 00 00    	je     11bf <matchhere+0xaf>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
    113e:	84 db                	test   %bl,%bl
    1140:	74 09                	je     114b <matchhere+0x3b>
    1142:	38 d9                	cmp    %bl,%cl
    1144:	74 3c                	je     1182 <matchhere+0x72>
    1146:	80 f9 2e             	cmp    $0x2e,%cl
    1149:	74 37                	je     1182 <matchhere+0x72>
}
    114b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
    114e:	31 c0                	xor    %eax,%eax
}
    1150:	5b                   	pop    %ebx
    1151:	5e                   	pop    %esi
    1152:	5f                   	pop    %edi
    1153:	5d                   	pop    %ebp
    1154:	c3                   	ret    
    1155:	8d 76 00             	lea    0x0(%esi),%esi
  if(re[1] == '*')
    1158:	8b 75 08             	mov    0x8(%ebp),%esi
    115b:	0f b6 4e 01          	movzbl 0x1(%esi),%ecx
    115f:	80 f9 2a             	cmp    $0x2a,%cl
    1162:	74 3b                	je     119f <matchhere+0x8f>
  if(re[0] == '$' && re[1] == '\0')
    1164:	3c 24                	cmp    $0x24,%al
    1166:	75 04                	jne    116c <matchhere+0x5c>
    1168:	84 c9                	test   %cl,%cl
    116a:	74 4f                	je     11bb <matchhere+0xab>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
    116c:	0f b6 33             	movzbl (%ebx),%esi
    116f:	89 f2                	mov    %esi,%edx
    1171:	84 d2                	test   %dl,%dl
    1173:	74 d6                	je     114b <matchhere+0x3b>
    1175:	3c 2e                	cmp    $0x2e,%al
    1177:	89 df                	mov    %ebx,%edi
    1179:	74 04                	je     117f <matchhere+0x6f>
    117b:	38 c2                	cmp    %al,%dl
    117d:	75 cc                	jne    114b <matchhere+0x3b>
    117f:	0f be c1             	movsbl %cl,%eax
    return matchhere(re+1, text+1);
    1182:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  if(re[0] == '\0')
    1186:	84 c0                	test   %al,%al
    return matchhere(re+1, text+1);
    1188:	8d 5f 01             	lea    0x1(%edi),%ebx
  if(re[0] == '\0')
    118b:	75 cb                	jne    1158 <matchhere+0x48>
    return 1;
    118d:	b8 01 00 00 00       	mov    $0x1,%eax
}
    1192:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1195:	5b                   	pop    %ebx
    1196:	5e                   	pop    %esi
    1197:	5f                   	pop    %edi
    1198:	5d                   	pop    %ebp
    1199:	c3                   	ret    
  if(re[1] == '*')
    119a:	89 fb                	mov    %edi,%ebx
    119c:	0f be c1             	movsbl %cl,%eax
    return matchstar(re[0], re+2, text);
    119f:	8b 7d 08             	mov    0x8(%ebp),%edi
    11a2:	83 ec 04             	sub    $0x4,%esp
    11a5:	53                   	push   %ebx
    11a6:	8d 57 02             	lea    0x2(%edi),%edx
    11a9:	52                   	push   %edx
    11aa:	50                   	push   %eax
    11ab:	e8 00 ff ff ff       	call   10b0 <matchstar>
    11b0:	83 c4 10             	add    $0x10,%esp
}
    11b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11b6:	5b                   	pop    %ebx
    11b7:	5e                   	pop    %esi
    11b8:	5f                   	pop    %edi
    11b9:	5d                   	pop    %ebp
    11ba:	c3                   	ret    
    11bb:	0f b6 5f 01          	movzbl 0x1(%edi),%ebx
    return *text == '\0';
    11bf:	31 c0                	xor    %eax,%eax
    11c1:	84 db                	test   %bl,%bl
    11c3:	0f 94 c0             	sete   %al
    11c6:	eb ca                	jmp    1192 <matchhere+0x82>
    11c8:	90                   	nop
    11c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000011d0 <match>:
{
    11d0:	55                   	push   %ebp
    11d1:	89 e5                	mov    %esp,%ebp
    11d3:	56                   	push   %esi
    11d4:	53                   	push   %ebx
    11d5:	8b 75 08             	mov    0x8(%ebp),%esi
    11d8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '^')
    11db:	80 3e 5e             	cmpb   $0x5e,(%esi)
    11de:	75 11                	jne    11f1 <match+0x21>
    11e0:	eb 2e                	jmp    1210 <match+0x40>
    11e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
    11e8:	83 c3 01             	add    $0x1,%ebx
    11eb:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
    11ef:	74 16                	je     1207 <match+0x37>
    if(matchhere(re, text))
    11f1:	83 ec 08             	sub    $0x8,%esp
    11f4:	53                   	push   %ebx
    11f5:	56                   	push   %esi
    11f6:	e8 15 ff ff ff       	call   1110 <matchhere>
    11fb:	83 c4 10             	add    $0x10,%esp
    11fe:	85 c0                	test   %eax,%eax
    1200:	74 e6                	je     11e8 <match+0x18>
      return 1;
    1202:	b8 01 00 00 00       	mov    $0x1,%eax
}
    1207:	8d 65 f8             	lea    -0x8(%ebp),%esp
    120a:	5b                   	pop    %ebx
    120b:	5e                   	pop    %esi
    120c:	5d                   	pop    %ebp
    120d:	c3                   	ret    
    120e:	66 90                	xchg   %ax,%ax
    return matchhere(re+1, text);
    1210:	83 c6 01             	add    $0x1,%esi
    1213:	89 75 08             	mov    %esi,0x8(%ebp)
}
    1216:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1219:	5b                   	pop    %ebx
    121a:	5e                   	pop    %esi
    121b:	5d                   	pop    %ebp
    return matchhere(re+1, text);
    121c:	e9 ef fe ff ff       	jmp    1110 <matchhere>
    1221:	eb 0d                	jmp    1230 <grep>
    1223:	90                   	nop
    1224:	90                   	nop
    1225:	90                   	nop
    1226:	90                   	nop
    1227:	90                   	nop
    1228:	90                   	nop
    1229:	90                   	nop
    122a:	90                   	nop
    122b:	90                   	nop
    122c:	90                   	nop
    122d:	90                   	nop
    122e:	90                   	nop
    122f:	90                   	nop

00001230 <grep>:
{
    1230:	55                   	push   %ebp
    1231:	89 e5                	mov    %esp,%ebp
    1233:	57                   	push   %edi
    1234:	56                   	push   %esi
    1235:	53                   	push   %ebx
  m = 0;
    1236:	31 f6                	xor    %esi,%esi
{
    1238:	83 ec 1c             	sub    $0x1c,%esp
    123b:	90                   	nop
    123c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
    1240:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    1245:	83 ec 04             	sub    $0x4,%esp
    1248:	29 f0                	sub    %esi,%eax
    124a:	50                   	push   %eax
    124b:	8d 86 c0 1e 00 00    	lea    0x1ec0(%esi),%eax
    1251:	50                   	push   %eax
    1252:	ff 75 0c             	pushl  0xc(%ebp)
    1255:	e8 40 03 00 00       	call   159a <read>
    125a:	83 c4 10             	add    $0x10,%esp
    125d:	85 c0                	test   %eax,%eax
    125f:	0f 8e bb 00 00 00    	jle    1320 <grep+0xf0>
    m += n;
    1265:	01 c6                	add    %eax,%esi
    p = buf;
    1267:	bb c0 1e 00 00       	mov    $0x1ec0,%ebx
    buf[m] = '\0';
    126c:	c6 86 c0 1e 00 00 00 	movb   $0x0,0x1ec0(%esi)
    1273:	89 75 e4             	mov    %esi,-0x1c(%ebp)
    1276:	8d 76 00             	lea    0x0(%esi),%esi
    1279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while((q = strchr(p, '\n')) != 0){
    1280:	83 ec 08             	sub    $0x8,%esp
    1283:	6a 0a                	push   $0xa
    1285:	53                   	push   %ebx
    1286:	e8 75 01 00 00       	call   1400 <strchr>
    128b:	83 c4 10             	add    $0x10,%esp
    128e:	85 c0                	test   %eax,%eax
    1290:	89 c6                	mov    %eax,%esi
    1292:	74 44                	je     12d8 <grep+0xa8>
      if(match(pattern, p)){
    1294:	83 ec 08             	sub    $0x8,%esp
      *q = 0;
    1297:	c6 06 00             	movb   $0x0,(%esi)
    129a:	8d 7e 01             	lea    0x1(%esi),%edi
      if(match(pattern, p)){
    129d:	53                   	push   %ebx
    129e:	ff 75 08             	pushl  0x8(%ebp)
    12a1:	e8 2a ff ff ff       	call   11d0 <match>
    12a6:	83 c4 10             	add    $0x10,%esp
    12a9:	85 c0                	test   %eax,%eax
    12ab:	75 0b                	jne    12b8 <grep+0x88>
      p = q+1;
    12ad:	89 fb                	mov    %edi,%ebx
    12af:	eb cf                	jmp    1280 <grep+0x50>
    12b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        write(1, p, q+1 - p);
    12b8:	89 f8                	mov    %edi,%eax
    12ba:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
    12bd:	c6 06 0a             	movb   $0xa,(%esi)
        write(1, p, q+1 - p);
    12c0:	29 d8                	sub    %ebx,%eax
    12c2:	50                   	push   %eax
    12c3:	53                   	push   %ebx
      p = q+1;
    12c4:	89 fb                	mov    %edi,%ebx
        write(1, p, q+1 - p);
    12c6:	6a 01                	push   $0x1
    12c8:	e8 d5 02 00 00       	call   15a2 <write>
    12cd:	83 c4 10             	add    $0x10,%esp
    12d0:	eb ae                	jmp    1280 <grep+0x50>
    12d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(p == buf)
    12d8:	81 fb c0 1e 00 00    	cmp    $0x1ec0,%ebx
    12de:	8b 75 e4             	mov    -0x1c(%ebp),%esi
    12e1:	74 2d                	je     1310 <grep+0xe0>
    if(m > 0){
    12e3:	85 f6                	test   %esi,%esi
    12e5:	0f 8e 55 ff ff ff    	jle    1240 <grep+0x10>
      m -= p - buf;
    12eb:	89 d8                	mov    %ebx,%eax
      memmove(buf, p, m);
    12ed:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
    12f0:	2d c0 1e 00 00       	sub    $0x1ec0,%eax
    12f5:	29 c6                	sub    %eax,%esi
      memmove(buf, p, m);
    12f7:	56                   	push   %esi
    12f8:	53                   	push   %ebx
    12f9:	68 c0 1e 00 00       	push   $0x1ec0
    12fe:	e8 4d 02 00 00       	call   1550 <memmove>
    1303:	83 c4 10             	add    $0x10,%esp
    1306:	e9 35 ff ff ff       	jmp    1240 <grep+0x10>
    130b:	90                   	nop
    130c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m = 0;
    1310:	31 f6                	xor    %esi,%esi
    1312:	e9 29 ff ff ff       	jmp    1240 <grep+0x10>
    1317:	89 f6                	mov    %esi,%esi
    1319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
}
    1320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret    
    1328:	66 90                	xchg   %ax,%ax
    132a:	66 90                	xchg   %ax,%ax
    132c:	66 90                	xchg   %ax,%ax
    132e:	66 90                	xchg   %ax,%ax

00001330 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	53                   	push   %ebx
    1334:	8b 45 08             	mov    0x8(%ebp),%eax
    1337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    133a:	89 c2                	mov    %eax,%edx
    133c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1340:	83 c1 01             	add    $0x1,%ecx
    1343:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    1347:	83 c2 01             	add    $0x1,%edx
    134a:	84 db                	test   %bl,%bl
    134c:	88 5a ff             	mov    %bl,-0x1(%edx)
    134f:	75 ef                	jne    1340 <strcpy+0x10>
    ;
  return os;
}
    1351:	5b                   	pop    %ebx
    1352:	5d                   	pop    %ebp
    1353:	c3                   	ret    
    1354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    135a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001360 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1360:	55                   	push   %ebp
    1361:	89 e5                	mov    %esp,%ebp
    1363:	53                   	push   %ebx
    1364:	8b 55 08             	mov    0x8(%ebp),%edx
    1367:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    136a:	0f b6 02             	movzbl (%edx),%eax
    136d:	0f b6 19             	movzbl (%ecx),%ebx
    1370:	84 c0                	test   %al,%al
    1372:	75 1c                	jne    1390 <strcmp+0x30>
    1374:	eb 2a                	jmp    13a0 <strcmp+0x40>
    1376:	8d 76 00             	lea    0x0(%esi),%esi
    1379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    1380:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1383:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    1386:	83 c1 01             	add    $0x1,%ecx
    1389:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    138c:	84 c0                	test   %al,%al
    138e:	74 10                	je     13a0 <strcmp+0x40>
    1390:	38 d8                	cmp    %bl,%al
    1392:	74 ec                	je     1380 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1394:	29 d8                	sub    %ebx,%eax
}
    1396:	5b                   	pop    %ebx
    1397:	5d                   	pop    %ebp
    1398:	c3                   	ret    
    1399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    13a2:	29 d8                	sub    %ebx,%eax
}
    13a4:	5b                   	pop    %ebx
    13a5:	5d                   	pop    %ebp
    13a6:	c3                   	ret    
    13a7:	89 f6                	mov    %esi,%esi
    13a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000013b0 <strlen>:

uint
strlen(char *s)
{
    13b0:	55                   	push   %ebp
    13b1:	89 e5                	mov    %esp,%ebp
    13b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    13b6:	80 39 00             	cmpb   $0x0,(%ecx)
    13b9:	74 15                	je     13d0 <strlen+0x20>
    13bb:	31 d2                	xor    %edx,%edx
    13bd:	8d 76 00             	lea    0x0(%esi),%esi
    13c0:	83 c2 01             	add    $0x1,%edx
    13c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    13c7:	89 d0                	mov    %edx,%eax
    13c9:	75 f5                	jne    13c0 <strlen+0x10>
    ;
  return n;
}
    13cb:	5d                   	pop    %ebp
    13cc:	c3                   	ret    
    13cd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    13d0:	31 c0                	xor    %eax,%eax
}
    13d2:	5d                   	pop    %ebp
    13d3:	c3                   	ret    
    13d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    13da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000013e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    13e0:	55                   	push   %ebp
    13e1:	89 e5                	mov    %esp,%ebp
    13e3:	57                   	push   %edi
    13e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    13e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    13ea:	8b 45 0c             	mov    0xc(%ebp),%eax
    13ed:	89 d7                	mov    %edx,%edi
    13ef:	fc                   	cld    
    13f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    13f2:	89 d0                	mov    %edx,%eax
    13f4:	5f                   	pop    %edi
    13f5:	5d                   	pop    %ebp
    13f6:	c3                   	ret    
    13f7:	89 f6                	mov    %esi,%esi
    13f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001400 <strchr>:

char*
strchr(const char *s, char c)
{
    1400:	55                   	push   %ebp
    1401:	89 e5                	mov    %esp,%ebp
    1403:	53                   	push   %ebx
    1404:	8b 45 08             	mov    0x8(%ebp),%eax
    1407:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    140a:	0f b6 10             	movzbl (%eax),%edx
    140d:	84 d2                	test   %dl,%dl
    140f:	74 1d                	je     142e <strchr+0x2e>
    if(*s == c)
    1411:	38 d3                	cmp    %dl,%bl
    1413:	89 d9                	mov    %ebx,%ecx
    1415:	75 0d                	jne    1424 <strchr+0x24>
    1417:	eb 17                	jmp    1430 <strchr+0x30>
    1419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1420:	38 ca                	cmp    %cl,%dl
    1422:	74 0c                	je     1430 <strchr+0x30>
  for(; *s; s++)
    1424:	83 c0 01             	add    $0x1,%eax
    1427:	0f b6 10             	movzbl (%eax),%edx
    142a:	84 d2                	test   %dl,%dl
    142c:	75 f2                	jne    1420 <strchr+0x20>
      return (char*)s;
  return 0;
    142e:	31 c0                	xor    %eax,%eax
}
    1430:	5b                   	pop    %ebx
    1431:	5d                   	pop    %ebp
    1432:	c3                   	ret    
    1433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001440 <gets>:

char*
gets(char *buf, int max)
{
    1440:	55                   	push   %ebp
    1441:	89 e5                	mov    %esp,%ebp
    1443:	57                   	push   %edi
    1444:	56                   	push   %esi
    1445:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1446:	31 f6                	xor    %esi,%esi
    1448:	89 f3                	mov    %esi,%ebx
{
    144a:	83 ec 1c             	sub    $0x1c,%esp
    144d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1450:	eb 2f                	jmp    1481 <gets+0x41>
    1452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1458:	8d 45 e7             	lea    -0x19(%ebp),%eax
    145b:	83 ec 04             	sub    $0x4,%esp
    145e:	6a 01                	push   $0x1
    1460:	50                   	push   %eax
    1461:	6a 00                	push   $0x0
    1463:	e8 32 01 00 00       	call   159a <read>
    if(cc < 1)
    1468:	83 c4 10             	add    $0x10,%esp
    146b:	85 c0                	test   %eax,%eax
    146d:	7e 1c                	jle    148b <gets+0x4b>
      break;
    buf[i++] = c;
    146f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1473:	83 c7 01             	add    $0x1,%edi
    1476:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1479:	3c 0a                	cmp    $0xa,%al
    147b:	74 23                	je     14a0 <gets+0x60>
    147d:	3c 0d                	cmp    $0xd,%al
    147f:	74 1f                	je     14a0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1481:	83 c3 01             	add    $0x1,%ebx
    1484:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1487:	89 fe                	mov    %edi,%esi
    1489:	7c cd                	jl     1458 <gets+0x18>
    148b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    148d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1490:	c6 03 00             	movb   $0x0,(%ebx)
}
    1493:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1496:	5b                   	pop    %ebx
    1497:	5e                   	pop    %esi
    1498:	5f                   	pop    %edi
    1499:	5d                   	pop    %ebp
    149a:	c3                   	ret    
    149b:	90                   	nop
    149c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14a0:	8b 75 08             	mov    0x8(%ebp),%esi
    14a3:	8b 45 08             	mov    0x8(%ebp),%eax
    14a6:	01 de                	add    %ebx,%esi
    14a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    14aa:	c6 03 00             	movb   $0x0,(%ebx)
}
    14ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14b0:	5b                   	pop    %ebx
    14b1:	5e                   	pop    %esi
    14b2:	5f                   	pop    %edi
    14b3:	5d                   	pop    %ebp
    14b4:	c3                   	ret    
    14b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000014c0 <stat>:

int
stat(char *n, struct stat *st)
{
    14c0:	55                   	push   %ebp
    14c1:	89 e5                	mov    %esp,%ebp
    14c3:	56                   	push   %esi
    14c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    14c5:	83 ec 08             	sub    $0x8,%esp
    14c8:	6a 00                	push   $0x0
    14ca:	ff 75 08             	pushl  0x8(%ebp)
    14cd:	e8 f0 00 00 00       	call   15c2 <open>
  if(fd < 0)
    14d2:	83 c4 10             	add    $0x10,%esp
    14d5:	85 c0                	test   %eax,%eax
    14d7:	78 27                	js     1500 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    14d9:	83 ec 08             	sub    $0x8,%esp
    14dc:	ff 75 0c             	pushl  0xc(%ebp)
    14df:	89 c3                	mov    %eax,%ebx
    14e1:	50                   	push   %eax
    14e2:	e8 f3 00 00 00       	call   15da <fstat>
  close(fd);
    14e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    14ea:	89 c6                	mov    %eax,%esi
  close(fd);
    14ec:	e8 b9 00 00 00       	call   15aa <close>
  return r;
    14f1:	83 c4 10             	add    $0x10,%esp
}
    14f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    14f7:	89 f0                	mov    %esi,%eax
    14f9:	5b                   	pop    %ebx
    14fa:	5e                   	pop    %esi
    14fb:	5d                   	pop    %ebp
    14fc:	c3                   	ret    
    14fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1500:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1505:	eb ed                	jmp    14f4 <stat+0x34>
    1507:	89 f6                	mov    %esi,%esi
    1509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001510 <atoi>:

int
atoi(const char *s)
{
    1510:	55                   	push   %ebp
    1511:	89 e5                	mov    %esp,%ebp
    1513:	53                   	push   %ebx
    1514:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1517:	0f be 11             	movsbl (%ecx),%edx
    151a:	8d 42 d0             	lea    -0x30(%edx),%eax
    151d:	3c 09                	cmp    $0x9,%al
  n = 0;
    151f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1524:	77 1f                	ja     1545 <atoi+0x35>
    1526:	8d 76 00             	lea    0x0(%esi),%esi
    1529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1530:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1533:	83 c1 01             	add    $0x1,%ecx
    1536:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    153a:	0f be 11             	movsbl (%ecx),%edx
    153d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1540:	80 fb 09             	cmp    $0x9,%bl
    1543:	76 eb                	jbe    1530 <atoi+0x20>
  return n;
}
    1545:	5b                   	pop    %ebx
    1546:	5d                   	pop    %ebp
    1547:	c3                   	ret    
    1548:	90                   	nop
    1549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001550 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    1550:	55                   	push   %ebp
    1551:	89 e5                	mov    %esp,%ebp
    1553:	56                   	push   %esi
    1554:	53                   	push   %ebx
    1555:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1558:	8b 45 08             	mov    0x8(%ebp),%eax
    155b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    155e:	85 db                	test   %ebx,%ebx
    1560:	7e 14                	jle    1576 <memmove+0x26>
    1562:	31 d2                	xor    %edx,%edx
    1564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1568:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    156c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    156f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1572:	39 d3                	cmp    %edx,%ebx
    1574:	75 f2                	jne    1568 <memmove+0x18>
  return vdst;
}
    1576:	5b                   	pop    %ebx
    1577:	5e                   	pop    %esi
    1578:	5d                   	pop    %ebp
    1579:	c3                   	ret    

0000157a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    157a:	b8 01 00 00 00       	mov    $0x1,%eax
    157f:	cd 40                	int    $0x40
    1581:	c3                   	ret    

00001582 <exit>:
SYSCALL(exit)
    1582:	b8 02 00 00 00       	mov    $0x2,%eax
    1587:	cd 40                	int    $0x40
    1589:	c3                   	ret    

0000158a <wait>:
SYSCALL(wait)
    158a:	b8 03 00 00 00       	mov    $0x3,%eax
    158f:	cd 40                	int    $0x40
    1591:	c3                   	ret    

00001592 <pipe>:
SYSCALL(pipe)
    1592:	b8 04 00 00 00       	mov    $0x4,%eax
    1597:	cd 40                	int    $0x40
    1599:	c3                   	ret    

0000159a <read>:
SYSCALL(read)
    159a:	b8 05 00 00 00       	mov    $0x5,%eax
    159f:	cd 40                	int    $0x40
    15a1:	c3                   	ret    

000015a2 <write>:
SYSCALL(write)
    15a2:	b8 10 00 00 00       	mov    $0x10,%eax
    15a7:	cd 40                	int    $0x40
    15a9:	c3                   	ret    

000015aa <close>:
SYSCALL(close)
    15aa:	b8 15 00 00 00       	mov    $0x15,%eax
    15af:	cd 40                	int    $0x40
    15b1:	c3                   	ret    

000015b2 <kill>:
SYSCALL(kill)
    15b2:	b8 06 00 00 00       	mov    $0x6,%eax
    15b7:	cd 40                	int    $0x40
    15b9:	c3                   	ret    

000015ba <exec>:
SYSCALL(exec)
    15ba:	b8 07 00 00 00       	mov    $0x7,%eax
    15bf:	cd 40                	int    $0x40
    15c1:	c3                   	ret    

000015c2 <open>:
SYSCALL(open)
    15c2:	b8 0f 00 00 00       	mov    $0xf,%eax
    15c7:	cd 40                	int    $0x40
    15c9:	c3                   	ret    

000015ca <mknod>:
SYSCALL(mknod)
    15ca:	b8 11 00 00 00       	mov    $0x11,%eax
    15cf:	cd 40                	int    $0x40
    15d1:	c3                   	ret    

000015d2 <unlink>:
SYSCALL(unlink)
    15d2:	b8 12 00 00 00       	mov    $0x12,%eax
    15d7:	cd 40                	int    $0x40
    15d9:	c3                   	ret    

000015da <fstat>:
SYSCALL(fstat)
    15da:	b8 08 00 00 00       	mov    $0x8,%eax
    15df:	cd 40                	int    $0x40
    15e1:	c3                   	ret    

000015e2 <link>:
SYSCALL(link)
    15e2:	b8 13 00 00 00       	mov    $0x13,%eax
    15e7:	cd 40                	int    $0x40
    15e9:	c3                   	ret    

000015ea <mkdir>:
SYSCALL(mkdir)
    15ea:	b8 14 00 00 00       	mov    $0x14,%eax
    15ef:	cd 40                	int    $0x40
    15f1:	c3                   	ret    

000015f2 <chdir>:
SYSCALL(chdir)
    15f2:	b8 09 00 00 00       	mov    $0x9,%eax
    15f7:	cd 40                	int    $0x40
    15f9:	c3                   	ret    

000015fa <dup>:
SYSCALL(dup)
    15fa:	b8 0a 00 00 00       	mov    $0xa,%eax
    15ff:	cd 40                	int    $0x40
    1601:	c3                   	ret    

00001602 <getpid>:
SYSCALL(getpid)
    1602:	b8 0b 00 00 00       	mov    $0xb,%eax
    1607:	cd 40                	int    $0x40
    1609:	c3                   	ret    

0000160a <sbrk>:
SYSCALL(sbrk)
    160a:	b8 0c 00 00 00       	mov    $0xc,%eax
    160f:	cd 40                	int    $0x40
    1611:	c3                   	ret    

00001612 <sleep>:
SYSCALL(sleep)
    1612:	b8 0d 00 00 00       	mov    $0xd,%eax
    1617:	cd 40                	int    $0x40
    1619:	c3                   	ret    

0000161a <uptime>:
SYSCALL(uptime)
    161a:	b8 0e 00 00 00       	mov    $0xe,%eax
    161f:	cd 40                	int    $0x40
    1621:	c3                   	ret    

00001622 <shm_open>:
SYSCALL(shm_open)
    1622:	b8 16 00 00 00       	mov    $0x16,%eax
    1627:	cd 40                	int    $0x40
    1629:	c3                   	ret    

0000162a <shm_close>:
SYSCALL(shm_close)	
    162a:	b8 17 00 00 00       	mov    $0x17,%eax
    162f:	cd 40                	int    $0x40
    1631:	c3                   	ret    
    1632:	66 90                	xchg   %ax,%ax
    1634:	66 90                	xchg   %ax,%ax
    1636:	66 90                	xchg   %ax,%ax
    1638:	66 90                	xchg   %ax,%ax
    163a:	66 90                	xchg   %ax,%ax
    163c:	66 90                	xchg   %ax,%ax
    163e:	66 90                	xchg   %ax,%ax

00001640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1640:	55                   	push   %ebp
    1641:	89 e5                	mov    %esp,%ebp
    1643:	57                   	push   %edi
    1644:	56                   	push   %esi
    1645:	53                   	push   %ebx
    1646:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1649:	85 d2                	test   %edx,%edx
{
    164b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    164e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1650:	79 76                	jns    16c8 <printint+0x88>
    1652:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1656:	74 70                	je     16c8 <printint+0x88>
    x = -xx;
    1658:	f7 d8                	neg    %eax
    neg = 1;
    165a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1661:	31 f6                	xor    %esi,%esi
    1663:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1666:	eb 0a                	jmp    1672 <printint+0x32>
    1668:	90                   	nop
    1669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1670:	89 fe                	mov    %edi,%esi
    1672:	31 d2                	xor    %edx,%edx
    1674:	8d 7e 01             	lea    0x1(%esi),%edi
    1677:	f7 f1                	div    %ecx
    1679:	0f b6 92 b4 1a 00 00 	movzbl 0x1ab4(%edx),%edx
  }while((x /= base) != 0);
    1680:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1682:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1685:	75 e9                	jne    1670 <printint+0x30>
  if(neg)
    1687:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    168a:	85 c0                	test   %eax,%eax
    168c:	74 08                	je     1696 <printint+0x56>
    buf[i++] = '-';
    168e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1693:	8d 7e 02             	lea    0x2(%esi),%edi
    1696:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    169a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    169d:	8d 76 00             	lea    0x0(%esi),%esi
    16a0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    16a3:	83 ec 04             	sub    $0x4,%esp
    16a6:	83 ee 01             	sub    $0x1,%esi
    16a9:	6a 01                	push   $0x1
    16ab:	53                   	push   %ebx
    16ac:	57                   	push   %edi
    16ad:	88 45 d7             	mov    %al,-0x29(%ebp)
    16b0:	e8 ed fe ff ff       	call   15a2 <write>

  while(--i >= 0)
    16b5:	83 c4 10             	add    $0x10,%esp
    16b8:	39 de                	cmp    %ebx,%esi
    16ba:	75 e4                	jne    16a0 <printint+0x60>
    putc(fd, buf[i]);
}
    16bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    16bf:	5b                   	pop    %ebx
    16c0:	5e                   	pop    %esi
    16c1:	5f                   	pop    %edi
    16c2:	5d                   	pop    %ebp
    16c3:	c3                   	ret    
    16c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    16c8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    16cf:	eb 90                	jmp    1661 <printint+0x21>
    16d1:	eb 0d                	jmp    16e0 <printf>
    16d3:	90                   	nop
    16d4:	90                   	nop
    16d5:	90                   	nop
    16d6:	90                   	nop
    16d7:	90                   	nop
    16d8:	90                   	nop
    16d9:	90                   	nop
    16da:	90                   	nop
    16db:	90                   	nop
    16dc:	90                   	nop
    16dd:	90                   	nop
    16de:	90                   	nop
    16df:	90                   	nop

000016e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    16e0:	55                   	push   %ebp
    16e1:	89 e5                	mov    %esp,%ebp
    16e3:	57                   	push   %edi
    16e4:	56                   	push   %esi
    16e5:	53                   	push   %ebx
    16e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    16e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    16ec:	0f b6 1e             	movzbl (%esi),%ebx
    16ef:	84 db                	test   %bl,%bl
    16f1:	0f 84 b3 00 00 00    	je     17aa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    16f7:	8d 45 10             	lea    0x10(%ebp),%eax
    16fa:	83 c6 01             	add    $0x1,%esi
  state = 0;
    16fd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    16ff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1702:	eb 2f                	jmp    1733 <printf+0x53>
    1704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1708:	83 f8 25             	cmp    $0x25,%eax
    170b:	0f 84 a7 00 00 00    	je     17b8 <printf+0xd8>
  write(fd, &c, 1);
    1711:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1714:	83 ec 04             	sub    $0x4,%esp
    1717:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    171a:	6a 01                	push   $0x1
    171c:	50                   	push   %eax
    171d:	ff 75 08             	pushl  0x8(%ebp)
    1720:	e8 7d fe ff ff       	call   15a2 <write>
    1725:	83 c4 10             	add    $0x10,%esp
    1728:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    172b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    172f:	84 db                	test   %bl,%bl
    1731:	74 77                	je     17aa <printf+0xca>
    if(state == 0){
    1733:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1735:	0f be cb             	movsbl %bl,%ecx
    1738:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    173b:	74 cb                	je     1708 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    173d:	83 ff 25             	cmp    $0x25,%edi
    1740:	75 e6                	jne    1728 <printf+0x48>
      if(c == 'd'){
    1742:	83 f8 64             	cmp    $0x64,%eax
    1745:	0f 84 05 01 00 00    	je     1850 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    174b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1751:	83 f9 70             	cmp    $0x70,%ecx
    1754:	74 72                	je     17c8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1756:	83 f8 73             	cmp    $0x73,%eax
    1759:	0f 84 99 00 00 00    	je     17f8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    175f:	83 f8 63             	cmp    $0x63,%eax
    1762:	0f 84 08 01 00 00    	je     1870 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1768:	83 f8 25             	cmp    $0x25,%eax
    176b:	0f 84 ef 00 00 00    	je     1860 <printf+0x180>
  write(fd, &c, 1);
    1771:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1774:	83 ec 04             	sub    $0x4,%esp
    1777:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    177b:	6a 01                	push   $0x1
    177d:	50                   	push   %eax
    177e:	ff 75 08             	pushl  0x8(%ebp)
    1781:	e8 1c fe ff ff       	call   15a2 <write>
    1786:	83 c4 0c             	add    $0xc,%esp
    1789:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    178c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    178f:	6a 01                	push   $0x1
    1791:	50                   	push   %eax
    1792:	ff 75 08             	pushl  0x8(%ebp)
    1795:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1798:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    179a:	e8 03 fe ff ff       	call   15a2 <write>
  for(i = 0; fmt[i]; i++){
    179f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    17a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    17a6:	84 db                	test   %bl,%bl
    17a8:	75 89                	jne    1733 <printf+0x53>
    }
  }
}
    17aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    17ad:	5b                   	pop    %ebx
    17ae:	5e                   	pop    %esi
    17af:	5f                   	pop    %edi
    17b0:	5d                   	pop    %ebp
    17b1:	c3                   	ret    
    17b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    17b8:	bf 25 00 00 00       	mov    $0x25,%edi
    17bd:	e9 66 ff ff ff       	jmp    1728 <printf+0x48>
    17c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    17c8:	83 ec 0c             	sub    $0xc,%esp
    17cb:	b9 10 00 00 00       	mov    $0x10,%ecx
    17d0:	6a 00                	push   $0x0
    17d2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    17d5:	8b 45 08             	mov    0x8(%ebp),%eax
    17d8:	8b 17                	mov    (%edi),%edx
    17da:	e8 61 fe ff ff       	call   1640 <printint>
        ap++;
    17df:	89 f8                	mov    %edi,%eax
    17e1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17e4:	31 ff                	xor    %edi,%edi
        ap++;
    17e6:	83 c0 04             	add    $0x4,%eax
    17e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    17ec:	e9 37 ff ff ff       	jmp    1728 <printf+0x48>
    17f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    17f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    17fb:	8b 08                	mov    (%eax),%ecx
        ap++;
    17fd:	83 c0 04             	add    $0x4,%eax
    1800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1803:	85 c9                	test   %ecx,%ecx
    1805:	0f 84 8e 00 00 00    	je     1899 <printf+0x1b9>
        while(*s != 0){
    180b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    180e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1810:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1812:	84 c0                	test   %al,%al
    1814:	0f 84 0e ff ff ff    	je     1728 <printf+0x48>
    181a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    181d:	89 de                	mov    %ebx,%esi
    181f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1822:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1825:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1828:	83 ec 04             	sub    $0x4,%esp
          s++;
    182b:	83 c6 01             	add    $0x1,%esi
    182e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1831:	6a 01                	push   $0x1
    1833:	57                   	push   %edi
    1834:	53                   	push   %ebx
    1835:	e8 68 fd ff ff       	call   15a2 <write>
        while(*s != 0){
    183a:	0f b6 06             	movzbl (%esi),%eax
    183d:	83 c4 10             	add    $0x10,%esp
    1840:	84 c0                	test   %al,%al
    1842:	75 e4                	jne    1828 <printf+0x148>
    1844:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1847:	31 ff                	xor    %edi,%edi
    1849:	e9 da fe ff ff       	jmp    1728 <printf+0x48>
    184e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1850:	83 ec 0c             	sub    $0xc,%esp
    1853:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1858:	6a 01                	push   $0x1
    185a:	e9 73 ff ff ff       	jmp    17d2 <printf+0xf2>
    185f:	90                   	nop
  write(fd, &c, 1);
    1860:	83 ec 04             	sub    $0x4,%esp
    1863:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1866:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1869:	6a 01                	push   $0x1
    186b:	e9 21 ff ff ff       	jmp    1791 <printf+0xb1>
        putc(fd, *ap);
    1870:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1873:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1876:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1878:	6a 01                	push   $0x1
        ap++;
    187a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    187d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1880:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1883:	50                   	push   %eax
    1884:	ff 75 08             	pushl  0x8(%ebp)
    1887:	e8 16 fd ff ff       	call   15a2 <write>
        ap++;
    188c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    188f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1892:	31 ff                	xor    %edi,%edi
    1894:	e9 8f fe ff ff       	jmp    1728 <printf+0x48>
          s = "(null)";
    1899:	bb aa 1a 00 00       	mov    $0x1aaa,%ebx
        while(*s != 0){
    189e:	b8 28 00 00 00       	mov    $0x28,%eax
    18a3:	e9 72 ff ff ff       	jmp    181a <printf+0x13a>
    18a8:	66 90                	xchg   %ax,%ax
    18aa:	66 90                	xchg   %ax,%ax
    18ac:	66 90                	xchg   %ax,%ax
    18ae:	66 90                	xchg   %ax,%ax

000018b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    18b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    18b1:	a1 a0 1e 00 00       	mov    0x1ea0,%eax
{
    18b6:	89 e5                	mov    %esp,%ebp
    18b8:	57                   	push   %edi
    18b9:	56                   	push   %esi
    18ba:	53                   	push   %ebx
    18bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    18be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    18c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    18c8:	39 c8                	cmp    %ecx,%eax
    18ca:	8b 10                	mov    (%eax),%edx
    18cc:	73 32                	jae    1900 <free+0x50>
    18ce:	39 d1                	cmp    %edx,%ecx
    18d0:	72 04                	jb     18d6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    18d2:	39 d0                	cmp    %edx,%eax
    18d4:	72 32                	jb     1908 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    18d6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    18d9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    18dc:	39 fa                	cmp    %edi,%edx
    18de:	74 30                	je     1910 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    18e0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    18e3:	8b 50 04             	mov    0x4(%eax),%edx
    18e6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    18e9:	39 f1                	cmp    %esi,%ecx
    18eb:	74 3a                	je     1927 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    18ed:	89 08                	mov    %ecx,(%eax)
  freep = p;
    18ef:	a3 a0 1e 00 00       	mov    %eax,0x1ea0
}
    18f4:	5b                   	pop    %ebx
    18f5:	5e                   	pop    %esi
    18f6:	5f                   	pop    %edi
    18f7:	5d                   	pop    %ebp
    18f8:	c3                   	ret    
    18f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1900:	39 d0                	cmp    %edx,%eax
    1902:	72 04                	jb     1908 <free+0x58>
    1904:	39 d1                	cmp    %edx,%ecx
    1906:	72 ce                	jb     18d6 <free+0x26>
{
    1908:	89 d0                	mov    %edx,%eax
    190a:	eb bc                	jmp    18c8 <free+0x18>
    190c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1910:	03 72 04             	add    0x4(%edx),%esi
    1913:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1916:	8b 10                	mov    (%eax),%edx
    1918:	8b 12                	mov    (%edx),%edx
    191a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    191d:	8b 50 04             	mov    0x4(%eax),%edx
    1920:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1923:	39 f1                	cmp    %esi,%ecx
    1925:	75 c6                	jne    18ed <free+0x3d>
    p->s.size += bp->s.size;
    1927:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    192a:	a3 a0 1e 00 00       	mov    %eax,0x1ea0
    p->s.size += bp->s.size;
    192f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1932:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1935:	89 10                	mov    %edx,(%eax)
}
    1937:	5b                   	pop    %ebx
    1938:	5e                   	pop    %esi
    1939:	5f                   	pop    %edi
    193a:	5d                   	pop    %ebp
    193b:	c3                   	ret    
    193c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001940 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1940:	55                   	push   %ebp
    1941:	89 e5                	mov    %esp,%ebp
    1943:	57                   	push   %edi
    1944:	56                   	push   %esi
    1945:	53                   	push   %ebx
    1946:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1949:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    194c:	8b 15 a0 1e 00 00    	mov    0x1ea0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1952:	8d 78 07             	lea    0x7(%eax),%edi
    1955:	c1 ef 03             	shr    $0x3,%edi
    1958:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    195b:	85 d2                	test   %edx,%edx
    195d:	0f 84 9d 00 00 00    	je     1a00 <malloc+0xc0>
    1963:	8b 02                	mov    (%edx),%eax
    1965:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1968:	39 cf                	cmp    %ecx,%edi
    196a:	76 6c                	jbe    19d8 <malloc+0x98>
    196c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1972:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1977:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    197a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1981:	eb 0e                	jmp    1991 <malloc+0x51>
    1983:	90                   	nop
    1984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1988:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    198a:	8b 48 04             	mov    0x4(%eax),%ecx
    198d:	39 f9                	cmp    %edi,%ecx
    198f:	73 47                	jae    19d8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1991:	39 05 a0 1e 00 00    	cmp    %eax,0x1ea0
    1997:	89 c2                	mov    %eax,%edx
    1999:	75 ed                	jne    1988 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    199b:	83 ec 0c             	sub    $0xc,%esp
    199e:	56                   	push   %esi
    199f:	e8 66 fc ff ff       	call   160a <sbrk>
  if(p == (char*)-1)
    19a4:	83 c4 10             	add    $0x10,%esp
    19a7:	83 f8 ff             	cmp    $0xffffffff,%eax
    19aa:	74 1c                	je     19c8 <malloc+0x88>
  hp->s.size = nu;
    19ac:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    19af:	83 ec 0c             	sub    $0xc,%esp
    19b2:	83 c0 08             	add    $0x8,%eax
    19b5:	50                   	push   %eax
    19b6:	e8 f5 fe ff ff       	call   18b0 <free>
  return freep;
    19bb:	8b 15 a0 1e 00 00    	mov    0x1ea0,%edx
      if((p = morecore(nunits)) == 0)
    19c1:	83 c4 10             	add    $0x10,%esp
    19c4:	85 d2                	test   %edx,%edx
    19c6:	75 c0                	jne    1988 <malloc+0x48>
        return 0;
  }
}
    19c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    19cb:	31 c0                	xor    %eax,%eax
}
    19cd:	5b                   	pop    %ebx
    19ce:	5e                   	pop    %esi
    19cf:	5f                   	pop    %edi
    19d0:	5d                   	pop    %ebp
    19d1:	c3                   	ret    
    19d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    19d8:	39 cf                	cmp    %ecx,%edi
    19da:	74 54                	je     1a30 <malloc+0xf0>
        p->s.size -= nunits;
    19dc:	29 f9                	sub    %edi,%ecx
    19de:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    19e1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    19e4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    19e7:	89 15 a0 1e 00 00    	mov    %edx,0x1ea0
}
    19ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    19f0:	83 c0 08             	add    $0x8,%eax
}
    19f3:	5b                   	pop    %ebx
    19f4:	5e                   	pop    %esi
    19f5:	5f                   	pop    %edi
    19f6:	5d                   	pop    %ebp
    19f7:	c3                   	ret    
    19f8:	90                   	nop
    19f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1a00:	c7 05 a0 1e 00 00 a4 	movl   $0x1ea4,0x1ea0
    1a07:	1e 00 00 
    1a0a:	c7 05 a4 1e 00 00 a4 	movl   $0x1ea4,0x1ea4
    1a11:	1e 00 00 
    base.s.size = 0;
    1a14:	b8 a4 1e 00 00       	mov    $0x1ea4,%eax
    1a19:	c7 05 a8 1e 00 00 00 	movl   $0x0,0x1ea8
    1a20:	00 00 00 
    1a23:	e9 44 ff ff ff       	jmp    196c <malloc+0x2c>
    1a28:	90                   	nop
    1a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1a30:	8b 08                	mov    (%eax),%ecx
    1a32:	89 0a                	mov    %ecx,(%edx)
    1a34:	eb b1                	jmp    19e7 <malloc+0xa7>
    1a36:	66 90                	xchg   %ax,%ax
    1a38:	66 90                	xchg   %ax,%ax
    1a3a:	66 90                	xchg   %ax,%ax
    1a3c:	66 90                	xchg   %ax,%ax
    1a3e:	66 90                	xchg   %ax,%ax

00001a40 <uacquire>:
#include "uspinlock.h"
#include "x86.h"

void
uacquire(struct uspinlock *lk)
{
    1a40:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1a41:	b9 01 00 00 00       	mov    $0x1,%ecx
    1a46:	89 e5                	mov    %esp,%ebp
    1a48:	8b 55 08             	mov    0x8(%ebp),%edx
    1a4b:	90                   	nop
    1a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1a50:	89 c8                	mov    %ecx,%eax
    1a52:	f0 87 02             	lock xchg %eax,(%edx)
  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
    1a55:	85 c0                	test   %eax,%eax
    1a57:	75 f7                	jne    1a50 <uacquire+0x10>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
    1a59:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
    1a5e:	5d                   	pop    %ebp
    1a5f:	c3                   	ret    

00001a60 <urelease>:

void urelease (struct uspinlock *lk) {
    1a60:	55                   	push   %ebp
    1a61:	89 e5                	mov    %esp,%ebp
    1a63:	8b 45 08             	mov    0x8(%ebp),%eax
  __sync_synchronize();
    1a66:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
    1a6b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1a71:	5d                   	pop    %ebp
    1a72:	c3                   	ret    