; ModuleID = 'monotonic.c'
source_filename = "monotonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }

@getMonotonicUs = dso_local global i64 ()* null, align 8, !dbg !0
@monotonic_info_string = internal global [32 x i8] zeroinitializer, align 16, !dbg !19
@.str = private unnamed_addr constant [8 x i8] c"rc == 0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"monotonic.c\00", align 1
@__PRETTY_FUNCTION__.monotonicInit_posix = private unnamed_addr constant [27 x i8] c"void monotonicInit_posix()\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"POSIX clock_gettime\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @monotonicInit() #0 !dbg !35 {
entry:
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !41
  %cmp = icmp eq i64 ()* %0, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  call void @monotonicInit_posix(), !dbg !45
  br label %if.end, !dbg !45

if.end:                                           ; preds = %if.then, %entry
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @monotonic_info_string, i64 0, i64 0), !dbg !46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @monotonicInfoString() #0 !dbg !47 {
entry:
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @monotonic_info_string, i64 0, i64 0), !dbg !48
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @monotonicGetType() #0 !dbg !49 {
entry:
  %retval = alloca i32, align 4
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !53
  %cmp = icmp eq i64 ()* %0, @getMonotonicUs_posix, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !58
  br label %return, !dbg !58

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !59
  ret i32 %1, !dbg !59
}

; Function Attrs: noinline nounwind uwtable
define internal void @monotonicInit_posix() #0 !dbg !60 {
entry:
  %ts = alloca %struct.timespec, align 8
  %rc = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.timespec* %ts, metadata !63, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !73, metadata !DIExpression()), !dbg !75
  %call = call i32 @clock_gettime(i32 1, %struct.timespec* %ts) #4, !dbg !76
  store i32 %call, i32* %rc, align 4, !dbg !75
  %0 = load i32, i32* %rc, align 4, !dbg !77
  %cmp = icmp eq i32 %0, 0, !dbg !77
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !77

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !77

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.monotonicInit_posix, i64 0, i64 0)) #5, !dbg !77
  unreachable, !dbg !77

1:                                                ; No predecessors!
  br label %cond.end, !dbg !77

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @monotonic_info_string, i64 0, i64 0), i64 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !78
  store i64 ()* @getMonotonicUs_posix, i64 ()** @getMonotonicUs, align 8, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @getMonotonicUs_posix() #0 !dbg !81 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.dbg.declare(metadata %struct.timespec* %ts, metadata !82, metadata !DIExpression()), !dbg !83
  %call = call i32 @clock_gettime(i32 1, %struct.timespec* %ts) #4, !dbg !84
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0, !dbg !85
  %0 = load i64, i64* %tv_sec, align 8, !dbg !85
  %mul = mul i64 %0, 1000000, !dbg !86
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1, !dbg !87
  %1 = load i64, i64* %tv_nsec, align 8, !dbg !87
  %div = sdiv i64 %1, 1000, !dbg !88
  %add = add i64 %mul, %div, !dbg !89
  ret i64 %add, !dbg !90
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "getMonotonicUs", scope: !2, file: !3, line: 12, type: !25, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "monotonic.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "monotonic_clock_type", file: !6, line: 27, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MONOTONIC_CLOCK_POSIX", value: 0)
!10 = !DIEnumerator(name: "MONOTONIC_CLOCK_HW", value: 1)
!11 = !{!12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "monotonic_info_string", scope: !2, file: !3, line: 14, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24}
!24 = !DISubrange(count: 32)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !6, line: 22, baseType: !13)
!29 = !{i32 7, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!35 = distinct !DISubprogram(name: "monotonicInit", scope: !3, file: !3, line: 158, type: !36, scopeLine: 158, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !40)
!36 = !DISubroutineType(types: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!40 = !{}
!41 = !DILocation(line: 167, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !35, file: !3, line: 167, column: 9)
!43 = !DILocation(line: 167, column: 24, scope: !42)
!44 = !DILocation(line: 167, column: 9, scope: !35)
!45 = !DILocation(line: 167, column: 33, scope: !42)
!46 = !DILocation(line: 169, column: 5, scope: !35)
!47 = distinct !DISubprogram(name: "monotonicInfoString", scope: !3, file: !3, line: 172, type: !36, scopeLine: 172, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !40)
!48 = !DILocation(line: 173, column: 5, scope: !47)
!49 = distinct !DISubprogram(name: "monotonicGetType", scope: !3, file: !3, line: 176, type: !50, scopeLine: 176, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !40)
!50 = !DISubroutineType(types: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotonic_clock_type", file: !6, line: 30, baseType: !5)
!53 = !DILocation(line: 177, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !3, line: 177, column: 9)
!55 = !DILocation(line: 177, column: 24, scope: !54)
!56 = !DILocation(line: 177, column: 9, scope: !49)
!57 = !DILocation(line: 178, column: 9, scope: !54)
!58 = !DILocation(line: 179, column: 5, scope: !49)
!59 = !DILocation(line: 180, column: 1, scope: !49)
!60 = distinct !DISubprogram(name: "monotonicInit_posix", scope: !3, file: !3, line: 143, type: !61, scopeLine: 143, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !40)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "ts", scope: !60, file: !3, line: 147, type: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !65, line: 11, size: 128, elements: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!66 = !{!67, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !64, file: !65, line: 16, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !16, line: 160, baseType: !69)
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !64, file: !65, line: 21, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !16, line: 197, baseType: !69)
!72 = !DILocation(line: 147, column: 21, scope: !60)
!73 = !DILocalVariable(name: "rc", scope: !60, file: !3, line: 148, type: !74)
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DILocation(line: 148, column: 9, scope: !60)
!76 = !DILocation(line: 148, column: 14, scope: !60)
!77 = !DILocation(line: 149, column: 5, scope: !60)
!78 = !DILocation(line: 151, column: 5, scope: !60)
!79 = !DILocation(line: 153, column: 20, scope: !60)
!80 = !DILocation(line: 154, column: 1, scope: !60)
!81 = distinct !DISubprogram(name: "getMonotonicUs_posix", scope: !3, file: !3, line: 133, type: !26, scopeLine: 133, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !40)
!82 = !DILocalVariable(name: "ts", scope: !81, file: !3, line: 138, type: !64)
!83 = !DILocation(line: 138, column: 21, scope: !81)
!84 = !DILocation(line: 139, column: 5, scope: !81)
!85 = !DILocation(line: 140, column: 26, scope: !81)
!86 = !DILocation(line: 140, column: 34, scope: !81)
!87 = !DILocation(line: 140, column: 49, scope: !81)
!88 = !DILocation(line: 140, column: 57, scope: !81)
!89 = !DILocation(line: 140, column: 44, scope: !81)
!90 = !DILocation(line: 140, column: 5, scope: !81)
