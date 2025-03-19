; ModuleID = 'tls.c'
source_filename = "tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.iovec = type { i8*, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @tlsInit() #0 !dbg !19 {
entry:
  ret void, !dbg !23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tlsCleanup() #0 !dbg !24 {
entry:
  ret void, !dbg !25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tlsConfigure(%struct.redisTLSContextConfig* %ctx_config) #0 !dbg !26 {
entry:
  %ctx_config.addr = alloca %struct.redisTLSContextConfig*, align 8
  store %struct.redisTLSContextConfig* %ctx_config, %struct.redisTLSContextConfig** %ctx_config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisTLSContextConfig** %ctx_config.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %0 = load %struct.redisTLSContextConfig*, %struct.redisTLSContextConfig** %ctx_config.addr, align 8, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.connection* @connCreateTLS() #0 !dbg !57 {
entry:
  ret %struct.connection* null, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.connection* @connCreateAcceptedTLS(i32 %fd, i32 %require_auth) #0 !dbg !216 {
entry:
  %fd.addr = alloca i32, align 4
  %require_auth.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 %require_auth, i32* %require_auth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %require_auth.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i32, i32* %fd.addr, align 4, !dbg !223
  %1 = load i32, i32* %require_auth.addr, align 4, !dbg !224
  ret %struct.connection* null, !dbg !225
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tlsHasPendingData() #0 !dbg !226 {
entry:
  ret i32 0, !dbg !229
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tlsProcessPendingData() #0 !dbg !230 {
entry:
  ret i32 0, !dbg !231
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @connTLSGetPeerCert(%struct.connection* %conn_) #0 !dbg !232 {
entry:
  %conn_.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn_, %struct.connection** %conn_.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn_.addr, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load %struct.connection*, %struct.connection** %conn_.addr, align 8, !dbg !239
  ret i8* null, !dbg !240
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tls.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./connection.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!8 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!9 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!10 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!11 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!12 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!19 = distinct !DISubprogram(name: "tlsInit", scope: !1, file: !1, line: 1074, type: !20, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !{}
!23 = !DILocation(line: 1075, column: 1, scope: !19)
!24 = distinct !DISubprogram(name: "tlsCleanup", scope: !1, file: !1, line: 1077, type: !20, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!25 = !DILocation(line: 1078, column: 1, scope: !24)
!26 = distinct !DISubprogram(name: "tlsConfigure", scope: !1, file: !1, line: 1080, type: !27, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisTLSContextConfig", file: !32, line: 1403, baseType: !33)
!32 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisTLSContextConfig", file: !32, line: 1386, size: 896, elements: !34)
!34 = !{!35, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cert_file", scope: !33, file: !32, line: 1387, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "key_file", scope: !33, file: !32, line: 1388, baseType: !36, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "key_file_pass", scope: !33, file: !32, line: 1389, baseType: !36, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "client_cert_file", scope: !33, file: !32, line: 1390, baseType: !36, size: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "client_key_file", scope: !33, file: !32, line: 1391, baseType: !36, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "client_key_file_pass", scope: !33, file: !32, line: 1392, baseType: !36, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dh_params_file", scope: !33, file: !32, line: 1393, baseType: !36, size: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ca_cert_file", scope: !33, file: !32, line: 1394, baseType: !36, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ca_cert_dir", scope: !33, file: !32, line: 1395, baseType: !36, size: 64, offset: 512)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "protocols", scope: !33, file: !32, line: 1396, baseType: !36, size: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !33, file: !32, line: 1397, baseType: !36, size: 64, offset: 640)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ciphersuites", scope: !33, file: !32, line: 1398, baseType: !36, size: 64, offset: 704)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_server_ciphers", scope: !33, file: !32, line: 1399, baseType: !29, size: 32, offset: 768)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "session_caching", scope: !33, file: !32, line: 1400, baseType: !29, size: 32, offset: 800)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_size", scope: !33, file: !32, line: 1401, baseType: !29, size: 32, offset: 832)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "session_cache_timeout", scope: !33, file: !32, line: 1402, baseType: !29, size: 32, offset: 864)
!53 = !DILocalVariable(name: "ctx_config", arg: 1, scope: !26, file: !1, line: 1080, type: !30)
!54 = !DILocation(line: 1080, column: 41, scope: !26)
!55 = !DILocation(line: 1081, column: 5, scope: !26)
!56 = !DILocation(line: 1082, column: 5, scope: !26)
!57 = distinct !DISubprogram(name: "connCreateTLS", scope: !1, file: !1, line: 1085, type: !58, scopeLine: 1085, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!58 = !DISubroutineType(types: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !63)
!63 = !{!64, !204, !206, !208, !209, !210, !211, !212, !213, !214}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !4, line: 78, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !68)
!68 = !{!69, !138, !149, !157, !168, !172, !173, !177, !181, !182, !186, !190, !198, !199, !200}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !67, file: !4, line: 60, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !29, !92, !29}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !75, line: 99, size: 640, elements: !76)
!75 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!76 = !{!77, !78, !79, !81, !93, !100, !129, !130, !131, !136, !137}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !74, file: !75, line: 100, baseType: !29, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !74, file: !75, line: 101, baseType: !29, size: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !74, file: !75, line: 102, baseType: !80, size: 64, offset: 64)
!80 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !74, file: !75, line: 103, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !75, line: 77, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !75, line: 72, size: 256, elements: !85)
!85 = !{!86, !87, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !84, file: !75, line: 73, baseType: !29, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !84, file: !75, line: 74, baseType: !88, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !75, line: 66, baseType: !71)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !84, file: !75, line: 75, baseType: !88, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !84, file: !75, line: 76, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !74, file: !75, line: 104, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !75, line: 96, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !75, line: 93, size: 64, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !96, file: !75, line: 94, baseType: !29, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !96, file: !75, line: 95, baseType: !29, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !74, file: !75, line: 105, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !75, line: 90, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !75, line: 80, size: 512, elements: !104)
!104 = !{!105, !106, !114, !119, !124, !125, !127, !128}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !75, line: 81, baseType: !80, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !103, file: !75, line: 82, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !108, line: 22, baseType: !109)
!108 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !110, line: 27, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !112, line: 45, baseType: !113)
!112 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !103, file: !75, line: 83, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !75, line: 67, baseType: !117)
!117 = !DISubroutineType(types: !118)
!118 = !{!29, !73, !80, !92}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !103, file: !75, line: 84, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !75, line: 68, baseType: !122)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !73, !92}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !103, file: !75, line: 85, baseType: !92, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !75, line: 86, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !75, line: 87, baseType: !126, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !103, file: !75, line: 88, baseType: !29, size: 32, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !74, file: !75, line: 106, baseType: !29, size: 32, offset: 320)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !74, file: !75, line: 107, baseType: !92, size: 64, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !74, file: !75, line: 108, baseType: !132, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !75, line: 69, baseType: !134)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !73}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !74, file: !75, line: 109, baseType: !132, size: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !75, line: 110, baseType: !29, size: 32, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !67, file: !4, line: 61, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!29, !142, !143, !29, !143, !145}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !142}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !67, file: !4, line: 62, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!29, !142, !153, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 46, baseType: !113)
!156 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !67, file: !4, line: 63, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!29, !142, !161, !29}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !164, line: 26, size: 128, elements: !165)
!164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !163, file: !164, line: 28, baseType: !92, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !163, file: !164, line: 29, baseType: !155, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !67, file: !4, line: 64, baseType: !169, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!29, !142, !92, !155}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !67, file: !4, line: 65, baseType: !146, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !67, file: !4, line: 66, baseType: !174, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!29, !142, !145}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !67, file: !4, line: 67, baseType: !178, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!29, !142, !145, !29}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !67, file: !4, line: 68, baseType: !174, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !67, file: !4, line: 69, baseType: !183, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!143, !142}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !67, file: !4, line: 70, baseType: !187, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!29, !142, !143, !29, !80}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !67, file: !4, line: 71, baseType: !191, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !142, !36, !194, !80}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !195, line: 108, baseType: !196)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !112, line: 194, baseType: !197)
!197 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !67, file: !4, line: 72, baseType: !191, size: 64, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !67, file: !4, line: 73, baseType: !191, size: 64, offset: 832)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !67, file: !4, line: 74, baseType: !201, size: 64, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!29, !142}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !62, file: !4, line: 79, baseType: !205, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !4, line: 80, baseType: !207, size: 16, offset: 96)
!207 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !62, file: !4, line: 81, baseType: !207, size: 16, offset: 112)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !62, file: !4, line: 82, baseType: !29, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !62, file: !4, line: 83, baseType: !92, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !62, file: !4, line: 84, baseType: !145, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !62, file: !4, line: 85, baseType: !145, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !62, file: !4, line: 86, baseType: !145, size: 64, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !62, file: !4, line: 87, baseType: !29, size: 32, offset: 448)
!215 = !DILocation(line: 1086, column: 5, scope: !57)
!216 = distinct !DISubprogram(name: "connCreateAcceptedTLS", scope: !1, file: !1, line: 1089, type: !217, scopeLine: 1089, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!217 = !DISubroutineType(types: !218)
!218 = !{!60, !29, !29}
!219 = !DILocalVariable(name: "fd", arg: 1, scope: !216, file: !1, line: 1089, type: !29)
!220 = !DILocation(line: 1089, column: 39, scope: !216)
!221 = !DILocalVariable(name: "require_auth", arg: 2, scope: !216, file: !1, line: 1089, type: !29)
!222 = !DILocation(line: 1089, column: 47, scope: !216)
!223 = !DILocation(line: 1090, column: 5, scope: !216)
!224 = !DILocation(line: 1091, column: 5, scope: !216)
!225 = !DILocation(line: 1093, column: 5, scope: !216)
!226 = distinct !DISubprogram(name: "tlsHasPendingData", scope: !1, file: !1, line: 1096, type: !227, scopeLine: 1096, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!227 = !DISubroutineType(types: !228)
!228 = !{!29}
!229 = !DILocation(line: 1097, column: 5, scope: !226)
!230 = distinct !DISubprogram(name: "tlsProcessPendingData", scope: !1, file: !1, line: 1100, type: !227, scopeLine: 1100, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!231 = !DILocation(line: 1101, column: 5, scope: !230)
!232 = distinct !DISubprogram(name: "connTLSGetPeerCert", scope: !1, file: !1, line: 1104, type: !233, scopeLine: 1104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !60}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !236, line: 43, baseType: !36)
!236 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!237 = !DILocalVariable(name: "conn_", arg: 1, scope: !232, file: !1, line: 1104, type: !60)
!238 = !DILocation(line: 1104, column: 36, scope: !232)
!239 = !DILocation(line: 1105, column: 12, scope: !232)
!240 = !DILocation(line: 1106, column: 5, scope: !232)
