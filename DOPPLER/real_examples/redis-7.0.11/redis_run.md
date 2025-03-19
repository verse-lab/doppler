### Compile
```shell
chmod +x src/mkreleasehdr.sh
CC=clang-13 make MALLOC=libc
make distclean
make

```

### KLEE Results
```
./klee --entry-point getKeysUsingKeySpecs ~/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src/redis-server.ll 

KLEE: done: total instructions = 465545
KLEE: done: completed paths = 1024
KLEE: done: partially completed paths = 5115
KLEE: done: generated tests = 1027
```

### Execute
```shell
./doppler --file ../big_benchmarks/redis-7.0.11/src/redis-server-sim.ll --entry main --src ../big_benchmarks/redis-7.0.11/src/ --vars ../big_benchmarks/redis-7.0.11/src/redis-server.json --use_src true --compiler ./compiler.doppler

./doppler --file ../big_benchmarks/redis-7.0.11/src/redis-server.ll --entry getKeysUsingKeySpecs --src ../big_benchmarks/redis-7.0.11/src/ --vars ../big_benchmarks/redis-7.0.11/src/redis-server.json --use_src true --compiler ./compiler.doppler

```

Print the Grammar:
Variable var    
        %126, %578, %577, %1004, call30.i.i.i428, %1005, %1006, %1007, %1008, %1009, call34.i.i.i433, %1352, %1353, %1354, %1313, %1314, %1315, %1316, %1317, %1318, %1286, %1288, %1289, %1222, %1223, call10.i.i74.i.i, %1218, %1200, %1202, %1203, %1715, %1716, %1689, call4.i.i.i.i.i, %1690, %1691, %1692, %1694, %929, %930, %937, %938, call11.i.i.i315, call12.i.i.i316, %886, %887, %888, %900, %901, %902, %903, %904, %905, %906, %907, %908, %909, %910, %911, %912, %913, %914, %915, %916, %917, %918, %921, %922, %923, %924, %927, %928, %867, %873, %874, %875, %876, %879, %881, call.i.i.i305, %883, %944, %175, %212, %1012, call39.i.i.i438, %180, %152, %1877, arrayidx127, %1878, pos128, %1879, %1880, %1881, inc, arrayidx131, flags132, %1882, add134, %1872, %1873, %215, %1104, %1105, %1106, %1107, %1098, %1099, %181, %173, %1127, %1128, %1129, %1130, %1131, %1014, %1015, %1016, %975, %976, %977, %978, %979, %980, %948, %950, %951, %884, %885, call10.i.i.i313, %880, %862, %864, %865, %262, %263, call36.i.i196.i, %1874, %1875, %264, call39.i.i199.i, %224, %217, %226, %223, %266, %267, %227, %268, %229, %228, %230, %232, %231, %203, %202, %200, %137, %136, %132, call10.i.i74.i, %117, %116, %114, %1886, %1885, %536, %254, tobool26.i.i185.i, call30.i.i189.i, %256, %258, %257, %260, %259, call34.i.i194.i, %261, call13.i.i168.i, %235, %236, %249, %234, %225, %233, call18.i.i178.i, %248, %250, tobool.i.i, %1888, %534, %1889, %469, %475, %477, %476, %478, %474, %470, %473, %485, %500, %486, %487, %488, call13.i.i.i, call18.i.i.i, %501, %502, %535, %506, tobool26.i.i.i, %509, call30.i.i.i, %508, call34.i.i.i, %513, %512, %511, %510, %515, call36.i.i.i, %514, %218, %222, %221, %425, %441, %433, %434, %406, %421, %442, %413, %379, %1342, call30.i.i189.i.i, %1343, %1344, %1345, %1346, %1347, call34.i.i194.i.i, cmp.i.i, %1717, %1600, call36.i.i.i.i, %1601, %133, %1739, call13.i.i17.i, %1740, %1741, call14.i.i18.i, %750, tobool26.i.i185.i204, %443, %446, %445, %444, %457, call.i3.i284, call1.i.i288, call2.i.i289, call3.i.i290, call4.i.i291, call5.i.i292, %855, %856, call1.i207.i226, %780, %781, %782, %858, %1118, %1119, %1120, %1121, %1122, %1123, %1124, %1125, %1126, %1594, call30.i.i.i.i, %1595, %1596, %1597, %1598, %1599, call34.i.i.i.i, %687, %688, %689, %690, %622, %623, %624, %627, %629, %671, call.i.i66.i85, %631, call11.i.i76.i95, call12.i.i77.i96, %634, %635, %636, %648, %649, %650, %651, %652, %653, %654, %655, %656, %657, %658, %659, %660, %661, %662, %663, %664, %665, %666, %669, %670, %468, %371, %390, %432, %404, call12.i.i.i, %392, %407, call.i.i.i, %418, %380, %414, %409, call11.i.i.i, %1604, %1605, %1606, %1565, %1566, %1567, %1568, %1569, %1570, %1538, %1540, %1541, %1474, %1475, call10.i.i.i.i, %1470, %1452, %1454, %1455, %463, %1519, %1520, %1527, %1528, %1469, %1498, %1499, %1500, %1501, %1502, %1503, %1506, %1473, %1507, %1457, %1514, %1517, %1518, %1508, %1511, %1512, %1513, %1471, call.i.i.i.i, call11.i.i.i.i, call12.i.i.i.i, %1476, %422, %426, %412, %1592, tobool26.i.i.i.i, %1672, %1673, %1678, %1670, %1722, %1728, call.i8.i.i.i, %1729, %1730, %1732, %1733, %1738, %125, %1757, %1758, %1744, %1103, %1066, %1061, %1096, %1154, %1062, %1109, %1059, %1094, %1068, %1093, %1082, %1097, add87, %1143, %1060, %1108, %1102, %1052, %1153, %1152, %1196, %1655, %760, call39.i.i199.i218, %164, %194, %1002, tobool26.i.i.i424, %1550, %1553, %157, %182, %1010, call36.i.i.i435, %1011, %1135, %1137, %1138, %189, %168, %713, %714, %717, %718, %205, %1110, %1111, %1699, %1706, %1707, %1710, %1385, call.i.i13.i.i, %1386, %1389, %1390, %1382, %1383, %1384, call1.i18.i.i, %1391, %1392, %1393, call2.i19.i.i, call3.i20.i.i, %1399, %1400, %1401, call14.i.i.i, call15.i.i.i, %1402, %1403, %1404, %1405, %1406, %1409, %1410, %1411, %953, %959, %960, %963, %964, %1555, %211, %1556, %1559, %1560, %1561, %1562, %1563, %1564, %1571, %1572, %1573, %1588, call18.i.i.i.i, call12.i.i77.i, %153, %154, %1291, %1297, %1298, %1301, %1302, %555, %557, %558, %559, %560, call20, %562, %563, %546, %547, %544, %176, %190, %1851, %1852, %1620, tobool.i.i.i503, %1621, cmp.i.i.i504, %1622, tobool2.i.i.i, %1624, %165, %1412, call.i6.i.i.i, %1395, %1396, %1397, call8.i.i.i, call9.i.i.i, %1398, %1051, %1095, add74, %1057, %1056, %1161, %1055, %1164, %1160, %1054, %1167, call.i52.i.i, %1173, %1050, %1157, %1053, %1067, %1193, %1194, %1166, %1574, call13.i.i.i.i, %1586, %1587, %163, %131, %128, %464, %1529, %1530, %1531, %1532, %939, %940, %941, %942, %1632, %1633, %1634, %1660, call.i.i.i6.i, %1661, %1662, %1664, %1665, %1685, %1884, %1036, call7.i.i457, call10.i.i461, %1037, call11.i.i465, call12.i.i466, %1038, call13.i.i467, %1033, call.i.i451, %1623, call.i.i.i505, %1630, %758, call36.i.i196.i215, %759, %762, %763, %764, %723, %724, %725, %1711, %155, %1642, %1638, %1641, %1653, %1745, %1746, %1747, %1749, %1750, call21.i.i.i, %1751, %1752, %1753, %1755, %1277, %1278, %1279, %1280, %1247, %1248, %1249, %1217, call11.i.i76.i.i, call12.i.i77.i.i, %1224, %1225, %1226, %1238, %1239, %1240, %1241, %1242, %1243, %1250, %1251, %1252, %1253, %1254, %1255, %1256, %1259, %1205, %1214, %1221, %1219, call.i.i66.i.i, %1775, %1779, %166, %138, %1477, %1478, %1490, %1491, %1492, %1493, %1494, %1495, %1496, %1497, %1463, %1464, %1504, %1505, %1465, %1466, %1534, %1635, %1654, cmp1.i.i.i, %1636, %1686, %1687, call.i.i.i.i.i, %1631, %1030, tobool.i.i445, %1031, cmp.i.i447, %1032, tobool2.i.i449, %1034, %1350, call39.i.i199.i.i, %1262, %1265, %1168, %158, %161, %1063, %216, %1340, tobool26.i.i185.i.i, %1211, %1212, %1213, %1266, %1267, %1268, %1275, %1276, %1260, %1261, %1244, %1245, %1246, %1282, %405, %387, %383, %411, %795, call.i.i13.i243, %796, %799, %800, call1.i18.i251, %801, %802, %803, call2.i19.i252, call3.i20.i253, %809, %810, %811, call14.i.i265, call15.i.i266, %812, %813, %814, %815, %816, %819, %820, %821, %792, %793, %794, %467, %179, %170, %822, call.i6.i.i279, %805, %806, %807, call8.i.i259, call9.i.i260, %808, call.i52.i71, %583, %603, %604, %606, %192, %191, %127, %1760, %1771, tobool.i20.i, %1772, %1759, %1773, %1774, %1169, %1602, call39.i.i.i.i, %196, %174, call18.i.i178.i.i, %1319, %1320, %1321, %1322, call13.i.i168.i.i, %1310, %1311, %1312, %1304, %1307, %1112, %1113, %1114, %1115, %1116, %1117, %1132, %1133, %1134, %1139, %1723, %391, %385, %417, %410, call4.i.i.i, call5.i.i.i, %1445, %1446, %1370, %1371, %1372, call1.i207.i.i, %1448, %965, %966, %969, %970, %971, %972, %973, %974, %981, %982, %983, %984, call13.i.i.i407, %996, %997, %998, call18.i.i.i417, %416, %448, %1101, %1079, %1081, %1076, %1078, %1073, %1075, %1070, %1072, %1069, call.i3.i.i, call1.i.i.i, call2.i.i.i, call3.i.i.i, call.i.i66.i, %1141, %1142, %408, %431, %420, %419, %415, %428, %378, %377, %427, %1629, %1780, %193, %1783, %1790, %1334, %1335, %1336, %1308, %1309, %1303, %1791, %1792, call.i.i34.i, %1543, %1549, %1554, %1804, %1626, call7.i.i.i, call10.i.i.i510, %1627, call11.i.i.i511, call12.i.i.i512, %1628, call13.i.i.i513, %1812, %1813, %162, %1814, %1818, %156, %1819, %1820, %1821, %160, %1822, %719, %720, %721, %722, %729, %730, %731, %732, call13.i.i168.i187, %744, %745, %746, call18.i.i178.i197, %1824, %169, %135, %1826, %1827, %1833, %167, %159, %1834, %1836, call11.i.i76.i, %139, %701, %707, %708, %711, %712, %1348, call36.i.i196.i.i, %1349, %615, %621, %672, %675, %676, %677, %678, %685, %686, %692, %752, call30.i.i189.i208, %753, %754, %755, %756, %757, call34.i.i194.i213, %726, %727, %728, %696, %698, %699, %632, %633, call10.i.i74.i93, %628, %610, %612, %613, %579, k, %543, keys, step, %548, %73, %76, %545, %83, call, %69, %66, %68, %72, %67, %74, %549, %75, %71, %567, %568, %569, %570, %571, %572, %575, %576, %1040, sub55, %1042, %1043, %1045, div, %1049, add59, add60, %574, add42, %553, cmp14, %119, %1698, %1696, %1697, %140, call39.i.i.i, %516, call1.i207.i, %384, %520, %519, %518, %484, %483, %482, %481, %480, %479, call1.i.i, %284, %452, %454, %455, %389, call10.i.i.i, %388, call4.i.i, %368, %369, %366, call2.i.i, call3.i.i, %286, call.i3.i, %362, %360, %359, %285, call5.i.i, %1845, %1840, %1842, %1843, %1794, call4.i.i37.i, %1795, %1796, %1797, %1799, %296, %300, call1.i18.i, %303, call.i.i13.i, %298, %297, %305, %307, %304, call3.i20.i, call2.i19.i, %306, %299, %313, %314, call15.i.i, %316, %315, call14.i.i, %319, %324, %317, %318, %325, %320, %323, call.i6.i.i, %326, %309, %311, call8.i.i, call9.i.i, %310, %312, call.i52.i, %87, %110, %107, %108, tobool2.i.i, %1803, %1801, %1802, %1853, %1854, %1857, %1858, %538, call13.i.i, call12.i.i, call11.i.i, %541, call.i.i, call7.i.i, call10.i.i, %540, %542, %537, 
Valid Statement VS ::= 
| vs0: const time_t secs_min = 60; 
| vs1: const time_t secs_hour = 3600; 
| vs2: char const *src = srcaddr; 
| vs3: tmp->tm_sec = (seconds % secs_hour) % secs_min; 
| vs4: tmp->tm_wday = (days+4)%7; 
| vs5: tmp->tm_min = (seconds % secs_hour) / secs_min; 
| vs6: pid_t pid = getpid(); 
| vs7: const char *c = ".-*#"; 
| vs8: sigaction(SIGABRT, &act, NULL); 
| vs9: sigaction (sig, &act, NULL); 
| vs10: kill(getpid(),sig); 
| vs11: level &= 0xff; /* clear flags */ 
| vs12: int log_to_stdout = server.logfile[0] == '\0'; 
| vs13: gettimeofday(&tv,NULL); 
| vs14: off = strftime(buf,sizeof(buf),"%d %b %Y %H:%M:%S.",&tm); 
| vs15: tmp->tm_isdst = dst; 
| vs16: time_t seconds = t % secs_day;      /* Remaining seconds. */ 
| vs17: p++; plen++; 
| vs18: fflush(stdout); 
| vs19: abort(); 
| vs20: tmp->tm_mon = 0; 
| vs21: tmp->tm_mday = days+1;  /* Add 1 since our 'days' is zero-based. */ 
| vs22: tmp->tm_year -= 1900;   /* Surprisingly tm_year is year-1900. */ 
| vs23: mdays[1] += is_leap_year(tmp->tm_year); 
| vs24: snprintf(buf+off,sizeof(buf)-off,"%03d",(int)tv.tv_usec/1000); 
| vs25: role_char = 'C'; /* RDB / AOF writing child. */ 
| vs26: role_char = 'X'; /* Sentinel. */ 
| vs27: fprintf(fp,"%d:%c %s %c %s\n", 
| vs28: fflush(fp); 
| vs29: fp = log_to_stdout ? stdout : fopen(server.logfile,"a"); 
| vs30: tmp->tm_mon++; 
| vs31: fprintf(fp,"%s",msg); 
| vs32: int log_to_stdout = server.logfile[0] == '\0'; 
| vs33: msg = "\n------ STACK TRACE ------\n"; 
| vs34: trace_size = backtrace(trace, 100); 
| vs35: uplevel++; /* skip this function */ 
| vs36: int fd = log_to_stdout ? 
| vs37: open(server.logfile, O_APPEND|O_CREAT|O_WRONLY, 0644); 
| vs38: printCrashReport(); 
| vs39: int log_to_stdout = server.logfile[0] == '\0'; 
| vs40: backtrace_symbols_fd(trace+uplevel, trace_size-uplevel, fd); 
| vs41: msg = "\nBacktrace:\n"; 
| vs42: backtrace_symbols_fd(&eip, 1, fd); 
| vs43: bug_report_start = 1; 
| vs44: *dest++ = *src++; 
| vs45: sds keynum_str = argv[first + keynumidx]->ptr; 
| vs46: int keynumidx = spec->fk.keynum.keynumidx; 
| vs47: step = spec->fk.keynum.keystep; 
| vs48: result->numkeys = 0; 
| vs49: first = 0; 
| vs50: unsigned char flags = s[-1]; 
| vs51: result->keys = result->keysbuf; 
| vs52: first += spec->fk.keynum.firstkey; 
| vs53: int negative = 0; 
| vs54: size_t plen = 0; 
| vs55: const char *p = s; 
| vs56: keys = getKeysPrepareResult(result, count); 
| vs57: serverPanic("Redis built-in command declared keys positions not matching the arity requirements."); 
| vs58: keys[k++].flags = flags; 
| vs59: void *ptr = ztrymalloc_usable_internal(size, NULL); 
| vs60: result->size = numkeys; 
| vs61: result->keys = zmalloc(numkeys * sizeof(keyReference)); 
| vs62: update_zmalloc_stat_free(oldsize); 
| vs63: newptr = realloc(ptr,size); 
| vs64: oldsize = zmalloc_size(ptr); 
| vs65: ptr = ztryrealloc_usable_internal(ptr, size, NULL); 
| vs66: update_zmalloc_stat_alloc(size); 
| vs67: size = zmalloc_size(newptr); 
| vs68: void *ptr = malloc(MALLOC_MIN_SIZE(size)+PREFIX_SIZE); 
| vs69: size_t usable_size = 0; 
| vs70: update_zmalloc_stat_alloc(size); 
| vs71: size = zmalloc_size(ptr); 
| vs72: update_zmalloc_stat_free(zmalloc_size(ptr)); 
| vs73: time_t days = t / secs_day;         /* Days passed since epoch. */ 
| vs74: tmp->tm_year = 1970; 
| vs75: tmp->tm_year++; 
| vs76: act.sa_handler = SIG_DFL; 
| vs77: act.sa_flags = SA_NODEFER | SA_ONSTACK | SA_RESETHAND; 
| vs78: days -= days_this_year; 
| vs79: sigemptyset (&act.sa_mask); 
| vs80: time_t days_this_year = 365 + is_leap_year(tmp->tm_year); 
| vs81: const time_t secs_day = 3600*24; 
| vs82: tmp->tm_hour = seconds / secs_hour; 
| vs83: v = p[0]-'0'; 
| vs84: v += p[0]-'0'; 
| vs85: v *= 10; 
| vs86: p++; plen++; 
| vs87: p++; plen++; 
| vs88: negative = 1; 
| vs89: step = spec->fk.range.keystep; 
| vs90: last = argc + lastkey; 
| vs91: int lastkey = spec->fk.range.lastkey; 
| vs92: last = first + ((argc-first)/spec->fk.range.limit + lastkey); 
| vs93: first = spec->bs.index.pos; 
| vs94: last = first + lastkey; 
| vs95: (int)getpid(),role_char, buf,c[level],msg); 
| vs96: days -= mdays[tmp->tm_mon]; 
| vs97: role_char = (server.masterhost ? 'S':'M'); /* Slave or Master. */ 
| vs98: int argc = c->argv-2; 
| vs99: int j, i, k = 0, last, first, step; 
| vs100: int search_flags = GET_KEYSPEC_DEFAULT; 
| vs101: char *dest = destaddr; 
| vs102: int num=10; 
| vs103: int rawmode = (level & LL_RAW); 
| vs104: sigaction(SIGILL, &act, NULL); 
| vs105: sigaction(SIGFPE, &act, NULL); 
| vs106: sigaction(SIGBUS, &act, NULL); 
| vs107: robj **argv = c->argv+2; 
| vs108: sigemptyset(&act.sa_mask); 
| vs109: act.sa_flags = SA_NODEFER | SA_RESETHAND; 
| vs110: sigaction(SIGSEGV, &act, NULL); 
| vs111: act.sa_handler = SIG_DFL; 
| vs112: pthread_mutex_unlock(&bug_report_start_mutex); 
| vs113: serverLog(LL_WARNING,"==> %s:%d '%s' is not true",file,line,estr); 
| vs114: serverLog(LL_WARNING,"=== ASSERTION FAILED ==="); 
| vs115: pthread_mutex_lock(&bug_report_start_mutex); 
| vs116: keySpec *spec = (keySpec *)calloc(1, sizeof(keySpec));; 

Program p ::= init ;  