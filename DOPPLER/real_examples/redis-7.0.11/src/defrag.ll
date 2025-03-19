; ModuleID = 'defrag.c'
source_filename = "defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisObject = type { i32, i32, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @activeDefragCycle() #0 !dbg !11 {
entry:
  ret void, !dbg !14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @activeDefragAlloc(i8* %ptr) #0 !dbg !15 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !20
  ret i8* null, !dbg !21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.redisObject* @activeDefragStringOb(%struct.redisObject* %ob, i64* %defragged) #0 !dbg !22 {
entry:
  %ob.addr = alloca %struct.redisObject*, align 8
  %defragged.addr = alloca i64*, align 8
  store %struct.redisObject* %ob, %struct.redisObject** %ob.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %ob.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i64* %defragged, i64** %defragged.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %defragged.addr, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = load %struct.redisObject*, %struct.redisObject** %ob.addr, align 8, !dbg !43
  %1 = load i64*, i64** %defragged.addr, align 8, !dbg !44
  ret %struct.redisObject* null, !dbg !45
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "defrag.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!11 = distinct !DISubprogram(name: "activeDefragCycle", scope: !1, file: !1, line: 1232, type: !12, scopeLine: 1232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !DILocation(line: 1234, column: 1, scope: !11)
!15 = distinct !DISubprogram(name: "activeDefragAlloc", scope: !1, file: !1, line: 1236, type: !16, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4}
!18 = !DILocalVariable(name: "ptr", arg: 1, scope: !15, file: !1, line: 1236, type: !4)
!19 = !DILocation(line: 1236, column: 31, scope: !15)
!20 = !DILocation(line: 1237, column: 5, scope: !15)
!21 = !DILocation(line: 1238, column: 5, scope: !15)
!22 = distinct !DISubprogram(name: "activeDefragStringOb", scope: !1, file: !1, line: 1241, type: !23, scopeLine: 1241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !37}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !27, line: 862, baseType: !28)
!27 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !27, line: 854, size: 128, elements: !29)
!29 = !{!30, !32, !33, !34, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 855, baseType: !31, size: 4, flags: DIFlagBitField, extraData: i64 0)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !28, file: !27, line: 856, baseType: !31, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !28, file: !27, line: 857, baseType: !31, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !28, file: !27, line: 860, baseType: !35, size: 32, offset: 32)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !28, file: !27, line: 861, baseType: !4, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!39 = !DILocalVariable(name: "ob", arg: 1, scope: !22, file: !1, line: 1241, type: !25)
!40 = !DILocation(line: 1241, column: 34, scope: !22)
!41 = !DILocalVariable(name: "defragged", arg: 2, scope: !22, file: !1, line: 1241, type: !37)
!42 = !DILocation(line: 1241, column: 44, scope: !22)
!43 = !DILocation(line: 1242, column: 5, scope: !22)
!44 = !DILocation(line: 1243, column: 5, scope: !22)
!45 = !DILocation(line: 1244, column: 5, scope: !22)
