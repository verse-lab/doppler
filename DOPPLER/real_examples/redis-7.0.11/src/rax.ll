; ModuleID = 'rax.c'
source_filename = "rax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.raxNode = type { i32, [0 x i8] }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }

@.str = private unnamed_addr constant [22 x i8] c"rax-not-found-pointer\00", align 1
@raxNotFound = dso_local global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@raxDebugMsg = internal global i32 1, align 4, !dbg !35
@.str.1 = private unnamed_addr constant [16 x i8] c"n->iscompr == 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rax.c\00", align 1
@__PRETTY_FUNCTION__.raxAddChild = private unnamed_addr constant [72 x i8] c"raxNode *raxAddChild(raxNode *, unsigned char, raxNode **, raxNode ***)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"n->size == 0 && n->iscompr == 0\00", align 1
@__PRETTY_FUNCTION__.raxCompressNode = private unnamed_addr constant [73 x i8] c"raxNode *raxCompressNode(raxNode *, unsigned char *, size_t, raxNode **)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"raxRemove(rax,s,i,NULL) != 0\00", align 1
@__PRETTY_FUNCTION__.raxGenericInsert = private unnamed_addr constant [75 x i8] c"int raxGenericInsert(rax *, unsigned char *, size_t, void *, void **, int)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"rax->numnodes == 0\00", align 1
@__PRETTY_FUNCTION__.raxFreeWithCallback = private unnamed_addr constant [50 x i8] c"void raxFreeWithCallback(rax *, void (*)(void *))\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"it->node->iskey\00", align 1
@__PRETTY_FUNCTION__.raxSeek = private unnamed_addr constant [66 x i8] c"int raxSeek(raxIterator *, const char *, unsigned char *, size_t)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%c%.*s%c\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"=%p\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" `-(%c) \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s: %p [%.*s] key:%u size:%u children:\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxSetDebugMsg(i32 %onoff) #0 !dbg !43 {
entry:
  %onoff.addr = alloca i32, align 4
  store i32 %onoff, i32* %onoff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onoff.addr, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load i32, i32* %onoff.addr, align 4, !dbg !48
  store i32 %0, i32* @raxDebugMsg, align 4, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode* @raxNewNode(i64 %children, i32 %datafield) #0 !dbg !51 {
entry:
  %retval = alloca %struct.raxNode*, align 8
  %children.addr = alloca i64, align 8
  %datafield.addr = alloca i32, align 4
  %nodesize = alloca i64, align 8
  %node = alloca %struct.raxNode*, align 8
  store i64 %children, i64* %children.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %children.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %datafield, i32* %datafield.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %datafield.addr, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i64* %nodesize, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i64, i64* %children.addr, align 8, !dbg !62
  %add = add i64 4, %0, !dbg !63
  %1 = load i64, i64* %children.addr, align 8, !dbg !64
  %add1 = add i64 %1, 4, !dbg !64
  %rem = urem i64 %add1, 8, !dbg !64
  %sub = sub i64 8, %rem, !dbg !64
  %and = and i64 %sub, 7, !dbg !64
  %add2 = add i64 %add, %and, !dbg !65
  %2 = load i64, i64* %children.addr, align 8, !dbg !66
  %mul = mul i64 8, %2, !dbg !67
  %add3 = add i64 %add2, %mul, !dbg !68
  store i64 %add3, i64* %nodesize, align 8, !dbg !61
  %3 = load i32, i32* %datafield.addr, align 4, !dbg !69
  %tobool = icmp ne i32 %3, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %nodesize, align 8, !dbg !72
  %add4 = add i64 %4, 8, !dbg !72
  store i64 %add4, i64* %nodesize, align 8, !dbg !72
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata %struct.raxNode** %node, metadata !74, metadata !DIExpression()), !dbg !75
  %5 = load i64, i64* %nodesize, align 8, !dbg !76
  %call = call i8* @zmalloc(i64 %5), !dbg !77
  %6 = bitcast i8* %call to %struct.raxNode*, !dbg !77
  store %struct.raxNode* %6, %struct.raxNode** %node, align 8, !dbg !75
  %7 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !78
  %cmp = icmp eq %struct.raxNode* %7, null, !dbg !80
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !81

if.then5:                                         ; preds = %if.end
  store %struct.raxNode* null, %struct.raxNode** %retval, align 8, !dbg !82
  br label %return, !dbg !82

if.end6:                                          ; preds = %if.end
  %8 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !83
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !84
  %bf.load = load i32, i32* %9, align 4, !dbg !85
  %bf.clear = and i32 %bf.load, -2, !dbg !85
  store i32 %bf.clear, i32* %9, align 4, !dbg !85
  %10 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !86
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !87
  %bf.load7 = load i32, i32* %11, align 4, !dbg !88
  %bf.clear8 = and i32 %bf.load7, -3, !dbg !88
  store i32 %bf.clear8, i32* %11, align 4, !dbg !88
  %12 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !89
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !90
  %bf.load9 = load i32, i32* %13, align 4, !dbg !91
  %bf.clear10 = and i32 %bf.load9, -5, !dbg !91
  store i32 %bf.clear10, i32* %13, align 4, !dbg !91
  %14 = load i64, i64* %children.addr, align 8, !dbg !92
  %conv = trunc i64 %14 to i32, !dbg !92
  %15 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !93
  %16 = bitcast %struct.raxNode* %15 to i32*, !dbg !94
  %bf.load11 = load i32, i32* %16, align 4, !dbg !95
  %bf.value = and i32 %conv, 536870911, !dbg !95
  %bf.shl = shl i32 %bf.value, 3, !dbg !95
  %bf.clear12 = and i32 %bf.load11, 7, !dbg !95
  %bf.set = or i32 %bf.clear12, %bf.shl, !dbg !95
  store i32 %bf.set, i32* %16, align 4, !dbg !95
  %17 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !96
  store %struct.raxNode* %17, %struct.raxNode** %retval, align 8, !dbg !97
  br label %return, !dbg !97

return:                                           ; preds = %if.end6, %if.then5
  %18 = load %struct.raxNode*, %struct.raxNode** %retval, align 8, !dbg !98
  ret %struct.raxNode* %18, !dbg !98
}

declare dso_local i8* @zmalloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rax* @raxNew() #0 !dbg !99 {
entry:
  %retval = alloca %struct.rax*, align 8
  %rax = alloca %struct.rax*, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax, metadata !111, metadata !DIExpression()), !dbg !112
  %call = call i8* @zmalloc(i64 24), !dbg !113
  %0 = bitcast i8* %call to %struct.rax*, !dbg !113
  store %struct.rax* %0, %struct.rax** %rax, align 8, !dbg !112
  %1 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !114
  %cmp = icmp eq %struct.rax* %1, null, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  store %struct.rax* null, %struct.rax** %retval, align 8, !dbg !118
  br label %return, !dbg !118

if.end:                                           ; preds = %entry
  %2 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !119
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %2, i32 0, i32 1, !dbg !120
  store i64 0, i64* %numele, align 8, !dbg !121
  %3 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !122
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %3, i32 0, i32 2, !dbg !123
  store i64 1, i64* %numnodes, align 8, !dbg !124
  %call1 = call %struct.raxNode* @raxNewNode(i64 0, i32 0), !dbg !125
  %4 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !126
  %head = getelementptr inbounds %struct.rax, %struct.rax* %4, i32 0, i32 0, !dbg !127
  store %struct.raxNode* %call1, %struct.raxNode** %head, align 8, !dbg !128
  %5 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !129
  %head2 = getelementptr inbounds %struct.rax, %struct.rax* %5, i32 0, i32 0, !dbg !131
  %6 = load %struct.raxNode*, %struct.raxNode** %head2, align 8, !dbg !131
  %cmp3 = icmp eq %struct.raxNode* %6, null, !dbg !132
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !133

if.then4:                                         ; preds = %if.end
  %7 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !134
  %8 = bitcast %struct.rax* %7 to i8*, !dbg !134
  call void @zfree(i8* %8), !dbg !136
  store %struct.rax* null, %struct.rax** %retval, align 8, !dbg !137
  br label %return, !dbg !137

if.else:                                          ; preds = %if.end
  %9 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !138
  store %struct.rax* %9, %struct.rax** %retval, align 8, !dbg !140
  br label %return, !dbg !140

return:                                           ; preds = %if.else, %if.then4, %if.then
  %10 = load %struct.rax*, %struct.rax** %retval, align 8, !dbg !141
  ret %struct.rax* %10, !dbg !141
}

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode* @raxReallocForData(%struct.raxNode* %n, i8* %data) #0 !dbg !142 {
entry:
  %retval = alloca %struct.raxNode*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %data.addr = alloca i8*, align 8
  %curlen = alloca i64, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load i8*, i8** %data.addr, align 8, !dbg !149
  %cmp = icmp eq i8* %0, null, !dbg !151
  br i1 %cmp, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %1 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !153
  store %struct.raxNode* %1, %struct.raxNode** %retval, align 8, !dbg !154
  br label %return, !dbg !154

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %curlen, metadata !155, metadata !DIExpression()), !dbg !156
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %3 = bitcast %struct.raxNode* %2 to i32*, !dbg !157
  %bf.load = load i32, i32* %3, align 4, !dbg !157
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !157
  %conv = zext i32 %bf.lshr to i64, !dbg !157
  %add = add i64 4, %conv, !dbg !157
  %4 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %5 = bitcast %struct.raxNode* %4 to i32*, !dbg !157
  %bf.load1 = load i32, i32* %5, align 4, !dbg !157
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !157
  %add3 = add nsw i32 %bf.lshr2, 4, !dbg !157
  %conv4 = sext i32 %add3 to i64, !dbg !157
  %rem = urem i64 %conv4, 8, !dbg !157
  %sub = sub i64 8, %rem, !dbg !157
  %and = and i64 %sub, 7, !dbg !157
  %add5 = add i64 %add, %and, !dbg !157
  %6 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %7 = bitcast %struct.raxNode* %6 to i32*, !dbg !157
  %bf.load6 = load i32, i32* %7, align 4, !dbg !157
  %bf.lshr7 = lshr i32 %bf.load6, 2, !dbg !157
  %bf.clear = and i32 %bf.lshr7, 1, !dbg !157
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !157
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !157

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !157

cond.false:                                       ; preds = %if.end
  %8 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !157
  %bf.load8 = load i32, i32* %9, align 4, !dbg !157
  %bf.lshr9 = lshr i32 %bf.load8, 3, !dbg !157
  %conv10 = zext i32 %bf.lshr9 to i64, !dbg !157
  %mul = mul i64 8, %conv10, !dbg !157
  br label %cond.end, !dbg !157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !157
  %add11 = add i64 %add5, %cond, !dbg !157
  %10 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !157
  %bf.load12 = load i32, i32* %11, align 4, !dbg !157
  %bf.clear13 = and i32 %bf.load12, 1, !dbg !157
  %tobool14 = icmp ne i32 %bf.clear13, 0, !dbg !157
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !157

land.rhs:                                         ; preds = %cond.end
  %12 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !157
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !157
  %bf.load15 = load i32, i32* %13, align 4, !dbg !157
  %bf.lshr16 = lshr i32 %bf.load15, 1, !dbg !157
  %bf.clear17 = and i32 %bf.lshr16, 1, !dbg !157
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !157
  %lnot = xor i1 %tobool18, true, !dbg !157
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %14 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !158
  %land.ext = zext i1 %14 to i32, !dbg !157
  %conv19 = sext i32 %land.ext to i64, !dbg !157
  %mul20 = mul i64 %conv19, 8, !dbg !157
  %add21 = add i64 %add11, %mul20, !dbg !157
  store i64 %add21, i64* %curlen, align 8, !dbg !156
  %15 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !159
  %16 = bitcast %struct.raxNode* %15 to i8*, !dbg !159
  %17 = load i64, i64* %curlen, align 8, !dbg !160
  %add22 = add i64 %17, 8, !dbg !161
  %call = call i8* @zrealloc(i8* %16, i64 %add22), !dbg !162
  %18 = bitcast i8* %call to %struct.raxNode*, !dbg !162
  store %struct.raxNode* %18, %struct.raxNode** %retval, align 8, !dbg !163
  br label %return, !dbg !163

return:                                           ; preds = %land.end, %if.then
  %19 = load %struct.raxNode*, %struct.raxNode** %retval, align 8, !dbg !164
  ret %struct.raxNode* %19, !dbg !164
}

declare dso_local i8* @zrealloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxSetData(%struct.raxNode* %n, i8* %data) #0 !dbg !165 {
entry:
  %n.addr = alloca %struct.raxNode*, align 8
  %data.addr = alloca i8*, align 8
  %ndata = alloca i8**, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !168, metadata !DIExpression()), !dbg !169
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !172
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !173
  %bf.load = load i32, i32* %1, align 4, !dbg !174
  %bf.clear = and i32 %bf.load, -2, !dbg !174
  %bf.set = or i32 %bf.clear, 1, !dbg !174
  store i32 %bf.set, i32* %1, align 4, !dbg !174
  %2 = load i8*, i8** %data.addr, align 8, !dbg !175
  %cmp = icmp ne i8* %2, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.else, !dbg !178

if.then:                                          ; preds = %entry
  %3 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !179
  %4 = bitcast %struct.raxNode* %3 to i32*, !dbg !181
  %bf.load1 = load i32, i32* %4, align 4, !dbg !182
  %bf.clear2 = and i32 %bf.load1, -3, !dbg !182
  store i32 %bf.clear2, i32* %4, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata i8*** %ndata, metadata !183, metadata !DIExpression()), !dbg !184
  %5 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !185
  %6 = bitcast %struct.raxNode* %5 to i8*, !dbg !186
  %7 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !187
  %bf.load3 = load i32, i32* %8, align 4, !dbg !187
  %bf.lshr = lshr i32 %bf.load3, 3, !dbg !187
  %conv = zext i32 %bf.lshr to i64, !dbg !187
  %add = add i64 4, %conv, !dbg !187
  %9 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %10 = bitcast %struct.raxNode* %9 to i32*, !dbg !187
  %bf.load4 = load i32, i32* %10, align 4, !dbg !187
  %bf.lshr5 = lshr i32 %bf.load4, 3, !dbg !187
  %add6 = add nsw i32 %bf.lshr5, 4, !dbg !187
  %conv7 = sext i32 %add6 to i64, !dbg !187
  %rem = urem i64 %conv7, 8, !dbg !187
  %sub = sub i64 8, %rem, !dbg !187
  %and = and i64 %sub, 7, !dbg !187
  %add8 = add i64 %add, %and, !dbg !187
  %11 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %12 = bitcast %struct.raxNode* %11 to i32*, !dbg !187
  %bf.load9 = load i32, i32* %12, align 4, !dbg !187
  %bf.lshr10 = lshr i32 %bf.load9, 2, !dbg !187
  %bf.clear11 = and i32 %bf.lshr10, 1, !dbg !187
  %tobool = icmp ne i32 %bf.clear11, 0, !dbg !187
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !187

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !187

cond.false:                                       ; preds = %if.then
  %13 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !187
  %bf.load12 = load i32, i32* %14, align 4, !dbg !187
  %bf.lshr13 = lshr i32 %bf.load12, 3, !dbg !187
  %conv14 = zext i32 %bf.lshr13 to i64, !dbg !187
  %mul = mul i64 8, %conv14, !dbg !187
  br label %cond.end, !dbg !187

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !187
  %add15 = add i64 %add8, %cond, !dbg !187
  %15 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %16 = bitcast %struct.raxNode* %15 to i32*, !dbg !187
  %bf.load16 = load i32, i32* %16, align 4, !dbg !187
  %bf.clear17 = and i32 %bf.load16, 1, !dbg !187
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !187
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !187

land.rhs:                                         ; preds = %cond.end
  %17 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !187
  %18 = bitcast %struct.raxNode* %17 to i32*, !dbg !187
  %bf.load19 = load i32, i32* %18, align 4, !dbg !187
  %bf.lshr20 = lshr i32 %bf.load19, 1, !dbg !187
  %bf.clear21 = and i32 %bf.lshr20, 1, !dbg !187
  %tobool22 = icmp ne i32 %bf.clear21, 0, !dbg !187
  %lnot = xor i1 %tobool22, true, !dbg !187
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %19 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !188
  %land.ext = zext i1 %19 to i32, !dbg !187
  %conv23 = sext i32 %land.ext to i64, !dbg !187
  %mul24 = mul i64 %conv23, 8, !dbg !187
  %add25 = add i64 %add15, %mul24, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %add25, !dbg !189
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !190
  %20 = bitcast i8* %add.ptr26 to i8**, !dbg !191
  store i8** %20, i8*** %ndata, align 8, !dbg !184
  %21 = load i8**, i8*** %ndata, align 8, !dbg !192
  %22 = bitcast i8** %21 to i8*, !dbg !193
  %23 = bitcast i8** %data.addr to i8*, !dbg !193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false), !dbg !193
  br label %if.end, !dbg !194

if.else:                                          ; preds = %entry
  %24 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !195
  %25 = bitcast %struct.raxNode* %24 to i32*, !dbg !197
  %bf.load27 = load i32, i32* %25, align 4, !dbg !198
  %bf.clear28 = and i32 %bf.load27, -3, !dbg !198
  %bf.set29 = or i32 %bf.clear28, 2, !dbg !198
  store i32 %bf.set29, i32* %25, align 4, !dbg !198
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end
  ret void, !dbg !199
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @raxGetData(%struct.raxNode* %n) #0 !dbg !200 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %ndata = alloca i8**, align 8
  %data = alloca i8*, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !203, metadata !DIExpression()), !dbg !204
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !205
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !207
  %bf.load = load i32, i32* %1, align 4, !dbg !207
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !207
  %bf.clear = and i32 %bf.lshr, 1, !dbg !207
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !205
  br i1 %tobool, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !209
  br label %return, !dbg !209

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8*** %ndata, metadata !210, metadata !DIExpression()), !dbg !211
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !212
  %3 = bitcast %struct.raxNode* %2 to i8*, !dbg !213
  %4 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %5 = bitcast %struct.raxNode* %4 to i32*, !dbg !214
  %bf.load1 = load i32, i32* %5, align 4, !dbg !214
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !214
  %conv = zext i32 %bf.lshr2 to i64, !dbg !214
  %add = add i64 4, %conv, !dbg !214
  %6 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %7 = bitcast %struct.raxNode* %6 to i32*, !dbg !214
  %bf.load3 = load i32, i32* %7, align 4, !dbg !214
  %bf.lshr4 = lshr i32 %bf.load3, 3, !dbg !214
  %add5 = add nsw i32 %bf.lshr4, 4, !dbg !214
  %conv6 = sext i32 %add5 to i64, !dbg !214
  %rem = urem i64 %conv6, 8, !dbg !214
  %sub = sub i64 8, %rem, !dbg !214
  %and = and i64 %sub, 7, !dbg !214
  %add7 = add i64 %add, %and, !dbg !214
  %8 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !214
  %bf.load8 = load i32, i32* %9, align 4, !dbg !214
  %bf.lshr9 = lshr i32 %bf.load8, 2, !dbg !214
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !214
  %tobool11 = icmp ne i32 %bf.clear10, 0, !dbg !214
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !214

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !214

cond.false:                                       ; preds = %if.end
  %10 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !214
  %bf.load12 = load i32, i32* %11, align 4, !dbg !214
  %bf.lshr13 = lshr i32 %bf.load12, 3, !dbg !214
  %conv14 = zext i32 %bf.lshr13 to i64, !dbg !214
  %mul = mul i64 8, %conv14, !dbg !214
  br label %cond.end, !dbg !214

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !214
  %add15 = add i64 %add7, %cond, !dbg !214
  %12 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !214
  %bf.load16 = load i32, i32* %13, align 4, !dbg !214
  %bf.clear17 = and i32 %bf.load16, 1, !dbg !214
  %tobool18 = icmp ne i32 %bf.clear17, 0, !dbg !214
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !214

land.rhs:                                         ; preds = %cond.end
  %14 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !214
  %15 = bitcast %struct.raxNode* %14 to i32*, !dbg !214
  %bf.load19 = load i32, i32* %15, align 4, !dbg !214
  %bf.lshr20 = lshr i32 %bf.load19, 1, !dbg !214
  %bf.clear21 = and i32 %bf.lshr20, 1, !dbg !214
  %tobool22 = icmp ne i32 %bf.clear21, 0, !dbg !214
  %lnot = xor i1 %tobool22, true, !dbg !214
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %16 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !215
  %land.ext = zext i1 %16 to i32, !dbg !214
  %conv23 = sext i32 %land.ext to i64, !dbg !214
  %mul24 = mul i64 %conv23, 8, !dbg !214
  %add25 = add i64 %add15, %mul24, !dbg !214
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %add25, !dbg !216
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !217
  %17 = bitcast i8* %add.ptr26 to i8**, !dbg !218
  store i8** %17, i8*** %ndata, align 8, !dbg !211
  call void @llvm.dbg.declare(metadata i8** %data, metadata !219, metadata !DIExpression()), !dbg !220
  %18 = bitcast i8** %data to i8*, !dbg !221
  %19 = load i8**, i8*** %ndata, align 8, !dbg !222
  %20 = bitcast i8** %19 to i8*, !dbg !221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 8, i1 false), !dbg !221
  %21 = load i8*, i8** %data, align 8, !dbg !223
  store i8* %21, i8** %retval, align 8, !dbg !224
  br label %return, !dbg !224

return:                                           ; preds = %land.end, %if.then
  %22 = load i8*, i8** %retval, align 8, !dbg !225
  ret i8* %22, !dbg !225
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode* @raxAddChild(%struct.raxNode* %n, i8 zeroext %c, %struct.raxNode** %childptr, %struct.raxNode*** %parentlink) #0 !dbg !226 {
entry:
  %retval = alloca %struct.raxNode*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %c.addr = alloca i8, align 1
  %childptr.addr = alloca %struct.raxNode**, align 8
  %parentlink.addr = alloca %struct.raxNode***, align 8
  %curlen = alloca i64, align 8
  %newlen = alloca i64, align 8
  %child = alloca %struct.raxNode*, align 8
  %newn = alloca %struct.raxNode*, align 8
  %pos = alloca i32, align 4
  %src = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %shift = alloca i64, align 8
  %childfield = alloca %struct.raxNode**, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !230, metadata !DIExpression()), !dbg !231
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !232, metadata !DIExpression()), !dbg !233
  store %struct.raxNode** %childptr, %struct.raxNode*** %childptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %childptr.addr, metadata !234, metadata !DIExpression()), !dbg !235
  store %struct.raxNode*** %parentlink, %struct.raxNode**** %parentlink.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode**** %parentlink.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !238
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !238
  %bf.load = load i32, i32* %1, align 4, !dbg !238
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !238
  %bf.clear = and i32 %bf.lshr, 1, !dbg !238
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !238
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !238

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !238

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__PRETTY_FUNCTION__.raxAddChild, i64 0, i64 0)) #8, !dbg !238
  unreachable, !dbg !238

2:                                                ; No predecessors!
  br label %cond.end, !dbg !238

cond.end:                                         ; preds = %2, %cond.true
  call void @llvm.dbg.declare(metadata i64* %curlen, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %4 = bitcast %struct.raxNode* %3 to i32*, !dbg !241
  %bf.load1 = load i32, i32* %4, align 4, !dbg !241
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !241
  %conv = zext i32 %bf.lshr2 to i64, !dbg !241
  %add = add i64 4, %conv, !dbg !241
  %5 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !241
  %bf.load3 = load i32, i32* %6, align 4, !dbg !241
  %bf.lshr4 = lshr i32 %bf.load3, 3, !dbg !241
  %add5 = add nsw i32 %bf.lshr4, 4, !dbg !241
  %conv6 = sext i32 %add5 to i64, !dbg !241
  %rem = urem i64 %conv6, 8, !dbg !241
  %sub = sub i64 8, %rem, !dbg !241
  %and = and i64 %sub, 7, !dbg !241
  %add7 = add i64 %add, %and, !dbg !241
  %7 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !241
  %bf.load8 = load i32, i32* %8, align 4, !dbg !241
  %bf.lshr9 = lshr i32 %bf.load8, 2, !dbg !241
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !241
  %tobool = icmp ne i32 %bf.clear10, 0, !dbg !241
  br i1 %tobool, label %cond.true11, label %cond.false12, !dbg !241

cond.true11:                                      ; preds = %cond.end
  br label %cond.end16, !dbg !241

cond.false12:                                     ; preds = %cond.end
  %9 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %10 = bitcast %struct.raxNode* %9 to i32*, !dbg !241
  %bf.load13 = load i32, i32* %10, align 4, !dbg !241
  %bf.lshr14 = lshr i32 %bf.load13, 3, !dbg !241
  %conv15 = zext i32 %bf.lshr14 to i64, !dbg !241
  %mul = mul i64 8, %conv15, !dbg !241
  br label %cond.end16, !dbg !241

cond.end16:                                       ; preds = %cond.false12, %cond.true11
  %cond = phi i64 [ 8, %cond.true11 ], [ %mul, %cond.false12 ], !dbg !241
  %add17 = add i64 %add7, %cond, !dbg !241
  %11 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %12 = bitcast %struct.raxNode* %11 to i32*, !dbg !241
  %bf.load18 = load i32, i32* %12, align 4, !dbg !241
  %bf.clear19 = and i32 %bf.load18, 1, !dbg !241
  %tobool20 = icmp ne i32 %bf.clear19, 0, !dbg !241
  br i1 %tobool20, label %land.rhs, label %land.end, !dbg !241

land.rhs:                                         ; preds = %cond.end16
  %13 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !241
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !241
  %bf.load21 = load i32, i32* %14, align 4, !dbg !241
  %bf.lshr22 = lshr i32 %bf.load21, 1, !dbg !241
  %bf.clear23 = and i32 %bf.lshr22, 1, !dbg !241
  %tobool24 = icmp ne i32 %bf.clear23, 0, !dbg !241
  %lnot = xor i1 %tobool24, true, !dbg !241
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end16
  %15 = phi i1 [ false, %cond.end16 ], [ %lnot, %land.rhs ], !dbg !242
  %land.ext = zext i1 %15 to i32, !dbg !241
  %conv25 = sext i32 %land.ext to i64, !dbg !241
  %mul26 = mul i64 %conv25, 8, !dbg !241
  %add27 = add i64 %add17, %mul26, !dbg !241
  store i64 %add27, i64* %curlen, align 8, !dbg !240
  %16 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !243
  %17 = bitcast %struct.raxNode* %16 to i32*, !dbg !244
  %bf.load28 = load i32, i32* %17, align 4, !dbg !245
  %bf.lshr29 = lshr i32 %bf.load28, 3, !dbg !245
  %inc = add i32 %bf.lshr29, 1, !dbg !245
  %bf.load30 = load i32, i32* %17, align 4, !dbg !245
  %bf.value = and i32 %inc, 536870911, !dbg !245
  %bf.shl = shl i32 %bf.value, 3, !dbg !245
  %bf.clear31 = and i32 %bf.load30, 7, !dbg !245
  %bf.set = or i32 %bf.clear31, %bf.shl, !dbg !245
  store i32 %bf.set, i32* %17, align 4, !dbg !245
  call void @llvm.dbg.declare(metadata i64* %newlen, metadata !246, metadata !DIExpression()), !dbg !247
  %18 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %19 = bitcast %struct.raxNode* %18 to i32*, !dbg !248
  %bf.load32 = load i32, i32* %19, align 4, !dbg !248
  %bf.lshr33 = lshr i32 %bf.load32, 3, !dbg !248
  %conv34 = zext i32 %bf.lshr33 to i64, !dbg !248
  %add35 = add i64 4, %conv34, !dbg !248
  %20 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %21 = bitcast %struct.raxNode* %20 to i32*, !dbg !248
  %bf.load36 = load i32, i32* %21, align 4, !dbg !248
  %bf.lshr37 = lshr i32 %bf.load36, 3, !dbg !248
  %add38 = add nsw i32 %bf.lshr37, 4, !dbg !248
  %conv39 = sext i32 %add38 to i64, !dbg !248
  %rem40 = urem i64 %conv39, 8, !dbg !248
  %sub41 = sub i64 8, %rem40, !dbg !248
  %and42 = and i64 %sub41, 7, !dbg !248
  %add43 = add i64 %add35, %and42, !dbg !248
  %22 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %23 = bitcast %struct.raxNode* %22 to i32*, !dbg !248
  %bf.load44 = load i32, i32* %23, align 4, !dbg !248
  %bf.lshr45 = lshr i32 %bf.load44, 2, !dbg !248
  %bf.clear46 = and i32 %bf.lshr45, 1, !dbg !248
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !248
  br i1 %tobool47, label %cond.true48, label %cond.false49, !dbg !248

cond.true48:                                      ; preds = %land.end
  br label %cond.end54, !dbg !248

cond.false49:                                     ; preds = %land.end
  %24 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %25 = bitcast %struct.raxNode* %24 to i32*, !dbg !248
  %bf.load50 = load i32, i32* %25, align 4, !dbg !248
  %bf.lshr51 = lshr i32 %bf.load50, 3, !dbg !248
  %conv52 = zext i32 %bf.lshr51 to i64, !dbg !248
  %mul53 = mul i64 8, %conv52, !dbg !248
  br label %cond.end54, !dbg !248

cond.end54:                                       ; preds = %cond.false49, %cond.true48
  %cond55 = phi i64 [ 8, %cond.true48 ], [ %mul53, %cond.false49 ], !dbg !248
  %add56 = add i64 %add43, %cond55, !dbg !248
  %26 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %27 = bitcast %struct.raxNode* %26 to i32*, !dbg !248
  %bf.load57 = load i32, i32* %27, align 4, !dbg !248
  %bf.clear58 = and i32 %bf.load57, 1, !dbg !248
  %tobool59 = icmp ne i32 %bf.clear58, 0, !dbg !248
  br i1 %tobool59, label %land.rhs60, label %land.end66, !dbg !248

land.rhs60:                                       ; preds = %cond.end54
  %28 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !248
  %29 = bitcast %struct.raxNode* %28 to i32*, !dbg !248
  %bf.load61 = load i32, i32* %29, align 4, !dbg !248
  %bf.lshr62 = lshr i32 %bf.load61, 1, !dbg !248
  %bf.clear63 = and i32 %bf.lshr62, 1, !dbg !248
  %tobool64 = icmp ne i32 %bf.clear63, 0, !dbg !248
  %lnot65 = xor i1 %tobool64, true, !dbg !248
  br label %land.end66

land.end66:                                       ; preds = %land.rhs60, %cond.end54
  %30 = phi i1 [ false, %cond.end54 ], [ %lnot65, %land.rhs60 ], !dbg !242
  %land.ext67 = zext i1 %30 to i32, !dbg !248
  %conv68 = sext i32 %land.ext67 to i64, !dbg !248
  %mul69 = mul i64 %conv68, 8, !dbg !248
  %add70 = add i64 %add56, %mul69, !dbg !248
  store i64 %add70, i64* %newlen, align 8, !dbg !247
  %31 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !249
  %32 = bitcast %struct.raxNode* %31 to i32*, !dbg !250
  %bf.load71 = load i32, i32* %32, align 4, !dbg !251
  %bf.lshr72 = lshr i32 %bf.load71, 3, !dbg !251
  %dec = add i32 %bf.lshr72, -1, !dbg !251
  %bf.load73 = load i32, i32* %32, align 4, !dbg !251
  %bf.value74 = and i32 %dec, 536870911, !dbg !251
  %bf.shl75 = shl i32 %bf.value74, 3, !dbg !251
  %bf.clear76 = and i32 %bf.load73, 7, !dbg !251
  %bf.set77 = or i32 %bf.clear76, %bf.shl75, !dbg !251
  store i32 %bf.set77, i32* %32, align 4, !dbg !251
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !252, metadata !DIExpression()), !dbg !253
  %call = call %struct.raxNode* @raxNewNode(i64 0, i32 0), !dbg !254
  store %struct.raxNode* %call, %struct.raxNode** %child, align 8, !dbg !253
  %33 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !255
  %cmp78 = icmp eq %struct.raxNode* %33, null, !dbg !257
  br i1 %cmp78, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %land.end66
  store %struct.raxNode* null, %struct.raxNode** %retval, align 8, !dbg !259
  br label %return, !dbg !259

if.end:                                           ; preds = %land.end66
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newn, metadata !260, metadata !DIExpression()), !dbg !261
  %34 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !262
  %35 = bitcast %struct.raxNode* %34 to i8*, !dbg !262
  %36 = load i64, i64* %newlen, align 8, !dbg !263
  %call80 = call i8* @zrealloc(i8* %35, i64 %36), !dbg !264
  %37 = bitcast i8* %call80 to %struct.raxNode*, !dbg !264
  store %struct.raxNode* %37, %struct.raxNode** %newn, align 8, !dbg !261
  %38 = load %struct.raxNode*, %struct.raxNode** %newn, align 8, !dbg !265
  %cmp81 = icmp eq %struct.raxNode* %38, null, !dbg !267
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !268

if.then83:                                        ; preds = %if.end
  %39 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !269
  %40 = bitcast %struct.raxNode* %39 to i8*, !dbg !269
  call void @zfree(i8* %40), !dbg !271
  store %struct.raxNode* null, %struct.raxNode** %retval, align 8, !dbg !272
  br label %return, !dbg !272

if.end84:                                         ; preds = %if.end
  %41 = load %struct.raxNode*, %struct.raxNode** %newn, align 8, !dbg !273
  store %struct.raxNode* %41, %struct.raxNode** %n.addr, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !275, metadata !DIExpression()), !dbg !276
  store i32 0, i32* %pos, align 4, !dbg !277
  br label %for.cond, !dbg !279

for.cond:                                         ; preds = %for.inc, %if.end84
  %42 = load i32, i32* %pos, align 4, !dbg !280
  %43 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !282
  %44 = bitcast %struct.raxNode* %43 to i32*, !dbg !283
  %bf.load85 = load i32, i32* %44, align 4, !dbg !283
  %bf.lshr86 = lshr i32 %bf.load85, 3, !dbg !283
  %cmp87 = icmp slt i32 %42, %bf.lshr86, !dbg !284
  br i1 %cmp87, label %for.body, label %for.end, !dbg !285

for.body:                                         ; preds = %for.cond
  %45 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !286
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %45, i32 0, i32 1, !dbg !289
  %46 = load i32, i32* %pos, align 4, !dbg !290
  %idxprom = sext i32 %46 to i64, !dbg !286
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 %idxprom, !dbg !286
  %47 = load i8, i8* %arrayidx, align 1, !dbg !286
  %conv89 = zext i8 %47 to i32, !dbg !286
  %48 = load i8, i8* %c.addr, align 1, !dbg !291
  %conv90 = zext i8 %48 to i32, !dbg !291
  %cmp91 = icmp sgt i32 %conv89, %conv90, !dbg !292
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !293

if.then93:                                        ; preds = %for.body
  br label %for.end, !dbg !294

if.end94:                                         ; preds = %for.body
  br label %for.inc, !dbg !295

for.inc:                                          ; preds = %if.end94
  %49 = load i32, i32* %pos, align 4, !dbg !296
  %inc95 = add nsw i32 %49, 1, !dbg !296
  store i32 %inc95, i32* %pos, align 4, !dbg !296
  br label %for.cond, !dbg !297, !llvm.loop !298

for.end:                                          ; preds = %if.then93, %for.cond
  call void @llvm.dbg.declare(metadata i8** %src, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !303, metadata !DIExpression()), !dbg !304
  %50 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !305
  %51 = bitcast %struct.raxNode* %50 to i32*, !dbg !307
  %bf.load96 = load i32, i32* %51, align 4, !dbg !307
  %bf.clear97 = and i32 %bf.load96, 1, !dbg !307
  %tobool98 = icmp ne i32 %bf.clear97, 0, !dbg !305
  br i1 %tobool98, label %land.lhs.true, label %if.end107, !dbg !308

land.lhs.true:                                    ; preds = %for.end
  %52 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !309
  %53 = bitcast %struct.raxNode* %52 to i32*, !dbg !310
  %bf.load99 = load i32, i32* %53, align 4, !dbg !310
  %bf.lshr100 = lshr i32 %bf.load99, 1, !dbg !310
  %bf.clear101 = and i32 %bf.lshr100, 1, !dbg !310
  %tobool102 = icmp ne i32 %bf.clear101, 0, !dbg !309
  br i1 %tobool102, label %if.end107, label %if.then103, !dbg !311

if.then103:                                       ; preds = %land.lhs.true
  %54 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !312
  %55 = bitcast %struct.raxNode* %54 to i8*, !dbg !314
  %56 = load i64, i64* %curlen, align 8, !dbg !315
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !316
  %add.ptr104 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !317
  store i8* %add.ptr104, i8** %src, align 8, !dbg !318
  %57 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !319
  %58 = bitcast %struct.raxNode* %57 to i8*, !dbg !320
  %59 = load i64, i64* %newlen, align 8, !dbg !321
  %add.ptr105 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !322
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr105, i64 -8, !dbg !323
  store i8* %add.ptr106, i8** %dst, align 8, !dbg !324
  %60 = load i8*, i8** %dst, align 8, !dbg !325
  %61 = load i8*, i8** %src, align 8, !dbg !326
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %60, i8* align 1 %61, i64 8, i1 false), !dbg !327
  br label %if.end107, !dbg !328

if.end107:                                        ; preds = %if.then103, %land.lhs.true, %for.end
  call void @llvm.dbg.declare(metadata i64* %shift, metadata !329, metadata !DIExpression()), !dbg !330
  %62 = load i64, i64* %newlen, align 8, !dbg !331
  %63 = load i64, i64* %curlen, align 8, !dbg !332
  %sub108 = sub i64 %62, %63, !dbg !333
  %sub109 = sub i64 %sub108, 8, !dbg !334
  store i64 %sub109, i64* %shift, align 8, !dbg !330
  %64 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !335
  %data110 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %64, i32 0, i32 1, !dbg !336
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data110, i64 0, i64 0, !dbg !335
  %65 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !337
  %66 = bitcast %struct.raxNode* %65 to i32*, !dbg !338
  %bf.load111 = load i32, i32* %66, align 4, !dbg !338
  %bf.lshr112 = lshr i32 %bf.load111, 3, !dbg !338
  %idx.ext = sext i32 %bf.lshr112 to i64, !dbg !339
  %add.ptr113 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !339
  %67 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !340
  %68 = bitcast %struct.raxNode* %67 to i32*, !dbg !340
  %bf.load114 = load i32, i32* %68, align 4, !dbg !340
  %bf.lshr115 = lshr i32 %bf.load114, 3, !dbg !340
  %add116 = add nsw i32 %bf.lshr115, 4, !dbg !340
  %conv117 = sext i32 %add116 to i64, !dbg !340
  %rem118 = urem i64 %conv117, 8, !dbg !340
  %sub119 = sub i64 8, %rem118, !dbg !340
  %and120 = and i64 %sub119, 7, !dbg !340
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr113, i64 %and120, !dbg !341
  %69 = load i32, i32* %pos, align 4, !dbg !342
  %conv122 = sext i32 %69 to i64, !dbg !342
  %mul123 = mul i64 8, %conv122, !dbg !343
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr121, i64 %mul123, !dbg !344
  store i8* %add.ptr124, i8** %src, align 8, !dbg !345
  %70 = load i8*, i8** %src, align 8, !dbg !346
  %71 = load i64, i64* %shift, align 8, !dbg !347
  %add.ptr125 = getelementptr inbounds i8, i8* %70, i64 %71, !dbg !348
  %add.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 8, !dbg !349
  %72 = load i8*, i8** %src, align 8, !dbg !350
  %73 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !351
  %74 = bitcast %struct.raxNode* %73 to i32*, !dbg !352
  %bf.load127 = load i32, i32* %74, align 4, !dbg !352
  %bf.lshr128 = lshr i32 %bf.load127, 3, !dbg !352
  %75 = load i32, i32* %pos, align 4, !dbg !353
  %sub129 = sub nsw i32 %bf.lshr128, %75, !dbg !354
  %conv130 = sext i32 %sub129 to i64, !dbg !355
  %mul131 = mul i64 8, %conv130, !dbg !356
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr126, i8* align 1 %72, i64 %mul131, i1 false), !dbg !357
  %76 = load i64, i64* %shift, align 8, !dbg !358
  %tobool132 = icmp ne i64 %76, 0, !dbg !358
  br i1 %tobool132, label %if.then133, label %if.end151, !dbg !360

if.then133:                                       ; preds = %if.end107
  %77 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !361
  %data134 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %77, i32 0, i32 1, !dbg !361
  %arraydecay135 = getelementptr inbounds [0 x i8], [0 x i8]* %data134, i64 0, i64 0, !dbg !361
  %78 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !361
  %79 = bitcast %struct.raxNode* %78 to i32*, !dbg !361
  %bf.load136 = load i32, i32* %79, align 4, !dbg !361
  %bf.lshr137 = lshr i32 %bf.load136, 3, !dbg !361
  %idx.ext138 = sext i32 %bf.lshr137 to i64, !dbg !361
  %add.ptr139 = getelementptr inbounds i8, i8* %arraydecay135, i64 %idx.ext138, !dbg !361
  %80 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !361
  %81 = bitcast %struct.raxNode* %80 to i32*, !dbg !361
  %bf.load140 = load i32, i32* %81, align 4, !dbg !361
  %bf.lshr141 = lshr i32 %bf.load140, 3, !dbg !361
  %add142 = add nsw i32 %bf.lshr141, 4, !dbg !361
  %conv143 = sext i32 %add142 to i64, !dbg !361
  %rem144 = urem i64 %conv143, 8, !dbg !361
  %sub145 = sub i64 8, %rem144, !dbg !361
  %and146 = and i64 %sub145, 7, !dbg !361
  %add.ptr147 = getelementptr inbounds i8, i8* %add.ptr139, i64 %and146, !dbg !361
  %82 = bitcast i8* %add.ptr147 to %struct.raxNode**, !dbg !361
  %83 = bitcast %struct.raxNode** %82 to i8*, !dbg !363
  store i8* %83, i8** %src, align 8, !dbg !364
  %84 = load i8*, i8** %src, align 8, !dbg !365
  %85 = load i64, i64* %shift, align 8, !dbg !366
  %add.ptr148 = getelementptr inbounds i8, i8* %84, i64 %85, !dbg !367
  %86 = load i8*, i8** %src, align 8, !dbg !368
  %87 = load i32, i32* %pos, align 4, !dbg !369
  %conv149 = sext i32 %87 to i64, !dbg !369
  %mul150 = mul i64 8, %conv149, !dbg !370
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr148, i8* align 1 %86, i64 %mul150, i1 false), !dbg !371
  br label %if.end151, !dbg !372

if.end151:                                        ; preds = %if.then133, %if.end107
  %88 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !373
  %data152 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %88, i32 0, i32 1, !dbg !374
  %arraydecay153 = getelementptr inbounds [0 x i8], [0 x i8]* %data152, i64 0, i64 0, !dbg !373
  %89 = load i32, i32* %pos, align 4, !dbg !375
  %idx.ext154 = sext i32 %89 to i64, !dbg !376
  %add.ptr155 = getelementptr inbounds i8, i8* %arraydecay153, i64 %idx.ext154, !dbg !376
  store i8* %add.ptr155, i8** %src, align 8, !dbg !377
  %90 = load i8*, i8** %src, align 8, !dbg !378
  %add.ptr156 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !379
  %91 = load i8*, i8** %src, align 8, !dbg !380
  %92 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !381
  %93 = bitcast %struct.raxNode* %92 to i32*, !dbg !382
  %bf.load157 = load i32, i32* %93, align 4, !dbg !382
  %bf.lshr158 = lshr i32 %bf.load157, 3, !dbg !382
  %94 = load i32, i32* %pos, align 4, !dbg !383
  %sub159 = sub nsw i32 %bf.lshr158, %94, !dbg !384
  %conv160 = sext i32 %sub159 to i64, !dbg !381
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr156, i8* align 1 %91, i64 %conv160, i1 false), !dbg !385
  %95 = load i8, i8* %c.addr, align 1, !dbg !386
  %96 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !387
  %data161 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %96, i32 0, i32 1, !dbg !388
  %97 = load i32, i32* %pos, align 4, !dbg !389
  %idxprom162 = sext i32 %97 to i64, !dbg !387
  %arrayidx163 = getelementptr inbounds [0 x i8], [0 x i8]* %data161, i64 0, i64 %idxprom162, !dbg !387
  store i8 %95, i8* %arrayidx163, align 1, !dbg !390
  %98 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !391
  %99 = bitcast %struct.raxNode* %98 to i32*, !dbg !392
  %bf.load164 = load i32, i32* %99, align 4, !dbg !393
  %bf.lshr165 = lshr i32 %bf.load164, 3, !dbg !393
  %inc166 = add i32 %bf.lshr165, 1, !dbg !393
  %bf.load167 = load i32, i32* %99, align 4, !dbg !393
  %bf.value168 = and i32 %inc166, 536870911, !dbg !393
  %bf.shl169 = shl i32 %bf.value168, 3, !dbg !393
  %bf.clear170 = and i32 %bf.load167, 7, !dbg !393
  %bf.set171 = or i32 %bf.clear170, %bf.shl169, !dbg !393
  store i32 %bf.set171, i32* %99, align 4, !dbg !393
  %100 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !394
  %data172 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %100, i32 0, i32 1, !dbg !394
  %arraydecay173 = getelementptr inbounds [0 x i8], [0 x i8]* %data172, i64 0, i64 0, !dbg !394
  %101 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !394
  %102 = bitcast %struct.raxNode* %101 to i32*, !dbg !394
  %bf.load174 = load i32, i32* %102, align 4, !dbg !394
  %bf.lshr175 = lshr i32 %bf.load174, 3, !dbg !394
  %idx.ext176 = sext i32 %bf.lshr175 to i64, !dbg !394
  %add.ptr177 = getelementptr inbounds i8, i8* %arraydecay173, i64 %idx.ext176, !dbg !394
  %103 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !394
  %104 = bitcast %struct.raxNode* %103 to i32*, !dbg !394
  %bf.load178 = load i32, i32* %104, align 4, !dbg !394
  %bf.lshr179 = lshr i32 %bf.load178, 3, !dbg !394
  %add180 = add nsw i32 %bf.lshr179, 4, !dbg !394
  %conv181 = sext i32 %add180 to i64, !dbg !394
  %rem182 = urem i64 %conv181, 8, !dbg !394
  %sub183 = sub i64 8, %rem182, !dbg !394
  %and184 = and i64 %sub183, 7, !dbg !394
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr177, i64 %and184, !dbg !394
  %105 = bitcast i8* %add.ptr185 to %struct.raxNode**, !dbg !394
  %106 = bitcast %struct.raxNode** %105 to i8*, !dbg !395
  store i8* %106, i8** %src, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %childfield, metadata !397, metadata !DIExpression()), !dbg !398
  %107 = load i8*, i8** %src, align 8, !dbg !399
  %108 = load i32, i32* %pos, align 4, !dbg !400
  %conv186 = sext i32 %108 to i64, !dbg !400
  %mul187 = mul i64 8, %conv186, !dbg !401
  %add.ptr188 = getelementptr inbounds i8, i8* %107, i64 %mul187, !dbg !402
  %109 = bitcast i8* %add.ptr188 to %struct.raxNode**, !dbg !403
  store %struct.raxNode** %109, %struct.raxNode*** %childfield, align 8, !dbg !398
  %110 = load %struct.raxNode**, %struct.raxNode*** %childfield, align 8, !dbg !404
  %111 = bitcast %struct.raxNode** %110 to i8*, !dbg !405
  %112 = bitcast %struct.raxNode** %child to i8*, !dbg !405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false), !dbg !405
  %113 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !406
  %114 = load %struct.raxNode**, %struct.raxNode*** %childptr.addr, align 8, !dbg !407
  store %struct.raxNode* %113, %struct.raxNode** %114, align 8, !dbg !408
  %115 = load %struct.raxNode**, %struct.raxNode*** %childfield, align 8, !dbg !409
  %116 = load %struct.raxNode***, %struct.raxNode**** %parentlink.addr, align 8, !dbg !410
  store %struct.raxNode** %115, %struct.raxNode*** %116, align 8, !dbg !411
  %117 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !412
  store %struct.raxNode* %117, %struct.raxNode** %retval, align 8, !dbg !413
  br label %return, !dbg !413

return:                                           ; preds = %if.end151, %if.then83, %if.then
  %118 = load %struct.raxNode*, %struct.raxNode** %retval, align 8, !dbg !414
  ret %struct.raxNode* %118, !dbg !414
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode* @raxCompressNode(%struct.raxNode* %n, i8* %s, i64 %len, %struct.raxNode** %child) #0 !dbg !415 {
entry:
  %retval = alloca %struct.raxNode*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %child.addr = alloca %struct.raxNode**, align 8
  %data = alloca i8*, align 8
  %newsize = alloca i64, align 8
  %newn = alloca %struct.raxNode*, align 8
  %childfield = alloca %struct.raxNode**, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !420, metadata !DIExpression()), !dbg !421
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !422, metadata !DIExpression()), !dbg !423
  store %struct.raxNode** %child, %struct.raxNode*** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %child.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !426
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !426
  %bf.load = load i32, i32* %1, align 4, !dbg !426
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !426
  %cmp = icmp eq i32 %bf.lshr, 0, !dbg !426
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !426

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !426
  %3 = bitcast %struct.raxNode* %2 to i32*, !dbg !426
  %bf.load1 = load i32, i32* %3, align 4, !dbg !426
  %bf.lshr2 = lshr i32 %bf.load1, 2, !dbg !426
  %bf.clear = and i32 %bf.lshr2, 1, !dbg !426
  %cmp3 = icmp eq i32 %bf.clear, 0, !dbg !426
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !426

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !426

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.raxCompressNode, i64 0, i64 0)) #8, !dbg !426
  unreachable, !dbg !426

4:                                                ; No predecessors!
  br label %cond.end, !dbg !426

cond.end:                                         ; preds = %4, %cond.true
  call void @llvm.dbg.declare(metadata i8** %data, metadata !427, metadata !DIExpression()), !dbg !428
  store i8* null, i8** %data, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata i64* %newsize, metadata !429, metadata !DIExpression()), !dbg !430
  %call = call %struct.raxNode* @raxNewNode(i64 0, i32 0), !dbg !431
  %5 = load %struct.raxNode**, %struct.raxNode*** %child.addr, align 8, !dbg !432
  store %struct.raxNode* %call, %struct.raxNode** %5, align 8, !dbg !433
  %6 = load %struct.raxNode**, %struct.raxNode*** %child.addr, align 8, !dbg !434
  %7 = load %struct.raxNode*, %struct.raxNode** %6, align 8, !dbg !436
  %cmp4 = icmp eq %struct.raxNode* %7, null, !dbg !437
  br i1 %cmp4, label %if.then, label %if.end, !dbg !438

if.then:                                          ; preds = %cond.end
  store %struct.raxNode* null, %struct.raxNode** %retval, align 8, !dbg !439
  br label %return, !dbg !439

if.end:                                           ; preds = %cond.end
  %8 = load i64, i64* %len.addr, align 8, !dbg !440
  %add = add i64 4, %8, !dbg !441
  %9 = load i64, i64* %len.addr, align 8, !dbg !442
  %add5 = add i64 %9, 4, !dbg !442
  %rem = urem i64 %add5, 8, !dbg !442
  %sub = sub i64 8, %rem, !dbg !442
  %and = and i64 %sub, 7, !dbg !442
  %add6 = add i64 %add, %and, !dbg !443
  %add7 = add i64 %add6, 8, !dbg !444
  store i64 %add7, i64* %newsize, align 8, !dbg !445
  %10 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !446
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !448
  %bf.load8 = load i32, i32* %11, align 4, !dbg !448
  %bf.clear9 = and i32 %bf.load8, 1, !dbg !448
  %tobool = icmp ne i32 %bf.clear9, 0, !dbg !446
  br i1 %tobool, label %if.then10, label %if.end19, !dbg !449

if.then10:                                        ; preds = %if.end
  %12 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !450
  %call11 = call i8* @raxGetData(%struct.raxNode* %12), !dbg !452
  store i8* %call11, i8** %data, align 8, !dbg !453
  %13 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !454
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !456
  %bf.load12 = load i32, i32* %14, align 4, !dbg !456
  %bf.lshr13 = lshr i32 %bf.load12, 1, !dbg !456
  %bf.clear14 = and i32 %bf.lshr13, 1, !dbg !456
  %tobool15 = icmp ne i32 %bf.clear14, 0, !dbg !454
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !457

if.then16:                                        ; preds = %if.then10
  %15 = load i64, i64* %newsize, align 8, !dbg !458
  %add17 = add i64 %15, 8, !dbg !458
  store i64 %add17, i64* %newsize, align 8, !dbg !458
  br label %if.end18, !dbg !459

if.end18:                                         ; preds = %if.then16, %if.then10
  br label %if.end19, !dbg !460

if.end19:                                         ; preds = %if.end18, %if.end
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newn, metadata !461, metadata !DIExpression()), !dbg !462
  %16 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !463
  %17 = bitcast %struct.raxNode* %16 to i8*, !dbg !463
  %18 = load i64, i64* %newsize, align 8, !dbg !464
  %call20 = call i8* @zrealloc(i8* %17, i64 %18), !dbg !465
  %19 = bitcast i8* %call20 to %struct.raxNode*, !dbg !465
  store %struct.raxNode* %19, %struct.raxNode** %newn, align 8, !dbg !462
  %20 = load %struct.raxNode*, %struct.raxNode** %newn, align 8, !dbg !466
  %cmp21 = icmp eq %struct.raxNode* %20, null, !dbg !468
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !469

if.then22:                                        ; preds = %if.end19
  %21 = load %struct.raxNode**, %struct.raxNode*** %child.addr, align 8, !dbg !470
  %22 = load %struct.raxNode*, %struct.raxNode** %21, align 8, !dbg !472
  %23 = bitcast %struct.raxNode* %22 to i8*, !dbg !472
  call void @zfree(i8* %23), !dbg !473
  store %struct.raxNode* null, %struct.raxNode** %retval, align 8, !dbg !474
  br label %return, !dbg !474

if.end23:                                         ; preds = %if.end19
  %24 = load %struct.raxNode*, %struct.raxNode** %newn, align 8, !dbg !475
  store %struct.raxNode* %24, %struct.raxNode** %n.addr, align 8, !dbg !476
  %25 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !477
  %26 = bitcast %struct.raxNode* %25 to i32*, !dbg !478
  %bf.load24 = load i32, i32* %26, align 4, !dbg !479
  %bf.clear25 = and i32 %bf.load24, -5, !dbg !479
  %bf.set = or i32 %bf.clear25, 4, !dbg !479
  store i32 %bf.set, i32* %26, align 4, !dbg !479
  %27 = load i64, i64* %len.addr, align 8, !dbg !480
  %conv = trunc i64 %27 to i32, !dbg !480
  %28 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !481
  %29 = bitcast %struct.raxNode* %28 to i32*, !dbg !482
  %bf.load26 = load i32, i32* %29, align 4, !dbg !483
  %bf.value = and i32 %conv, 536870911, !dbg !483
  %bf.shl = shl i32 %bf.value, 3, !dbg !483
  %bf.clear27 = and i32 %bf.load26, 7, !dbg !483
  %bf.set28 = or i32 %bf.clear27, %bf.shl, !dbg !483
  store i32 %bf.set28, i32* %29, align 4, !dbg !483
  %30 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !484
  %data29 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %30, i32 0, i32 1, !dbg !485
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data29, i64 0, i64 0, !dbg !486
  %31 = load i8*, i8** %s.addr, align 8, !dbg !487
  %32 = load i64, i64* %len.addr, align 8, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay, i8* align 1 %31, i64 %32, i1 false), !dbg !486
  %33 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !489
  %34 = bitcast %struct.raxNode* %33 to i32*, !dbg !491
  %bf.load30 = load i32, i32* %34, align 4, !dbg !491
  %bf.clear31 = and i32 %bf.load30, 1, !dbg !491
  %tobool32 = icmp ne i32 %bf.clear31, 0, !dbg !489
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !492

if.then33:                                        ; preds = %if.end23
  %35 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !493
  %36 = load i8*, i8** %data, align 8, !dbg !494
  call void @raxSetData(%struct.raxNode* %35, i8* %36), !dbg !495
  br label %if.end34, !dbg !495

if.end34:                                         ; preds = %if.then33, %if.end23
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %childfield, metadata !496, metadata !DIExpression()), !dbg !497
  %37 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %38 = bitcast %struct.raxNode* %37 to i8*, !dbg !498
  %39 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %40 = bitcast %struct.raxNode* %39 to i32*, !dbg !498
  %bf.load35 = load i32, i32* %40, align 4, !dbg !498
  %bf.lshr36 = lshr i32 %bf.load35, 3, !dbg !498
  %conv37 = zext i32 %bf.lshr36 to i64, !dbg !498
  %add38 = add i64 4, %conv37, !dbg !498
  %41 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %42 = bitcast %struct.raxNode* %41 to i32*, !dbg !498
  %bf.load39 = load i32, i32* %42, align 4, !dbg !498
  %bf.lshr40 = lshr i32 %bf.load39, 3, !dbg !498
  %add41 = add nsw i32 %bf.lshr40, 4, !dbg !498
  %conv42 = sext i32 %add41 to i64, !dbg !498
  %rem43 = urem i64 %conv42, 8, !dbg !498
  %sub44 = sub i64 8, %rem43, !dbg !498
  %and45 = and i64 %sub44, 7, !dbg !498
  %add46 = add i64 %add38, %and45, !dbg !498
  %43 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %44 = bitcast %struct.raxNode* %43 to i32*, !dbg !498
  %bf.load47 = load i32, i32* %44, align 4, !dbg !498
  %bf.lshr48 = lshr i32 %bf.load47, 2, !dbg !498
  %bf.clear49 = and i32 %bf.lshr48, 1, !dbg !498
  %tobool50 = icmp ne i32 %bf.clear49, 0, !dbg !498
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !498

cond.true51:                                      ; preds = %if.end34
  br label %cond.end56, !dbg !498

cond.false52:                                     ; preds = %if.end34
  %45 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %46 = bitcast %struct.raxNode* %45 to i32*, !dbg !498
  %bf.load53 = load i32, i32* %46, align 4, !dbg !498
  %bf.lshr54 = lshr i32 %bf.load53, 3, !dbg !498
  %conv55 = zext i32 %bf.lshr54 to i64, !dbg !498
  %mul = mul i64 8, %conv55, !dbg !498
  br label %cond.end56, !dbg !498

cond.end56:                                       ; preds = %cond.false52, %cond.true51
  %cond = phi i64 [ 8, %cond.true51 ], [ %mul, %cond.false52 ], !dbg !498
  %add57 = add i64 %add46, %cond, !dbg !498
  %47 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %48 = bitcast %struct.raxNode* %47 to i32*, !dbg !498
  %bf.load58 = load i32, i32* %48, align 4, !dbg !498
  %bf.clear59 = and i32 %bf.load58, 1, !dbg !498
  %tobool60 = icmp ne i32 %bf.clear59, 0, !dbg !498
  br i1 %tobool60, label %land.rhs, label %land.end, !dbg !498

land.rhs:                                         ; preds = %cond.end56
  %49 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %50 = bitcast %struct.raxNode* %49 to i32*, !dbg !498
  %bf.load61 = load i32, i32* %50, align 4, !dbg !498
  %bf.lshr62 = lshr i32 %bf.load61, 1, !dbg !498
  %bf.clear63 = and i32 %bf.lshr62, 1, !dbg !498
  %tobool64 = icmp ne i32 %bf.clear63, 0, !dbg !498
  %lnot = xor i1 %tobool64, true, !dbg !498
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end56
  %51 = phi i1 [ false, %cond.end56 ], [ %lnot, %land.rhs ], !dbg !499
  %land.ext = zext i1 %51 to i32, !dbg !498
  %conv65 = sext i32 %land.ext to i64, !dbg !498
  %mul66 = mul i64 %conv65, 8, !dbg !498
  %add67 = add i64 %add57, %mul66, !dbg !498
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %add67, !dbg !498
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !498
  %52 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %53 = bitcast %struct.raxNode* %52 to i32*, !dbg !498
  %bf.load69 = load i32, i32* %53, align 4, !dbg !498
  %bf.clear70 = and i32 %bf.load69, 1, !dbg !498
  %tobool71 = icmp ne i32 %bf.clear70, 0, !dbg !498
  br i1 %tobool71, label %land.rhs72, label %land.end78, !dbg !498

land.rhs72:                                       ; preds = %land.end
  %54 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !498
  %55 = bitcast %struct.raxNode* %54 to i32*, !dbg !498
  %bf.load73 = load i32, i32* %55, align 4, !dbg !498
  %bf.lshr74 = lshr i32 %bf.load73, 1, !dbg !498
  %bf.clear75 = and i32 %bf.lshr74, 1, !dbg !498
  %tobool76 = icmp ne i32 %bf.clear75, 0, !dbg !498
  %lnot77 = xor i1 %tobool76, true, !dbg !498
  br label %land.end78

land.end78:                                       ; preds = %land.rhs72, %land.end
  %56 = phi i1 [ false, %land.end ], [ %lnot77, %land.rhs72 ], !dbg !499
  %57 = zext i1 %56 to i64, !dbg !498
  %cond80 = select i1 %56, i64 8, i64 0, !dbg !498
  %idx.neg = sub i64 0, %cond80, !dbg !498
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr68, i64 %idx.neg, !dbg !498
  %58 = bitcast i8* %add.ptr81 to %struct.raxNode**, !dbg !498
  store %struct.raxNode** %58, %struct.raxNode*** %childfield, align 8, !dbg !497
  %59 = load %struct.raxNode**, %struct.raxNode*** %childfield, align 8, !dbg !500
  %60 = bitcast %struct.raxNode** %59 to i8*, !dbg !501
  %61 = load %struct.raxNode**, %struct.raxNode*** %child.addr, align 8, !dbg !502
  %62 = bitcast %struct.raxNode** %61 to i8*, !dbg !501
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %62, i64 8, i1 false), !dbg !501
  %63 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !503
  store %struct.raxNode* %63, %struct.raxNode** %retval, align 8, !dbg !504
  br label %return, !dbg !504

return:                                           ; preds = %land.end78, %if.then22, %if.then
  %64 = load %struct.raxNode*, %struct.raxNode** %retval, align 8, !dbg !505
  ret %struct.raxNode* %64, !dbg !505
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxGenericInsert(%struct.rax* %rax, i8* %s, i64 %len, i8* %data, i8** %old, i32 %overwrite) #0 !dbg !506 {
entry:
  %retval = alloca i32, align 4
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %old.addr = alloca i8**, align 8
  %overwrite.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %h = alloca %struct.raxNode*, align 8
  %parentlink = alloca %struct.raxNode**, align 8
  %childfield = alloca %struct.raxNode**, align 8
  %next = alloca %struct.raxNode*, align 8
  %trimmedlen = alloca i64, align 8
  %postfixlen = alloca i64, align 8
  %split_node_is_key = alloca i32, align 4
  %nodesize = alloca i64, align 8
  %splitnode = alloca %struct.raxNode*, align 8
  %trimmed = alloca %struct.raxNode*, align 8
  %postfix = alloca %struct.raxNode*, align 8
  %ndata = alloca i8*, align 8
  %ndata203 = alloca i8*, align 8
  %cp = alloca %struct.raxNode**, align 8
  %cp288 = alloca %struct.raxNode**, align 8
  %splitchild = alloca %struct.raxNode**, align 8
  %postfixlen412 = alloca i64, align 8
  %nodesize417 = alloca i64, align 8
  %postfix430 = alloca %struct.raxNode*, align 8
  %trimmed452 = alloca %struct.raxNode*, align 8
  %childfield462 = alloca %struct.raxNode**, align 8
  %next518 = alloca %struct.raxNode*, align 8
  %cp543 = alloca %struct.raxNode**, align 8
  %aux = alloca i8*, align 8
  %child = alloca %struct.raxNode*, align 8
  %comprsize = alloca i64, align 8
  %newh = alloca %struct.raxNode*, align 8
  %new_parentlink = alloca %struct.raxNode**, align 8
  %newh766 = alloca %struct.raxNode*, align 8
  %newh777 = alloca %struct.raxNode*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !509, metadata !DIExpression()), !dbg !510
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !513, metadata !DIExpression()), !dbg !514
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i8** %old, i8*** %old.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %old.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i32 %overwrite, i32* %overwrite.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %overwrite.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i64* %i, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata i32* %j, metadata !523, metadata !DIExpression()), !dbg !524
  store i32 0, i32* %j, align 4, !dbg !524
  call void @llvm.dbg.declare(metadata %struct.raxNode** %h, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %parentlink, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !529
  %1 = load i8*, i8** %s.addr, align 8, !dbg !530
  %2 = load i64, i64* %len.addr, align 8, !dbg !531
  %call = call i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** %h, %struct.raxNode*** %parentlink, i32* %j, %struct.raxStack* null), !dbg !532
  store i64 %call, i64* %i, align 8, !dbg !533
  %3 = load i64, i64* %i, align 8, !dbg !534
  %4 = load i64, i64* %len.addr, align 8, !dbg !536
  %cmp = icmp eq i64 %3, %4, !dbg !537
  br i1 %cmp, label %land.lhs.true, label %if.end34, !dbg !538

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !539
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !540
  %bf.load = load i32, i32* %6, align 4, !dbg !540
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !540
  %bf.clear = and i32 %bf.lshr, 1, !dbg !540
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !539
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !541

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load i32, i32* %j, align 4, !dbg !542
  %cmp1 = icmp eq i32 %7, 0, !dbg !543
  br i1 %cmp1, label %if.then, label %if.end34, !dbg !544

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !545
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !548
  %bf.load2 = load i32, i32* %9, align 4, !dbg !548
  %bf.clear3 = and i32 %bf.load2, 1, !dbg !548
  %tobool4 = icmp ne i32 %bf.clear3, 0, !dbg !545
  br i1 %tobool4, label %lor.lhs.false5, label %if.then12, !dbg !549

lor.lhs.false5:                                   ; preds = %if.then
  %10 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !550
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !551
  %bf.load6 = load i32, i32* %11, align 4, !dbg !551
  %bf.lshr7 = lshr i32 %bf.load6, 1, !dbg !551
  %bf.clear8 = and i32 %bf.lshr7, 1, !dbg !551
  %tobool9 = icmp ne i32 %bf.clear8, 0, !dbg !550
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !552

land.lhs.true10:                                  ; preds = %lor.lhs.false5
  %12 = load i32, i32* %overwrite.addr, align 4, !dbg !553
  %tobool11 = icmp ne i32 %12, 0, !dbg !553
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !554

if.then12:                                        ; preds = %land.lhs.true10, %if.then
  %13 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !555
  %14 = load i8*, i8** %data.addr, align 8, !dbg !557
  %call13 = call %struct.raxNode* @raxReallocForData(%struct.raxNode* %13, i8* %14), !dbg !558
  store %struct.raxNode* %call13, %struct.raxNode** %h, align 8, !dbg !559
  %15 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !560
  %tobool14 = icmp ne %struct.raxNode* %15, null, !dbg !560
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !562

if.then15:                                        ; preds = %if.then12
  %16 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !563
  %17 = bitcast %struct.raxNode** %16 to i8*, !dbg !564
  %18 = bitcast %struct.raxNode** %h to i8*, !dbg !564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !564
  br label %if.end, !dbg !564

if.end:                                           ; preds = %if.then15, %if.then12
  br label %if.end16, !dbg !565

if.end16:                                         ; preds = %if.end, %land.lhs.true10, %lor.lhs.false5
  %19 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !566
  %cmp17 = icmp eq %struct.raxNode* %19, null, !dbg !568
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !569

if.then18:                                        ; preds = %if.end16
  %call19 = call i32* @__errno_location() #9, !dbg !570
  store i32 12, i32* %call19, align 4, !dbg !572
  store i32 0, i32* %retval, align 4, !dbg !573
  br label %return, !dbg !573

if.end20:                                         ; preds = %if.end16
  %20 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !574
  %21 = bitcast %struct.raxNode* %20 to i32*, !dbg !576
  %bf.load21 = load i32, i32* %21, align 4, !dbg !576
  %bf.clear22 = and i32 %bf.load21, 1, !dbg !576
  %tobool23 = icmp ne i32 %bf.clear22, 0, !dbg !574
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !577

if.then24:                                        ; preds = %if.end20
  %22 = load i8**, i8*** %old.addr, align 8, !dbg !578
  %tobool25 = icmp ne i8** %22, null, !dbg !578
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !581

if.then26:                                        ; preds = %if.then24
  %23 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !582
  %call27 = call i8* @raxGetData(%struct.raxNode* %23), !dbg !583
  %24 = load i8**, i8*** %old.addr, align 8, !dbg !584
  store i8* %call27, i8** %24, align 8, !dbg !585
  br label %if.end28, !dbg !586

if.end28:                                         ; preds = %if.then26, %if.then24
  %25 = load i32, i32* %overwrite.addr, align 4, !dbg !587
  %tobool29 = icmp ne i32 %25, 0, !dbg !587
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !589

if.then30:                                        ; preds = %if.end28
  %26 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !590
  %27 = load i8*, i8** %data.addr, align 8, !dbg !591
  call void @raxSetData(%struct.raxNode* %26, i8* %27), !dbg !592
  br label %if.end31, !dbg !592

if.end31:                                         ; preds = %if.then30, %if.end28
  %call32 = call i32* @__errno_location() #9, !dbg !593
  store i32 0, i32* %call32, align 4, !dbg !594
  store i32 0, i32* %retval, align 4, !dbg !595
  br label %return, !dbg !595

if.end33:                                         ; preds = %if.end20
  %28 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !596
  %29 = load i8*, i8** %data.addr, align 8, !dbg !597
  call void @raxSetData(%struct.raxNode* %28, i8* %29), !dbg !598
  %30 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !599
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %30, i32 0, i32 1, !dbg !600
  %31 = load i64, i64* %numele, align 8, !dbg !601
  %inc = add i64 %31, 1, !dbg !601
  store i64 %inc, i64* %numele, align 8, !dbg !601
  store i32 1, i32* %retval, align 4, !dbg !602
  br label %return, !dbg !602

if.end34:                                         ; preds = %lor.lhs.false, %entry
  %32 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !603
  %33 = bitcast %struct.raxNode* %32 to i32*, !dbg !605
  %bf.load35 = load i32, i32* %33, align 4, !dbg !605
  %bf.lshr36 = lshr i32 %bf.load35, 2, !dbg !605
  %bf.clear37 = and i32 %bf.lshr36, 1, !dbg !605
  %tobool38 = icmp ne i32 %bf.clear37, 0, !dbg !603
  br i1 %tobool38, label %land.lhs.true39, label %if.else403, !dbg !606

land.lhs.true39:                                  ; preds = %if.end34
  %34 = load i64, i64* %i, align 8, !dbg !607
  %35 = load i64, i64* %len.addr, align 8, !dbg !608
  %cmp40 = icmp ne i64 %34, %35, !dbg !609
  br i1 %cmp40, label %if.then41, label %if.else403, !dbg !610

if.then41:                                        ; preds = %land.lhs.true39
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %childfield, metadata !611, metadata !DIExpression()), !dbg !613
  %36 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %37 = bitcast %struct.raxNode* %36 to i8*, !dbg !614
  %38 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %39 = bitcast %struct.raxNode* %38 to i32*, !dbg !614
  %bf.load42 = load i32, i32* %39, align 4, !dbg !614
  %bf.lshr43 = lshr i32 %bf.load42, 3, !dbg !614
  %conv = zext i32 %bf.lshr43 to i64, !dbg !614
  %add = add i64 4, %conv, !dbg !614
  %40 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %41 = bitcast %struct.raxNode* %40 to i32*, !dbg !614
  %bf.load44 = load i32, i32* %41, align 4, !dbg !614
  %bf.lshr45 = lshr i32 %bf.load44, 3, !dbg !614
  %add46 = add nsw i32 %bf.lshr45, 4, !dbg !614
  %conv47 = sext i32 %add46 to i64, !dbg !614
  %rem = urem i64 %conv47, 8, !dbg !614
  %sub = sub i64 8, %rem, !dbg !614
  %and = and i64 %sub, 7, !dbg !614
  %add48 = add i64 %add, %and, !dbg !614
  %42 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %43 = bitcast %struct.raxNode* %42 to i32*, !dbg !614
  %bf.load49 = load i32, i32* %43, align 4, !dbg !614
  %bf.lshr50 = lshr i32 %bf.load49, 2, !dbg !614
  %bf.clear51 = and i32 %bf.lshr50, 1, !dbg !614
  %tobool52 = icmp ne i32 %bf.clear51, 0, !dbg !614
  br i1 %tobool52, label %cond.true, label %cond.false, !dbg !614

cond.true:                                        ; preds = %if.then41
  br label %cond.end, !dbg !614

cond.false:                                       ; preds = %if.then41
  %44 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %45 = bitcast %struct.raxNode* %44 to i32*, !dbg !614
  %bf.load53 = load i32, i32* %45, align 4, !dbg !614
  %bf.lshr54 = lshr i32 %bf.load53, 3, !dbg !614
  %conv55 = zext i32 %bf.lshr54 to i64, !dbg !614
  %mul = mul i64 8, %conv55, !dbg !614
  br label %cond.end, !dbg !614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !614
  %add56 = add i64 %add48, %cond, !dbg !614
  %46 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %47 = bitcast %struct.raxNode* %46 to i32*, !dbg !614
  %bf.load57 = load i32, i32* %47, align 4, !dbg !614
  %bf.clear58 = and i32 %bf.load57, 1, !dbg !614
  %tobool59 = icmp ne i32 %bf.clear58, 0, !dbg !614
  br i1 %tobool59, label %land.rhs, label %land.end, !dbg !614

land.rhs:                                         ; preds = %cond.end
  %48 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %49 = bitcast %struct.raxNode* %48 to i32*, !dbg !614
  %bf.load60 = load i32, i32* %49, align 4, !dbg !614
  %bf.lshr61 = lshr i32 %bf.load60, 1, !dbg !614
  %bf.clear62 = and i32 %bf.lshr61, 1, !dbg !614
  %tobool63 = icmp ne i32 %bf.clear62, 0, !dbg !614
  %lnot = xor i1 %tobool63, true, !dbg !614
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %50 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !615
  %land.ext = zext i1 %50 to i32, !dbg !614
  %conv64 = sext i32 %land.ext to i64, !dbg !614
  %mul65 = mul i64 %conv64, 8, !dbg !614
  %add66 = add i64 %add56, %mul65, !dbg !614
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %add66, !dbg !614
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !614
  %51 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %52 = bitcast %struct.raxNode* %51 to i32*, !dbg !614
  %bf.load68 = load i32, i32* %52, align 4, !dbg !614
  %bf.clear69 = and i32 %bf.load68, 1, !dbg !614
  %tobool70 = icmp ne i32 %bf.clear69, 0, !dbg !614
  br i1 %tobool70, label %land.rhs71, label %land.end77, !dbg !614

land.rhs71:                                       ; preds = %land.end
  %53 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !614
  %54 = bitcast %struct.raxNode* %53 to i32*, !dbg !614
  %bf.load72 = load i32, i32* %54, align 4, !dbg !614
  %bf.lshr73 = lshr i32 %bf.load72, 1, !dbg !614
  %bf.clear74 = and i32 %bf.lshr73, 1, !dbg !614
  %tobool75 = icmp ne i32 %bf.clear74, 0, !dbg !614
  %lnot76 = xor i1 %tobool75, true, !dbg !614
  br label %land.end77

land.end77:                                       ; preds = %land.rhs71, %land.end
  %55 = phi i1 [ false, %land.end ], [ %lnot76, %land.rhs71 ], !dbg !615
  %56 = zext i1 %55 to i64, !dbg !614
  %cond79 = select i1 %55, i64 8, i64 0, !dbg !614
  %idx.neg = sub i64 0, %cond79, !dbg !614
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr67, i64 %idx.neg, !dbg !614
  %57 = bitcast i8* %add.ptr80 to %struct.raxNode**, !dbg !614
  store %struct.raxNode** %57, %struct.raxNode*** %childfield, align 8, !dbg !613
  call void @llvm.dbg.declare(metadata %struct.raxNode** %next, metadata !616, metadata !DIExpression()), !dbg !617
  %58 = bitcast %struct.raxNode** %next to i8*, !dbg !618
  %59 = load %struct.raxNode**, %struct.raxNode*** %childfield, align 8, !dbg !619
  %60 = bitcast %struct.raxNode** %59 to i8*, !dbg !618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %60, i64 8, i1 false), !dbg !618
  %61 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !620
  %62 = bitcast %struct.raxNode* %61 to i32*, !dbg !622
  %bf.load81 = load i32, i32* %62, align 4, !dbg !622
  %bf.clear82 = and i32 %bf.load81, 1, !dbg !622
  %tobool83 = icmp ne i32 %bf.clear82, 0, !dbg !620
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !623

if.then84:                                        ; preds = %land.end77
  br label %if.end85, !dbg !624

if.end85:                                         ; preds = %if.then84, %land.end77
  call void @llvm.dbg.declare(metadata i64* %trimmedlen, metadata !626, metadata !DIExpression()), !dbg !627
  %63 = load i32, i32* %j, align 4, !dbg !628
  %conv86 = sext i32 %63 to i64, !dbg !628
  store i64 %conv86, i64* %trimmedlen, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata i64* %postfixlen, metadata !629, metadata !DIExpression()), !dbg !630
  %64 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !631
  %65 = bitcast %struct.raxNode* %64 to i32*, !dbg !632
  %bf.load87 = load i32, i32* %65, align 4, !dbg !632
  %bf.lshr88 = lshr i32 %bf.load87, 3, !dbg !632
  %66 = load i32, i32* %j, align 4, !dbg !633
  %sub89 = sub nsw i32 %bf.lshr88, %66, !dbg !634
  %sub90 = sub nsw i32 %sub89, 1, !dbg !635
  %conv91 = sext i32 %sub90 to i64, !dbg !631
  store i64 %conv91, i64* %postfixlen, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata i32* %split_node_is_key, metadata !636, metadata !DIExpression()), !dbg !637
  %67 = load i64, i64* %trimmedlen, align 8, !dbg !638
  %tobool92 = icmp ne i64 %67, 0, !dbg !638
  br i1 %tobool92, label %land.end103, label %land.lhs.true93, !dbg !639

land.lhs.true93:                                  ; preds = %if.end85
  %68 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !640
  %69 = bitcast %struct.raxNode* %68 to i32*, !dbg !641
  %bf.load94 = load i32, i32* %69, align 4, !dbg !641
  %bf.clear95 = and i32 %bf.load94, 1, !dbg !641
  %tobool96 = icmp ne i32 %bf.clear95, 0, !dbg !640
  br i1 %tobool96, label %land.rhs97, label %land.end103, !dbg !642

land.rhs97:                                       ; preds = %land.lhs.true93
  %70 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !643
  %71 = bitcast %struct.raxNode* %70 to i32*, !dbg !644
  %bf.load98 = load i32, i32* %71, align 4, !dbg !644
  %bf.lshr99 = lshr i32 %bf.load98, 1, !dbg !644
  %bf.clear100 = and i32 %bf.lshr99, 1, !dbg !644
  %tobool101 = icmp ne i32 %bf.clear100, 0, !dbg !645
  %lnot102 = xor i1 %tobool101, true, !dbg !645
  br label %land.end103

land.end103:                                      ; preds = %land.rhs97, %land.lhs.true93, %if.end85
  %72 = phi i1 [ false, %land.lhs.true93 ], [ false, %if.end85 ], [ %lnot102, %land.rhs97 ], !dbg !615
  %land.ext104 = zext i1 %72 to i32, !dbg !642
  store i32 %land.ext104, i32* %split_node_is_key, align 4, !dbg !637
  call void @llvm.dbg.declare(metadata i64* %nodesize, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata %struct.raxNode** %splitnode, metadata !648, metadata !DIExpression()), !dbg !649
  %73 = load i32, i32* %split_node_is_key, align 4, !dbg !650
  %call105 = call %struct.raxNode* @raxNewNode(i64 1, i32 %73), !dbg !651
  store %struct.raxNode* %call105, %struct.raxNode** %splitnode, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata %struct.raxNode** %trimmed, metadata !652, metadata !DIExpression()), !dbg !653
  store %struct.raxNode* null, %struct.raxNode** %trimmed, align 8, !dbg !653
  call void @llvm.dbg.declare(metadata %struct.raxNode** %postfix, metadata !654, metadata !DIExpression()), !dbg !655
  store %struct.raxNode* null, %struct.raxNode** %postfix, align 8, !dbg !655
  %74 = load i64, i64* %trimmedlen, align 8, !dbg !656
  %tobool106 = icmp ne i64 %74, 0, !dbg !656
  br i1 %tobool106, label %if.then107, label %if.end127, !dbg !658

if.then107:                                       ; preds = %land.end103
  %75 = load i64, i64* %trimmedlen, align 8, !dbg !659
  %add108 = add i64 4, %75, !dbg !661
  %76 = load i64, i64* %trimmedlen, align 8, !dbg !662
  %add109 = add i64 %76, 4, !dbg !662
  %rem110 = urem i64 %add109, 8, !dbg !662
  %sub111 = sub i64 8, %rem110, !dbg !662
  %and112 = and i64 %sub111, 7, !dbg !662
  %add113 = add i64 %add108, %and112, !dbg !663
  %add114 = add i64 %add113, 8, !dbg !664
  store i64 %add114, i64* %nodesize, align 8, !dbg !665
  %77 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !666
  %78 = bitcast %struct.raxNode* %77 to i32*, !dbg !668
  %bf.load115 = load i32, i32* %78, align 4, !dbg !668
  %bf.clear116 = and i32 %bf.load115, 1, !dbg !668
  %tobool117 = icmp ne i32 %bf.clear116, 0, !dbg !666
  br i1 %tobool117, label %land.lhs.true118, label %if.end125, !dbg !669

land.lhs.true118:                                 ; preds = %if.then107
  %79 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !670
  %80 = bitcast %struct.raxNode* %79 to i32*, !dbg !671
  %bf.load119 = load i32, i32* %80, align 4, !dbg !671
  %bf.lshr120 = lshr i32 %bf.load119, 1, !dbg !671
  %bf.clear121 = and i32 %bf.lshr120, 1, !dbg !671
  %tobool122 = icmp ne i32 %bf.clear121, 0, !dbg !670
  br i1 %tobool122, label %if.end125, label %if.then123, !dbg !672

if.then123:                                       ; preds = %land.lhs.true118
  %81 = load i64, i64* %nodesize, align 8, !dbg !673
  %add124 = add i64 %81, 8, !dbg !673
  store i64 %add124, i64* %nodesize, align 8, !dbg !673
  br label %if.end125, !dbg !674

if.end125:                                        ; preds = %if.then123, %land.lhs.true118, %if.then107
  %82 = load i64, i64* %nodesize, align 8, !dbg !675
  %call126 = call i8* @zmalloc(i64 %82), !dbg !676
  %83 = bitcast i8* %call126 to %struct.raxNode*, !dbg !676
  store %struct.raxNode* %83, %struct.raxNode** %trimmed, align 8, !dbg !677
  br label %if.end127, !dbg !678

if.end127:                                        ; preds = %if.end125, %land.end103
  %84 = load i64, i64* %postfixlen, align 8, !dbg !679
  %tobool128 = icmp ne i64 %84, 0, !dbg !679
  br i1 %tobool128, label %if.then129, label %if.end138, !dbg !681

if.then129:                                       ; preds = %if.end127
  %85 = load i64, i64* %postfixlen, align 8, !dbg !682
  %add130 = add i64 4, %85, !dbg !684
  %86 = load i64, i64* %postfixlen, align 8, !dbg !685
  %add131 = add i64 %86, 4, !dbg !685
  %rem132 = urem i64 %add131, 8, !dbg !685
  %sub133 = sub i64 8, %rem132, !dbg !685
  %and134 = and i64 %sub133, 7, !dbg !685
  %add135 = add i64 %add130, %and134, !dbg !686
  %add136 = add i64 %add135, 8, !dbg !687
  store i64 %add136, i64* %nodesize, align 8, !dbg !688
  %87 = load i64, i64* %nodesize, align 8, !dbg !689
  %call137 = call i8* @zmalloc(i64 %87), !dbg !690
  %88 = bitcast i8* %call137 to %struct.raxNode*, !dbg !690
  store %struct.raxNode* %88, %struct.raxNode** %postfix, align 8, !dbg !691
  br label %if.end138, !dbg !692

if.end138:                                        ; preds = %if.then129, %if.end127
  %89 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !693
  %cmp139 = icmp eq %struct.raxNode* %89, null, !dbg !695
  br i1 %cmp139, label %if.then151, label %lor.lhs.false141, !dbg !696

lor.lhs.false141:                                 ; preds = %if.end138
  %90 = load i64, i64* %trimmedlen, align 8, !dbg !697
  %tobool142 = icmp ne i64 %90, 0, !dbg !697
  br i1 %tobool142, label %land.lhs.true143, label %lor.lhs.false146, !dbg !698

land.lhs.true143:                                 ; preds = %lor.lhs.false141
  %91 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !699
  %cmp144 = icmp eq %struct.raxNode* %91, null, !dbg !700
  br i1 %cmp144, label %if.then151, label %lor.lhs.false146, !dbg !701

lor.lhs.false146:                                 ; preds = %land.lhs.true143, %lor.lhs.false141
  %92 = load i64, i64* %postfixlen, align 8, !dbg !702
  %tobool147 = icmp ne i64 %92, 0, !dbg !702
  br i1 %tobool147, label %land.lhs.true148, label %if.end153, !dbg !703

land.lhs.true148:                                 ; preds = %lor.lhs.false146
  %93 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !704
  %cmp149 = icmp eq %struct.raxNode* %93, null, !dbg !705
  br i1 %cmp149, label %if.then151, label %if.end153, !dbg !706

if.then151:                                       ; preds = %land.lhs.true148, %land.lhs.true143, %if.end138
  %94 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !707
  %95 = bitcast %struct.raxNode* %94 to i8*, !dbg !707
  call void @zfree(i8* %95), !dbg !709
  %96 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !710
  %97 = bitcast %struct.raxNode* %96 to i8*, !dbg !710
  call void @zfree(i8* %97), !dbg !711
  %98 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !712
  %99 = bitcast %struct.raxNode* %98 to i8*, !dbg !712
  call void @zfree(i8* %99), !dbg !713
  %call152 = call i32* @__errno_location() #9, !dbg !714
  store i32 12, i32* %call152, align 4, !dbg !715
  store i32 0, i32* %retval, align 4, !dbg !716
  br label %return, !dbg !716

if.end153:                                        ; preds = %land.lhs.true148, %lor.lhs.false146
  %100 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !717
  %data154 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %100, i32 0, i32 1, !dbg !718
  %101 = load i32, i32* %j, align 4, !dbg !719
  %idxprom = sext i32 %101 to i64, !dbg !717
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %data154, i64 0, i64 %idxprom, !dbg !717
  %102 = load i8, i8* %arrayidx, align 1, !dbg !717
  %103 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !720
  %data155 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %103, i32 0, i32 1, !dbg !721
  %arrayidx156 = getelementptr inbounds [0 x i8], [0 x i8]* %data155, i64 0, i64 0, !dbg !720
  store i8 %102, i8* %arrayidx156, align 4, !dbg !722
  %104 = load i32, i32* %j, align 4, !dbg !723
  %cmp157 = icmp eq i32 %104, 0, !dbg !725
  br i1 %cmp157, label %if.then159, label %if.else, !dbg !726

if.then159:                                       ; preds = %if.end153
  %105 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !727
  %106 = bitcast %struct.raxNode* %105 to i32*, !dbg !730
  %bf.load160 = load i32, i32* %106, align 4, !dbg !730
  %bf.clear161 = and i32 %bf.load160, 1, !dbg !730
  %tobool162 = icmp ne i32 %bf.clear161, 0, !dbg !727
  br i1 %tobool162, label %if.then163, label %if.end165, !dbg !731

if.then163:                                       ; preds = %if.then159
  call void @llvm.dbg.declare(metadata i8** %ndata, metadata !732, metadata !DIExpression()), !dbg !734
  %107 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !735
  %call164 = call i8* @raxGetData(%struct.raxNode* %107), !dbg !736
  store i8* %call164, i8** %ndata, align 8, !dbg !734
  %108 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !737
  %109 = load i8*, i8** %ndata, align 8, !dbg !738
  call void @raxSetData(%struct.raxNode* %108, i8* %109), !dbg !739
  br label %if.end165, !dbg !740

if.end165:                                        ; preds = %if.then163, %if.then159
  %110 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !741
  %111 = bitcast %struct.raxNode** %110 to i8*, !dbg !742
  %112 = bitcast %struct.raxNode** %splitnode to i8*, !dbg !742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false), !dbg !742
  br label %if.end262, !dbg !743

if.else:                                          ; preds = %if.end153
  %113 = load i32, i32* %j, align 4, !dbg !744
  %114 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !746
  %115 = bitcast %struct.raxNode* %114 to i32*, !dbg !747
  %bf.load166 = load i32, i32* %115, align 4, !dbg !748
  %bf.value = and i32 %113, 536870911, !dbg !748
  %bf.shl = shl i32 %bf.value, 3, !dbg !748
  %bf.clear167 = and i32 %bf.load166, 7, !dbg !748
  %bf.set = or i32 %bf.clear167, %bf.shl, !dbg !748
  store i32 %bf.set, i32* %115, align 4, !dbg !748
  %116 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !749
  %data168 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %116, i32 0, i32 1, !dbg !750
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data168, i64 0, i64 0, !dbg !751
  %117 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !752
  %data169 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %117, i32 0, i32 1, !dbg !753
  %arraydecay170 = getelementptr inbounds [0 x i8], [0 x i8]* %data169, i64 0, i64 0, !dbg !751
  %118 = load i32, i32* %j, align 4, !dbg !754
  %conv171 = sext i32 %118 to i64, !dbg !754
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay, i8* align 4 %arraydecay170, i64 %conv171, i1 false), !dbg !751
  %119 = load i32, i32* %j, align 4, !dbg !755
  %cmp172 = icmp sgt i32 %119, 1, !dbg !756
  %120 = zext i1 %cmp172 to i64, !dbg !755
  %cond174 = select i1 %cmp172, i32 1, i32 0, !dbg !755
  %121 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !757
  %122 = bitcast %struct.raxNode* %121 to i32*, !dbg !758
  %bf.load175 = load i32, i32* %122, align 4, !dbg !759
  %bf.value176 = and i32 %cond174, 1, !dbg !759
  %bf.shl177 = shl i32 %bf.value176, 2, !dbg !759
  %bf.clear178 = and i32 %bf.load175, -5, !dbg !759
  %bf.set179 = or i32 %bf.clear178, %bf.shl177, !dbg !759
  store i32 %bf.set179, i32* %122, align 4, !dbg !759
  %123 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !760
  %124 = bitcast %struct.raxNode* %123 to i32*, !dbg !761
  %bf.load180 = load i32, i32* %124, align 4, !dbg !761
  %bf.clear181 = and i32 %bf.load180, 1, !dbg !761
  %125 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !762
  %126 = bitcast %struct.raxNode* %125 to i32*, !dbg !763
  %bf.load182 = load i32, i32* %126, align 4, !dbg !764
  %bf.value183 = and i32 %bf.clear181, 1, !dbg !764
  %bf.clear184 = and i32 %bf.load182, -2, !dbg !764
  %bf.set185 = or i32 %bf.clear184, %bf.value183, !dbg !764
  store i32 %bf.set185, i32* %126, align 4, !dbg !764
  %127 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !765
  %128 = bitcast %struct.raxNode* %127 to i32*, !dbg !766
  %bf.load186 = load i32, i32* %128, align 4, !dbg !766
  %bf.lshr187 = lshr i32 %bf.load186, 1, !dbg !766
  %bf.clear188 = and i32 %bf.lshr187, 1, !dbg !766
  %129 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !767
  %130 = bitcast %struct.raxNode* %129 to i32*, !dbg !768
  %bf.load189 = load i32, i32* %130, align 4, !dbg !769
  %bf.value190 = and i32 %bf.clear188, 1, !dbg !769
  %bf.shl191 = shl i32 %bf.value190, 1, !dbg !769
  %bf.clear192 = and i32 %bf.load189, -3, !dbg !769
  %bf.set193 = or i32 %bf.clear192, %bf.shl191, !dbg !769
  store i32 %bf.set193, i32* %130, align 4, !dbg !769
  %131 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !770
  %132 = bitcast %struct.raxNode* %131 to i32*, !dbg !772
  %bf.load194 = load i32, i32* %132, align 4, !dbg !772
  %bf.clear195 = and i32 %bf.load194, 1, !dbg !772
  %tobool196 = icmp ne i32 %bf.clear195, 0, !dbg !770
  br i1 %tobool196, label %land.lhs.true197, label %if.end205, !dbg !773

land.lhs.true197:                                 ; preds = %if.else
  %133 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !774
  %134 = bitcast %struct.raxNode* %133 to i32*, !dbg !775
  %bf.load198 = load i32, i32* %134, align 4, !dbg !775
  %bf.lshr199 = lshr i32 %bf.load198, 1, !dbg !775
  %bf.clear200 = and i32 %bf.lshr199, 1, !dbg !775
  %tobool201 = icmp ne i32 %bf.clear200, 0, !dbg !774
  br i1 %tobool201, label %if.end205, label %if.then202, !dbg !776

if.then202:                                       ; preds = %land.lhs.true197
  call void @llvm.dbg.declare(metadata i8** %ndata203, metadata !777, metadata !DIExpression()), !dbg !779
  %135 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !780
  %call204 = call i8* @raxGetData(%struct.raxNode* %135), !dbg !781
  store i8* %call204, i8** %ndata203, align 8, !dbg !779
  %136 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !782
  %137 = load i8*, i8** %ndata203, align 8, !dbg !783
  call void @raxSetData(%struct.raxNode* %136, i8* %137), !dbg !784
  br label %if.end205, !dbg !785

if.end205:                                        ; preds = %if.then202, %land.lhs.true197, %if.else
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !786, metadata !DIExpression()), !dbg !787
  %138 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %139 = bitcast %struct.raxNode* %138 to i8*, !dbg !788
  %140 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %141 = bitcast %struct.raxNode* %140 to i32*, !dbg !788
  %bf.load206 = load i32, i32* %141, align 4, !dbg !788
  %bf.lshr207 = lshr i32 %bf.load206, 3, !dbg !788
  %conv208 = zext i32 %bf.lshr207 to i64, !dbg !788
  %add209 = add i64 4, %conv208, !dbg !788
  %142 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %143 = bitcast %struct.raxNode* %142 to i32*, !dbg !788
  %bf.load210 = load i32, i32* %143, align 4, !dbg !788
  %bf.lshr211 = lshr i32 %bf.load210, 3, !dbg !788
  %add212 = add nsw i32 %bf.lshr211, 4, !dbg !788
  %conv213 = sext i32 %add212 to i64, !dbg !788
  %rem214 = urem i64 %conv213, 8, !dbg !788
  %sub215 = sub i64 8, %rem214, !dbg !788
  %and216 = and i64 %sub215, 7, !dbg !788
  %add217 = add i64 %add209, %and216, !dbg !788
  %144 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %145 = bitcast %struct.raxNode* %144 to i32*, !dbg !788
  %bf.load218 = load i32, i32* %145, align 4, !dbg !788
  %bf.lshr219 = lshr i32 %bf.load218, 2, !dbg !788
  %bf.clear220 = and i32 %bf.lshr219, 1, !dbg !788
  %tobool221 = icmp ne i32 %bf.clear220, 0, !dbg !788
  br i1 %tobool221, label %cond.true222, label %cond.false223, !dbg !788

cond.true222:                                     ; preds = %if.end205
  br label %cond.end228, !dbg !788

cond.false223:                                    ; preds = %if.end205
  %146 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %147 = bitcast %struct.raxNode* %146 to i32*, !dbg !788
  %bf.load224 = load i32, i32* %147, align 4, !dbg !788
  %bf.lshr225 = lshr i32 %bf.load224, 3, !dbg !788
  %conv226 = zext i32 %bf.lshr225 to i64, !dbg !788
  %mul227 = mul i64 8, %conv226, !dbg !788
  br label %cond.end228, !dbg !788

cond.end228:                                      ; preds = %cond.false223, %cond.true222
  %cond229 = phi i64 [ 8, %cond.true222 ], [ %mul227, %cond.false223 ], !dbg !788
  %add230 = add i64 %add217, %cond229, !dbg !788
  %148 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %149 = bitcast %struct.raxNode* %148 to i32*, !dbg !788
  %bf.load231 = load i32, i32* %149, align 4, !dbg !788
  %bf.clear232 = and i32 %bf.load231, 1, !dbg !788
  %tobool233 = icmp ne i32 %bf.clear232, 0, !dbg !788
  br i1 %tobool233, label %land.rhs234, label %land.end240, !dbg !788

land.rhs234:                                      ; preds = %cond.end228
  %150 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %151 = bitcast %struct.raxNode* %150 to i32*, !dbg !788
  %bf.load235 = load i32, i32* %151, align 4, !dbg !788
  %bf.lshr236 = lshr i32 %bf.load235, 1, !dbg !788
  %bf.clear237 = and i32 %bf.lshr236, 1, !dbg !788
  %tobool238 = icmp ne i32 %bf.clear237, 0, !dbg !788
  %lnot239 = xor i1 %tobool238, true, !dbg !788
  br label %land.end240

land.end240:                                      ; preds = %land.rhs234, %cond.end228
  %152 = phi i1 [ false, %cond.end228 ], [ %lnot239, %land.rhs234 ], !dbg !789
  %land.ext241 = zext i1 %152 to i32, !dbg !788
  %conv242 = sext i32 %land.ext241 to i64, !dbg !788
  %mul243 = mul i64 %conv242, 8, !dbg !788
  %add244 = add i64 %add230, %mul243, !dbg !788
  %add.ptr245 = getelementptr inbounds i8, i8* %139, i64 %add244, !dbg !788
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr245, i64 -8, !dbg !788
  %153 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %154 = bitcast %struct.raxNode* %153 to i32*, !dbg !788
  %bf.load247 = load i32, i32* %154, align 4, !dbg !788
  %bf.clear248 = and i32 %bf.load247, 1, !dbg !788
  %tobool249 = icmp ne i32 %bf.clear248, 0, !dbg !788
  br i1 %tobool249, label %land.rhs250, label %land.end256, !dbg !788

land.rhs250:                                      ; preds = %land.end240
  %155 = load %struct.raxNode*, %struct.raxNode** %trimmed, align 8, !dbg !788
  %156 = bitcast %struct.raxNode* %155 to i32*, !dbg !788
  %bf.load251 = load i32, i32* %156, align 4, !dbg !788
  %bf.lshr252 = lshr i32 %bf.load251, 1, !dbg !788
  %bf.clear253 = and i32 %bf.lshr252, 1, !dbg !788
  %tobool254 = icmp ne i32 %bf.clear253, 0, !dbg !788
  %lnot255 = xor i1 %tobool254, true, !dbg !788
  br label %land.end256

land.end256:                                      ; preds = %land.rhs250, %land.end240
  %157 = phi i1 [ false, %land.end240 ], [ %lnot255, %land.rhs250 ], !dbg !789
  %158 = zext i1 %157 to i64, !dbg !788
  %cond258 = select i1 %157, i64 8, i64 0, !dbg !788
  %idx.neg259 = sub i64 0, %cond258, !dbg !788
  %add.ptr260 = getelementptr inbounds i8, i8* %add.ptr246, i64 %idx.neg259, !dbg !788
  %159 = bitcast i8* %add.ptr260 to %struct.raxNode**, !dbg !788
  store %struct.raxNode** %159, %struct.raxNode*** %cp, align 8, !dbg !787
  %160 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !790
  %161 = bitcast %struct.raxNode** %160 to i8*, !dbg !791
  %162 = bitcast %struct.raxNode** %splitnode to i8*, !dbg !791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 %162, i64 8, i1 false), !dbg !791
  %163 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !792
  %164 = bitcast %struct.raxNode** %163 to i8*, !dbg !793
  %165 = bitcast %struct.raxNode** %trimmed to i8*, !dbg !793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %164, i8* align 8 %165, i64 8, i1 false), !dbg !793
  %166 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !794
  store %struct.raxNode** %166, %struct.raxNode*** %parentlink, align 8, !dbg !795
  %167 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !796
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %167, i32 0, i32 2, !dbg !797
  %168 = load i64, i64* %numnodes, align 8, !dbg !798
  %inc261 = add i64 %168, 1, !dbg !798
  store i64 %inc261, i64* %numnodes, align 8, !dbg !798
  br label %if.end262

if.end262:                                        ; preds = %land.end256, %if.end165
  %169 = load i64, i64* %postfixlen, align 8, !dbg !799
  %tobool263 = icmp ne i64 %169, 0, !dbg !799
  br i1 %tobool263, label %if.then264, label %if.else346, !dbg !801

if.then264:                                       ; preds = %if.end262
  %170 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !802
  %171 = bitcast %struct.raxNode* %170 to i32*, !dbg !804
  %bf.load265 = load i32, i32* %171, align 4, !dbg !805
  %bf.clear266 = and i32 %bf.load265, -2, !dbg !805
  store i32 %bf.clear266, i32* %171, align 4, !dbg !805
  %172 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !806
  %173 = bitcast %struct.raxNode* %172 to i32*, !dbg !807
  %bf.load267 = load i32, i32* %173, align 4, !dbg !808
  %bf.clear268 = and i32 %bf.load267, -3, !dbg !808
  store i32 %bf.clear268, i32* %173, align 4, !dbg !808
  %174 = load i64, i64* %postfixlen, align 8, !dbg !809
  %conv269 = trunc i64 %174 to i32, !dbg !809
  %175 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !810
  %176 = bitcast %struct.raxNode* %175 to i32*, !dbg !811
  %bf.load270 = load i32, i32* %176, align 4, !dbg !812
  %bf.value271 = and i32 %conv269, 536870911, !dbg !812
  %bf.shl272 = shl i32 %bf.value271, 3, !dbg !812
  %bf.clear273 = and i32 %bf.load270, 7, !dbg !812
  %bf.set274 = or i32 %bf.clear273, %bf.shl272, !dbg !812
  store i32 %bf.set274, i32* %176, align 4, !dbg !812
  %177 = load i64, i64* %postfixlen, align 8, !dbg !813
  %cmp275 = icmp ugt i64 %177, 1, !dbg !814
  %conv276 = zext i1 %cmp275 to i32, !dbg !814
  %178 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !815
  %179 = bitcast %struct.raxNode* %178 to i32*, !dbg !816
  %bf.load277 = load i32, i32* %179, align 4, !dbg !817
  %bf.value278 = and i32 %conv276, 1, !dbg !817
  %bf.shl279 = shl i32 %bf.value278, 2, !dbg !817
  %bf.clear280 = and i32 %bf.load277, -5, !dbg !817
  %bf.set281 = or i32 %bf.clear280, %bf.shl279, !dbg !817
  store i32 %bf.set281, i32* %179, align 4, !dbg !817
  %180 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !818
  %data282 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %180, i32 0, i32 1, !dbg !819
  %arraydecay283 = getelementptr inbounds [0 x i8], [0 x i8]* %data282, i64 0, i64 0, !dbg !820
  %181 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !821
  %data284 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %181, i32 0, i32 1, !dbg !822
  %arraydecay285 = getelementptr inbounds [0 x i8], [0 x i8]* %data284, i64 0, i64 0, !dbg !821
  %182 = load i32, i32* %j, align 4, !dbg !823
  %idx.ext = sext i32 %182 to i64, !dbg !824
  %add.ptr286 = getelementptr inbounds i8, i8* %arraydecay285, i64 %idx.ext, !dbg !824
  %add.ptr287 = getelementptr inbounds i8, i8* %add.ptr286, i64 1, !dbg !825
  %183 = load i64, i64* %postfixlen, align 8, !dbg !826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay283, i8* align 1 %add.ptr287, i64 %183, i1 false), !dbg !820
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp288, metadata !827, metadata !DIExpression()), !dbg !828
  %184 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %185 = bitcast %struct.raxNode* %184 to i8*, !dbg !829
  %186 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %187 = bitcast %struct.raxNode* %186 to i32*, !dbg !829
  %bf.load289 = load i32, i32* %187, align 4, !dbg !829
  %bf.lshr290 = lshr i32 %bf.load289, 3, !dbg !829
  %conv291 = zext i32 %bf.lshr290 to i64, !dbg !829
  %add292 = add i64 4, %conv291, !dbg !829
  %188 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %189 = bitcast %struct.raxNode* %188 to i32*, !dbg !829
  %bf.load293 = load i32, i32* %189, align 4, !dbg !829
  %bf.lshr294 = lshr i32 %bf.load293, 3, !dbg !829
  %add295 = add nsw i32 %bf.lshr294, 4, !dbg !829
  %conv296 = sext i32 %add295 to i64, !dbg !829
  %rem297 = urem i64 %conv296, 8, !dbg !829
  %sub298 = sub i64 8, %rem297, !dbg !829
  %and299 = and i64 %sub298, 7, !dbg !829
  %add300 = add i64 %add292, %and299, !dbg !829
  %190 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %191 = bitcast %struct.raxNode* %190 to i32*, !dbg !829
  %bf.load301 = load i32, i32* %191, align 4, !dbg !829
  %bf.lshr302 = lshr i32 %bf.load301, 2, !dbg !829
  %bf.clear303 = and i32 %bf.lshr302, 1, !dbg !829
  %tobool304 = icmp ne i32 %bf.clear303, 0, !dbg !829
  br i1 %tobool304, label %cond.true305, label %cond.false306, !dbg !829

cond.true305:                                     ; preds = %if.then264
  br label %cond.end311, !dbg !829

cond.false306:                                    ; preds = %if.then264
  %192 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %193 = bitcast %struct.raxNode* %192 to i32*, !dbg !829
  %bf.load307 = load i32, i32* %193, align 4, !dbg !829
  %bf.lshr308 = lshr i32 %bf.load307, 3, !dbg !829
  %conv309 = zext i32 %bf.lshr308 to i64, !dbg !829
  %mul310 = mul i64 8, %conv309, !dbg !829
  br label %cond.end311, !dbg !829

cond.end311:                                      ; preds = %cond.false306, %cond.true305
  %cond312 = phi i64 [ 8, %cond.true305 ], [ %mul310, %cond.false306 ], !dbg !829
  %add313 = add i64 %add300, %cond312, !dbg !829
  %194 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %195 = bitcast %struct.raxNode* %194 to i32*, !dbg !829
  %bf.load314 = load i32, i32* %195, align 4, !dbg !829
  %bf.clear315 = and i32 %bf.load314, 1, !dbg !829
  %tobool316 = icmp ne i32 %bf.clear315, 0, !dbg !829
  br i1 %tobool316, label %land.rhs317, label %land.end323, !dbg !829

land.rhs317:                                      ; preds = %cond.end311
  %196 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %197 = bitcast %struct.raxNode* %196 to i32*, !dbg !829
  %bf.load318 = load i32, i32* %197, align 4, !dbg !829
  %bf.lshr319 = lshr i32 %bf.load318, 1, !dbg !829
  %bf.clear320 = and i32 %bf.lshr319, 1, !dbg !829
  %tobool321 = icmp ne i32 %bf.clear320, 0, !dbg !829
  %lnot322 = xor i1 %tobool321, true, !dbg !829
  br label %land.end323

land.end323:                                      ; preds = %land.rhs317, %cond.end311
  %198 = phi i1 [ false, %cond.end311 ], [ %lnot322, %land.rhs317 ], !dbg !830
  %land.ext324 = zext i1 %198 to i32, !dbg !829
  %conv325 = sext i32 %land.ext324 to i64, !dbg !829
  %mul326 = mul i64 %conv325, 8, !dbg !829
  %add327 = add i64 %add313, %mul326, !dbg !829
  %add.ptr328 = getelementptr inbounds i8, i8* %185, i64 %add327, !dbg !829
  %add.ptr329 = getelementptr inbounds i8, i8* %add.ptr328, i64 -8, !dbg !829
  %199 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %200 = bitcast %struct.raxNode* %199 to i32*, !dbg !829
  %bf.load330 = load i32, i32* %200, align 4, !dbg !829
  %bf.clear331 = and i32 %bf.load330, 1, !dbg !829
  %tobool332 = icmp ne i32 %bf.clear331, 0, !dbg !829
  br i1 %tobool332, label %land.rhs333, label %land.end339, !dbg !829

land.rhs333:                                      ; preds = %land.end323
  %201 = load %struct.raxNode*, %struct.raxNode** %postfix, align 8, !dbg !829
  %202 = bitcast %struct.raxNode* %201 to i32*, !dbg !829
  %bf.load334 = load i32, i32* %202, align 4, !dbg !829
  %bf.lshr335 = lshr i32 %bf.load334, 1, !dbg !829
  %bf.clear336 = and i32 %bf.lshr335, 1, !dbg !829
  %tobool337 = icmp ne i32 %bf.clear336, 0, !dbg !829
  %lnot338 = xor i1 %tobool337, true, !dbg !829
  br label %land.end339

land.end339:                                      ; preds = %land.rhs333, %land.end323
  %203 = phi i1 [ false, %land.end323 ], [ %lnot338, %land.rhs333 ], !dbg !830
  %204 = zext i1 %203 to i64, !dbg !829
  %cond341 = select i1 %203, i64 8, i64 0, !dbg !829
  %idx.neg342 = sub i64 0, %cond341, !dbg !829
  %add.ptr343 = getelementptr inbounds i8, i8* %add.ptr329, i64 %idx.neg342, !dbg !829
  %205 = bitcast i8* %add.ptr343 to %struct.raxNode**, !dbg !829
  store %struct.raxNode** %205, %struct.raxNode*** %cp288, align 8, !dbg !828
  %206 = load %struct.raxNode**, %struct.raxNode*** %cp288, align 8, !dbg !831
  %207 = bitcast %struct.raxNode** %206 to i8*, !dbg !832
  %208 = bitcast %struct.raxNode** %next to i8*, !dbg !832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 8, i1 false), !dbg !832
  %209 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !833
  %numnodes344 = getelementptr inbounds %struct.rax, %struct.rax* %209, i32 0, i32 2, !dbg !834
  %210 = load i64, i64* %numnodes344, align 8, !dbg !835
  %inc345 = add i64 %210, 1, !dbg !835
  store i64 %inc345, i64* %numnodes344, align 8, !dbg !835
  br label %if.end347, !dbg !836

if.else346:                                       ; preds = %if.end262
  %211 = load %struct.raxNode*, %struct.raxNode** %next, align 8, !dbg !837
  store %struct.raxNode* %211, %struct.raxNode** %postfix, align 8, !dbg !839
  br label %if.end347

if.end347:                                        ; preds = %if.else346, %land.end339
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %splitchild, metadata !840, metadata !DIExpression()), !dbg !841
  %212 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %213 = bitcast %struct.raxNode* %212 to i8*, !dbg !842
  %214 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %215 = bitcast %struct.raxNode* %214 to i32*, !dbg !842
  %bf.load348 = load i32, i32* %215, align 4, !dbg !842
  %bf.lshr349 = lshr i32 %bf.load348, 3, !dbg !842
  %conv350 = zext i32 %bf.lshr349 to i64, !dbg !842
  %add351 = add i64 4, %conv350, !dbg !842
  %216 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %217 = bitcast %struct.raxNode* %216 to i32*, !dbg !842
  %bf.load352 = load i32, i32* %217, align 4, !dbg !842
  %bf.lshr353 = lshr i32 %bf.load352, 3, !dbg !842
  %add354 = add nsw i32 %bf.lshr353, 4, !dbg !842
  %conv355 = sext i32 %add354 to i64, !dbg !842
  %rem356 = urem i64 %conv355, 8, !dbg !842
  %sub357 = sub i64 8, %rem356, !dbg !842
  %and358 = and i64 %sub357, 7, !dbg !842
  %add359 = add i64 %add351, %and358, !dbg !842
  %218 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %219 = bitcast %struct.raxNode* %218 to i32*, !dbg !842
  %bf.load360 = load i32, i32* %219, align 4, !dbg !842
  %bf.lshr361 = lshr i32 %bf.load360, 2, !dbg !842
  %bf.clear362 = and i32 %bf.lshr361, 1, !dbg !842
  %tobool363 = icmp ne i32 %bf.clear362, 0, !dbg !842
  br i1 %tobool363, label %cond.true364, label %cond.false365, !dbg !842

cond.true364:                                     ; preds = %if.end347
  br label %cond.end370, !dbg !842

cond.false365:                                    ; preds = %if.end347
  %220 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %221 = bitcast %struct.raxNode* %220 to i32*, !dbg !842
  %bf.load366 = load i32, i32* %221, align 4, !dbg !842
  %bf.lshr367 = lshr i32 %bf.load366, 3, !dbg !842
  %conv368 = zext i32 %bf.lshr367 to i64, !dbg !842
  %mul369 = mul i64 8, %conv368, !dbg !842
  br label %cond.end370, !dbg !842

cond.end370:                                      ; preds = %cond.false365, %cond.true364
  %cond371 = phi i64 [ 8, %cond.true364 ], [ %mul369, %cond.false365 ], !dbg !842
  %add372 = add i64 %add359, %cond371, !dbg !842
  %222 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %223 = bitcast %struct.raxNode* %222 to i32*, !dbg !842
  %bf.load373 = load i32, i32* %223, align 4, !dbg !842
  %bf.clear374 = and i32 %bf.load373, 1, !dbg !842
  %tobool375 = icmp ne i32 %bf.clear374, 0, !dbg !842
  br i1 %tobool375, label %land.rhs376, label %land.end382, !dbg !842

land.rhs376:                                      ; preds = %cond.end370
  %224 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %225 = bitcast %struct.raxNode* %224 to i32*, !dbg !842
  %bf.load377 = load i32, i32* %225, align 4, !dbg !842
  %bf.lshr378 = lshr i32 %bf.load377, 1, !dbg !842
  %bf.clear379 = and i32 %bf.lshr378, 1, !dbg !842
  %tobool380 = icmp ne i32 %bf.clear379, 0, !dbg !842
  %lnot381 = xor i1 %tobool380, true, !dbg !842
  br label %land.end382

land.end382:                                      ; preds = %land.rhs376, %cond.end370
  %226 = phi i1 [ false, %cond.end370 ], [ %lnot381, %land.rhs376 ], !dbg !615
  %land.ext383 = zext i1 %226 to i32, !dbg !842
  %conv384 = sext i32 %land.ext383 to i64, !dbg !842
  %mul385 = mul i64 %conv384, 8, !dbg !842
  %add386 = add i64 %add372, %mul385, !dbg !842
  %add.ptr387 = getelementptr inbounds i8, i8* %213, i64 %add386, !dbg !842
  %add.ptr388 = getelementptr inbounds i8, i8* %add.ptr387, i64 -8, !dbg !842
  %227 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %228 = bitcast %struct.raxNode* %227 to i32*, !dbg !842
  %bf.load389 = load i32, i32* %228, align 4, !dbg !842
  %bf.clear390 = and i32 %bf.load389, 1, !dbg !842
  %tobool391 = icmp ne i32 %bf.clear390, 0, !dbg !842
  br i1 %tobool391, label %land.rhs392, label %land.end398, !dbg !842

land.rhs392:                                      ; preds = %land.end382
  %229 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !842
  %230 = bitcast %struct.raxNode* %229 to i32*, !dbg !842
  %bf.load393 = load i32, i32* %230, align 4, !dbg !842
  %bf.lshr394 = lshr i32 %bf.load393, 1, !dbg !842
  %bf.clear395 = and i32 %bf.lshr394, 1, !dbg !842
  %tobool396 = icmp ne i32 %bf.clear395, 0, !dbg !842
  %lnot397 = xor i1 %tobool396, true, !dbg !842
  br label %land.end398

land.end398:                                      ; preds = %land.rhs392, %land.end382
  %231 = phi i1 [ false, %land.end382 ], [ %lnot397, %land.rhs392 ], !dbg !615
  %232 = zext i1 %231 to i64, !dbg !842
  %cond400 = select i1 %231, i64 8, i64 0, !dbg !842
  %idx.neg401 = sub i64 0, %cond400, !dbg !842
  %add.ptr402 = getelementptr inbounds i8, i8* %add.ptr388, i64 %idx.neg401, !dbg !842
  %233 = bitcast i8* %add.ptr402 to %struct.raxNode**, !dbg !842
  store %struct.raxNode** %233, %struct.raxNode*** %splitchild, align 8, !dbg !841
  %234 = load %struct.raxNode**, %struct.raxNode*** %splitchild, align 8, !dbg !843
  %235 = bitcast %struct.raxNode** %234 to i8*, !dbg !844
  %236 = bitcast %struct.raxNode** %postfix to i8*, !dbg !844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %236, i64 8, i1 false), !dbg !844
  %237 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !845
  %238 = bitcast %struct.raxNode* %237 to i8*, !dbg !845
  call void @zfree(i8* %238), !dbg !846
  %239 = load %struct.raxNode*, %struct.raxNode** %splitnode, align 8, !dbg !847
  store %struct.raxNode* %239, %struct.raxNode** %h, align 8, !dbg !848
  br label %if.end686, !dbg !849

if.else403:                                       ; preds = %land.lhs.true39, %if.end34
  %240 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !850
  %241 = bitcast %struct.raxNode* %240 to i32*, !dbg !852
  %bf.load404 = load i32, i32* %241, align 4, !dbg !852
  %bf.lshr405 = lshr i32 %bf.load404, 2, !dbg !852
  %bf.clear406 = and i32 %bf.lshr405, 1, !dbg !852
  %tobool407 = icmp ne i32 %bf.clear406, 0, !dbg !850
  br i1 %tobool407, label %land.lhs.true408, label %if.end685, !dbg !853

land.lhs.true408:                                 ; preds = %if.else403
  %242 = load i64, i64* %i, align 8, !dbg !854
  %243 = load i64, i64* %len.addr, align 8, !dbg !855
  %cmp409 = icmp eq i64 %242, %243, !dbg !856
  br i1 %cmp409, label %if.then411, label %if.end685, !dbg !857

if.then411:                                       ; preds = %land.lhs.true408
  call void @llvm.dbg.declare(metadata i64* %postfixlen412, metadata !858, metadata !DIExpression()), !dbg !860
  %244 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !861
  %245 = bitcast %struct.raxNode* %244 to i32*, !dbg !862
  %bf.load413 = load i32, i32* %245, align 4, !dbg !862
  %bf.lshr414 = lshr i32 %bf.load413, 3, !dbg !862
  %246 = load i32, i32* %j, align 4, !dbg !863
  %sub415 = sub nsw i32 %bf.lshr414, %246, !dbg !864
  %conv416 = sext i32 %sub415 to i64, !dbg !861
  store i64 %conv416, i64* %postfixlen412, align 8, !dbg !860
  call void @llvm.dbg.declare(metadata i64* %nodesize417, metadata !865, metadata !DIExpression()), !dbg !866
  %247 = load i64, i64* %postfixlen412, align 8, !dbg !867
  %add418 = add i64 4, %247, !dbg !868
  %248 = load i64, i64* %postfixlen412, align 8, !dbg !869
  %add419 = add i64 %248, 4, !dbg !869
  %rem420 = urem i64 %add419, 8, !dbg !869
  %sub421 = sub i64 8, %rem420, !dbg !869
  %and422 = and i64 %sub421, 7, !dbg !869
  %add423 = add i64 %add418, %and422, !dbg !870
  %add424 = add i64 %add423, 8, !dbg !871
  store i64 %add424, i64* %nodesize417, align 8, !dbg !866
  %249 = load i8*, i8** %data.addr, align 8, !dbg !872
  %cmp425 = icmp ne i8* %249, null, !dbg !874
  br i1 %cmp425, label %if.then427, label %if.end429, !dbg !875

if.then427:                                       ; preds = %if.then411
  %250 = load i64, i64* %nodesize417, align 8, !dbg !876
  %add428 = add i64 %250, 8, !dbg !876
  store i64 %add428, i64* %nodesize417, align 8, !dbg !876
  br label %if.end429, !dbg !877

if.end429:                                        ; preds = %if.then427, %if.then411
  call void @llvm.dbg.declare(metadata %struct.raxNode** %postfix430, metadata !878, metadata !DIExpression()), !dbg !879
  %251 = load i64, i64* %nodesize417, align 8, !dbg !880
  %call431 = call i8* @zmalloc(i64 %251), !dbg !881
  %252 = bitcast i8* %call431 to %struct.raxNode*, !dbg !881
  store %struct.raxNode* %252, %struct.raxNode** %postfix430, align 8, !dbg !879
  %253 = load i32, i32* %j, align 4, !dbg !882
  %conv432 = sext i32 %253 to i64, !dbg !882
  %add433 = add i64 4, %conv432, !dbg !883
  %254 = load i32, i32* %j, align 4, !dbg !884
  %add434 = add nsw i32 %254, 4, !dbg !884
  %conv435 = sext i32 %add434 to i64, !dbg !884
  %rem436 = urem i64 %conv435, 8, !dbg !884
  %sub437 = sub i64 8, %rem436, !dbg !884
  %and438 = and i64 %sub437, 7, !dbg !884
  %add439 = add i64 %add433, %and438, !dbg !885
  %add440 = add i64 %add439, 8, !dbg !886
  store i64 %add440, i64* %nodesize417, align 8, !dbg !887
  %255 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !888
  %256 = bitcast %struct.raxNode* %255 to i32*, !dbg !890
  %bf.load441 = load i32, i32* %256, align 4, !dbg !890
  %bf.clear442 = and i32 %bf.load441, 1, !dbg !890
  %tobool443 = icmp ne i32 %bf.clear442, 0, !dbg !888
  br i1 %tobool443, label %land.lhs.true444, label %if.end451, !dbg !891

land.lhs.true444:                                 ; preds = %if.end429
  %257 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !892
  %258 = bitcast %struct.raxNode* %257 to i32*, !dbg !893
  %bf.load445 = load i32, i32* %258, align 4, !dbg !893
  %bf.lshr446 = lshr i32 %bf.load445, 1, !dbg !893
  %bf.clear447 = and i32 %bf.lshr446, 1, !dbg !893
  %tobool448 = icmp ne i32 %bf.clear447, 0, !dbg !892
  br i1 %tobool448, label %if.end451, label %if.then449, !dbg !894

if.then449:                                       ; preds = %land.lhs.true444
  %259 = load i64, i64* %nodesize417, align 8, !dbg !895
  %add450 = add i64 %259, 8, !dbg !895
  store i64 %add450, i64* %nodesize417, align 8, !dbg !895
  br label %if.end451, !dbg !896

if.end451:                                        ; preds = %if.then449, %land.lhs.true444, %if.end429
  call void @llvm.dbg.declare(metadata %struct.raxNode** %trimmed452, metadata !897, metadata !DIExpression()), !dbg !898
  %260 = load i64, i64* %nodesize417, align 8, !dbg !899
  %call453 = call i8* @zmalloc(i64 %260), !dbg !900
  %261 = bitcast i8* %call453 to %struct.raxNode*, !dbg !900
  store %struct.raxNode* %261, %struct.raxNode** %trimmed452, align 8, !dbg !898
  %262 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !901
  %cmp454 = icmp eq %struct.raxNode* %262, null, !dbg !903
  br i1 %cmp454, label %if.then459, label %lor.lhs.false456, !dbg !904

lor.lhs.false456:                                 ; preds = %if.end451
  %263 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !905
  %cmp457 = icmp eq %struct.raxNode* %263, null, !dbg !906
  br i1 %cmp457, label %if.then459, label %if.end461, !dbg !907

if.then459:                                       ; preds = %lor.lhs.false456, %if.end451
  %264 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !908
  %265 = bitcast %struct.raxNode* %264 to i8*, !dbg !908
  call void @zfree(i8* %265), !dbg !910
  %266 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !911
  %267 = bitcast %struct.raxNode* %266 to i8*, !dbg !911
  call void @zfree(i8* %267), !dbg !912
  %call460 = call i32* @__errno_location() #9, !dbg !913
  store i32 12, i32* %call460, align 4, !dbg !914
  store i32 0, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

if.end461:                                        ; preds = %lor.lhs.false456
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %childfield462, metadata !916, metadata !DIExpression()), !dbg !917
  %268 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %269 = bitcast %struct.raxNode* %268 to i8*, !dbg !918
  %270 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %271 = bitcast %struct.raxNode* %270 to i32*, !dbg !918
  %bf.load463 = load i32, i32* %271, align 4, !dbg !918
  %bf.lshr464 = lshr i32 %bf.load463, 3, !dbg !918
  %conv465 = zext i32 %bf.lshr464 to i64, !dbg !918
  %add466 = add i64 4, %conv465, !dbg !918
  %272 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %273 = bitcast %struct.raxNode* %272 to i32*, !dbg !918
  %bf.load467 = load i32, i32* %273, align 4, !dbg !918
  %bf.lshr468 = lshr i32 %bf.load467, 3, !dbg !918
  %add469 = add nsw i32 %bf.lshr468, 4, !dbg !918
  %conv470 = sext i32 %add469 to i64, !dbg !918
  %rem471 = urem i64 %conv470, 8, !dbg !918
  %sub472 = sub i64 8, %rem471, !dbg !918
  %and473 = and i64 %sub472, 7, !dbg !918
  %add474 = add i64 %add466, %and473, !dbg !918
  %274 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %275 = bitcast %struct.raxNode* %274 to i32*, !dbg !918
  %bf.load475 = load i32, i32* %275, align 4, !dbg !918
  %bf.lshr476 = lshr i32 %bf.load475, 2, !dbg !918
  %bf.clear477 = and i32 %bf.lshr476, 1, !dbg !918
  %tobool478 = icmp ne i32 %bf.clear477, 0, !dbg !918
  br i1 %tobool478, label %cond.true479, label %cond.false480, !dbg !918

cond.true479:                                     ; preds = %if.end461
  br label %cond.end485, !dbg !918

cond.false480:                                    ; preds = %if.end461
  %276 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %277 = bitcast %struct.raxNode* %276 to i32*, !dbg !918
  %bf.load481 = load i32, i32* %277, align 4, !dbg !918
  %bf.lshr482 = lshr i32 %bf.load481, 3, !dbg !918
  %conv483 = zext i32 %bf.lshr482 to i64, !dbg !918
  %mul484 = mul i64 8, %conv483, !dbg !918
  br label %cond.end485, !dbg !918

cond.end485:                                      ; preds = %cond.false480, %cond.true479
  %cond486 = phi i64 [ 8, %cond.true479 ], [ %mul484, %cond.false480 ], !dbg !918
  %add487 = add i64 %add474, %cond486, !dbg !918
  %278 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %279 = bitcast %struct.raxNode* %278 to i32*, !dbg !918
  %bf.load488 = load i32, i32* %279, align 4, !dbg !918
  %bf.clear489 = and i32 %bf.load488, 1, !dbg !918
  %tobool490 = icmp ne i32 %bf.clear489, 0, !dbg !918
  br i1 %tobool490, label %land.rhs491, label %land.end497, !dbg !918

land.rhs491:                                      ; preds = %cond.end485
  %280 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %281 = bitcast %struct.raxNode* %280 to i32*, !dbg !918
  %bf.load492 = load i32, i32* %281, align 4, !dbg !918
  %bf.lshr493 = lshr i32 %bf.load492, 1, !dbg !918
  %bf.clear494 = and i32 %bf.lshr493, 1, !dbg !918
  %tobool495 = icmp ne i32 %bf.clear494, 0, !dbg !918
  %lnot496 = xor i1 %tobool495, true, !dbg !918
  br label %land.end497

land.end497:                                      ; preds = %land.rhs491, %cond.end485
  %282 = phi i1 [ false, %cond.end485 ], [ %lnot496, %land.rhs491 ], !dbg !919
  %land.ext498 = zext i1 %282 to i32, !dbg !918
  %conv499 = sext i32 %land.ext498 to i64, !dbg !918
  %mul500 = mul i64 %conv499, 8, !dbg !918
  %add501 = add i64 %add487, %mul500, !dbg !918
  %add.ptr502 = getelementptr inbounds i8, i8* %269, i64 %add501, !dbg !918
  %add.ptr503 = getelementptr inbounds i8, i8* %add.ptr502, i64 -8, !dbg !918
  %283 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %284 = bitcast %struct.raxNode* %283 to i32*, !dbg !918
  %bf.load504 = load i32, i32* %284, align 4, !dbg !918
  %bf.clear505 = and i32 %bf.load504, 1, !dbg !918
  %tobool506 = icmp ne i32 %bf.clear505, 0, !dbg !918
  br i1 %tobool506, label %land.rhs507, label %land.end513, !dbg !918

land.rhs507:                                      ; preds = %land.end497
  %285 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !918
  %286 = bitcast %struct.raxNode* %285 to i32*, !dbg !918
  %bf.load508 = load i32, i32* %286, align 4, !dbg !918
  %bf.lshr509 = lshr i32 %bf.load508, 1, !dbg !918
  %bf.clear510 = and i32 %bf.lshr509, 1, !dbg !918
  %tobool511 = icmp ne i32 %bf.clear510, 0, !dbg !918
  %lnot512 = xor i1 %tobool511, true, !dbg !918
  br label %land.end513

land.end513:                                      ; preds = %land.rhs507, %land.end497
  %287 = phi i1 [ false, %land.end497 ], [ %lnot512, %land.rhs507 ], !dbg !919
  %288 = zext i1 %287 to i64, !dbg !918
  %cond515 = select i1 %287, i64 8, i64 0, !dbg !918
  %idx.neg516 = sub i64 0, %cond515, !dbg !918
  %add.ptr517 = getelementptr inbounds i8, i8* %add.ptr503, i64 %idx.neg516, !dbg !918
  %289 = bitcast i8* %add.ptr517 to %struct.raxNode**, !dbg !918
  store %struct.raxNode** %289, %struct.raxNode*** %childfield462, align 8, !dbg !917
  call void @llvm.dbg.declare(metadata %struct.raxNode** %next518, metadata !920, metadata !DIExpression()), !dbg !921
  %290 = bitcast %struct.raxNode** %next518 to i8*, !dbg !922
  %291 = load %struct.raxNode**, %struct.raxNode*** %childfield462, align 8, !dbg !923
  %292 = bitcast %struct.raxNode** %291 to i8*, !dbg !922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 8 %292, i64 8, i1 false), !dbg !922
  %293 = load i64, i64* %postfixlen412, align 8, !dbg !924
  %conv519 = trunc i64 %293 to i32, !dbg !924
  %294 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !925
  %295 = bitcast %struct.raxNode* %294 to i32*, !dbg !926
  %bf.load520 = load i32, i32* %295, align 4, !dbg !927
  %bf.value521 = and i32 %conv519, 536870911, !dbg !927
  %bf.shl522 = shl i32 %bf.value521, 3, !dbg !927
  %bf.clear523 = and i32 %bf.load520, 7, !dbg !927
  %bf.set524 = or i32 %bf.clear523, %bf.shl522, !dbg !927
  store i32 %bf.set524, i32* %295, align 4, !dbg !927
  %296 = load i64, i64* %postfixlen412, align 8, !dbg !928
  %cmp525 = icmp ugt i64 %296, 1, !dbg !929
  %conv526 = zext i1 %cmp525 to i32, !dbg !929
  %297 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !930
  %298 = bitcast %struct.raxNode* %297 to i32*, !dbg !931
  %bf.load527 = load i32, i32* %298, align 4, !dbg !932
  %bf.value528 = and i32 %conv526, 1, !dbg !932
  %bf.shl529 = shl i32 %bf.value528, 2, !dbg !932
  %bf.clear530 = and i32 %bf.load527, -5, !dbg !932
  %bf.set531 = or i32 %bf.clear530, %bf.shl529, !dbg !932
  store i32 %bf.set531, i32* %298, align 4, !dbg !932
  %299 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !933
  %300 = bitcast %struct.raxNode* %299 to i32*, !dbg !934
  %bf.load532 = load i32, i32* %300, align 4, !dbg !935
  %bf.clear533 = and i32 %bf.load532, -2, !dbg !935
  %bf.set534 = or i32 %bf.clear533, 1, !dbg !935
  store i32 %bf.set534, i32* %300, align 4, !dbg !935
  %301 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !936
  %302 = bitcast %struct.raxNode* %301 to i32*, !dbg !937
  %bf.load535 = load i32, i32* %302, align 4, !dbg !938
  %bf.clear536 = and i32 %bf.load535, -3, !dbg !938
  store i32 %bf.clear536, i32* %302, align 4, !dbg !938
  %303 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !939
  %data537 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %303, i32 0, i32 1, !dbg !940
  %arraydecay538 = getelementptr inbounds [0 x i8], [0 x i8]* %data537, i64 0, i64 0, !dbg !941
  %304 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !942
  %data539 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %304, i32 0, i32 1, !dbg !943
  %arraydecay540 = getelementptr inbounds [0 x i8], [0 x i8]* %data539, i64 0, i64 0, !dbg !942
  %305 = load i32, i32* %j, align 4, !dbg !944
  %idx.ext541 = sext i32 %305 to i64, !dbg !945
  %add.ptr542 = getelementptr inbounds i8, i8* %arraydecay540, i64 %idx.ext541, !dbg !945
  %306 = load i64, i64* %postfixlen412, align 8, !dbg !946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay538, i8* align 1 %add.ptr542, i64 %306, i1 false), !dbg !941
  %307 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !947
  %308 = load i8*, i8** %data.addr, align 8, !dbg !948
  call void @raxSetData(%struct.raxNode* %307, i8* %308), !dbg !949
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp543, metadata !950, metadata !DIExpression()), !dbg !951
  %309 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %310 = bitcast %struct.raxNode* %309 to i8*, !dbg !952
  %311 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %312 = bitcast %struct.raxNode* %311 to i32*, !dbg !952
  %bf.load544 = load i32, i32* %312, align 4, !dbg !952
  %bf.lshr545 = lshr i32 %bf.load544, 3, !dbg !952
  %conv546 = zext i32 %bf.lshr545 to i64, !dbg !952
  %add547 = add i64 4, %conv546, !dbg !952
  %313 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %314 = bitcast %struct.raxNode* %313 to i32*, !dbg !952
  %bf.load548 = load i32, i32* %314, align 4, !dbg !952
  %bf.lshr549 = lshr i32 %bf.load548, 3, !dbg !952
  %add550 = add nsw i32 %bf.lshr549, 4, !dbg !952
  %conv551 = sext i32 %add550 to i64, !dbg !952
  %rem552 = urem i64 %conv551, 8, !dbg !952
  %sub553 = sub i64 8, %rem552, !dbg !952
  %and554 = and i64 %sub553, 7, !dbg !952
  %add555 = add i64 %add547, %and554, !dbg !952
  %315 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %316 = bitcast %struct.raxNode* %315 to i32*, !dbg !952
  %bf.load556 = load i32, i32* %316, align 4, !dbg !952
  %bf.lshr557 = lshr i32 %bf.load556, 2, !dbg !952
  %bf.clear558 = and i32 %bf.lshr557, 1, !dbg !952
  %tobool559 = icmp ne i32 %bf.clear558, 0, !dbg !952
  br i1 %tobool559, label %cond.true560, label %cond.false561, !dbg !952

cond.true560:                                     ; preds = %land.end513
  br label %cond.end566, !dbg !952

cond.false561:                                    ; preds = %land.end513
  %317 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %318 = bitcast %struct.raxNode* %317 to i32*, !dbg !952
  %bf.load562 = load i32, i32* %318, align 4, !dbg !952
  %bf.lshr563 = lshr i32 %bf.load562, 3, !dbg !952
  %conv564 = zext i32 %bf.lshr563 to i64, !dbg !952
  %mul565 = mul i64 8, %conv564, !dbg !952
  br label %cond.end566, !dbg !952

cond.end566:                                      ; preds = %cond.false561, %cond.true560
  %cond567 = phi i64 [ 8, %cond.true560 ], [ %mul565, %cond.false561 ], !dbg !952
  %add568 = add i64 %add555, %cond567, !dbg !952
  %319 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %320 = bitcast %struct.raxNode* %319 to i32*, !dbg !952
  %bf.load569 = load i32, i32* %320, align 4, !dbg !952
  %bf.clear570 = and i32 %bf.load569, 1, !dbg !952
  %tobool571 = icmp ne i32 %bf.clear570, 0, !dbg !952
  br i1 %tobool571, label %land.rhs572, label %land.end578, !dbg !952

land.rhs572:                                      ; preds = %cond.end566
  %321 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %322 = bitcast %struct.raxNode* %321 to i32*, !dbg !952
  %bf.load573 = load i32, i32* %322, align 4, !dbg !952
  %bf.lshr574 = lshr i32 %bf.load573, 1, !dbg !952
  %bf.clear575 = and i32 %bf.lshr574, 1, !dbg !952
  %tobool576 = icmp ne i32 %bf.clear575, 0, !dbg !952
  %lnot577 = xor i1 %tobool576, true, !dbg !952
  br label %land.end578

land.end578:                                      ; preds = %land.rhs572, %cond.end566
  %323 = phi i1 [ false, %cond.end566 ], [ %lnot577, %land.rhs572 ], !dbg !919
  %land.ext579 = zext i1 %323 to i32, !dbg !952
  %conv580 = sext i32 %land.ext579 to i64, !dbg !952
  %mul581 = mul i64 %conv580, 8, !dbg !952
  %add582 = add i64 %add568, %mul581, !dbg !952
  %add.ptr583 = getelementptr inbounds i8, i8* %310, i64 %add582, !dbg !952
  %add.ptr584 = getelementptr inbounds i8, i8* %add.ptr583, i64 -8, !dbg !952
  %324 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %325 = bitcast %struct.raxNode* %324 to i32*, !dbg !952
  %bf.load585 = load i32, i32* %325, align 4, !dbg !952
  %bf.clear586 = and i32 %bf.load585, 1, !dbg !952
  %tobool587 = icmp ne i32 %bf.clear586, 0, !dbg !952
  br i1 %tobool587, label %land.rhs588, label %land.end594, !dbg !952

land.rhs588:                                      ; preds = %land.end578
  %326 = load %struct.raxNode*, %struct.raxNode** %postfix430, align 8, !dbg !952
  %327 = bitcast %struct.raxNode* %326 to i32*, !dbg !952
  %bf.load589 = load i32, i32* %327, align 4, !dbg !952
  %bf.lshr590 = lshr i32 %bf.load589, 1, !dbg !952
  %bf.clear591 = and i32 %bf.lshr590, 1, !dbg !952
  %tobool592 = icmp ne i32 %bf.clear591, 0, !dbg !952
  %lnot593 = xor i1 %tobool592, true, !dbg !952
  br label %land.end594

land.end594:                                      ; preds = %land.rhs588, %land.end578
  %328 = phi i1 [ false, %land.end578 ], [ %lnot593, %land.rhs588 ], !dbg !919
  %329 = zext i1 %328 to i64, !dbg !952
  %cond596 = select i1 %328, i64 8, i64 0, !dbg !952
  %idx.neg597 = sub i64 0, %cond596, !dbg !952
  %add.ptr598 = getelementptr inbounds i8, i8* %add.ptr584, i64 %idx.neg597, !dbg !952
  %330 = bitcast i8* %add.ptr598 to %struct.raxNode**, !dbg !952
  store %struct.raxNode** %330, %struct.raxNode*** %cp543, align 8, !dbg !951
  %331 = load %struct.raxNode**, %struct.raxNode*** %cp543, align 8, !dbg !953
  %332 = bitcast %struct.raxNode** %331 to i8*, !dbg !954
  %333 = bitcast %struct.raxNode** %next518 to i8*, !dbg !954
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %332, i8* align 8 %333, i64 8, i1 false), !dbg !954
  %334 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !955
  %numnodes599 = getelementptr inbounds %struct.rax, %struct.rax* %334, i32 0, i32 2, !dbg !956
  %335 = load i64, i64* %numnodes599, align 8, !dbg !957
  %inc600 = add i64 %335, 1, !dbg !957
  store i64 %inc600, i64* %numnodes599, align 8, !dbg !957
  %336 = load i32, i32* %j, align 4, !dbg !958
  %337 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !959
  %338 = bitcast %struct.raxNode* %337 to i32*, !dbg !960
  %bf.load601 = load i32, i32* %338, align 4, !dbg !961
  %bf.value602 = and i32 %336, 536870911, !dbg !961
  %bf.shl603 = shl i32 %bf.value602, 3, !dbg !961
  %bf.clear604 = and i32 %bf.load601, 7, !dbg !961
  %bf.set605 = or i32 %bf.clear604, %bf.shl603, !dbg !961
  store i32 %bf.set605, i32* %338, align 4, !dbg !961
  %339 = load i32, i32* %j, align 4, !dbg !962
  %cmp606 = icmp sgt i32 %339, 1, !dbg !963
  %conv607 = zext i1 %cmp606 to i32, !dbg !963
  %340 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !964
  %341 = bitcast %struct.raxNode* %340 to i32*, !dbg !965
  %bf.load608 = load i32, i32* %341, align 4, !dbg !966
  %bf.value609 = and i32 %conv607, 1, !dbg !966
  %bf.shl610 = shl i32 %bf.value609, 2, !dbg !966
  %bf.clear611 = and i32 %bf.load608, -5, !dbg !966
  %bf.set612 = or i32 %bf.clear611, %bf.shl610, !dbg !966
  store i32 %bf.set612, i32* %341, align 4, !dbg !966
  %342 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !967
  %343 = bitcast %struct.raxNode* %342 to i32*, !dbg !968
  %bf.load613 = load i32, i32* %343, align 4, !dbg !969
  %bf.clear614 = and i32 %bf.load613, -2, !dbg !969
  store i32 %bf.clear614, i32* %343, align 4, !dbg !969
  %344 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !970
  %345 = bitcast %struct.raxNode* %344 to i32*, !dbg !971
  %bf.load615 = load i32, i32* %345, align 4, !dbg !972
  %bf.clear616 = and i32 %bf.load615, -3, !dbg !972
  store i32 %bf.clear616, i32* %345, align 4, !dbg !972
  %346 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !973
  %data617 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %346, i32 0, i32 1, !dbg !974
  %arraydecay618 = getelementptr inbounds [0 x i8], [0 x i8]* %data617, i64 0, i64 0, !dbg !975
  %347 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !976
  %data619 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %347, i32 0, i32 1, !dbg !977
  %arraydecay620 = getelementptr inbounds [0 x i8], [0 x i8]* %data619, i64 0, i64 0, !dbg !975
  %348 = load i32, i32* %j, align 4, !dbg !978
  %conv621 = sext i32 %348 to i64, !dbg !978
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %arraydecay618, i8* align 4 %arraydecay620, i64 %conv621, i1 false), !dbg !975
  %349 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !979
  %350 = bitcast %struct.raxNode** %349 to i8*, !dbg !980
  %351 = bitcast %struct.raxNode** %trimmed452 to i8*, !dbg !980
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %350, i8* align 8 %351, i64 8, i1 false), !dbg !980
  %352 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !981
  %353 = bitcast %struct.raxNode* %352 to i32*, !dbg !983
  %bf.load622 = load i32, i32* %353, align 4, !dbg !983
  %bf.clear623 = and i32 %bf.load622, 1, !dbg !983
  %tobool624 = icmp ne i32 %bf.clear623, 0, !dbg !981
  br i1 %tobool624, label %if.then625, label %if.end627, !dbg !984

if.then625:                                       ; preds = %land.end594
  call void @llvm.dbg.declare(metadata i8** %aux, metadata !985, metadata !DIExpression()), !dbg !987
  %354 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !988
  %call626 = call i8* @raxGetData(%struct.raxNode* %354), !dbg !989
  store i8* %call626, i8** %aux, align 8, !dbg !987
  %355 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !990
  %356 = load i8*, i8** %aux, align 8, !dbg !991
  call void @raxSetData(%struct.raxNode* %355, i8* %356), !dbg !992
  br label %if.end627, !dbg !993

if.end627:                                        ; preds = %if.then625, %land.end594
  %357 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %358 = bitcast %struct.raxNode* %357 to i8*, !dbg !994
  %359 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %360 = bitcast %struct.raxNode* %359 to i32*, !dbg !994
  %bf.load628 = load i32, i32* %360, align 4, !dbg !994
  %bf.lshr629 = lshr i32 %bf.load628, 3, !dbg !994
  %conv630 = zext i32 %bf.lshr629 to i64, !dbg !994
  %add631 = add i64 4, %conv630, !dbg !994
  %361 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %362 = bitcast %struct.raxNode* %361 to i32*, !dbg !994
  %bf.load632 = load i32, i32* %362, align 4, !dbg !994
  %bf.lshr633 = lshr i32 %bf.load632, 3, !dbg !994
  %add634 = add nsw i32 %bf.lshr633, 4, !dbg !994
  %conv635 = sext i32 %add634 to i64, !dbg !994
  %rem636 = urem i64 %conv635, 8, !dbg !994
  %sub637 = sub i64 8, %rem636, !dbg !994
  %and638 = and i64 %sub637, 7, !dbg !994
  %add639 = add i64 %add631, %and638, !dbg !994
  %363 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %364 = bitcast %struct.raxNode* %363 to i32*, !dbg !994
  %bf.load640 = load i32, i32* %364, align 4, !dbg !994
  %bf.lshr641 = lshr i32 %bf.load640, 2, !dbg !994
  %bf.clear642 = and i32 %bf.lshr641, 1, !dbg !994
  %tobool643 = icmp ne i32 %bf.clear642, 0, !dbg !994
  br i1 %tobool643, label %cond.true644, label %cond.false645, !dbg !994

cond.true644:                                     ; preds = %if.end627
  br label %cond.end650, !dbg !994

cond.false645:                                    ; preds = %if.end627
  %365 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %366 = bitcast %struct.raxNode* %365 to i32*, !dbg !994
  %bf.load646 = load i32, i32* %366, align 4, !dbg !994
  %bf.lshr647 = lshr i32 %bf.load646, 3, !dbg !994
  %conv648 = zext i32 %bf.lshr647 to i64, !dbg !994
  %mul649 = mul i64 8, %conv648, !dbg !994
  br label %cond.end650, !dbg !994

cond.end650:                                      ; preds = %cond.false645, %cond.true644
  %cond651 = phi i64 [ 8, %cond.true644 ], [ %mul649, %cond.false645 ], !dbg !994
  %add652 = add i64 %add639, %cond651, !dbg !994
  %367 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %368 = bitcast %struct.raxNode* %367 to i32*, !dbg !994
  %bf.load653 = load i32, i32* %368, align 4, !dbg !994
  %bf.clear654 = and i32 %bf.load653, 1, !dbg !994
  %tobool655 = icmp ne i32 %bf.clear654, 0, !dbg !994
  br i1 %tobool655, label %land.rhs656, label %land.end662, !dbg !994

land.rhs656:                                      ; preds = %cond.end650
  %369 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %370 = bitcast %struct.raxNode* %369 to i32*, !dbg !994
  %bf.load657 = load i32, i32* %370, align 4, !dbg !994
  %bf.lshr658 = lshr i32 %bf.load657, 1, !dbg !994
  %bf.clear659 = and i32 %bf.lshr658, 1, !dbg !994
  %tobool660 = icmp ne i32 %bf.clear659, 0, !dbg !994
  %lnot661 = xor i1 %tobool660, true, !dbg !994
  br label %land.end662

land.end662:                                      ; preds = %land.rhs656, %cond.end650
  %371 = phi i1 [ false, %cond.end650 ], [ %lnot661, %land.rhs656 ], !dbg !919
  %land.ext663 = zext i1 %371 to i32, !dbg !994
  %conv664 = sext i32 %land.ext663 to i64, !dbg !994
  %mul665 = mul i64 %conv664, 8, !dbg !994
  %add666 = add i64 %add652, %mul665, !dbg !994
  %add.ptr667 = getelementptr inbounds i8, i8* %358, i64 %add666, !dbg !994
  %add.ptr668 = getelementptr inbounds i8, i8* %add.ptr667, i64 -8, !dbg !994
  %372 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %373 = bitcast %struct.raxNode* %372 to i32*, !dbg !994
  %bf.load669 = load i32, i32* %373, align 4, !dbg !994
  %bf.clear670 = and i32 %bf.load669, 1, !dbg !994
  %tobool671 = icmp ne i32 %bf.clear670, 0, !dbg !994
  br i1 %tobool671, label %land.rhs672, label %land.end678, !dbg !994

land.rhs672:                                      ; preds = %land.end662
  %374 = load %struct.raxNode*, %struct.raxNode** %trimmed452, align 8, !dbg !994
  %375 = bitcast %struct.raxNode* %374 to i32*, !dbg !994
  %bf.load673 = load i32, i32* %375, align 4, !dbg !994
  %bf.lshr674 = lshr i32 %bf.load673, 1, !dbg !994
  %bf.clear675 = and i32 %bf.lshr674, 1, !dbg !994
  %tobool676 = icmp ne i32 %bf.clear675, 0, !dbg !994
  %lnot677 = xor i1 %tobool676, true, !dbg !994
  br label %land.end678

land.end678:                                      ; preds = %land.rhs672, %land.end662
  %376 = phi i1 [ false, %land.end662 ], [ %lnot677, %land.rhs672 ], !dbg !919
  %377 = zext i1 %376 to i64, !dbg !994
  %cond680 = select i1 %376, i64 8, i64 0, !dbg !994
  %idx.neg681 = sub i64 0, %cond680, !dbg !994
  %add.ptr682 = getelementptr inbounds i8, i8* %add.ptr668, i64 %idx.neg681, !dbg !994
  %378 = bitcast i8* %add.ptr682 to %struct.raxNode**, !dbg !994
  store %struct.raxNode** %378, %struct.raxNode*** %cp543, align 8, !dbg !995
  %379 = load %struct.raxNode**, %struct.raxNode*** %cp543, align 8, !dbg !996
  %380 = bitcast %struct.raxNode** %379 to i8*, !dbg !997
  %381 = bitcast %struct.raxNode** %postfix430 to i8*, !dbg !997
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 8, i1 false), !dbg !997
  %382 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !998
  %numele683 = getelementptr inbounds %struct.rax, %struct.rax* %382, i32 0, i32 1, !dbg !999
  %383 = load i64, i64* %numele683, align 8, !dbg !1000
  %inc684 = add i64 %383, 1, !dbg !1000
  store i64 %inc684, i64* %numele683, align 8, !dbg !1000
  %384 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1001
  %385 = bitcast %struct.raxNode* %384 to i8*, !dbg !1001
  call void @zfree(i8* %385), !dbg !1002
  store i32 1, i32* %retval, align 4, !dbg !1003
  br label %return, !dbg !1003

if.end685:                                        ; preds = %land.lhs.true408, %if.else403
  br label %if.end686

if.end686:                                        ; preds = %if.end685, %land.end398
  br label %while.cond, !dbg !1004

while.cond:                                       ; preds = %if.end774, %if.end686
  %386 = load i64, i64* %i, align 8, !dbg !1005
  %387 = load i64, i64* %len.addr, align 8, !dbg !1006
  %cmp687 = icmp ult i64 %386, %387, !dbg !1007
  br i1 %cmp687, label %while.body, label %while.end, !dbg !1004

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !1008, metadata !DIExpression()), !dbg !1010
  %388 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1011
  %389 = bitcast %struct.raxNode* %388 to i32*, !dbg !1013
  %bf.load689 = load i32, i32* %389, align 4, !dbg !1013
  %bf.lshr690 = lshr i32 %bf.load689, 3, !dbg !1013
  %cmp691 = icmp eq i32 %bf.lshr690, 0, !dbg !1014
  br i1 %cmp691, label %land.lhs.true693, label %if.else765, !dbg !1015

land.lhs.true693:                                 ; preds = %while.body
  %390 = load i64, i64* %len.addr, align 8, !dbg !1016
  %391 = load i64, i64* %i, align 8, !dbg !1017
  %sub694 = sub i64 %390, %391, !dbg !1018
  %cmp695 = icmp ugt i64 %sub694, 1, !dbg !1019
  br i1 %cmp695, label %if.then697, label %if.else765, !dbg !1020

if.then697:                                       ; preds = %land.lhs.true693
  call void @llvm.dbg.declare(metadata i64* %comprsize, metadata !1021, metadata !DIExpression()), !dbg !1023
  %392 = load i64, i64* %len.addr, align 8, !dbg !1024
  %393 = load i64, i64* %i, align 8, !dbg !1025
  %sub698 = sub i64 %392, %393, !dbg !1026
  store i64 %sub698, i64* %comprsize, align 8, !dbg !1023
  %394 = load i64, i64* %comprsize, align 8, !dbg !1027
  %cmp699 = icmp ugt i64 %394, 536870911, !dbg !1029
  br i1 %cmp699, label %if.then701, label %if.end702, !dbg !1030

if.then701:                                       ; preds = %if.then697
  store i64 536870911, i64* %comprsize, align 8, !dbg !1031
  br label %if.end702, !dbg !1032

if.end702:                                        ; preds = %if.then701, %if.then697
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newh, metadata !1033, metadata !DIExpression()), !dbg !1034
  %395 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1035
  %396 = load i8*, i8** %s.addr, align 8, !dbg !1036
  %397 = load i64, i64* %i, align 8, !dbg !1037
  %add.ptr703 = getelementptr inbounds i8, i8* %396, i64 %397, !dbg !1038
  %398 = load i64, i64* %comprsize, align 8, !dbg !1039
  %call704 = call %struct.raxNode* @raxCompressNode(%struct.raxNode* %395, i8* %add.ptr703, i64 %398, %struct.raxNode** %child), !dbg !1040
  store %struct.raxNode* %call704, %struct.raxNode** %newh, align 8, !dbg !1034
  %399 = load %struct.raxNode*, %struct.raxNode** %newh, align 8, !dbg !1041
  %cmp705 = icmp eq %struct.raxNode* %399, null, !dbg !1043
  br i1 %cmp705, label %if.then707, label %if.end708, !dbg !1044

if.then707:                                       ; preds = %if.end702
  br label %oom, !dbg !1045

if.end708:                                        ; preds = %if.end702
  %400 = load %struct.raxNode*, %struct.raxNode** %newh, align 8, !dbg !1046
  store %struct.raxNode* %400, %struct.raxNode** %h, align 8, !dbg !1047
  %401 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !1048
  %402 = bitcast %struct.raxNode** %401 to i8*, !dbg !1049
  %403 = bitcast %struct.raxNode** %h to i8*, !dbg !1049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %402, i8* align 8 %403, i64 8, i1 false), !dbg !1049
  %404 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %405 = bitcast %struct.raxNode* %404 to i8*, !dbg !1050
  %406 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %407 = bitcast %struct.raxNode* %406 to i32*, !dbg !1050
  %bf.load709 = load i32, i32* %407, align 4, !dbg !1050
  %bf.lshr710 = lshr i32 %bf.load709, 3, !dbg !1050
  %conv711 = zext i32 %bf.lshr710 to i64, !dbg !1050
  %add712 = add i64 4, %conv711, !dbg !1050
  %408 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %409 = bitcast %struct.raxNode* %408 to i32*, !dbg !1050
  %bf.load713 = load i32, i32* %409, align 4, !dbg !1050
  %bf.lshr714 = lshr i32 %bf.load713, 3, !dbg !1050
  %add715 = add nsw i32 %bf.lshr714, 4, !dbg !1050
  %conv716 = sext i32 %add715 to i64, !dbg !1050
  %rem717 = urem i64 %conv716, 8, !dbg !1050
  %sub718 = sub i64 8, %rem717, !dbg !1050
  %and719 = and i64 %sub718, 7, !dbg !1050
  %add720 = add i64 %add712, %and719, !dbg !1050
  %410 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %411 = bitcast %struct.raxNode* %410 to i32*, !dbg !1050
  %bf.load721 = load i32, i32* %411, align 4, !dbg !1050
  %bf.lshr722 = lshr i32 %bf.load721, 2, !dbg !1050
  %bf.clear723 = and i32 %bf.lshr722, 1, !dbg !1050
  %tobool724 = icmp ne i32 %bf.clear723, 0, !dbg !1050
  br i1 %tobool724, label %cond.true725, label %cond.false726, !dbg !1050

cond.true725:                                     ; preds = %if.end708
  br label %cond.end731, !dbg !1050

cond.false726:                                    ; preds = %if.end708
  %412 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %413 = bitcast %struct.raxNode* %412 to i32*, !dbg !1050
  %bf.load727 = load i32, i32* %413, align 4, !dbg !1050
  %bf.lshr728 = lshr i32 %bf.load727, 3, !dbg !1050
  %conv729 = zext i32 %bf.lshr728 to i64, !dbg !1050
  %mul730 = mul i64 8, %conv729, !dbg !1050
  br label %cond.end731, !dbg !1050

cond.end731:                                      ; preds = %cond.false726, %cond.true725
  %cond732 = phi i64 [ 8, %cond.true725 ], [ %mul730, %cond.false726 ], !dbg !1050
  %add733 = add i64 %add720, %cond732, !dbg !1050
  %414 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %415 = bitcast %struct.raxNode* %414 to i32*, !dbg !1050
  %bf.load734 = load i32, i32* %415, align 4, !dbg !1050
  %bf.clear735 = and i32 %bf.load734, 1, !dbg !1050
  %tobool736 = icmp ne i32 %bf.clear735, 0, !dbg !1050
  br i1 %tobool736, label %land.rhs737, label %land.end743, !dbg !1050

land.rhs737:                                      ; preds = %cond.end731
  %416 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %417 = bitcast %struct.raxNode* %416 to i32*, !dbg !1050
  %bf.load738 = load i32, i32* %417, align 4, !dbg !1050
  %bf.lshr739 = lshr i32 %bf.load738, 1, !dbg !1050
  %bf.clear740 = and i32 %bf.lshr739, 1, !dbg !1050
  %tobool741 = icmp ne i32 %bf.clear740, 0, !dbg !1050
  %lnot742 = xor i1 %tobool741, true, !dbg !1050
  br label %land.end743

land.end743:                                      ; preds = %land.rhs737, %cond.end731
  %418 = phi i1 [ false, %cond.end731 ], [ %lnot742, %land.rhs737 ], !dbg !1051
  %land.ext744 = zext i1 %418 to i32, !dbg !1050
  %conv745 = sext i32 %land.ext744 to i64, !dbg !1050
  %mul746 = mul i64 %conv745, 8, !dbg !1050
  %add747 = add i64 %add733, %mul746, !dbg !1050
  %add.ptr748 = getelementptr inbounds i8, i8* %405, i64 %add747, !dbg !1050
  %add.ptr749 = getelementptr inbounds i8, i8* %add.ptr748, i64 -8, !dbg !1050
  %419 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %420 = bitcast %struct.raxNode* %419 to i32*, !dbg !1050
  %bf.load750 = load i32, i32* %420, align 4, !dbg !1050
  %bf.clear751 = and i32 %bf.load750, 1, !dbg !1050
  %tobool752 = icmp ne i32 %bf.clear751, 0, !dbg !1050
  br i1 %tobool752, label %land.rhs753, label %land.end759, !dbg !1050

land.rhs753:                                      ; preds = %land.end743
  %421 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1050
  %422 = bitcast %struct.raxNode* %421 to i32*, !dbg !1050
  %bf.load754 = load i32, i32* %422, align 4, !dbg !1050
  %bf.lshr755 = lshr i32 %bf.load754, 1, !dbg !1050
  %bf.clear756 = and i32 %bf.lshr755, 1, !dbg !1050
  %tobool757 = icmp ne i32 %bf.clear756, 0, !dbg !1050
  %lnot758 = xor i1 %tobool757, true, !dbg !1050
  br label %land.end759

land.end759:                                      ; preds = %land.rhs753, %land.end743
  %423 = phi i1 [ false, %land.end743 ], [ %lnot758, %land.rhs753 ], !dbg !1051
  %424 = zext i1 %423 to i64, !dbg !1050
  %cond761 = select i1 %423, i64 8, i64 0, !dbg !1050
  %idx.neg762 = sub i64 0, %cond761, !dbg !1050
  %add.ptr763 = getelementptr inbounds i8, i8* %add.ptr749, i64 %idx.neg762, !dbg !1050
  %425 = bitcast i8* %add.ptr763 to %struct.raxNode**, !dbg !1050
  store %struct.raxNode** %425, %struct.raxNode*** %parentlink, align 8, !dbg !1052
  %426 = load i64, i64* %comprsize, align 8, !dbg !1053
  %427 = load i64, i64* %i, align 8, !dbg !1054
  %add764 = add i64 %427, %426, !dbg !1054
  store i64 %add764, i64* %i, align 8, !dbg !1054
  br label %if.end774, !dbg !1055

if.else765:                                       ; preds = %land.lhs.true693, %while.body
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %new_parentlink, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newh766, metadata !1059, metadata !DIExpression()), !dbg !1060
  %428 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1061
  %429 = load i8*, i8** %s.addr, align 8, !dbg !1062
  %430 = load i64, i64* %i, align 8, !dbg !1063
  %arrayidx767 = getelementptr inbounds i8, i8* %429, i64 %430, !dbg !1062
  %431 = load i8, i8* %arrayidx767, align 1, !dbg !1062
  %call768 = call %struct.raxNode* @raxAddChild(%struct.raxNode* %428, i8 zeroext %431, %struct.raxNode** %child, %struct.raxNode*** %new_parentlink), !dbg !1064
  store %struct.raxNode* %call768, %struct.raxNode** %newh766, align 8, !dbg !1060
  %432 = load %struct.raxNode*, %struct.raxNode** %newh766, align 8, !dbg !1065
  %cmp769 = icmp eq %struct.raxNode* %432, null, !dbg !1067
  br i1 %cmp769, label %if.then771, label %if.end772, !dbg !1068

if.then771:                                       ; preds = %if.else765
  br label %oom, !dbg !1069

if.end772:                                        ; preds = %if.else765
  %433 = load %struct.raxNode*, %struct.raxNode** %newh766, align 8, !dbg !1070
  store %struct.raxNode* %433, %struct.raxNode** %h, align 8, !dbg !1071
  %434 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !1072
  %435 = bitcast %struct.raxNode** %434 to i8*, !dbg !1073
  %436 = bitcast %struct.raxNode** %h to i8*, !dbg !1073
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %435, i8* align 8 %436, i64 8, i1 false), !dbg !1073
  %437 = load %struct.raxNode**, %struct.raxNode*** %new_parentlink, align 8, !dbg !1074
  store %struct.raxNode** %437, %struct.raxNode*** %parentlink, align 8, !dbg !1075
  %438 = load i64, i64* %i, align 8, !dbg !1076
  %inc773 = add i64 %438, 1, !dbg !1076
  store i64 %inc773, i64* %i, align 8, !dbg !1076
  br label %if.end774

if.end774:                                        ; preds = %if.end772, %land.end759
  %439 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1077
  %numnodes775 = getelementptr inbounds %struct.rax, %struct.rax* %439, i32 0, i32 2, !dbg !1078
  %440 = load i64, i64* %numnodes775, align 8, !dbg !1079
  %inc776 = add i64 %440, 1, !dbg !1079
  store i64 %inc776, i64* %numnodes775, align 8, !dbg !1079
  %441 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !1080
  store %struct.raxNode* %441, %struct.raxNode** %h, align 8, !dbg !1081
  br label %while.cond, !dbg !1004, !llvm.loop !1082

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newh777, metadata !1084, metadata !DIExpression()), !dbg !1085
  %442 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1086
  %443 = load i8*, i8** %data.addr, align 8, !dbg !1087
  %call778 = call %struct.raxNode* @raxReallocForData(%struct.raxNode* %442, i8* %443), !dbg !1088
  store %struct.raxNode* %call778, %struct.raxNode** %newh777, align 8, !dbg !1085
  %444 = load %struct.raxNode*, %struct.raxNode** %newh777, align 8, !dbg !1089
  %cmp779 = icmp eq %struct.raxNode* %444, null, !dbg !1091
  br i1 %cmp779, label %if.then781, label %if.end782, !dbg !1092

if.then781:                                       ; preds = %while.end
  br label %oom, !dbg !1093

if.end782:                                        ; preds = %while.end
  %445 = load %struct.raxNode*, %struct.raxNode** %newh777, align 8, !dbg !1094
  store %struct.raxNode* %445, %struct.raxNode** %h, align 8, !dbg !1095
  %446 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1096
  %447 = bitcast %struct.raxNode* %446 to i32*, !dbg !1098
  %bf.load783 = load i32, i32* %447, align 4, !dbg !1098
  %bf.clear784 = and i32 %bf.load783, 1, !dbg !1098
  %tobool785 = icmp ne i32 %bf.clear784, 0, !dbg !1096
  br i1 %tobool785, label %if.end789, label %if.then786, !dbg !1099

if.then786:                                       ; preds = %if.end782
  %448 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1100
  %numele787 = getelementptr inbounds %struct.rax, %struct.rax* %448, i32 0, i32 1, !dbg !1101
  %449 = load i64, i64* %numele787, align 8, !dbg !1102
  %inc788 = add i64 %449, 1, !dbg !1102
  store i64 %inc788, i64* %numele787, align 8, !dbg !1102
  br label %if.end789, !dbg !1100

if.end789:                                        ; preds = %if.then786, %if.end782
  %450 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1103
  %451 = load i8*, i8** %data.addr, align 8, !dbg !1104
  call void @raxSetData(%struct.raxNode* %450, i8* %451), !dbg !1105
  %452 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !1106
  %453 = bitcast %struct.raxNode** %452 to i8*, !dbg !1107
  %454 = bitcast %struct.raxNode** %h to i8*, !dbg !1107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %453, i8* align 8 %454, i64 8, i1 false), !dbg !1107
  store i32 1, i32* %retval, align 4, !dbg !1108
  br label %return, !dbg !1108

oom:                                              ; preds = %if.then781, %if.then771, %if.then707
  call void @llvm.dbg.label(metadata !1109), !dbg !1110
  %455 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1111
  %456 = bitcast %struct.raxNode* %455 to i32*, !dbg !1113
  %bf.load790 = load i32, i32* %456, align 4, !dbg !1113
  %bf.lshr791 = lshr i32 %bf.load790, 3, !dbg !1113
  %cmp792 = icmp eq i32 %bf.lshr791, 0, !dbg !1114
  br i1 %cmp792, label %if.then794, label %if.end809, !dbg !1115

if.then794:                                       ; preds = %oom
  %457 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1116
  %458 = bitcast %struct.raxNode* %457 to i32*, !dbg !1118
  %bf.load795 = load i32, i32* %458, align 4, !dbg !1119
  %bf.clear796 = and i32 %bf.load795, -3, !dbg !1119
  %bf.set797 = or i32 %bf.clear796, 2, !dbg !1119
  store i32 %bf.set797, i32* %458, align 4, !dbg !1119
  %459 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1120
  %460 = bitcast %struct.raxNode* %459 to i32*, !dbg !1121
  %bf.load798 = load i32, i32* %460, align 4, !dbg !1122
  %bf.clear799 = and i32 %bf.load798, -2, !dbg !1122
  %bf.set800 = or i32 %bf.clear799, 1, !dbg !1122
  store i32 %bf.set800, i32* %460, align 4, !dbg !1122
  %461 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1123
  %numele801 = getelementptr inbounds %struct.rax, %struct.rax* %461, i32 0, i32 1, !dbg !1124
  %462 = load i64, i64* %numele801, align 8, !dbg !1125
  %inc802 = add i64 %462, 1, !dbg !1125
  store i64 %inc802, i64* %numele801, align 8, !dbg !1125
  %463 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1126
  %464 = load i8*, i8** %s.addr, align 8, !dbg !1126
  %465 = load i64, i64* %i, align 8, !dbg !1126
  %call803 = call i32 @raxRemove(%struct.rax* %463, i8* %464, i64 %465, i8** null), !dbg !1126
  %cmp804 = icmp ne i32 %call803, 0, !dbg !1126
  br i1 %cmp804, label %cond.true806, label %cond.false807, !dbg !1126

cond.true806:                                     ; preds = %if.then794
  br label %cond.end808, !dbg !1126

cond.false807:                                    ; preds = %if.then794
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 896, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.raxGenericInsert, i64 0, i64 0)) #8, !dbg !1126
  unreachable, !dbg !1126

466:                                              ; No predecessors!
  br label %cond.end808, !dbg !1126

cond.end808:                                      ; preds = %466, %cond.true806
  br label %if.end809, !dbg !1127

if.end809:                                        ; preds = %cond.end808, %oom
  %call810 = call i32* @__errno_location() #9, !dbg !1128
  store i32 12, i32* %call810, align 4, !dbg !1129
  store i32 0, i32* %retval, align 4, !dbg !1130
  br label %return, !dbg !1130

return:                                           ; preds = %if.end809, %if.end789, %land.end678, %if.then459, %if.then151, %if.end33, %if.end31, %if.then18
  %467 = load i32, i32* %retval, align 4, !dbg !1131
  ret i32 %467, !dbg !1131
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @raxLowWalk(%struct.rax* %rax, i8* %s, i64 %len, %struct.raxNode** %stopnode, %struct.raxNode*** %plink, i32* %splitpos, %struct.raxStack* %ts) #0 !dbg !1132 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %stopnode.addr = alloca %struct.raxNode**, align 8
  %plink.addr = alloca %struct.raxNode***, align 8
  %splitpos.addr = alloca i32*, align 8
  %ts.addr = alloca %struct.raxStack*, align 8
  %h = alloca %struct.raxNode*, align 8
  %parentlink = alloca %struct.raxNode**, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %v = alloca i8*, align 8
  %children = alloca %struct.raxNode**, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1148, metadata !DIExpression()), !dbg !1149
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1150, metadata !DIExpression()), !dbg !1151
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1152, metadata !DIExpression()), !dbg !1153
  store %struct.raxNode** %stopnode, %struct.raxNode*** %stopnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %stopnode.addr, metadata !1154, metadata !DIExpression()), !dbg !1155
  store %struct.raxNode*** %plink, %struct.raxNode**** %plink.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode**** %plink.addr, metadata !1156, metadata !DIExpression()), !dbg !1157
  store i32* %splitpos, i32** %splitpos.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %splitpos.addr, metadata !1158, metadata !DIExpression()), !dbg !1159
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !1160, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.raxNode** %h, metadata !1162, metadata !DIExpression()), !dbg !1163
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1164
  %head = getelementptr inbounds %struct.rax, %struct.rax* %0, i32 0, i32 0, !dbg !1165
  %1 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !1165
  store %struct.raxNode* %1, %struct.raxNode** %h, align 8, !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %parentlink, metadata !1166, metadata !DIExpression()), !dbg !1167
  %2 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1168
  %head1 = getelementptr inbounds %struct.rax, %struct.rax* %2, i32 0, i32 0, !dbg !1169
  store %struct.raxNode** %head1, %struct.raxNode*** %parentlink, align 8, !dbg !1167
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1170, metadata !DIExpression()), !dbg !1171
  store i64 0, i64* %i, align 8, !dbg !1171
  call void @llvm.dbg.declare(metadata i64* %j, metadata !1172, metadata !DIExpression()), !dbg !1173
  store i64 0, i64* %j, align 8, !dbg !1173
  br label %while.cond, !dbg !1174

while.cond:                                       ; preds = %if.end70, %entry
  %3 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1175
  %4 = bitcast %struct.raxNode* %3 to i32*, !dbg !1176
  %bf.load = load i32, i32* %4, align 4, !dbg !1176
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !1176
  %tobool = icmp ne i32 %bf.lshr, 0, !dbg !1175
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1177

land.rhs:                                         ; preds = %while.cond
  %5 = load i64, i64* %i, align 8, !dbg !1178
  %6 = load i64, i64* %len.addr, align 8, !dbg !1179
  %cmp = icmp ult i64 %5, %6, !dbg !1180
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !1181
  br i1 %7, label %while.body, label %while.end, !dbg !1174

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i8** %v, metadata !1182, metadata !DIExpression()), !dbg !1184
  %8 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1185
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %8, i32 0, i32 1, !dbg !1186
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !1185
  store i8* %arraydecay, i8** %v, align 8, !dbg !1184
  %9 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1187
  %10 = bitcast %struct.raxNode* %9 to i32*, !dbg !1189
  %bf.load2 = load i32, i32* %10, align 4, !dbg !1189
  %bf.lshr3 = lshr i32 %bf.load2, 2, !dbg !1189
  %bf.clear = and i32 %bf.lshr3, 1, !dbg !1189
  %tobool4 = icmp ne i32 %bf.clear, 0, !dbg !1187
  br i1 %tobool4, label %if.then, label %if.else, !dbg !1190

if.then:                                          ; preds = %while.body
  store i64 0, i64* %j, align 8, !dbg !1191
  br label %for.cond, !dbg !1194

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i64, i64* %j, align 8, !dbg !1195
  %12 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1197
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !1198
  %bf.load5 = load i32, i32* %13, align 4, !dbg !1198
  %bf.lshr6 = lshr i32 %bf.load5, 3, !dbg !1198
  %conv = zext i32 %bf.lshr6 to i64, !dbg !1197
  %cmp7 = icmp ult i64 %11, %conv, !dbg !1199
  br i1 %cmp7, label %land.rhs9, label %land.end12, !dbg !1200

land.rhs9:                                        ; preds = %for.cond
  %14 = load i64, i64* %i, align 8, !dbg !1201
  %15 = load i64, i64* %len.addr, align 8, !dbg !1202
  %cmp10 = icmp ult i64 %14, %15, !dbg !1203
  br label %land.end12

land.end12:                                       ; preds = %land.rhs9, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp10, %land.rhs9 ], !dbg !1204
  br i1 %16, label %for.body, label %for.end, !dbg !1205

for.body:                                         ; preds = %land.end12
  %17 = load i8*, i8** %v, align 8, !dbg !1206
  %18 = load i64, i64* %j, align 8, !dbg !1209
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1206
  %19 = load i8, i8* %arrayidx, align 1, !dbg !1206
  %conv13 = zext i8 %19 to i32, !dbg !1206
  %20 = load i8*, i8** %s.addr, align 8, !dbg !1210
  %21 = load i64, i64* %i, align 8, !dbg !1211
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !1210
  %22 = load i8, i8* %arrayidx14, align 1, !dbg !1210
  %conv15 = zext i8 %22 to i32, !dbg !1210
  %cmp16 = icmp ne i32 %conv13, %conv15, !dbg !1212
  br i1 %cmp16, label %if.then18, label %if.end, !dbg !1213

if.then18:                                        ; preds = %for.body
  br label %for.end, !dbg !1214

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1215

for.inc:                                          ; preds = %if.end
  %23 = load i64, i64* %j, align 8, !dbg !1216
  %inc = add i64 %23, 1, !dbg !1216
  store i64 %inc, i64* %j, align 8, !dbg !1216
  %24 = load i64, i64* %i, align 8, !dbg !1217
  %inc19 = add i64 %24, 1, !dbg !1217
  store i64 %inc19, i64* %i, align 8, !dbg !1217
  br label %for.cond, !dbg !1218, !llvm.loop !1219

for.end:                                          ; preds = %if.then18, %land.end12
  %25 = load i64, i64* %j, align 8, !dbg !1221
  %26 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1223
  %27 = bitcast %struct.raxNode* %26 to i32*, !dbg !1224
  %bf.load20 = load i32, i32* %27, align 4, !dbg !1224
  %bf.lshr21 = lshr i32 %bf.load20, 3, !dbg !1224
  %conv22 = zext i32 %bf.lshr21 to i64, !dbg !1223
  %cmp23 = icmp ne i64 %25, %conv22, !dbg !1225
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1226

if.then25:                                        ; preds = %for.end
  br label %while.end, !dbg !1227

if.end26:                                         ; preds = %for.end
  br label %if.end53, !dbg !1228

if.else:                                          ; preds = %while.body
  store i64 0, i64* %j, align 8, !dbg !1229
  br label %for.cond27, !dbg !1232

for.cond27:                                       ; preds = %for.inc42, %if.else
  %28 = load i64, i64* %j, align 8, !dbg !1233
  %29 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1235
  %30 = bitcast %struct.raxNode* %29 to i32*, !dbg !1236
  %bf.load28 = load i32, i32* %30, align 4, !dbg !1236
  %bf.lshr29 = lshr i32 %bf.load28, 3, !dbg !1236
  %conv30 = zext i32 %bf.lshr29 to i64, !dbg !1235
  %cmp31 = icmp ult i64 %28, %conv30, !dbg !1237
  br i1 %cmp31, label %for.body33, label %for.end44, !dbg !1238

for.body33:                                       ; preds = %for.cond27
  %31 = load i8*, i8** %v, align 8, !dbg !1239
  %32 = load i64, i64* %j, align 8, !dbg !1242
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !1239
  %33 = load i8, i8* %arrayidx34, align 1, !dbg !1239
  %conv35 = zext i8 %33 to i32, !dbg !1239
  %34 = load i8*, i8** %s.addr, align 8, !dbg !1243
  %35 = load i64, i64* %i, align 8, !dbg !1244
  %arrayidx36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !1243
  %36 = load i8, i8* %arrayidx36, align 1, !dbg !1243
  %conv37 = zext i8 %36 to i32, !dbg !1243
  %cmp38 = icmp eq i32 %conv35, %conv37, !dbg !1245
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1246

if.then40:                                        ; preds = %for.body33
  br label %for.end44, !dbg !1247

if.end41:                                         ; preds = %for.body33
  br label %for.inc42, !dbg !1248

for.inc42:                                        ; preds = %if.end41
  %37 = load i64, i64* %j, align 8, !dbg !1249
  %inc43 = add i64 %37, 1, !dbg !1249
  store i64 %inc43, i64* %j, align 8, !dbg !1249
  br label %for.cond27, !dbg !1250, !llvm.loop !1251

for.end44:                                        ; preds = %if.then40, %for.cond27
  %38 = load i64, i64* %j, align 8, !dbg !1253
  %39 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1255
  %40 = bitcast %struct.raxNode* %39 to i32*, !dbg !1256
  %bf.load45 = load i32, i32* %40, align 4, !dbg !1256
  %bf.lshr46 = lshr i32 %bf.load45, 3, !dbg !1256
  %conv47 = zext i32 %bf.lshr46 to i64, !dbg !1255
  %cmp48 = icmp eq i64 %38, %conv47, !dbg !1257
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1258

if.then50:                                        ; preds = %for.end44
  br label %while.end, !dbg !1259

if.end51:                                         ; preds = %for.end44
  %41 = load i64, i64* %i, align 8, !dbg !1260
  %inc52 = add i64 %41, 1, !dbg !1260
  store i64 %inc52, i64* %i, align 8, !dbg !1260
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end26
  %42 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1261
  %tobool54 = icmp ne %struct.raxStack* %42, null, !dbg !1261
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !1263

if.then55:                                        ; preds = %if.end53
  %43 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1264
  %44 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1265
  %45 = bitcast %struct.raxNode* %44 to i8*, !dbg !1265
  %call = call i32 @raxStackPush(%struct.raxStack* %43, i8* %45), !dbg !1266
  br label %if.end56, !dbg !1266

if.end56:                                         ; preds = %if.then55, %if.end53
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %children, metadata !1267, metadata !DIExpression()), !dbg !1268
  %46 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1269
  %data57 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %46, i32 0, i32 1, !dbg !1269
  %arraydecay58 = getelementptr inbounds [0 x i8], [0 x i8]* %data57, i64 0, i64 0, !dbg !1269
  %47 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1269
  %48 = bitcast %struct.raxNode* %47 to i32*, !dbg !1269
  %bf.load59 = load i32, i32* %48, align 4, !dbg !1269
  %bf.lshr60 = lshr i32 %bf.load59, 3, !dbg !1269
  %idx.ext = sext i32 %bf.lshr60 to i64, !dbg !1269
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay58, i64 %idx.ext, !dbg !1269
  %49 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1269
  %50 = bitcast %struct.raxNode* %49 to i32*, !dbg !1269
  %bf.load61 = load i32, i32* %50, align 4, !dbg !1269
  %bf.lshr62 = lshr i32 %bf.load61, 3, !dbg !1269
  %add = add nsw i32 %bf.lshr62, 4, !dbg !1269
  %conv63 = sext i32 %add to i64, !dbg !1269
  %rem = urem i64 %conv63, 8, !dbg !1269
  %sub = sub i64 8, %rem, !dbg !1269
  %and = and i64 %sub, 7, !dbg !1269
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr, i64 %and, !dbg !1269
  %51 = bitcast i8* %add.ptr64 to %struct.raxNode**, !dbg !1269
  store %struct.raxNode** %51, %struct.raxNode*** %children, align 8, !dbg !1268
  %52 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1270
  %53 = bitcast %struct.raxNode* %52 to i32*, !dbg !1272
  %bf.load65 = load i32, i32* %53, align 4, !dbg !1272
  %bf.lshr66 = lshr i32 %bf.load65, 2, !dbg !1272
  %bf.clear67 = and i32 %bf.lshr66, 1, !dbg !1272
  %tobool68 = icmp ne i32 %bf.clear67, 0, !dbg !1270
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !1273

if.then69:                                        ; preds = %if.end56
  store i64 0, i64* %j, align 8, !dbg !1274
  br label %if.end70, !dbg !1275

if.end70:                                         ; preds = %if.then69, %if.end56
  %54 = bitcast %struct.raxNode** %h to i8*, !dbg !1276
  %55 = load %struct.raxNode**, %struct.raxNode*** %children, align 8, !dbg !1277
  %56 = load i64, i64* %j, align 8, !dbg !1278
  %add.ptr71 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %55, i64 %56, !dbg !1279
  %57 = bitcast %struct.raxNode** %add.ptr71 to i8*, !dbg !1276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %57, i64 8, i1 false), !dbg !1276
  %58 = load %struct.raxNode**, %struct.raxNode*** %children, align 8, !dbg !1280
  %59 = load i64, i64* %j, align 8, !dbg !1281
  %add.ptr72 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %58, i64 %59, !dbg !1282
  store %struct.raxNode** %add.ptr72, %struct.raxNode*** %parentlink, align 8, !dbg !1283
  store i64 0, i64* %j, align 8, !dbg !1284
  br label %while.cond, !dbg !1174, !llvm.loop !1285

while.end:                                        ; preds = %if.then50, %if.then25, %land.end
  %60 = load %struct.raxNode**, %struct.raxNode*** %stopnode.addr, align 8, !dbg !1287
  %tobool73 = icmp ne %struct.raxNode** %60, null, !dbg !1287
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !1289

if.then74:                                        ; preds = %while.end
  %61 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1290
  %62 = load %struct.raxNode**, %struct.raxNode*** %stopnode.addr, align 8, !dbg !1291
  store %struct.raxNode* %61, %struct.raxNode** %62, align 8, !dbg !1292
  br label %if.end75, !dbg !1293

if.end75:                                         ; preds = %if.then74, %while.end
  %63 = load %struct.raxNode***, %struct.raxNode**** %plink.addr, align 8, !dbg !1294
  %tobool76 = icmp ne %struct.raxNode*** %63, null, !dbg !1294
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !1296

if.then77:                                        ; preds = %if.end75
  %64 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !1297
  %65 = load %struct.raxNode***, %struct.raxNode**** %plink.addr, align 8, !dbg !1298
  store %struct.raxNode** %64, %struct.raxNode*** %65, align 8, !dbg !1299
  br label %if.end78, !dbg !1300

if.end78:                                         ; preds = %if.then77, %if.end75
  %66 = load i32*, i32** %splitpos.addr, align 8, !dbg !1301
  %tobool79 = icmp ne i32* %66, null, !dbg !1301
  br i1 %tobool79, label %land.lhs.true, label %if.end86, !dbg !1303

land.lhs.true:                                    ; preds = %if.end78
  %67 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1304
  %68 = bitcast %struct.raxNode* %67 to i32*, !dbg !1305
  %bf.load80 = load i32, i32* %68, align 4, !dbg !1305
  %bf.lshr81 = lshr i32 %bf.load80, 2, !dbg !1305
  %bf.clear82 = and i32 %bf.lshr81, 1, !dbg !1305
  %tobool83 = icmp ne i32 %bf.clear82, 0, !dbg !1304
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !1306

if.then84:                                        ; preds = %land.lhs.true
  %69 = load i64, i64* %j, align 8, !dbg !1307
  %conv85 = trunc i64 %69 to i32, !dbg !1307
  %70 = load i32*, i32** %splitpos.addr, align 8, !dbg !1308
  store i32 %conv85, i32* %70, align 4, !dbg !1309
  br label %if.end86, !dbg !1310

if.end86:                                         ; preds = %if.then84, %land.lhs.true, %if.end78
  %71 = load i64, i64* %i, align 8, !dbg !1311
  ret i64 %71, !dbg !1312
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxRemove(%struct.rax* %rax, i8* %s, i64 %len, i8** %old) #0 !dbg !1313 {
entry:
  %retval = alloca i32, align 4
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %old.addr = alloca i8**, align 8
  %h = alloca %struct.raxNode*, align 8
  %ts = alloca %struct.raxStack, align 8
  %splitpos = alloca i32, align 4
  %i = alloca i64, align 8
  %trycompress = alloca i32, align 4
  %child = alloca %struct.raxNode*, align 8
  %new = alloca %struct.raxNode*, align 8
  %parent = alloca %struct.raxNode*, align 8
  %parentlink = alloca %struct.raxNode**, align 8
  %parent69 = alloca %struct.raxNode*, align 8
  %start = alloca %struct.raxNode*, align 8
  %comprsize = alloca i64, align 8
  %nodes = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %nodesize = alloca i64, align 8
  %new176 = alloca %struct.raxNode*, align 8
  %cp210 = alloca %struct.raxNode**, align 8
  %tofree = alloca %struct.raxNode*, align 8
  %cp284 = alloca %struct.raxNode**, align 8
  %parentlink342 = alloca %struct.raxNode**, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1320, metadata !DIExpression()), !dbg !1321
  store i8** %old, i8*** %old.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %old.addr, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.declare(metadata %struct.raxNode** %h, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.declare(metadata %struct.raxStack* %ts, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @raxStackInit(%struct.raxStack* %ts), !dbg !1328
  call void @llvm.dbg.declare(metadata i32* %splitpos, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i32 0, i32* %splitpos, align 4, !dbg !1330
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1331, metadata !DIExpression()), !dbg !1332
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1333
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1334
  %2 = load i64, i64* %len.addr, align 8, !dbg !1335
  %call = call i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** %h, %struct.raxNode*** null, i32* %splitpos, %struct.raxStack* %ts), !dbg !1336
  store i64 %call, i64* %i, align 8, !dbg !1332
  %3 = load i64, i64* %i, align 8, !dbg !1337
  %4 = load i64, i64* %len.addr, align 8, !dbg !1339
  %cmp = icmp ne i64 %3, %4, !dbg !1340
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1341

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1342
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !1343
  %bf.load = load i32, i32* %6, align 4, !dbg !1343
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1343
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1343
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !1342
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false2, !dbg !1344

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, i32* %splitpos, align 4, !dbg !1345
  %cmp1 = icmp ne i32 %7, 0, !dbg !1346
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1347

lor.lhs.false2:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1348
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !1349
  %bf.load3 = load i32, i32* %9, align 4, !dbg !1349
  %bf.clear4 = and i32 %bf.load3, 1, !dbg !1349
  %tobool5 = icmp ne i32 %bf.clear4, 0, !dbg !1348
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1350

if.then:                                          ; preds = %lor.lhs.false2, %land.lhs.true, %entry
  call void @raxStackFree(%struct.raxStack* %ts), !dbg !1351
  store i32 0, i32* %retval, align 4, !dbg !1353
  br label %return, !dbg !1353

if.end:                                           ; preds = %lor.lhs.false2
  %10 = load i8**, i8*** %old.addr, align 8, !dbg !1354
  %tobool6 = icmp ne i8** %10, null, !dbg !1354
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !1356

if.then7:                                         ; preds = %if.end
  %11 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1357
  %call8 = call i8* @raxGetData(%struct.raxNode* %11), !dbg !1358
  %12 = load i8**, i8*** %old.addr, align 8, !dbg !1359
  store i8* %call8, i8** %12, align 8, !dbg !1360
  br label %if.end9, !dbg !1361

if.end9:                                          ; preds = %if.then7, %if.end
  %13 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1362
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !1363
  %bf.load10 = load i32, i32* %14, align 4, !dbg !1364
  %bf.clear11 = and i32 %bf.load10, -2, !dbg !1364
  store i32 %bf.clear11, i32* %14, align 4, !dbg !1364
  %15 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1365
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %15, i32 0, i32 1, !dbg !1366
  %16 = load i64, i64* %numele, align 8, !dbg !1367
  %dec = add i64 %16, -1, !dbg !1367
  store i64 %dec, i64* %numele, align 8, !dbg !1367
  call void @llvm.dbg.declare(metadata i32* %trycompress, metadata !1368, metadata !DIExpression()), !dbg !1369
  store i32 0, i32* %trycompress, align 4, !dbg !1369
  %17 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1370
  %18 = bitcast %struct.raxNode* %17 to i32*, !dbg !1372
  %bf.load12 = load i32, i32* %18, align 4, !dbg !1372
  %bf.lshr13 = lshr i32 %bf.load12, 3, !dbg !1372
  %cmp14 = icmp eq i32 %bf.lshr13, 0, !dbg !1373
  br i1 %cmp14, label %if.then15, label %if.else55, !dbg !1374

if.then15:                                        ; preds = %if.end9
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !1375, metadata !DIExpression()), !dbg !1377
  store %struct.raxNode* null, %struct.raxNode** %child, align 8, !dbg !1377
  br label %while.cond, !dbg !1378

while.cond:                                       ; preds = %if.end32, %if.then15
  %19 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1379
  %20 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1380
  %head = getelementptr inbounds %struct.rax, %struct.rax* %20, i32 0, i32 0, !dbg !1381
  %21 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !1381
  %cmp16 = icmp ne %struct.raxNode* %19, %21, !dbg !1382
  br i1 %cmp16, label %while.body, label %while.end, !dbg !1378

while.body:                                       ; preds = %while.cond
  %22 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1383
  store %struct.raxNode* %22, %struct.raxNode** %child, align 8, !dbg !1385
  %23 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !1386
  %24 = bitcast %struct.raxNode* %23 to i8*, !dbg !1386
  call void @zfree(i8* %24), !dbg !1387
  %25 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1388
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %25, i32 0, i32 2, !dbg !1389
  %26 = load i64, i64* %numnodes, align 8, !dbg !1390
  %dec17 = add i64 %26, -1, !dbg !1390
  store i64 %dec17, i64* %numnodes, align 8, !dbg !1390
  %call18 = call i8* @raxStackPop(%struct.raxStack* %ts), !dbg !1391
  %27 = bitcast i8* %call18 to %struct.raxNode*, !dbg !1391
  store %struct.raxNode* %27, %struct.raxNode** %h, align 8, !dbg !1392
  %28 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1393
  %29 = bitcast %struct.raxNode* %28 to i32*, !dbg !1395
  %bf.load19 = load i32, i32* %29, align 4, !dbg !1395
  %bf.clear20 = and i32 %bf.load19, 1, !dbg !1395
  %tobool21 = icmp ne i32 %bf.clear20, 0, !dbg !1393
  br i1 %tobool21, label %if.then31, label %lor.lhs.false22, !dbg !1396

lor.lhs.false22:                                  ; preds = %while.body
  %30 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1397
  %31 = bitcast %struct.raxNode* %30 to i32*, !dbg !1398
  %bf.load23 = load i32, i32* %31, align 4, !dbg !1398
  %bf.lshr24 = lshr i32 %bf.load23, 2, !dbg !1398
  %bf.clear25 = and i32 %bf.lshr24, 1, !dbg !1398
  %tobool26 = icmp ne i32 %bf.clear25, 0, !dbg !1397
  br i1 %tobool26, label %if.end32, label %land.lhs.true27, !dbg !1399

land.lhs.true27:                                  ; preds = %lor.lhs.false22
  %32 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1400
  %33 = bitcast %struct.raxNode* %32 to i32*, !dbg !1401
  %bf.load28 = load i32, i32* %33, align 4, !dbg !1401
  %bf.lshr29 = lshr i32 %bf.load28, 3, !dbg !1401
  %cmp30 = icmp ne i32 %bf.lshr29, 1, !dbg !1402
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1403

if.then31:                                        ; preds = %land.lhs.true27, %while.body
  br label %while.end, !dbg !1404

if.end32:                                         ; preds = %land.lhs.true27, %lor.lhs.false22
  br label %while.cond, !dbg !1378, !llvm.loop !1405

while.end:                                        ; preds = %if.then31, %while.cond
  %34 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !1407
  %tobool33 = icmp ne %struct.raxNode* %34, null, !dbg !1407
  br i1 %tobool33, label %if.then34, label %if.end54, !dbg !1409

if.then34:                                        ; preds = %while.end
  call void @llvm.dbg.declare(metadata %struct.raxNode** %new, metadata !1410, metadata !DIExpression()), !dbg !1412
  %35 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1413
  %36 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !1414
  %call35 = call %struct.raxNode* @raxRemoveChild(%struct.raxNode* %35, %struct.raxNode* %36), !dbg !1415
  store %struct.raxNode* %call35, %struct.raxNode** %new, align 8, !dbg !1412
  %37 = load %struct.raxNode*, %struct.raxNode** %new, align 8, !dbg !1416
  %38 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1418
  %cmp36 = icmp ne %struct.raxNode* %37, %38, !dbg !1419
  br i1 %cmp36, label %if.then37, label %if.end44, !dbg !1420

if.then37:                                        ; preds = %if.then34
  call void @llvm.dbg.declare(metadata %struct.raxNode** %parent, metadata !1421, metadata !DIExpression()), !dbg !1423
  %call38 = call i8* @raxStackPeek(%struct.raxStack* %ts), !dbg !1424
  %39 = bitcast i8* %call38 to %struct.raxNode*, !dbg !1424
  store %struct.raxNode* %39, %struct.raxNode** %parent, align 8, !dbg !1423
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %parentlink, metadata !1425, metadata !DIExpression()), !dbg !1426
  %40 = load %struct.raxNode*, %struct.raxNode** %parent, align 8, !dbg !1427
  %cmp39 = icmp eq %struct.raxNode* %40, null, !dbg !1429
  br i1 %cmp39, label %if.then40, label %if.else, !dbg !1430

if.then40:                                        ; preds = %if.then37
  %41 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1431
  %head41 = getelementptr inbounds %struct.rax, %struct.rax* %41, i32 0, i32 0, !dbg !1433
  store %struct.raxNode** %head41, %struct.raxNode*** %parentlink, align 8, !dbg !1434
  br label %if.end43, !dbg !1435

if.else:                                          ; preds = %if.then37
  %42 = load %struct.raxNode*, %struct.raxNode** %parent, align 8, !dbg !1436
  %43 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1438
  %call42 = call %struct.raxNode** @raxFindParentLink(%struct.raxNode* %42, %struct.raxNode* %43), !dbg !1439
  store %struct.raxNode** %call42, %struct.raxNode*** %parentlink, align 8, !dbg !1440
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then40
  %44 = load %struct.raxNode**, %struct.raxNode*** %parentlink, align 8, !dbg !1441
  %45 = bitcast %struct.raxNode** %44 to i8*, !dbg !1442
  %46 = bitcast %struct.raxNode** %new to i8*, !dbg !1442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false), !dbg !1442
  br label %if.end44, !dbg !1443

if.end44:                                         ; preds = %if.end43, %if.then34
  %47 = load %struct.raxNode*, %struct.raxNode** %new, align 8, !dbg !1444
  %48 = bitcast %struct.raxNode* %47 to i32*, !dbg !1446
  %bf.load45 = load i32, i32* %48, align 4, !dbg !1446
  %bf.lshr46 = lshr i32 %bf.load45, 3, !dbg !1446
  %cmp47 = icmp eq i32 %bf.lshr46, 1, !dbg !1447
  br i1 %cmp47, label %land.lhs.true48, label %if.end53, !dbg !1448

land.lhs.true48:                                  ; preds = %if.end44
  %49 = load %struct.raxNode*, %struct.raxNode** %new, align 8, !dbg !1449
  %50 = bitcast %struct.raxNode* %49 to i32*, !dbg !1450
  %bf.load49 = load i32, i32* %50, align 4, !dbg !1450
  %bf.clear50 = and i32 %bf.load49, 1, !dbg !1450
  %cmp51 = icmp eq i32 %bf.clear50, 0, !dbg !1451
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1452

if.then52:                                        ; preds = %land.lhs.true48
  store i32 1, i32* %trycompress, align 4, !dbg !1453
  %51 = load %struct.raxNode*, %struct.raxNode** %new, align 8, !dbg !1455
  store %struct.raxNode* %51, %struct.raxNode** %h, align 8, !dbg !1456
  br label %if.end53, !dbg !1457

if.end53:                                         ; preds = %if.then52, %land.lhs.true48, %if.end44
  br label %if.end54, !dbg !1458

if.end54:                                         ; preds = %if.end53, %while.end
  br label %if.end61, !dbg !1459

if.else55:                                        ; preds = %if.end9
  %52 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1460
  %53 = bitcast %struct.raxNode* %52 to i32*, !dbg !1462
  %bf.load56 = load i32, i32* %53, align 4, !dbg !1462
  %bf.lshr57 = lshr i32 %bf.load56, 3, !dbg !1462
  %cmp58 = icmp eq i32 %bf.lshr57, 1, !dbg !1463
  br i1 %cmp58, label %if.then59, label %if.end60, !dbg !1464

if.then59:                                        ; preds = %if.else55
  store i32 1, i32* %trycompress, align 4, !dbg !1465
  br label %if.end60, !dbg !1467

if.end60:                                         ; preds = %if.then59, %if.else55
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end54
  %54 = load i32, i32* %trycompress, align 4, !dbg !1468
  %tobool62 = icmp ne i32 %54, 0, !dbg !1468
  br i1 %tobool62, label %land.lhs.true63, label %if.end66, !dbg !1470

land.lhs.true63:                                  ; preds = %if.end61
  %oom = getelementptr inbounds %struct.raxStack, %struct.raxStack* %ts, i32 0, i32 4, !dbg !1471
  %55 = load i32, i32* %oom, align 8, !dbg !1471
  %tobool64 = icmp ne i32 %55, 0, !dbg !1472
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1473

if.then65:                                        ; preds = %land.lhs.true63
  store i32 0, i32* %trycompress, align 4, !dbg !1474
  br label %if.end66, !dbg !1475

if.end66:                                         ; preds = %if.then65, %land.lhs.true63, %if.end61
  %56 = load i32, i32* %trycompress, align 4, !dbg !1476
  %tobool67 = icmp ne i32 %56, 0, !dbg !1476
  br i1 %tobool67, label %if.then68, label %if.end348, !dbg !1478

if.then68:                                        ; preds = %if.end66
  call void @llvm.dbg.declare(metadata %struct.raxNode** %parent69, metadata !1479, metadata !DIExpression()), !dbg !1481
  br label %while.body71, !dbg !1482

while.body71:                                     ; preds = %if.then68, %if.end88
  %call72 = call i8* @raxStackPop(%struct.raxStack* %ts), !dbg !1483
  %57 = bitcast i8* %call72 to %struct.raxNode*, !dbg !1483
  store %struct.raxNode* %57, %struct.raxNode** %parent69, align 8, !dbg !1485
  %58 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1486
  %tobool73 = icmp ne %struct.raxNode* %58, null, !dbg !1486
  br i1 %tobool73, label %lor.lhs.false74, label %if.then87, !dbg !1488

lor.lhs.false74:                                  ; preds = %while.body71
  %59 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1489
  %60 = bitcast %struct.raxNode* %59 to i32*, !dbg !1490
  %bf.load75 = load i32, i32* %60, align 4, !dbg !1490
  %bf.clear76 = and i32 %bf.load75, 1, !dbg !1490
  %tobool77 = icmp ne i32 %bf.clear76, 0, !dbg !1489
  br i1 %tobool77, label %if.then87, label %lor.lhs.false78, !dbg !1491

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %61 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1492
  %62 = bitcast %struct.raxNode* %61 to i32*, !dbg !1493
  %bf.load79 = load i32, i32* %62, align 4, !dbg !1493
  %bf.lshr80 = lshr i32 %bf.load79, 2, !dbg !1493
  %bf.clear81 = and i32 %bf.lshr80, 1, !dbg !1493
  %tobool82 = icmp ne i32 %bf.clear81, 0, !dbg !1492
  br i1 %tobool82, label %if.end88, label %land.lhs.true83, !dbg !1494

land.lhs.true83:                                  ; preds = %lor.lhs.false78
  %63 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1495
  %64 = bitcast %struct.raxNode* %63 to i32*, !dbg !1496
  %bf.load84 = load i32, i32* %64, align 4, !dbg !1496
  %bf.lshr85 = lshr i32 %bf.load84, 3, !dbg !1496
  %cmp86 = icmp ne i32 %bf.lshr85, 1, !dbg !1497
  br i1 %cmp86, label %if.then87, label %if.end88, !dbg !1498

if.then87:                                        ; preds = %land.lhs.true83, %lor.lhs.false74, %while.body71
  br label %while.end89, !dbg !1499

if.end88:                                         ; preds = %land.lhs.true83, %lor.lhs.false78
  %65 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1500
  store %struct.raxNode* %65, %struct.raxNode** %h, align 8, !dbg !1501
  br label %while.body71, !dbg !1482, !llvm.loop !1502

while.end89:                                      ; preds = %if.then87
  call void @llvm.dbg.declare(metadata %struct.raxNode** %start, metadata !1504, metadata !DIExpression()), !dbg !1505
  %66 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1506
  store %struct.raxNode* %66, %struct.raxNode** %start, align 8, !dbg !1505
  call void @llvm.dbg.declare(metadata i64* %comprsize, metadata !1507, metadata !DIExpression()), !dbg !1508
  %67 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1509
  %68 = bitcast %struct.raxNode* %67 to i32*, !dbg !1510
  %bf.load90 = load i32, i32* %68, align 4, !dbg !1510
  %bf.lshr91 = lshr i32 %bf.load90, 3, !dbg !1510
  %conv = zext i32 %bf.lshr91 to i64, !dbg !1509
  store i64 %conv, i64* %comprsize, align 8, !dbg !1508
  call void @llvm.dbg.declare(metadata i32* %nodes, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i32 1, i32* %nodes, align 4, !dbg !1512
  br label %while.cond92, !dbg !1513

while.cond92:                                     ; preds = %if.end160, %while.end89
  %69 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1514
  %70 = bitcast %struct.raxNode* %69 to i32*, !dbg !1515
  %bf.load93 = load i32, i32* %70, align 4, !dbg !1515
  %bf.lshr94 = lshr i32 %bf.load93, 3, !dbg !1515
  %cmp95 = icmp ne i32 %bf.lshr94, 0, !dbg !1516
  br i1 %cmp95, label %while.body97, label %while.end165, !dbg !1513

while.body97:                                     ; preds = %while.cond92
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !1517, metadata !DIExpression()), !dbg !1519
  %71 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %72 = bitcast %struct.raxNode* %71 to i8*, !dbg !1520
  %73 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %74 = bitcast %struct.raxNode* %73 to i32*, !dbg !1520
  %bf.load98 = load i32, i32* %74, align 4, !dbg !1520
  %bf.lshr99 = lshr i32 %bf.load98, 3, !dbg !1520
  %conv100 = zext i32 %bf.lshr99 to i64, !dbg !1520
  %add = add i64 4, %conv100, !dbg !1520
  %75 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %76 = bitcast %struct.raxNode* %75 to i32*, !dbg !1520
  %bf.load101 = load i32, i32* %76, align 4, !dbg !1520
  %bf.lshr102 = lshr i32 %bf.load101, 3, !dbg !1520
  %add103 = add nsw i32 %bf.lshr102, 4, !dbg !1520
  %conv104 = sext i32 %add103 to i64, !dbg !1520
  %rem = urem i64 %conv104, 8, !dbg !1520
  %sub = sub i64 8, %rem, !dbg !1520
  %and = and i64 %sub, 7, !dbg !1520
  %add105 = add i64 %add, %and, !dbg !1520
  %77 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %78 = bitcast %struct.raxNode* %77 to i32*, !dbg !1520
  %bf.load106 = load i32, i32* %78, align 4, !dbg !1520
  %bf.lshr107 = lshr i32 %bf.load106, 2, !dbg !1520
  %bf.clear108 = and i32 %bf.lshr107, 1, !dbg !1520
  %tobool109 = icmp ne i32 %bf.clear108, 0, !dbg !1520
  br i1 %tobool109, label %cond.true, label %cond.false, !dbg !1520

cond.true:                                        ; preds = %while.body97
  br label %cond.end, !dbg !1520

cond.false:                                       ; preds = %while.body97
  %79 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %80 = bitcast %struct.raxNode* %79 to i32*, !dbg !1520
  %bf.load110 = load i32, i32* %80, align 4, !dbg !1520
  %bf.lshr111 = lshr i32 %bf.load110, 3, !dbg !1520
  %conv112 = zext i32 %bf.lshr111 to i64, !dbg !1520
  %mul = mul i64 8, %conv112, !dbg !1520
  br label %cond.end, !dbg !1520

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !1520
  %add113 = add i64 %add105, %cond, !dbg !1520
  %81 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %82 = bitcast %struct.raxNode* %81 to i32*, !dbg !1520
  %bf.load114 = load i32, i32* %82, align 4, !dbg !1520
  %bf.clear115 = and i32 %bf.load114, 1, !dbg !1520
  %tobool116 = icmp ne i32 %bf.clear115, 0, !dbg !1520
  br i1 %tobool116, label %land.rhs, label %land.end, !dbg !1520

land.rhs:                                         ; preds = %cond.end
  %83 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %84 = bitcast %struct.raxNode* %83 to i32*, !dbg !1520
  %bf.load117 = load i32, i32* %84, align 4, !dbg !1520
  %bf.lshr118 = lshr i32 %bf.load117, 1, !dbg !1520
  %bf.clear119 = and i32 %bf.lshr118, 1, !dbg !1520
  %tobool120 = icmp ne i32 %bf.clear119, 0, !dbg !1520
  %lnot = xor i1 %tobool120, true, !dbg !1520
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %85 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !1521
  %land.ext = zext i1 %85 to i32, !dbg !1520
  %conv121 = sext i32 %land.ext to i64, !dbg !1520
  %mul122 = mul i64 %conv121, 8, !dbg !1520
  %add123 = add i64 %add113, %mul122, !dbg !1520
  %add.ptr = getelementptr inbounds i8, i8* %72, i64 %add123, !dbg !1520
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !1520
  %86 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %87 = bitcast %struct.raxNode* %86 to i32*, !dbg !1520
  %bf.load125 = load i32, i32* %87, align 4, !dbg !1520
  %bf.clear126 = and i32 %bf.load125, 1, !dbg !1520
  %tobool127 = icmp ne i32 %bf.clear126, 0, !dbg !1520
  br i1 %tobool127, label %land.rhs128, label %land.end134, !dbg !1520

land.rhs128:                                      ; preds = %land.end
  %88 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1520
  %89 = bitcast %struct.raxNode* %88 to i32*, !dbg !1520
  %bf.load129 = load i32, i32* %89, align 4, !dbg !1520
  %bf.lshr130 = lshr i32 %bf.load129, 1, !dbg !1520
  %bf.clear131 = and i32 %bf.lshr130, 1, !dbg !1520
  %tobool132 = icmp ne i32 %bf.clear131, 0, !dbg !1520
  %lnot133 = xor i1 %tobool132, true, !dbg !1520
  br label %land.end134

land.end134:                                      ; preds = %land.rhs128, %land.end
  %90 = phi i1 [ false, %land.end ], [ %lnot133, %land.rhs128 ], !dbg !1521
  %91 = zext i1 %90 to i64, !dbg !1520
  %cond136 = select i1 %90, i64 8, i64 0, !dbg !1520
  %idx.neg = sub i64 0, %cond136, !dbg !1520
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr124, i64 %idx.neg, !dbg !1520
  %92 = bitcast i8* %add.ptr137 to %struct.raxNode**, !dbg !1520
  store %struct.raxNode** %92, %struct.raxNode*** %cp, align 8, !dbg !1519
  %93 = bitcast %struct.raxNode** %h to i8*, !dbg !1522
  %94 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1523
  %95 = bitcast %struct.raxNode** %94 to i8*, !dbg !1522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %95, i64 8, i1 false), !dbg !1522
  %96 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1524
  %97 = bitcast %struct.raxNode* %96 to i32*, !dbg !1526
  %bf.load138 = load i32, i32* %97, align 4, !dbg !1526
  %bf.clear139 = and i32 %bf.load138, 1, !dbg !1526
  %tobool140 = icmp ne i32 %bf.clear139, 0, !dbg !1524
  br i1 %tobool140, label %if.then151, label %lor.lhs.false141, !dbg !1527

lor.lhs.false141:                                 ; preds = %land.end134
  %98 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1528
  %99 = bitcast %struct.raxNode* %98 to i32*, !dbg !1529
  %bf.load142 = load i32, i32* %99, align 4, !dbg !1529
  %bf.lshr143 = lshr i32 %bf.load142, 2, !dbg !1529
  %bf.clear144 = and i32 %bf.lshr143, 1, !dbg !1529
  %tobool145 = icmp ne i32 %bf.clear144, 0, !dbg !1528
  br i1 %tobool145, label %if.end152, label %land.lhs.true146, !dbg !1530

land.lhs.true146:                                 ; preds = %lor.lhs.false141
  %100 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1531
  %101 = bitcast %struct.raxNode* %100 to i32*, !dbg !1532
  %bf.load147 = load i32, i32* %101, align 4, !dbg !1532
  %bf.lshr148 = lshr i32 %bf.load147, 3, !dbg !1532
  %cmp149 = icmp ne i32 %bf.lshr148, 1, !dbg !1533
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !1534

if.then151:                                       ; preds = %land.lhs.true146, %land.end134
  br label %while.end165, !dbg !1535

if.end152:                                        ; preds = %land.lhs.true146, %lor.lhs.false141
  %102 = load i64, i64* %comprsize, align 8, !dbg !1536
  %103 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1538
  %104 = bitcast %struct.raxNode* %103 to i32*, !dbg !1539
  %bf.load153 = load i32, i32* %104, align 4, !dbg !1539
  %bf.lshr154 = lshr i32 %bf.load153, 3, !dbg !1539
  %conv155 = zext i32 %bf.lshr154 to i64, !dbg !1538
  %add156 = add i64 %102, %conv155, !dbg !1540
  %cmp157 = icmp ugt i64 %add156, 536870911, !dbg !1541
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !1542

if.then159:                                       ; preds = %if.end152
  br label %while.end165, !dbg !1543

if.end160:                                        ; preds = %if.end152
  %105 = load i32, i32* %nodes, align 4, !dbg !1544
  %inc = add nsw i32 %105, 1, !dbg !1544
  store i32 %inc, i32* %nodes, align 4, !dbg !1544
  %106 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1545
  %107 = bitcast %struct.raxNode* %106 to i32*, !dbg !1546
  %bf.load161 = load i32, i32* %107, align 4, !dbg !1546
  %bf.lshr162 = lshr i32 %bf.load161, 3, !dbg !1546
  %conv163 = zext i32 %bf.lshr162 to i64, !dbg !1545
  %108 = load i64, i64* %comprsize, align 8, !dbg !1547
  %add164 = add i64 %108, %conv163, !dbg !1547
  store i64 %add164, i64* %comprsize, align 8, !dbg !1547
  br label %while.cond92, !dbg !1513, !llvm.loop !1548

while.end165:                                     ; preds = %if.then159, %if.then151, %while.cond92
  %109 = load i32, i32* %nodes, align 4, !dbg !1550
  %cmp166 = icmp sgt i32 %109, 1, !dbg !1552
  br i1 %cmp166, label %if.then168, label %if.end347, !dbg !1553

if.then168:                                       ; preds = %while.end165
  call void @llvm.dbg.declare(metadata i64* %nodesize, metadata !1554, metadata !DIExpression()), !dbg !1556
  %110 = load i64, i64* %comprsize, align 8, !dbg !1557
  %add169 = add i64 4, %110, !dbg !1558
  %111 = load i64, i64* %comprsize, align 8, !dbg !1559
  %add170 = add i64 %111, 4, !dbg !1559
  %rem171 = urem i64 %add170, 8, !dbg !1559
  %sub172 = sub i64 8, %rem171, !dbg !1559
  %and173 = and i64 %sub172, 7, !dbg !1559
  %add174 = add i64 %add169, %and173, !dbg !1560
  %add175 = add i64 %add174, 8, !dbg !1561
  store i64 %add175, i64* %nodesize, align 8, !dbg !1556
  call void @llvm.dbg.declare(metadata %struct.raxNode** %new176, metadata !1562, metadata !DIExpression()), !dbg !1563
  %112 = load i64, i64* %nodesize, align 8, !dbg !1564
  %call177 = call i8* @zmalloc(i64 %112), !dbg !1565
  %113 = bitcast i8* %call177 to %struct.raxNode*, !dbg !1565
  store %struct.raxNode* %113, %struct.raxNode** %new176, align 8, !dbg !1563
  %114 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1566
  %cmp178 = icmp eq %struct.raxNode* %114, null, !dbg !1568
  br i1 %cmp178, label %if.then180, label %if.end181, !dbg !1569

if.then180:                                       ; preds = %if.then168
  call void @raxStackFree(%struct.raxStack* %ts), !dbg !1570
  store i32 1, i32* %retval, align 4, !dbg !1572
  br label %return, !dbg !1572

if.end181:                                        ; preds = %if.then168
  %115 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1573
  %116 = bitcast %struct.raxNode* %115 to i32*, !dbg !1574
  %bf.load182 = load i32, i32* %116, align 4, !dbg !1575
  %bf.clear183 = and i32 %bf.load182, -2, !dbg !1575
  store i32 %bf.clear183, i32* %116, align 4, !dbg !1575
  %117 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1576
  %118 = bitcast %struct.raxNode* %117 to i32*, !dbg !1577
  %bf.load184 = load i32, i32* %118, align 4, !dbg !1578
  %bf.clear185 = and i32 %bf.load184, -3, !dbg !1578
  store i32 %bf.clear185, i32* %118, align 4, !dbg !1578
  %119 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1579
  %120 = bitcast %struct.raxNode* %119 to i32*, !dbg !1580
  %bf.load186 = load i32, i32* %120, align 4, !dbg !1581
  %bf.clear187 = and i32 %bf.load186, -5, !dbg !1581
  %bf.set = or i32 %bf.clear187, 4, !dbg !1581
  store i32 %bf.set, i32* %120, align 4, !dbg !1581
  %121 = load i64, i64* %comprsize, align 8, !dbg !1582
  %conv188 = trunc i64 %121 to i32, !dbg !1582
  %122 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1583
  %123 = bitcast %struct.raxNode* %122 to i32*, !dbg !1584
  %bf.load189 = load i32, i32* %123, align 4, !dbg !1585
  %bf.value = and i32 %conv188, 536870911, !dbg !1585
  %bf.shl = shl i32 %bf.value, 3, !dbg !1585
  %bf.clear190 = and i32 %bf.load189, 7, !dbg !1585
  %bf.set191 = or i32 %bf.clear190, %bf.shl, !dbg !1585
  store i32 %bf.set191, i32* %123, align 4, !dbg !1585
  %124 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1586
  %numnodes192 = getelementptr inbounds %struct.rax, %struct.rax* %124, i32 0, i32 2, !dbg !1587
  %125 = load i64, i64* %numnodes192, align 8, !dbg !1588
  %inc193 = add i64 %125, 1, !dbg !1588
  store i64 %inc193, i64* %numnodes192, align 8, !dbg !1588
  store i64 0, i64* %comprsize, align 8, !dbg !1589
  %126 = load %struct.raxNode*, %struct.raxNode** %start, align 8, !dbg !1590
  store %struct.raxNode* %126, %struct.raxNode** %h, align 8, !dbg !1591
  br label %while.cond194, !dbg !1592

while.cond194:                                    ; preds = %if.end282, %if.end181
  %127 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1593
  %128 = bitcast %struct.raxNode* %127 to i32*, !dbg !1594
  %bf.load195 = load i32, i32* %128, align 4, !dbg !1594
  %bf.lshr196 = lshr i32 %bf.load195, 3, !dbg !1594
  %cmp197 = icmp ne i32 %bf.lshr196, 0, !dbg !1595
  br i1 %cmp197, label %while.body199, label %while.end283, !dbg !1592

while.body199:                                    ; preds = %while.cond194
  %129 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1596
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %129, i32 0, i32 1, !dbg !1598
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !1596
  %130 = load i64, i64* %comprsize, align 8, !dbg !1599
  %add.ptr200 = getelementptr inbounds i8, i8* %arraydecay, i64 %130, !dbg !1600
  %131 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1601
  %data201 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %131, i32 0, i32 1, !dbg !1602
  %arraydecay202 = getelementptr inbounds [0 x i8], [0 x i8]* %data201, i64 0, i64 0, !dbg !1603
  %132 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1604
  %133 = bitcast %struct.raxNode* %132 to i32*, !dbg !1605
  %bf.load203 = load i32, i32* %133, align 4, !dbg !1605
  %bf.lshr204 = lshr i32 %bf.load203, 3, !dbg !1605
  %conv205 = zext i32 %bf.lshr204 to i64, !dbg !1604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr200, i8* align 4 %arraydecay202, i64 %conv205, i1 false), !dbg !1603
  %134 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1606
  %135 = bitcast %struct.raxNode* %134 to i32*, !dbg !1607
  %bf.load206 = load i32, i32* %135, align 4, !dbg !1607
  %bf.lshr207 = lshr i32 %bf.load206, 3, !dbg !1607
  %conv208 = zext i32 %bf.lshr207 to i64, !dbg !1606
  %136 = load i64, i64* %comprsize, align 8, !dbg !1608
  %add209 = add i64 %136, %conv208, !dbg !1608
  store i64 %add209, i64* %comprsize, align 8, !dbg !1608
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp210, metadata !1609, metadata !DIExpression()), !dbg !1610
  %137 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %138 = bitcast %struct.raxNode* %137 to i8*, !dbg !1611
  %139 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %140 = bitcast %struct.raxNode* %139 to i32*, !dbg !1611
  %bf.load211 = load i32, i32* %140, align 4, !dbg !1611
  %bf.lshr212 = lshr i32 %bf.load211, 3, !dbg !1611
  %conv213 = zext i32 %bf.lshr212 to i64, !dbg !1611
  %add214 = add i64 4, %conv213, !dbg !1611
  %141 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %142 = bitcast %struct.raxNode* %141 to i32*, !dbg !1611
  %bf.load215 = load i32, i32* %142, align 4, !dbg !1611
  %bf.lshr216 = lshr i32 %bf.load215, 3, !dbg !1611
  %add217 = add nsw i32 %bf.lshr216, 4, !dbg !1611
  %conv218 = sext i32 %add217 to i64, !dbg !1611
  %rem219 = urem i64 %conv218, 8, !dbg !1611
  %sub220 = sub i64 8, %rem219, !dbg !1611
  %and221 = and i64 %sub220, 7, !dbg !1611
  %add222 = add i64 %add214, %and221, !dbg !1611
  %143 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %144 = bitcast %struct.raxNode* %143 to i32*, !dbg !1611
  %bf.load223 = load i32, i32* %144, align 4, !dbg !1611
  %bf.lshr224 = lshr i32 %bf.load223, 2, !dbg !1611
  %bf.clear225 = and i32 %bf.lshr224, 1, !dbg !1611
  %tobool226 = icmp ne i32 %bf.clear225, 0, !dbg !1611
  br i1 %tobool226, label %cond.true227, label %cond.false228, !dbg !1611

cond.true227:                                     ; preds = %while.body199
  br label %cond.end233, !dbg !1611

cond.false228:                                    ; preds = %while.body199
  %145 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %146 = bitcast %struct.raxNode* %145 to i32*, !dbg !1611
  %bf.load229 = load i32, i32* %146, align 4, !dbg !1611
  %bf.lshr230 = lshr i32 %bf.load229, 3, !dbg !1611
  %conv231 = zext i32 %bf.lshr230 to i64, !dbg !1611
  %mul232 = mul i64 8, %conv231, !dbg !1611
  br label %cond.end233, !dbg !1611

cond.end233:                                      ; preds = %cond.false228, %cond.true227
  %cond234 = phi i64 [ 8, %cond.true227 ], [ %mul232, %cond.false228 ], !dbg !1611
  %add235 = add i64 %add222, %cond234, !dbg !1611
  %147 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %148 = bitcast %struct.raxNode* %147 to i32*, !dbg !1611
  %bf.load236 = load i32, i32* %148, align 4, !dbg !1611
  %bf.clear237 = and i32 %bf.load236, 1, !dbg !1611
  %tobool238 = icmp ne i32 %bf.clear237, 0, !dbg !1611
  br i1 %tobool238, label %land.rhs239, label %land.end245, !dbg !1611

land.rhs239:                                      ; preds = %cond.end233
  %149 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %150 = bitcast %struct.raxNode* %149 to i32*, !dbg !1611
  %bf.load240 = load i32, i32* %150, align 4, !dbg !1611
  %bf.lshr241 = lshr i32 %bf.load240, 1, !dbg !1611
  %bf.clear242 = and i32 %bf.lshr241, 1, !dbg !1611
  %tobool243 = icmp ne i32 %bf.clear242, 0, !dbg !1611
  %lnot244 = xor i1 %tobool243, true, !dbg !1611
  br label %land.end245

land.end245:                                      ; preds = %land.rhs239, %cond.end233
  %151 = phi i1 [ false, %cond.end233 ], [ %lnot244, %land.rhs239 ], !dbg !1612
  %land.ext246 = zext i1 %151 to i32, !dbg !1611
  %conv247 = sext i32 %land.ext246 to i64, !dbg !1611
  %mul248 = mul i64 %conv247, 8, !dbg !1611
  %add249 = add i64 %add235, %mul248, !dbg !1611
  %add.ptr250 = getelementptr inbounds i8, i8* %138, i64 %add249, !dbg !1611
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr250, i64 -8, !dbg !1611
  %152 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %153 = bitcast %struct.raxNode* %152 to i32*, !dbg !1611
  %bf.load252 = load i32, i32* %153, align 4, !dbg !1611
  %bf.clear253 = and i32 %bf.load252, 1, !dbg !1611
  %tobool254 = icmp ne i32 %bf.clear253, 0, !dbg !1611
  br i1 %tobool254, label %land.rhs255, label %land.end261, !dbg !1611

land.rhs255:                                      ; preds = %land.end245
  %154 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1611
  %155 = bitcast %struct.raxNode* %154 to i32*, !dbg !1611
  %bf.load256 = load i32, i32* %155, align 4, !dbg !1611
  %bf.lshr257 = lshr i32 %bf.load256, 1, !dbg !1611
  %bf.clear258 = and i32 %bf.lshr257, 1, !dbg !1611
  %tobool259 = icmp ne i32 %bf.clear258, 0, !dbg !1611
  %lnot260 = xor i1 %tobool259, true, !dbg !1611
  br label %land.end261

land.end261:                                      ; preds = %land.rhs255, %land.end245
  %156 = phi i1 [ false, %land.end245 ], [ %lnot260, %land.rhs255 ], !dbg !1612
  %157 = zext i1 %156 to i64, !dbg !1611
  %cond263 = select i1 %156, i64 8, i64 0, !dbg !1611
  %idx.neg264 = sub i64 0, %cond263, !dbg !1611
  %add.ptr265 = getelementptr inbounds i8, i8* %add.ptr251, i64 %idx.neg264, !dbg !1611
  %158 = bitcast i8* %add.ptr265 to %struct.raxNode**, !dbg !1611
  store %struct.raxNode** %158, %struct.raxNode*** %cp210, align 8, !dbg !1610
  call void @llvm.dbg.declare(metadata %struct.raxNode** %tofree, metadata !1613, metadata !DIExpression()), !dbg !1614
  %159 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1615
  store %struct.raxNode* %159, %struct.raxNode** %tofree, align 8, !dbg !1614
  %160 = bitcast %struct.raxNode** %h to i8*, !dbg !1616
  %161 = load %struct.raxNode**, %struct.raxNode*** %cp210, align 8, !dbg !1617
  %162 = bitcast %struct.raxNode** %161 to i8*, !dbg !1616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %162, i64 8, i1 false), !dbg !1616
  %163 = load %struct.raxNode*, %struct.raxNode** %tofree, align 8, !dbg !1618
  %164 = bitcast %struct.raxNode* %163 to i8*, !dbg !1618
  call void @zfree(i8* %164), !dbg !1619
  %165 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1620
  %numnodes266 = getelementptr inbounds %struct.rax, %struct.rax* %165, i32 0, i32 2, !dbg !1621
  %166 = load i64, i64* %numnodes266, align 8, !dbg !1622
  %dec267 = add i64 %166, -1, !dbg !1622
  store i64 %dec267, i64* %numnodes266, align 8, !dbg !1622
  %167 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1623
  %168 = bitcast %struct.raxNode* %167 to i32*, !dbg !1625
  %bf.load268 = load i32, i32* %168, align 4, !dbg !1625
  %bf.clear269 = and i32 %bf.load268, 1, !dbg !1625
  %tobool270 = icmp ne i32 %bf.clear269, 0, !dbg !1623
  br i1 %tobool270, label %if.then281, label %lor.lhs.false271, !dbg !1626

lor.lhs.false271:                                 ; preds = %land.end261
  %169 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1627
  %170 = bitcast %struct.raxNode* %169 to i32*, !dbg !1628
  %bf.load272 = load i32, i32* %170, align 4, !dbg !1628
  %bf.lshr273 = lshr i32 %bf.load272, 2, !dbg !1628
  %bf.clear274 = and i32 %bf.lshr273, 1, !dbg !1628
  %tobool275 = icmp ne i32 %bf.clear274, 0, !dbg !1627
  br i1 %tobool275, label %if.end282, label %land.lhs.true276, !dbg !1629

land.lhs.true276:                                 ; preds = %lor.lhs.false271
  %171 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1630
  %172 = bitcast %struct.raxNode* %171 to i32*, !dbg !1631
  %bf.load277 = load i32, i32* %172, align 4, !dbg !1631
  %bf.lshr278 = lshr i32 %bf.load277, 3, !dbg !1631
  %cmp279 = icmp ne i32 %bf.lshr278, 1, !dbg !1632
  br i1 %cmp279, label %if.then281, label %if.end282, !dbg !1633

if.then281:                                       ; preds = %land.lhs.true276, %land.end261
  br label %while.end283, !dbg !1634

if.end282:                                        ; preds = %land.lhs.true276, %lor.lhs.false271
  br label %while.cond194, !dbg !1592, !llvm.loop !1635

while.end283:                                     ; preds = %if.then281, %while.cond194
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp284, metadata !1637, metadata !DIExpression()), !dbg !1638
  %173 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %174 = bitcast %struct.raxNode* %173 to i8*, !dbg !1639
  %175 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %176 = bitcast %struct.raxNode* %175 to i32*, !dbg !1639
  %bf.load285 = load i32, i32* %176, align 4, !dbg !1639
  %bf.lshr286 = lshr i32 %bf.load285, 3, !dbg !1639
  %conv287 = zext i32 %bf.lshr286 to i64, !dbg !1639
  %add288 = add i64 4, %conv287, !dbg !1639
  %177 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %178 = bitcast %struct.raxNode* %177 to i32*, !dbg !1639
  %bf.load289 = load i32, i32* %178, align 4, !dbg !1639
  %bf.lshr290 = lshr i32 %bf.load289, 3, !dbg !1639
  %add291 = add nsw i32 %bf.lshr290, 4, !dbg !1639
  %conv292 = sext i32 %add291 to i64, !dbg !1639
  %rem293 = urem i64 %conv292, 8, !dbg !1639
  %sub294 = sub i64 8, %rem293, !dbg !1639
  %and295 = and i64 %sub294, 7, !dbg !1639
  %add296 = add i64 %add288, %and295, !dbg !1639
  %179 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %180 = bitcast %struct.raxNode* %179 to i32*, !dbg !1639
  %bf.load297 = load i32, i32* %180, align 4, !dbg !1639
  %bf.lshr298 = lshr i32 %bf.load297, 2, !dbg !1639
  %bf.clear299 = and i32 %bf.lshr298, 1, !dbg !1639
  %tobool300 = icmp ne i32 %bf.clear299, 0, !dbg !1639
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1639

cond.true301:                                     ; preds = %while.end283
  br label %cond.end307, !dbg !1639

cond.false302:                                    ; preds = %while.end283
  %181 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %182 = bitcast %struct.raxNode* %181 to i32*, !dbg !1639
  %bf.load303 = load i32, i32* %182, align 4, !dbg !1639
  %bf.lshr304 = lshr i32 %bf.load303, 3, !dbg !1639
  %conv305 = zext i32 %bf.lshr304 to i64, !dbg !1639
  %mul306 = mul i64 8, %conv305, !dbg !1639
  br label %cond.end307, !dbg !1639

cond.end307:                                      ; preds = %cond.false302, %cond.true301
  %cond308 = phi i64 [ 8, %cond.true301 ], [ %mul306, %cond.false302 ], !dbg !1639
  %add309 = add i64 %add296, %cond308, !dbg !1639
  %183 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %184 = bitcast %struct.raxNode* %183 to i32*, !dbg !1639
  %bf.load310 = load i32, i32* %184, align 4, !dbg !1639
  %bf.clear311 = and i32 %bf.load310, 1, !dbg !1639
  %tobool312 = icmp ne i32 %bf.clear311, 0, !dbg !1639
  br i1 %tobool312, label %land.rhs313, label %land.end319, !dbg !1639

land.rhs313:                                      ; preds = %cond.end307
  %185 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %186 = bitcast %struct.raxNode* %185 to i32*, !dbg !1639
  %bf.load314 = load i32, i32* %186, align 4, !dbg !1639
  %bf.lshr315 = lshr i32 %bf.load314, 1, !dbg !1639
  %bf.clear316 = and i32 %bf.lshr315, 1, !dbg !1639
  %tobool317 = icmp ne i32 %bf.clear316, 0, !dbg !1639
  %lnot318 = xor i1 %tobool317, true, !dbg !1639
  br label %land.end319

land.end319:                                      ; preds = %land.rhs313, %cond.end307
  %187 = phi i1 [ false, %cond.end307 ], [ %lnot318, %land.rhs313 ], !dbg !1640
  %land.ext320 = zext i1 %187 to i32, !dbg !1639
  %conv321 = sext i32 %land.ext320 to i64, !dbg !1639
  %mul322 = mul i64 %conv321, 8, !dbg !1639
  %add323 = add i64 %add309, %mul322, !dbg !1639
  %add.ptr324 = getelementptr inbounds i8, i8* %174, i64 %add323, !dbg !1639
  %add.ptr325 = getelementptr inbounds i8, i8* %add.ptr324, i64 -8, !dbg !1639
  %188 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %189 = bitcast %struct.raxNode* %188 to i32*, !dbg !1639
  %bf.load326 = load i32, i32* %189, align 4, !dbg !1639
  %bf.clear327 = and i32 %bf.load326, 1, !dbg !1639
  %tobool328 = icmp ne i32 %bf.clear327, 0, !dbg !1639
  br i1 %tobool328, label %land.rhs329, label %land.end335, !dbg !1639

land.rhs329:                                      ; preds = %land.end319
  %190 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1639
  %191 = bitcast %struct.raxNode* %190 to i32*, !dbg !1639
  %bf.load330 = load i32, i32* %191, align 4, !dbg !1639
  %bf.lshr331 = lshr i32 %bf.load330, 1, !dbg !1639
  %bf.clear332 = and i32 %bf.lshr331, 1, !dbg !1639
  %tobool333 = icmp ne i32 %bf.clear332, 0, !dbg !1639
  %lnot334 = xor i1 %tobool333, true, !dbg !1639
  br label %land.end335

land.end335:                                      ; preds = %land.rhs329, %land.end319
  %192 = phi i1 [ false, %land.end319 ], [ %lnot334, %land.rhs329 ], !dbg !1640
  %193 = zext i1 %192 to i64, !dbg !1639
  %cond337 = select i1 %192, i64 8, i64 0, !dbg !1639
  %idx.neg338 = sub i64 0, %cond337, !dbg !1639
  %add.ptr339 = getelementptr inbounds i8, i8* %add.ptr325, i64 %idx.neg338, !dbg !1639
  %194 = bitcast i8* %add.ptr339 to %struct.raxNode**, !dbg !1639
  store %struct.raxNode** %194, %struct.raxNode*** %cp284, align 8, !dbg !1638
  %195 = load %struct.raxNode**, %struct.raxNode*** %cp284, align 8, !dbg !1641
  %196 = bitcast %struct.raxNode** %195 to i8*, !dbg !1642
  %197 = bitcast %struct.raxNode** %h to i8*, !dbg !1642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 8, i1 false), !dbg !1642
  %198 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1643
  %tobool340 = icmp ne %struct.raxNode* %198, null, !dbg !1643
  br i1 %tobool340, label %if.then341, label %if.else344, !dbg !1645

if.then341:                                       ; preds = %land.end335
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %parentlink342, metadata !1646, metadata !DIExpression()), !dbg !1648
  %199 = load %struct.raxNode*, %struct.raxNode** %parent69, align 8, !dbg !1649
  %200 = load %struct.raxNode*, %struct.raxNode** %start, align 8, !dbg !1650
  %call343 = call %struct.raxNode** @raxFindParentLink(%struct.raxNode* %199, %struct.raxNode* %200), !dbg !1651
  store %struct.raxNode** %call343, %struct.raxNode*** %parentlink342, align 8, !dbg !1648
  %201 = load %struct.raxNode**, %struct.raxNode*** %parentlink342, align 8, !dbg !1652
  %202 = bitcast %struct.raxNode** %201 to i8*, !dbg !1653
  %203 = bitcast %struct.raxNode** %new176 to i8*, !dbg !1653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 8, i1 false), !dbg !1653
  br label %if.end346, !dbg !1654

if.else344:                                       ; preds = %land.end335
  %204 = load %struct.raxNode*, %struct.raxNode** %new176, align 8, !dbg !1655
  %205 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1657
  %head345 = getelementptr inbounds %struct.rax, %struct.rax* %205, i32 0, i32 0, !dbg !1658
  store %struct.raxNode* %204, %struct.raxNode** %head345, align 8, !dbg !1659
  br label %if.end346

if.end346:                                        ; preds = %if.else344, %if.then341
  br label %if.end347, !dbg !1660

if.end347:                                        ; preds = %if.end346, %while.end165
  br label %if.end348, !dbg !1661

if.end348:                                        ; preds = %if.end347, %if.end66
  call void @raxStackFree(%struct.raxStack* %ts), !dbg !1662
  store i32 1, i32* %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

return:                                           ; preds = %if.end348, %if.then180, %if.then
  %206 = load i32, i32* %retval, align 4, !dbg !1664
  ret i32 %206, !dbg !1664
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxInsert(%struct.rax* %rax, i8* %s, i64 %len, i8* %data, i8** %old) #0 !dbg !1665 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %old.addr = alloca i8**, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1670, metadata !DIExpression()), !dbg !1671
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1672, metadata !DIExpression()), !dbg !1673
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i8** %old, i8*** %old.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %old.addr, metadata !1676, metadata !DIExpression()), !dbg !1677
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1678
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1679
  %2 = load i64, i64* %len.addr, align 8, !dbg !1680
  %3 = load i8*, i8** %data.addr, align 8, !dbg !1681
  %4 = load i8**, i8*** %old.addr, align 8, !dbg !1682
  %call = call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 1), !dbg !1683
  ret i32 %call, !dbg !1684
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxTryInsert(%struct.rax* %rax, i8* %s, i64 %len, i8* %data, i8** %old) #0 !dbg !1685 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %old.addr = alloca i8**, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1686, metadata !DIExpression()), !dbg !1687
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i8** %old, i8*** %old.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %old.addr, metadata !1694, metadata !DIExpression()), !dbg !1695
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1696
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1697
  %2 = load i64, i64* %len.addr, align 8, !dbg !1698
  %3 = load i8*, i8** %data.addr, align 8, !dbg !1699
  %4 = load i8**, i8*** %old.addr, align 8, !dbg !1700
  %call = call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 0), !dbg !1701
  ret i32 %call, !dbg !1702
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @raxFind(%struct.rax* %rax, i8* %s, i64 %len) #0 !dbg !1703 {
entry:
  %retval = alloca i8*, align 8
  %rax.addr = alloca %struct.rax*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %h = alloca %struct.raxNode*, align 8
  %splitpos = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1710, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.declare(metadata %struct.raxNode** %h, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata i32* %splitpos, metadata !1714, metadata !DIExpression()), !dbg !1715
  store i32 0, i32* %splitpos, align 4, !dbg !1715
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1716, metadata !DIExpression()), !dbg !1717
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !1718
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1719
  %2 = load i64, i64* %len.addr, align 8, !dbg !1720
  %call = call i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** %h, %struct.raxNode*** null, i32* %splitpos, %struct.raxStack* null), !dbg !1721
  store i64 %call, i64* %i, align 8, !dbg !1717
  %3 = load i64, i64* %i, align 8, !dbg !1722
  %4 = load i64, i64* %len.addr, align 8, !dbg !1724
  %cmp = icmp ne i64 %3, %4, !dbg !1725
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1726

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1727
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !1728
  %bf.load = load i32, i32* %6, align 4, !dbg !1728
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1728
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1728
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !1727
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false2, !dbg !1729

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, i32* %splitpos, align 4, !dbg !1730
  %cmp1 = icmp ne i32 %7, 0, !dbg !1731
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1732

lor.lhs.false2:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1733
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !1734
  %bf.load3 = load i32, i32* %9, align 4, !dbg !1734
  %bf.clear4 = and i32 %bf.load3, 1, !dbg !1734
  %tobool5 = icmp ne i32 %bf.clear4, 0, !dbg !1733
  br i1 %tobool5, label %if.end, label %if.then, !dbg !1735

if.then:                                          ; preds = %lor.lhs.false2, %land.lhs.true, %entry
  %10 = load i8*, i8** @raxNotFound, align 8, !dbg !1736
  store i8* %10, i8** %retval, align 8, !dbg !1737
  br label %return, !dbg !1737

if.end:                                           ; preds = %lor.lhs.false2
  %11 = load %struct.raxNode*, %struct.raxNode** %h, align 8, !dbg !1738
  %call6 = call i8* @raxGetData(%struct.raxNode* %11), !dbg !1739
  store i8* %call6, i8** %retval, align 8, !dbg !1740
  br label %return, !dbg !1740

return:                                           ; preds = %if.end, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !1741
  ret i8* %12, !dbg !1741
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode** @raxFindParentLink(%struct.raxNode* %parent, %struct.raxNode* %child) #0 !dbg !1742 {
entry:
  %parent.addr = alloca %struct.raxNode*, align 8
  %child.addr = alloca %struct.raxNode*, align 8
  %cp = alloca %struct.raxNode**, align 8
  %c = alloca %struct.raxNode*, align 8
  store %struct.raxNode* %parent, %struct.raxNode** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %parent.addr, metadata !1745, metadata !DIExpression()), !dbg !1746
  store %struct.raxNode* %child, %struct.raxNode** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child.addr, metadata !1747, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !1749, metadata !DIExpression()), !dbg !1750
  %0 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1751
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i32 0, i32 1, !dbg !1751
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !1751
  %1 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1751
  %2 = bitcast %struct.raxNode* %1 to i32*, !dbg !1751
  %bf.load = load i32, i32* %2, align 4, !dbg !1751
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !1751
  %idx.ext = sext i32 %bf.lshr to i64, !dbg !1751
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !1751
  %3 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1751
  %4 = bitcast %struct.raxNode* %3 to i32*, !dbg !1751
  %bf.load1 = load i32, i32* %4, align 4, !dbg !1751
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !1751
  %add = add nsw i32 %bf.lshr2, 4, !dbg !1751
  %conv = sext i32 %add to i64, !dbg !1751
  %rem = urem i64 %conv, 8, !dbg !1751
  %sub = sub i64 8, %rem, !dbg !1751
  %and = and i64 %sub, 7, !dbg !1751
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %and, !dbg !1751
  %5 = bitcast i8* %add.ptr3 to %struct.raxNode**, !dbg !1751
  store %struct.raxNode** %5, %struct.raxNode*** %cp, align 8, !dbg !1750
  call void @llvm.dbg.declare(metadata %struct.raxNode** %c, metadata !1752, metadata !DIExpression()), !dbg !1753
  br label %while.body, !dbg !1754

while.body:                                       ; preds = %entry, %if.end
  %6 = bitcast %struct.raxNode** %c to i8*, !dbg !1755
  %7 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1757
  %8 = bitcast %struct.raxNode** %7 to i8*, !dbg !1755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %8, i64 8, i1 false), !dbg !1755
  %9 = load %struct.raxNode*, %struct.raxNode** %c, align 8, !dbg !1758
  %10 = load %struct.raxNode*, %struct.raxNode** %child.addr, align 8, !dbg !1760
  %cmp = icmp eq %struct.raxNode* %9, %10, !dbg !1761
  br i1 %cmp, label %if.then, label %if.end, !dbg !1762

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !1763

if.end:                                           ; preds = %while.body
  %11 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1764
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %11, i32 1, !dbg !1764
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp, align 8, !dbg !1764
  br label %while.body, !dbg !1754, !llvm.loop !1765

while.end:                                        ; preds = %if.then
  %12 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1767
  ret %struct.raxNode** %12, !dbg !1768
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.raxNode* @raxRemoveChild(%struct.raxNode* %parent, %struct.raxNode* %child) #0 !dbg !1769 {
entry:
  %retval = alloca %struct.raxNode*, align 8
  %parent.addr = alloca %struct.raxNode*, align 8
  %child.addr = alloca %struct.raxNode*, align 8
  %data = alloca i8*, align 8
  %cp = alloca %struct.raxNode**, align 8
  %c = alloca %struct.raxNode**, align 8
  %e = alloca i8*, align 8
  %aux = alloca %struct.raxNode*, align 8
  %taillen = alloca i32, align 4
  %shift = alloca i64, align 8
  %valuelen = alloca i64, align 8
  %newnode = alloca %struct.raxNode*, align 8
  store %struct.raxNode* %parent, %struct.raxNode** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %parent.addr, metadata !1772, metadata !DIExpression()), !dbg !1773
  store %struct.raxNode* %child, %struct.raxNode** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child.addr, metadata !1774, metadata !DIExpression()), !dbg !1775
  %0 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1776
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !1778
  %bf.load = load i32, i32* %1, align 4, !dbg !1778
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1778
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1778
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !1776
  br i1 %tobool, label %if.then, label %if.end16, !dbg !1779

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %data, metadata !1780, metadata !DIExpression()), !dbg !1782
  store i8* null, i8** %data, align 8, !dbg !1782
  %2 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1783
  %3 = bitcast %struct.raxNode* %2 to i32*, !dbg !1785
  %bf.load1 = load i32, i32* %3, align 4, !dbg !1785
  %bf.clear2 = and i32 %bf.load1, 1, !dbg !1785
  %tobool3 = icmp ne i32 %bf.clear2, 0, !dbg !1783
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1786

if.then4:                                         ; preds = %if.then
  %4 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1787
  %call = call i8* @raxGetData(%struct.raxNode* %4), !dbg !1788
  store i8* %call, i8** %data, align 8, !dbg !1789
  br label %if.end, !dbg !1790

if.end:                                           ; preds = %if.then4, %if.then
  %5 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1791
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !1792
  %bf.load5 = load i32, i32* %6, align 4, !dbg !1793
  %bf.clear6 = and i32 %bf.load5, -3, !dbg !1793
  store i32 %bf.clear6, i32* %6, align 4, !dbg !1793
  %7 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1794
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !1795
  %bf.load7 = load i32, i32* %8, align 4, !dbg !1796
  %bf.clear8 = and i32 %bf.load7, -5, !dbg !1796
  store i32 %bf.clear8, i32* %8, align 4, !dbg !1796
  %9 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1797
  %10 = bitcast %struct.raxNode* %9 to i32*, !dbg !1798
  %bf.load9 = load i32, i32* %10, align 4, !dbg !1799
  %bf.clear10 = and i32 %bf.load9, 7, !dbg !1799
  store i32 %bf.clear10, i32* %10, align 4, !dbg !1799
  %11 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1800
  %12 = bitcast %struct.raxNode* %11 to i32*, !dbg !1802
  %bf.load11 = load i32, i32* %12, align 4, !dbg !1802
  %bf.clear12 = and i32 %bf.load11, 1, !dbg !1802
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !1800
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1803

if.then14:                                        ; preds = %if.end
  %13 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1804
  %14 = load i8*, i8** %data, align 8, !dbg !1805
  call void @raxSetData(%struct.raxNode* %13, i8* %14), !dbg !1806
  br label %if.end15, !dbg !1806

if.end15:                                         ; preds = %if.then14, %if.end
  %15 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1807
  store %struct.raxNode* %15, %struct.raxNode** %retval, align 8, !dbg !1808
  br label %return, !dbg !1808

if.end16:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !1809, metadata !DIExpression()), !dbg !1810
  %16 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1811
  %data17 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %16, i32 0, i32 1, !dbg !1811
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data17, i64 0, i64 0, !dbg !1811
  %17 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1811
  %18 = bitcast %struct.raxNode* %17 to i32*, !dbg !1811
  %bf.load18 = load i32, i32* %18, align 4, !dbg !1811
  %bf.lshr19 = lshr i32 %bf.load18, 3, !dbg !1811
  %idx.ext = sext i32 %bf.lshr19 to i64, !dbg !1811
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !1811
  %19 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1811
  %20 = bitcast %struct.raxNode* %19 to i32*, !dbg !1811
  %bf.load20 = load i32, i32* %20, align 4, !dbg !1811
  %bf.lshr21 = lshr i32 %bf.load20, 3, !dbg !1811
  %add = add nsw i32 %bf.lshr21, 4, !dbg !1811
  %conv = sext i32 %add to i64, !dbg !1811
  %rem = urem i64 %conv, 8, !dbg !1811
  %sub = sub i64 8, %rem, !dbg !1811
  %and = and i64 %sub, 7, !dbg !1811
  %add.ptr22 = getelementptr inbounds i8, i8* %add.ptr, i64 %and, !dbg !1811
  %21 = bitcast i8* %add.ptr22 to %struct.raxNode**, !dbg !1811
  store %struct.raxNode** %21, %struct.raxNode*** %cp, align 8, !dbg !1810
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %c, metadata !1812, metadata !DIExpression()), !dbg !1813
  %22 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1814
  store %struct.raxNode** %22, %struct.raxNode*** %c, align 8, !dbg !1813
  call void @llvm.dbg.declare(metadata i8** %e, metadata !1815, metadata !DIExpression()), !dbg !1816
  %23 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1817
  %data23 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %23, i32 0, i32 1, !dbg !1818
  %arraydecay24 = getelementptr inbounds [0 x i8], [0 x i8]* %data23, i64 0, i64 0, !dbg !1817
  store i8* %arraydecay24, i8** %e, align 8, !dbg !1816
  br label %while.body, !dbg !1819

while.body:                                       ; preds = %if.end16, %if.end27
  call void @llvm.dbg.declare(metadata %struct.raxNode** %aux, metadata !1820, metadata !DIExpression()), !dbg !1822
  %24 = bitcast %struct.raxNode** %aux to i8*, !dbg !1823
  %25 = load %struct.raxNode**, %struct.raxNode*** %c, align 8, !dbg !1824
  %26 = bitcast %struct.raxNode** %25 to i8*, !dbg !1823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %26, i64 8, i1 false), !dbg !1823
  %27 = load %struct.raxNode*, %struct.raxNode** %aux, align 8, !dbg !1825
  %28 = load %struct.raxNode*, %struct.raxNode** %child.addr, align 8, !dbg !1827
  %cmp = icmp eq %struct.raxNode* %27, %28, !dbg !1828
  br i1 %cmp, label %if.then26, label %if.end27, !dbg !1829

if.then26:                                        ; preds = %while.body
  br label %while.end, !dbg !1830

if.end27:                                         ; preds = %while.body
  %29 = load %struct.raxNode**, %struct.raxNode*** %c, align 8, !dbg !1831
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %29, i32 1, !dbg !1831
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %c, align 8, !dbg !1831
  %30 = load i8*, i8** %e, align 8, !dbg !1832
  %incdec.ptr28 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !1832
  store i8* %incdec.ptr28, i8** %e, align 8, !dbg !1832
  br label %while.body, !dbg !1819, !llvm.loop !1833

while.end:                                        ; preds = %if.then26
  call void @llvm.dbg.declare(metadata i32* %taillen, metadata !1835, metadata !DIExpression()), !dbg !1836
  %31 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1837
  %32 = bitcast %struct.raxNode* %31 to i32*, !dbg !1838
  %bf.load29 = load i32, i32* %32, align 4, !dbg !1838
  %bf.lshr30 = lshr i32 %bf.load29, 3, !dbg !1838
  %conv31 = zext i32 %bf.lshr30 to i64, !dbg !1837
  %33 = load i8*, i8** %e, align 8, !dbg !1839
  %34 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1840
  %data32 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %34, i32 0, i32 1, !dbg !1841
  %arraydecay33 = getelementptr inbounds [0 x i8], [0 x i8]* %data32, i64 0, i64 0, !dbg !1840
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64, !dbg !1842
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay33 to i64, !dbg !1842
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1842
  %sub34 = sub nsw i64 %conv31, %sub.ptr.sub, !dbg !1843
  %sub35 = sub nsw i64 %sub34, 1, !dbg !1844
  %conv36 = trunc i64 %sub35 to i32, !dbg !1837
  store i32 %conv36, i32* %taillen, align 4, !dbg !1836
  %35 = load i8*, i8** %e, align 8, !dbg !1845
  %36 = load i8*, i8** %e, align 8, !dbg !1846
  %add.ptr37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1847
  %37 = load i32, i32* %taillen, align 4, !dbg !1848
  %conv38 = sext i32 %37 to i64, !dbg !1848
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %add.ptr37, i64 %conv38, i1 false), !dbg !1849
  call void @llvm.dbg.declare(metadata i64* %shift, metadata !1850, metadata !DIExpression()), !dbg !1851
  %38 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1852
  %39 = bitcast %struct.raxNode* %38 to i32*, !dbg !1853
  %bf.load39 = load i32, i32* %39, align 4, !dbg !1853
  %bf.lshr40 = lshr i32 %bf.load39, 3, !dbg !1853
  %add41 = add nsw i32 %bf.lshr40, 4, !dbg !1854
  %conv42 = sext i32 %add41 to i64, !dbg !1855
  %rem43 = urem i64 %conv42, 8, !dbg !1856
  %cmp44 = icmp eq i64 %rem43, 1, !dbg !1857
  %40 = zext i1 %cmp44 to i64, !dbg !1858
  %cond = select i1 %cmp44, i64 8, i64 0, !dbg !1858
  store i64 %cond, i64* %shift, align 8, !dbg !1851
  %41 = load i64, i64* %shift, align 8, !dbg !1859
  %tobool46 = icmp ne i64 %41, 0, !dbg !1859
  br i1 %tobool46, label %if.then47, label %if.end54, !dbg !1861

if.then47:                                        ; preds = %while.end
  %42 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1862
  %43 = bitcast %struct.raxNode** %42 to i8*, !dbg !1863
  %44 = load i64, i64* %shift, align 8, !dbg !1864
  %idx.neg = sub i64 0, %44, !dbg !1865
  %add.ptr48 = getelementptr inbounds i8, i8* %43, i64 %idx.neg, !dbg !1865
  %45 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !1866
  %46 = bitcast %struct.raxNode** %45 to i8*, !dbg !1867
  %47 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1868
  %48 = bitcast %struct.raxNode* %47 to i32*, !dbg !1869
  %bf.load49 = load i32, i32* %48, align 4, !dbg !1869
  %bf.lshr50 = lshr i32 %bf.load49, 3, !dbg !1869
  %49 = load i32, i32* %taillen, align 4, !dbg !1870
  %sub51 = sub nsw i32 %bf.lshr50, %49, !dbg !1871
  %sub52 = sub nsw i32 %sub51, 1, !dbg !1872
  %conv53 = sext i32 %sub52 to i64, !dbg !1873
  %mul = mul i64 %conv53, 8, !dbg !1874
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr48, i8* align 8 %46, i64 %mul, i1 false), !dbg !1867
  br label %if.end54, !dbg !1867

if.end54:                                         ; preds = %if.then47, %while.end
  call void @llvm.dbg.declare(metadata i64* %valuelen, metadata !1875, metadata !DIExpression()), !dbg !1876
  %50 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1877
  %51 = bitcast %struct.raxNode* %50 to i32*, !dbg !1878
  %bf.load55 = load i32, i32* %51, align 4, !dbg !1878
  %bf.clear56 = and i32 %bf.load55, 1, !dbg !1878
  %tobool57 = icmp ne i32 %bf.clear56, 0, !dbg !1877
  br i1 %tobool57, label %land.rhs, label %land.end, !dbg !1879

land.rhs:                                         ; preds = %if.end54
  %52 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1880
  %53 = bitcast %struct.raxNode* %52 to i32*, !dbg !1881
  %bf.load58 = load i32, i32* %53, align 4, !dbg !1881
  %bf.lshr59 = lshr i32 %bf.load58, 1, !dbg !1881
  %bf.clear60 = and i32 %bf.lshr59, 1, !dbg !1881
  %tobool61 = icmp ne i32 %bf.clear60, 0, !dbg !1882
  %lnot = xor i1 %tobool61, true, !dbg !1882
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end54
  %54 = phi i1 [ false, %if.end54 ], [ %lnot, %land.rhs ], !dbg !1883
  %55 = zext i1 %54 to i64, !dbg !1884
  %cond62 = select i1 %54, i64 8, i64 0, !dbg !1884
  store i64 %cond62, i64* %valuelen, align 8, !dbg !1876
  %56 = load %struct.raxNode**, %struct.raxNode*** %c, align 8, !dbg !1885
  %57 = bitcast %struct.raxNode** %56 to i8*, !dbg !1886
  %58 = load i64, i64* %shift, align 8, !dbg !1887
  %idx.neg63 = sub i64 0, %58, !dbg !1888
  %add.ptr64 = getelementptr inbounds i8, i8* %57, i64 %idx.neg63, !dbg !1888
  %59 = load %struct.raxNode**, %struct.raxNode*** %c, align 8, !dbg !1889
  %add.ptr65 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %59, i64 1, !dbg !1890
  %60 = bitcast %struct.raxNode** %add.ptr65 to i8*, !dbg !1891
  %61 = load i32, i32* %taillen, align 4, !dbg !1892
  %conv66 = sext i32 %61 to i64, !dbg !1892
  %mul67 = mul i64 %conv66, 8, !dbg !1893
  %62 = load i64, i64* %valuelen, align 8, !dbg !1894
  %add68 = add i64 %mul67, %62, !dbg !1895
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr64, i8* align 8 %60, i64 %add68, i1 false), !dbg !1891
  %63 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1896
  %64 = bitcast %struct.raxNode* %63 to i32*, !dbg !1897
  %bf.load69 = load i32, i32* %64, align 4, !dbg !1898
  %bf.lshr70 = lshr i32 %bf.load69, 3, !dbg !1898
  %dec = add i32 %bf.lshr70, -1, !dbg !1898
  %bf.load71 = load i32, i32* %64, align 4, !dbg !1898
  %bf.value = and i32 %dec, 536870911, !dbg !1898
  %bf.shl = shl i32 %bf.value, 3, !dbg !1898
  %bf.clear72 = and i32 %bf.load71, 7, !dbg !1898
  %bf.set = or i32 %bf.clear72, %bf.shl, !dbg !1898
  store i32 %bf.set, i32* %64, align 4, !dbg !1898
  call void @llvm.dbg.declare(metadata %struct.raxNode** %newnode, metadata !1899, metadata !DIExpression()), !dbg !1900
  %65 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1901
  %66 = bitcast %struct.raxNode* %65 to i8*, !dbg !1901
  %67 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %68 = bitcast %struct.raxNode* %67 to i32*, !dbg !1902
  %bf.load73 = load i32, i32* %68, align 4, !dbg !1902
  %bf.lshr74 = lshr i32 %bf.load73, 3, !dbg !1902
  %conv75 = zext i32 %bf.lshr74 to i64, !dbg !1902
  %add76 = add i64 4, %conv75, !dbg !1902
  %69 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %70 = bitcast %struct.raxNode* %69 to i32*, !dbg !1902
  %bf.load77 = load i32, i32* %70, align 4, !dbg !1902
  %bf.lshr78 = lshr i32 %bf.load77, 3, !dbg !1902
  %add79 = add nsw i32 %bf.lshr78, 4, !dbg !1902
  %conv80 = sext i32 %add79 to i64, !dbg !1902
  %rem81 = urem i64 %conv80, 8, !dbg !1902
  %sub82 = sub i64 8, %rem81, !dbg !1902
  %and83 = and i64 %sub82, 7, !dbg !1902
  %add84 = add i64 %add76, %and83, !dbg !1902
  %71 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %72 = bitcast %struct.raxNode* %71 to i32*, !dbg !1902
  %bf.load85 = load i32, i32* %72, align 4, !dbg !1902
  %bf.lshr86 = lshr i32 %bf.load85, 2, !dbg !1902
  %bf.clear87 = and i32 %bf.lshr86, 1, !dbg !1902
  %tobool88 = icmp ne i32 %bf.clear87, 0, !dbg !1902
  br i1 %tobool88, label %cond.true, label %cond.false, !dbg !1902

cond.true:                                        ; preds = %land.end
  br label %cond.end, !dbg !1902

cond.false:                                       ; preds = %land.end
  %73 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %74 = bitcast %struct.raxNode* %73 to i32*, !dbg !1902
  %bf.load89 = load i32, i32* %74, align 4, !dbg !1902
  %bf.lshr90 = lshr i32 %bf.load89, 3, !dbg !1902
  %conv91 = zext i32 %bf.lshr90 to i64, !dbg !1902
  %mul92 = mul i64 8, %conv91, !dbg !1902
  br label %cond.end, !dbg !1902

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond93 = phi i64 [ 8, %cond.true ], [ %mul92, %cond.false ], !dbg !1902
  %add94 = add i64 %add84, %cond93, !dbg !1902
  %75 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %76 = bitcast %struct.raxNode* %75 to i32*, !dbg !1902
  %bf.load95 = load i32, i32* %76, align 4, !dbg !1902
  %bf.clear96 = and i32 %bf.load95, 1, !dbg !1902
  %tobool97 = icmp ne i32 %bf.clear96, 0, !dbg !1902
  br i1 %tobool97, label %land.rhs98, label %land.end104, !dbg !1902

land.rhs98:                                       ; preds = %cond.end
  %77 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1902
  %78 = bitcast %struct.raxNode* %77 to i32*, !dbg !1902
  %bf.load99 = load i32, i32* %78, align 4, !dbg !1902
  %bf.lshr100 = lshr i32 %bf.load99, 1, !dbg !1902
  %bf.clear101 = and i32 %bf.lshr100, 1, !dbg !1902
  %tobool102 = icmp ne i32 %bf.clear101, 0, !dbg !1902
  %lnot103 = xor i1 %tobool102, true, !dbg !1902
  br label %land.end104

land.end104:                                      ; preds = %land.rhs98, %cond.end
  %79 = phi i1 [ false, %cond.end ], [ %lnot103, %land.rhs98 ], !dbg !1883
  %land.ext = zext i1 %79 to i32, !dbg !1902
  %conv105 = sext i32 %land.ext to i64, !dbg !1902
  %mul106 = mul i64 %conv105, 8, !dbg !1902
  %add107 = add i64 %add94, %mul106, !dbg !1902
  %call108 = call i8* @zrealloc(i8* %66, i64 %add107), !dbg !1903
  %80 = bitcast i8* %call108 to %struct.raxNode*, !dbg !1903
  store %struct.raxNode* %80, %struct.raxNode** %newnode, align 8, !dbg !1900
  %81 = load %struct.raxNode*, %struct.raxNode** %newnode, align 8, !dbg !1904
  %tobool109 = icmp ne %struct.raxNode* %81, null, !dbg !1904
  br i1 %tobool109, label %if.then110, label %if.end111, !dbg !1906

if.then110:                                       ; preds = %land.end104
  br label %if.end111, !dbg !1907

if.end111:                                        ; preds = %if.then110, %land.end104
  %82 = load %struct.raxNode*, %struct.raxNode** %newnode, align 8, !dbg !1909
  %tobool112 = icmp ne %struct.raxNode* %82, null, !dbg !1909
  br i1 %tobool112, label %cond.true113, label %cond.false114, !dbg !1909

cond.true113:                                     ; preds = %if.end111
  %83 = load %struct.raxNode*, %struct.raxNode** %newnode, align 8, !dbg !1910
  br label %cond.end115, !dbg !1909

cond.false114:                                    ; preds = %if.end111
  %84 = load %struct.raxNode*, %struct.raxNode** %parent.addr, align 8, !dbg !1911
  br label %cond.end115, !dbg !1909

cond.end115:                                      ; preds = %cond.false114, %cond.true113
  %cond116 = phi %struct.raxNode* [ %83, %cond.true113 ], [ %84, %cond.false114 ], !dbg !1909
  store %struct.raxNode* %cond116, %struct.raxNode** %retval, align 8, !dbg !1912
  br label %return, !dbg !1912

return:                                           ; preds = %cond.end115, %if.end15
  %85 = load %struct.raxNode*, %struct.raxNode** %retval, align 8, !dbg !1913
  ret %struct.raxNode* %85, !dbg !1913
}

; Function Attrs: noinline nounwind uwtable
define internal void @raxStackInit(%struct.raxStack* %ts) #0 !dbg !1914 {
entry:
  %ts.addr = alloca %struct.raxStack*, align 8
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !1917, metadata !DIExpression()), !dbg !1918
  %0 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1919
  %static_items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i32 0, i32 3, !dbg !1920
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %static_items, i64 0, i64 0, !dbg !1919
  %1 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1921
  %stack = getelementptr inbounds %struct.raxStack, %struct.raxStack* %1, i32 0, i32 0, !dbg !1922
  store i8** %arraydecay, i8*** %stack, align 8, !dbg !1923
  %2 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1924
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %2, i32 0, i32 1, !dbg !1925
  store i64 0, i64* %items, align 8, !dbg !1926
  %3 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1927
  %maxitems = getelementptr inbounds %struct.raxStack, %struct.raxStack* %3, i32 0, i32 2, !dbg !1928
  store i64 32, i64* %maxitems, align 8, !dbg !1929
  %4 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1930
  %oom = getelementptr inbounds %struct.raxStack, %struct.raxStack* %4, i32 0, i32 4, !dbg !1931
  store i32 0, i32* %oom, align 8, !dbg !1932
  ret void, !dbg !1933
}

; Function Attrs: noinline nounwind uwtable
define internal void @raxStackFree(%struct.raxStack* %ts) #0 !dbg !1934 {
entry:
  %ts.addr = alloca %struct.raxStack*, align 8
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !1935, metadata !DIExpression()), !dbg !1936
  %0 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1937
  %stack = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i32 0, i32 0, !dbg !1939
  %1 = load i8**, i8*** %stack, align 8, !dbg !1939
  %2 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1940
  %static_items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %2, i32 0, i32 3, !dbg !1941
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %static_items, i64 0, i64 0, !dbg !1940
  %cmp = icmp ne i8** %1, %arraydecay, !dbg !1942
  br i1 %cmp, label %if.then, label %if.end, !dbg !1943

if.then:                                          ; preds = %entry
  %3 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1944
  %stack1 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %3, i32 0, i32 0, !dbg !1945
  %4 = load i8**, i8*** %stack1, align 8, !dbg !1945
  %5 = bitcast i8** %4 to i8*, !dbg !1944
  call void @zfree(i8* %5), !dbg !1946
  br label %if.end, !dbg !1946

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1947
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @raxStackPop(%struct.raxStack* %ts) #0 !dbg !1948 {
entry:
  %retval = alloca i8*, align 8
  %ts.addr = alloca %struct.raxStack*, align 8
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !1951, metadata !DIExpression()), !dbg !1952
  %0 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1953
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i32 0, i32 1, !dbg !1955
  %1 = load i64, i64* %items, align 8, !dbg !1955
  %cmp = icmp eq i64 %1, 0, !dbg !1956
  br i1 %cmp, label %if.then, label %if.end, !dbg !1957

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1958
  br label %return, !dbg !1958

if.end:                                           ; preds = %entry
  %2 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1959
  %items1 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %2, i32 0, i32 1, !dbg !1960
  %3 = load i64, i64* %items1, align 8, !dbg !1961
  %dec = add i64 %3, -1, !dbg !1961
  store i64 %dec, i64* %items1, align 8, !dbg !1961
  %4 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1962
  %stack = getelementptr inbounds %struct.raxStack, %struct.raxStack* %4, i32 0, i32 0, !dbg !1963
  %5 = load i8**, i8*** %stack, align 8, !dbg !1963
  %6 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1964
  %items2 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i32 0, i32 1, !dbg !1965
  %7 = load i64, i64* %items2, align 8, !dbg !1965
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %7, !dbg !1962
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !1962
  store i8* %8, i8** %retval, align 8, !dbg !1966
  br label %return, !dbg !1966

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !1967
  ret i8* %9, !dbg !1967
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @raxStackPeek(%struct.raxStack* %ts) #0 !dbg !1968 {
entry:
  %retval = alloca i8*, align 8
  %ts.addr = alloca %struct.raxStack*, align 8
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !1969, metadata !DIExpression()), !dbg !1970
  %0 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1971
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i32 0, i32 1, !dbg !1973
  %1 = load i64, i64* %items, align 8, !dbg !1973
  %cmp = icmp eq i64 %1, 0, !dbg !1974
  br i1 %cmp, label %if.then, label %if.end, !dbg !1975

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1976
  br label %return, !dbg !1976

if.end:                                           ; preds = %entry
  %2 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1977
  %stack = getelementptr inbounds %struct.raxStack, %struct.raxStack* %2, i32 0, i32 0, !dbg !1978
  %3 = load i8**, i8*** %stack, align 8, !dbg !1978
  %4 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !1979
  %items1 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %4, i32 0, i32 1, !dbg !1980
  %5 = load i64, i64* %items1, align 8, !dbg !1980
  %sub = sub i64 %5, 1, !dbg !1981
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %sub, !dbg !1977
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !1977
  store i8* %6, i8** %retval, align 8, !dbg !1982
  br label %return, !dbg !1982

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !1983
  ret i8* %7, !dbg !1983
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxRecursiveFree(%struct.rax* %rax, %struct.raxNode* %n, void (i8*)* %free_callback) #0 !dbg !1984 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %free_callback.addr = alloca void (i8*)*, align 8
  %numchildren = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %child = alloca %struct.raxNode*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  store void (i8*)* %free_callback, void (i8*)** %free_callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %free_callback.addr, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.declare(metadata i32* %numchildren, metadata !1996, metadata !DIExpression()), !dbg !1997
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !1998
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !1999
  %bf.load = load i32, i32* %1, align 4, !dbg !1999
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !1999
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1999
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !1998
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1998

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1998

cond.false:                                       ; preds = %entry
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2000
  %3 = bitcast %struct.raxNode* %2 to i32*, !dbg !2001
  %bf.load1 = load i32, i32* %3, align 4, !dbg !2001
  %bf.lshr2 = lshr i32 %bf.load1, 3, !dbg !2001
  br label %cond.end, !dbg !1998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %bf.lshr2, %cond.false ], !dbg !1998
  store i32 %cond, i32* %numchildren, align 4, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !2002, metadata !DIExpression()), !dbg !2003
  %4 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %5 = bitcast %struct.raxNode* %4 to i8*, !dbg !2004
  %6 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %7 = bitcast %struct.raxNode* %6 to i32*, !dbg !2004
  %bf.load3 = load i32, i32* %7, align 4, !dbg !2004
  %bf.lshr4 = lshr i32 %bf.load3, 3, !dbg !2004
  %conv = zext i32 %bf.lshr4 to i64, !dbg !2004
  %add = add i64 4, %conv, !dbg !2004
  %8 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %9 = bitcast %struct.raxNode* %8 to i32*, !dbg !2004
  %bf.load5 = load i32, i32* %9, align 4, !dbg !2004
  %bf.lshr6 = lshr i32 %bf.load5, 3, !dbg !2004
  %add7 = add nsw i32 %bf.lshr6, 4, !dbg !2004
  %conv8 = sext i32 %add7 to i64, !dbg !2004
  %rem = urem i64 %conv8, 8, !dbg !2004
  %sub = sub i64 8, %rem, !dbg !2004
  %and = and i64 %sub, 7, !dbg !2004
  %add9 = add i64 %add, %and, !dbg !2004
  %10 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !2004
  %bf.load10 = load i32, i32* %11, align 4, !dbg !2004
  %bf.lshr11 = lshr i32 %bf.load10, 2, !dbg !2004
  %bf.clear12 = and i32 %bf.lshr11, 1, !dbg !2004
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !2004
  br i1 %tobool13, label %cond.true14, label %cond.false15, !dbg !2004

cond.true14:                                      ; preds = %cond.end
  br label %cond.end19, !dbg !2004

cond.false15:                                     ; preds = %cond.end
  %12 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !2004
  %bf.load16 = load i32, i32* %13, align 4, !dbg !2004
  %bf.lshr17 = lshr i32 %bf.load16, 3, !dbg !2004
  %conv18 = zext i32 %bf.lshr17 to i64, !dbg !2004
  %mul = mul i64 8, %conv18, !dbg !2004
  br label %cond.end19, !dbg !2004

cond.end19:                                       ; preds = %cond.false15, %cond.true14
  %cond20 = phi i64 [ 8, %cond.true14 ], [ %mul, %cond.false15 ], !dbg !2004
  %add21 = add i64 %add9, %cond20, !dbg !2004
  %14 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %15 = bitcast %struct.raxNode* %14 to i32*, !dbg !2004
  %bf.load22 = load i32, i32* %15, align 4, !dbg !2004
  %bf.clear23 = and i32 %bf.load22, 1, !dbg !2004
  %tobool24 = icmp ne i32 %bf.clear23, 0, !dbg !2004
  br i1 %tobool24, label %land.rhs, label %land.end, !dbg !2004

land.rhs:                                         ; preds = %cond.end19
  %16 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %17 = bitcast %struct.raxNode* %16 to i32*, !dbg !2004
  %bf.load25 = load i32, i32* %17, align 4, !dbg !2004
  %bf.lshr26 = lshr i32 %bf.load25, 1, !dbg !2004
  %bf.clear27 = and i32 %bf.lshr26, 1, !dbg !2004
  %tobool28 = icmp ne i32 %bf.clear27, 0, !dbg !2004
  %lnot = xor i1 %tobool28, true, !dbg !2004
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end19
  %18 = phi i1 [ false, %cond.end19 ], [ %lnot, %land.rhs ], !dbg !2005
  %land.ext = zext i1 %18 to i32, !dbg !2004
  %conv29 = sext i32 %land.ext to i64, !dbg !2004
  %mul30 = mul i64 %conv29, 8, !dbg !2004
  %add31 = add i64 %add21, %mul30, !dbg !2004
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %add31, !dbg !2004
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !2004
  %19 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %20 = bitcast %struct.raxNode* %19 to i32*, !dbg !2004
  %bf.load33 = load i32, i32* %20, align 4, !dbg !2004
  %bf.clear34 = and i32 %bf.load33, 1, !dbg !2004
  %tobool35 = icmp ne i32 %bf.clear34, 0, !dbg !2004
  br i1 %tobool35, label %land.rhs36, label %land.end42, !dbg !2004

land.rhs36:                                       ; preds = %land.end
  %21 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2004
  %22 = bitcast %struct.raxNode* %21 to i32*, !dbg !2004
  %bf.load37 = load i32, i32* %22, align 4, !dbg !2004
  %bf.lshr38 = lshr i32 %bf.load37, 1, !dbg !2004
  %bf.clear39 = and i32 %bf.lshr38, 1, !dbg !2004
  %tobool40 = icmp ne i32 %bf.clear39, 0, !dbg !2004
  %lnot41 = xor i1 %tobool40, true, !dbg !2004
  br label %land.end42

land.end42:                                       ; preds = %land.rhs36, %land.end
  %23 = phi i1 [ false, %land.end ], [ %lnot41, %land.rhs36 ], !dbg !2005
  %24 = zext i1 %23 to i64, !dbg !2004
  %cond44 = select i1 %23, i64 8, i64 0, !dbg !2004
  %idx.neg = sub i64 0, %cond44, !dbg !2004
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr32, i64 %idx.neg, !dbg !2004
  %25 = bitcast i8* %add.ptr45 to %struct.raxNode**, !dbg !2004
  store %struct.raxNode** %25, %struct.raxNode*** %cp, align 8, !dbg !2003
  br label %while.cond, !dbg !2006

while.cond:                                       ; preds = %while.body, %land.end42
  %26 = load i32, i32* %numchildren, align 4, !dbg !2007
  %dec = add nsw i32 %26, -1, !dbg !2007
  store i32 %dec, i32* %numchildren, align 4, !dbg !2007
  %tobool46 = icmp ne i32 %26, 0, !dbg !2006
  br i1 %tobool46, label %while.body, label %while.end, !dbg !2006

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !2008, metadata !DIExpression()), !dbg !2010
  %27 = bitcast %struct.raxNode** %child to i8*, !dbg !2011
  %28 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2012
  %29 = bitcast %struct.raxNode** %28 to i8*, !dbg !2011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %29, i64 8, i1 false), !dbg !2011
  %30 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2013
  %31 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !2014
  %32 = load void (i8*)*, void (i8*)** %free_callback.addr, align 8, !dbg !2015
  call void @raxRecursiveFree(%struct.rax* %30, %struct.raxNode* %31, void (i8*)* %32), !dbg !2016
  %33 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2017
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %33, i32 -1, !dbg !2017
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp, align 8, !dbg !2017
  br label %while.cond, !dbg !2006, !llvm.loop !2018

while.end:                                        ; preds = %while.cond
  %34 = load void (i8*)*, void (i8*)** %free_callback.addr, align 8, !dbg !2020
  %tobool47 = icmp ne void (i8*)* %34, null, !dbg !2020
  br i1 %tobool47, label %land.lhs.true, label %if.end, !dbg !2022

land.lhs.true:                                    ; preds = %while.end
  %35 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2023
  %36 = bitcast %struct.raxNode* %35 to i32*, !dbg !2024
  %bf.load48 = load i32, i32* %36, align 4, !dbg !2024
  %bf.clear49 = and i32 %bf.load48, 1, !dbg !2024
  %tobool50 = icmp ne i32 %bf.clear49, 0, !dbg !2023
  br i1 %tobool50, label %land.lhs.true51, label %if.end, !dbg !2025

land.lhs.true51:                                  ; preds = %land.lhs.true
  %37 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2026
  %38 = bitcast %struct.raxNode* %37 to i32*, !dbg !2027
  %bf.load52 = load i32, i32* %38, align 4, !dbg !2027
  %bf.lshr53 = lshr i32 %bf.load52, 1, !dbg !2027
  %bf.clear54 = and i32 %bf.lshr53, 1, !dbg !2027
  %tobool55 = icmp ne i32 %bf.clear54, 0, !dbg !2026
  br i1 %tobool55, label %if.end, label %if.then, !dbg !2028

if.then:                                          ; preds = %land.lhs.true51
  %39 = load void (i8*)*, void (i8*)** %free_callback.addr, align 8, !dbg !2029
  %40 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2030
  %call = call i8* @raxGetData(%struct.raxNode* %40), !dbg !2031
  call void %39(i8* %call), !dbg !2029
  br label %if.end, !dbg !2029

if.end:                                           ; preds = %if.then, %land.lhs.true51, %land.lhs.true, %while.end
  %41 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !2032
  %42 = bitcast %struct.raxNode* %41 to i8*, !dbg !2032
  call void @zfree(i8* %42), !dbg !2033
  %43 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2034
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %43, i32 0, i32 2, !dbg !2035
  %44 = load i64, i64* %numnodes, align 8, !dbg !2036
  %dec56 = add i64 %44, -1, !dbg !2036
  store i64 %dec56, i64* %numnodes, align 8, !dbg !2036
  ret void, !dbg !2037
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxFreeWithCallback(%struct.rax* %rax, void (i8*)* %free_callback) #0 !dbg !2038 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  %free_callback.addr = alloca void (i8*)*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !2041, metadata !DIExpression()), !dbg !2042
  store void (i8*)* %free_callback, void (i8*)** %free_callback.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %free_callback.addr, metadata !2043, metadata !DIExpression()), !dbg !2044
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2045
  %1 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2046
  %head = getelementptr inbounds %struct.rax, %struct.rax* %1, i32 0, i32 0, !dbg !2047
  %2 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !2047
  %3 = load void (i8*)*, void (i8*)** %free_callback.addr, align 8, !dbg !2048
  call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %2, void (i8*)* %3), !dbg !2049
  %4 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2050
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %4, i32 0, i32 2, !dbg !2050
  %5 = load i64, i64* %numnodes, align 8, !dbg !2050
  %cmp = icmp eq i64 %5, 0, !dbg !2050
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2050

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2050

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1244, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.raxFreeWithCallback, i64 0, i64 0)) #8, !dbg !2050
  unreachable, !dbg !2050

6:                                                ; No predecessors!
  br label %cond.end, !dbg !2050

cond.end:                                         ; preds = %6, %cond.true
  %7 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2051
  %8 = bitcast %struct.rax* %7 to i8*, !dbg !2051
  call void @zfree(i8* %8), !dbg !2052
  ret void, !dbg !2053
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxFree(%struct.rax* %rax) #0 !dbg !2054 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !2057, metadata !DIExpression()), !dbg !2058
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !2059
  call void @raxFreeWithCallback(%struct.rax* %0, void (i8*)* null), !dbg !2060
  ret void, !dbg !2061
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxStart(%struct.raxIterator* %it, %struct.rax* %rt) #0 !dbg !2062 {
entry:
  %it.addr = alloca %struct.raxIterator*, align 8
  %rt.addr = alloca %struct.rax*, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2086, metadata !DIExpression()), !dbg !2087
  store %struct.rax* %rt, %struct.rax** %rt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rt.addr, metadata !2088, metadata !DIExpression()), !dbg !2089
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2090
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 0, !dbg !2091
  store i32 2, i32* %flags, align 8, !dbg !2092
  %1 = load %struct.rax*, %struct.rax** %rt.addr, align 8, !dbg !2093
  %2 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2094
  %rt1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i32 0, i32 1, !dbg !2095
  store %struct.rax* %1, %struct.rax** %rt1, align 8, !dbg !2096
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2097
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 4, !dbg !2098
  store i64 0, i64* %key_len, align 8, !dbg !2099
  %4 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2100
  %key_static_string = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i32 0, i32 6, !dbg !2101
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %key_static_string, i64 0, i64 0, !dbg !2100
  %5 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2102
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %5, i32 0, i32 2, !dbg !2103
  store i8* %arraydecay, i8** %key, align 8, !dbg !2104
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2105
  %key_max = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 5, !dbg !2106
  store i64 128, i64* %key_max, align 8, !dbg !2107
  %7 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2108
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %7, i32 0, i32 3, !dbg !2109
  store i8* null, i8** %data, align 8, !dbg !2110
  %8 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2111
  %node_cb = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i32 0, i32 9, !dbg !2112
  store i32 (%struct.raxNode**)* null, i32 (%struct.raxNode**)** %node_cb, align 8, !dbg !2113
  %9 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2114
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i32 0, i32 8, !dbg !2115
  call void @raxStackInit(%struct.raxStack* %stack), !dbg !2116
  ret void, !dbg !2117
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxIteratorAddChars(%struct.raxIterator* %it, i8* %s, i64 %len) #0 !dbg !2118 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %old = alloca i8*, align 8
  %new_max = alloca i64, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2125, metadata !DIExpression()), !dbg !2126
  %0 = load i64, i64* %len.addr, align 8, !dbg !2127
  %cmp = icmp eq i64 %0, 0, !dbg !2129
  br i1 %cmp, label %if.then, label %if.end, !dbg !2130

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end:                                           ; preds = %entry
  %1 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2132
  %key_max = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %1, i32 0, i32 5, !dbg !2134
  %2 = load i64, i64* %key_max, align 8, !dbg !2134
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2135
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 4, !dbg !2136
  %4 = load i64, i64* %key_len, align 8, !dbg !2136
  %5 = load i64, i64* %len.addr, align 8, !dbg !2137
  %add = add i64 %4, %5, !dbg !2138
  %cmp1 = icmp ult i64 %2, %add, !dbg !2139
  br i1 %cmp1, label %if.then2, label %if.end28, !dbg !2140

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %old, metadata !2141, metadata !DIExpression()), !dbg !2143
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2144
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 2, !dbg !2145
  %7 = load i8*, i8** %key, align 8, !dbg !2145
  %8 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2146
  %key_static_string = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i32 0, i32 6, !dbg !2147
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %key_static_string, i64 0, i64 0, !dbg !2146
  %cmp3 = icmp eq i8* %7, %arraydecay, !dbg !2148
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !2149

cond.true:                                        ; preds = %if.then2
  br label %cond.end, !dbg !2149

cond.false:                                       ; preds = %if.then2
  %9 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2150
  %key4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i32 0, i32 2, !dbg !2151
  %10 = load i8*, i8** %key4, align 8, !dbg !2151
  br label %cond.end, !dbg !2149

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %10, %cond.false ], !dbg !2149
  store i8* %cond, i8** %old, align 8, !dbg !2143
  call void @llvm.dbg.declare(metadata i64* %new_max, metadata !2152, metadata !DIExpression()), !dbg !2153
  %11 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2154
  %key_len5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i32 0, i32 4, !dbg !2155
  %12 = load i64, i64* %key_len5, align 8, !dbg !2155
  %13 = load i64, i64* %len.addr, align 8, !dbg !2156
  %add6 = add i64 %12, %13, !dbg !2157
  %mul = mul i64 %add6, 2, !dbg !2158
  store i64 %mul, i64* %new_max, align 8, !dbg !2153
  %14 = load i8*, i8** %old, align 8, !dbg !2159
  %15 = load i64, i64* %new_max, align 8, !dbg !2160
  %call = call i8* @zrealloc(i8* %14, i64 %15), !dbg !2161
  %16 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2162
  %key7 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %16, i32 0, i32 2, !dbg !2163
  store i8* %call, i8** %key7, align 8, !dbg !2164
  %17 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2165
  %key8 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %17, i32 0, i32 2, !dbg !2167
  %18 = load i8*, i8** %key8, align 8, !dbg !2167
  %cmp9 = icmp eq i8* %18, null, !dbg !2168
  br i1 %cmp9, label %if.then10, label %if.end19, !dbg !2169

if.then10:                                        ; preds = %cond.end
  %19 = load i8*, i8** %old, align 8, !dbg !2170
  %tobool = icmp ne i8* %19, null, !dbg !2170
  br i1 %tobool, label %cond.false14, label %cond.true11, !dbg !2172

cond.true11:                                      ; preds = %if.then10
  %20 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2173
  %key_static_string12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %20, i32 0, i32 6, !dbg !2174
  %arraydecay13 = getelementptr inbounds [128 x i8], [128 x i8]* %key_static_string12, i64 0, i64 0, !dbg !2173
  br label %cond.end15, !dbg !2172

cond.false14:                                     ; preds = %if.then10
  %21 = load i8*, i8** %old, align 8, !dbg !2175
  br label %cond.end15, !dbg !2172

cond.end15:                                       ; preds = %cond.false14, %cond.true11
  %cond16 = phi i8* [ %arraydecay13, %cond.true11 ], [ %21, %cond.false14 ], !dbg !2172
  %22 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2176
  %key17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %22, i32 0, i32 2, !dbg !2177
  store i8* %cond16, i8** %key17, align 8, !dbg !2178
  %call18 = call i32* @__errno_location() #9, !dbg !2179
  store i32 12, i32* %call18, align 4, !dbg !2180
  store i32 0, i32* %retval, align 4, !dbg !2181
  br label %return, !dbg !2181

if.end19:                                         ; preds = %cond.end
  %23 = load i8*, i8** %old, align 8, !dbg !2182
  %cmp20 = icmp eq i8* %23, null, !dbg !2184
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !2185

if.then21:                                        ; preds = %if.end19
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2186
  %key22 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 2, !dbg !2187
  %25 = load i8*, i8** %key22, align 8, !dbg !2187
  %26 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2188
  %key_static_string23 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %26, i32 0, i32 6, !dbg !2189
  %arraydecay24 = getelementptr inbounds [128 x i8], [128 x i8]* %key_static_string23, i64 0, i64 0, !dbg !2190
  %27 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2191
  %key_len25 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %27, i32 0, i32 4, !dbg !2192
  %28 = load i64, i64* %key_len25, align 8, !dbg !2192
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 8 %arraydecay24, i64 %28, i1 false), !dbg !2190
  br label %if.end26, !dbg !2190

if.end26:                                         ; preds = %if.then21, %if.end19
  %29 = load i64, i64* %new_max, align 8, !dbg !2193
  %30 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2194
  %key_max27 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %30, i32 0, i32 5, !dbg !2195
  store i64 %29, i64* %key_max27, align 8, !dbg !2196
  br label %if.end28, !dbg !2197

if.end28:                                         ; preds = %if.end26, %if.end
  %31 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2198
  %key29 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %31, i32 0, i32 2, !dbg !2199
  %32 = load i8*, i8** %key29, align 8, !dbg !2199
  %33 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2200
  %key_len30 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %33, i32 0, i32 4, !dbg !2201
  %34 = load i64, i64* %key_len30, align 8, !dbg !2201
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !2202
  %35 = load i8*, i8** %s.addr, align 8, !dbg !2203
  %36 = load i64, i64* %len.addr, align 8, !dbg !2204
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %35, i64 %36, i1 false), !dbg !2205
  %37 = load i64, i64* %len.addr, align 8, !dbg !2206
  %38 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2207
  %key_len31 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %38, i32 0, i32 4, !dbg !2208
  %39 = load i64, i64* %key_len31, align 8, !dbg !2209
  %add32 = add i64 %39, %37, !dbg !2209
  store i64 %add32, i64* %key_len31, align 8, !dbg !2209
  store i32 1, i32* %retval, align 4, !dbg !2210
  br label %return, !dbg !2210

return:                                           ; preds = %if.end28, %cond.end15, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !2211
  ret i32 %40, !dbg !2211
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxIteratorDelChars(%struct.raxIterator* %it, i64 %count) #0 !dbg !2212 {
entry:
  %it.addr = alloca %struct.raxIterator*, align 8
  %count.addr = alloca i64, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  %0 = load i64, i64* %count.addr, align 8, !dbg !2219
  %1 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2220
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %1, i32 0, i32 4, !dbg !2221
  %2 = load i64, i64* %key_len, align 8, !dbg !2222
  %sub = sub i64 %2, %0, !dbg !2222
  store i64 %sub, i64* %key_len, align 8, !dbg !2222
  ret void, !dbg !2223
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxIteratorNextStep(%struct.raxIterator* %it, i32 %noup) #0 !dbg !2224 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %noup.addr = alloca i32, align 4
  %orig_key_len = alloca i64, align 8
  %orig_stack_items = alloca i64, align 8
  %orig_node = alloca %struct.raxNode*, align 8
  %children = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %old_noup = alloca i32, align 4
  %prevchild = alloca i8, align 1
  %todel = alloca i32, align 4
  %cp119 = alloca %struct.raxNode**, align 8
  %i = alloca i32, align 4
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  store i32 %noup, i32* %noup.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %noup.addr, metadata !2229, metadata !DIExpression()), !dbg !2230
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2231
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 0, !dbg !2233
  %1 = load i32, i32* %flags, align 8, !dbg !2233
  %and = and i32 %1, 2, !dbg !2234
  %tobool = icmp ne i32 %and, 0, !dbg !2234
  br i1 %tobool, label %if.then, label %if.else, !dbg !2235

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2236
  br label %return, !dbg !2236

if.else:                                          ; preds = %entry
  %2 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2238
  %flags1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i32 0, i32 0, !dbg !2240
  %3 = load i32, i32* %flags1, align 8, !dbg !2240
  %and2 = and i32 %3, 1, !dbg !2241
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2241
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2242

if.then4:                                         ; preds = %if.else
  %4 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2243
  %flags5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i32 0, i32 0, !dbg !2245
  %5 = load i32, i32* %flags5, align 8, !dbg !2246
  %and6 = and i32 %5, -2, !dbg !2246
  store i32 %and6, i32* %flags5, align 8, !dbg !2246
  store i32 1, i32* %retval, align 4, !dbg !2247
  br label %return, !dbg !2247

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %orig_key_len, metadata !2248, metadata !DIExpression()), !dbg !2249
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2250
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 4, !dbg !2251
  %7 = load i64, i64* %key_len, align 8, !dbg !2251
  store i64 %7, i64* %orig_key_len, align 8, !dbg !2249
  call void @llvm.dbg.declare(metadata i64* %orig_stack_items, metadata !2252, metadata !DIExpression()), !dbg !2253
  %8 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2254
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i32 0, i32 8, !dbg !2255
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack, i32 0, i32 1, !dbg !2256
  %9 = load i64, i64* %items, align 8, !dbg !2256
  store i64 %9, i64* %orig_stack_items, align 8, !dbg !2253
  call void @llvm.dbg.declare(metadata %struct.raxNode** %orig_node, metadata !2257, metadata !DIExpression()), !dbg !2258
  %10 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2259
  %node = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %10, i32 0, i32 7, !dbg !2260
  %11 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !2260
  store %struct.raxNode* %11, %struct.raxNode** %orig_node, align 8, !dbg !2258
  br label %while.body, !dbg !2261

while.body:                                       ; preds = %if.end7, %if.end194
  call void @llvm.dbg.declare(metadata i32* %children, metadata !2262, metadata !DIExpression()), !dbg !2264
  %12 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2265
  %node8 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %12, i32 0, i32 7, !dbg !2266
  %13 = load %struct.raxNode*, %struct.raxNode** %node8, align 8, !dbg !2266
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !2267
  %bf.load = load i32, i32* %14, align 4, !dbg !2267
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2267
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2267
  %tobool9 = icmp ne i32 %bf.clear, 0, !dbg !2265
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !2265

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !2265

cond.false:                                       ; preds = %while.body
  %15 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2268
  %node10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i32 0, i32 7, !dbg !2269
  %16 = load %struct.raxNode*, %struct.raxNode** %node10, align 8, !dbg !2269
  %17 = bitcast %struct.raxNode* %16 to i32*, !dbg !2270
  %bf.load11 = load i32, i32* %17, align 4, !dbg !2270
  %bf.lshr12 = lshr i32 %bf.load11, 3, !dbg !2270
  br label %cond.end, !dbg !2265

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %bf.lshr12, %cond.false ], !dbg !2265
  store i32 %cond, i32* %children, align 4, !dbg !2264
  %18 = load i32, i32* %noup.addr, align 4, !dbg !2271
  %tobool13 = icmp ne i32 %18, 0, !dbg !2271
  br i1 %tobool13, label %if.else69, label %land.lhs.true, !dbg !2273

land.lhs.true:                                    ; preds = %cond.end
  %19 = load i32, i32* %children, align 4, !dbg !2274
  %tobool14 = icmp ne i32 %19, 0, !dbg !2274
  br i1 %tobool14, label %if.then15, label %if.else69, !dbg !2275

if.then15:                                        ; preds = %land.lhs.true
  %20 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2276
  %stack16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %20, i32 0, i32 8, !dbg !2279
  %21 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2280
  %node17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %21, i32 0, i32 7, !dbg !2281
  %22 = load %struct.raxNode*, %struct.raxNode** %node17, align 8, !dbg !2281
  %23 = bitcast %struct.raxNode* %22 to i8*, !dbg !2280
  %call = call i32 @raxStackPush(%struct.raxStack* %stack16, i8* %23), !dbg !2282
  %tobool18 = icmp ne i32 %call, 0, !dbg !2282
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2283

if.then19:                                        ; preds = %if.then15
  store i32 0, i32* %retval, align 4, !dbg !2284
  br label %return, !dbg !2284

if.end20:                                         ; preds = %if.then15
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !2285, metadata !DIExpression()), !dbg !2286
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2287
  %node21 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 7, !dbg !2287
  %25 = load %struct.raxNode*, %struct.raxNode** %node21, align 8, !dbg !2287
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %25, i32 0, i32 1, !dbg !2287
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2287
  %26 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2287
  %node22 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %26, i32 0, i32 7, !dbg !2287
  %27 = load %struct.raxNode*, %struct.raxNode** %node22, align 8, !dbg !2287
  %28 = bitcast %struct.raxNode* %27 to i32*, !dbg !2287
  %bf.load23 = load i32, i32* %28, align 4, !dbg !2287
  %bf.lshr24 = lshr i32 %bf.load23, 3, !dbg !2287
  %idx.ext = sext i32 %bf.lshr24 to i64, !dbg !2287
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !2287
  %29 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2287
  %node25 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %29, i32 0, i32 7, !dbg !2287
  %30 = load %struct.raxNode*, %struct.raxNode** %node25, align 8, !dbg !2287
  %31 = bitcast %struct.raxNode* %30 to i32*, !dbg !2287
  %bf.load26 = load i32, i32* %31, align 4, !dbg !2287
  %bf.lshr27 = lshr i32 %bf.load26, 3, !dbg !2287
  %add = add nsw i32 %bf.lshr27, 4, !dbg !2287
  %conv = sext i32 %add to i64, !dbg !2287
  %rem = urem i64 %conv, 8, !dbg !2287
  %sub = sub i64 8, %rem, !dbg !2287
  %and28 = and i64 %sub, 7, !dbg !2287
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr, i64 %and28, !dbg !2287
  %32 = bitcast i8* %add.ptr29 to %struct.raxNode**, !dbg !2287
  store %struct.raxNode** %32, %struct.raxNode*** %cp, align 8, !dbg !2286
  %33 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2288
  %34 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2290
  %node30 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %34, i32 0, i32 7, !dbg !2291
  %35 = load %struct.raxNode*, %struct.raxNode** %node30, align 8, !dbg !2291
  %data31 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %35, i32 0, i32 1, !dbg !2292
  %arraydecay32 = getelementptr inbounds [0 x i8], [0 x i8]* %data31, i64 0, i64 0, !dbg !2290
  %36 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2293
  %node33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %36, i32 0, i32 7, !dbg !2294
  %37 = load %struct.raxNode*, %struct.raxNode** %node33, align 8, !dbg !2294
  %38 = bitcast %struct.raxNode* %37 to i32*, !dbg !2295
  %bf.load34 = load i32, i32* %38, align 4, !dbg !2295
  %bf.lshr35 = lshr i32 %bf.load34, 2, !dbg !2295
  %bf.clear36 = and i32 %bf.lshr35, 1, !dbg !2295
  %tobool37 = icmp ne i32 %bf.clear36, 0, !dbg !2293
  br i1 %tobool37, label %cond.true38, label %cond.false42, !dbg !2293

cond.true38:                                      ; preds = %if.end20
  %39 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2296
  %node39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %39, i32 0, i32 7, !dbg !2297
  %40 = load %struct.raxNode*, %struct.raxNode** %node39, align 8, !dbg !2297
  %41 = bitcast %struct.raxNode* %40 to i32*, !dbg !2298
  %bf.load40 = load i32, i32* %41, align 4, !dbg !2298
  %bf.lshr41 = lshr i32 %bf.load40, 3, !dbg !2298
  br label %cond.end43, !dbg !2293

cond.false42:                                     ; preds = %if.end20
  br label %cond.end43, !dbg !2293

cond.end43:                                       ; preds = %cond.false42, %cond.true38
  %cond44 = phi i32 [ %bf.lshr41, %cond.true38 ], [ 1, %cond.false42 ], !dbg !2293
  %conv45 = sext i32 %cond44 to i64, !dbg !2293
  %call46 = call i32 @raxIteratorAddChars(%struct.raxIterator* %33, i8* %arraydecay32, i64 %conv45), !dbg !2299
  %tobool47 = icmp ne i32 %call46, 0, !dbg !2299
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !2300

if.then48:                                        ; preds = %cond.end43
  store i32 0, i32* %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

if.end49:                                         ; preds = %cond.end43
  %42 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2302
  %node50 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %42, i32 0, i32 7, !dbg !2303
  %43 = bitcast %struct.raxNode** %node50 to i8*, !dbg !2304
  %44 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2305
  %45 = bitcast %struct.raxNode** %44 to i8*, !dbg !2304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %45, i64 8, i1 false), !dbg !2304
  %46 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2306
  %node_cb = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %46, i32 0, i32 9, !dbg !2308
  %47 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %node_cb, align 8, !dbg !2308
  %tobool51 = icmp ne i32 (%struct.raxNode**)* %47, null, !dbg !2306
  br i1 %tobool51, label %land.lhs.true52, label %if.end59, !dbg !2309

land.lhs.true52:                                  ; preds = %if.end49
  %48 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2310
  %node_cb53 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %48, i32 0, i32 9, !dbg !2311
  %49 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %node_cb53, align 8, !dbg !2311
  %50 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2312
  %node54 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %50, i32 0, i32 7, !dbg !2313
  %call55 = call i32 %49(%struct.raxNode** %node54), !dbg !2310
  %tobool56 = icmp ne i32 %call55, 0, !dbg !2310
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !2314

if.then57:                                        ; preds = %land.lhs.true52
  %51 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2315
  %52 = bitcast %struct.raxNode** %51 to i8*, !dbg !2316
  %53 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2317
  %node58 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %53, i32 0, i32 7, !dbg !2318
  %54 = bitcast %struct.raxNode** %node58 to i8*, !dbg !2316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %54, i64 8, i1 false), !dbg !2316
  br label %if.end59, !dbg !2316

if.end59:                                         ; preds = %if.then57, %land.lhs.true52, %if.end49
  %55 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2319
  %node60 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %55, i32 0, i32 7, !dbg !2321
  %56 = load %struct.raxNode*, %struct.raxNode** %node60, align 8, !dbg !2321
  %57 = bitcast %struct.raxNode* %56 to i32*, !dbg !2322
  %bf.load61 = load i32, i32* %57, align 4, !dbg !2322
  %bf.clear62 = and i32 %bf.load61, 1, !dbg !2322
  %tobool63 = icmp ne i32 %bf.clear62, 0, !dbg !2319
  br i1 %tobool63, label %if.then64, label %if.end68, !dbg !2323

if.then64:                                        ; preds = %if.end59
  %58 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2324
  %node65 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %58, i32 0, i32 7, !dbg !2326
  %59 = load %struct.raxNode*, %struct.raxNode** %node65, align 8, !dbg !2326
  %call66 = call i8* @raxGetData(%struct.raxNode* %59), !dbg !2327
  %60 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2328
  %data67 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %60, i32 0, i32 3, !dbg !2329
  store i8* %call66, i8** %data67, align 8, !dbg !2330
  store i32 1, i32* %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end68:                                         ; preds = %if.end59
  br label %if.end194, !dbg !2332

if.else69:                                        ; preds = %land.lhs.true, %cond.end
  br label %while.body71, !dbg !2333

while.body71:                                     ; preds = %if.else69, %if.end192
  call void @llvm.dbg.declare(metadata i32* %old_noup, metadata !2335, metadata !DIExpression()), !dbg !2337
  %61 = load i32, i32* %noup.addr, align 4, !dbg !2338
  store i32 %61, i32* %old_noup, align 4, !dbg !2337
  %62 = load i32, i32* %noup.addr, align 4, !dbg !2339
  %tobool72 = icmp ne i32 %62, 0, !dbg !2339
  br i1 %tobool72, label %if.end82, label %land.lhs.true73, !dbg !2341

land.lhs.true73:                                  ; preds = %while.body71
  %63 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2342
  %node74 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %63, i32 0, i32 7, !dbg !2343
  %64 = load %struct.raxNode*, %struct.raxNode** %node74, align 8, !dbg !2343
  %65 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2344
  %rt = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %65, i32 0, i32 1, !dbg !2345
  %66 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !2345
  %head = getelementptr inbounds %struct.rax, %struct.rax* %66, i32 0, i32 0, !dbg !2346
  %67 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !2346
  %cmp = icmp eq %struct.raxNode* %64, %67, !dbg !2347
  br i1 %cmp, label %if.then76, label %if.end82, !dbg !2348

if.then76:                                        ; preds = %land.lhs.true73
  %68 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2349
  %flags77 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %68, i32 0, i32 0, !dbg !2351
  %69 = load i32, i32* %flags77, align 8, !dbg !2352
  %or = or i32 %69, 2, !dbg !2352
  store i32 %or, i32* %flags77, align 8, !dbg !2352
  %70 = load i64, i64* %orig_stack_items, align 8, !dbg !2353
  %71 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2354
  %stack78 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %71, i32 0, i32 8, !dbg !2355
  %items79 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack78, i32 0, i32 1, !dbg !2356
  store i64 %70, i64* %items79, align 8, !dbg !2357
  %72 = load i64, i64* %orig_key_len, align 8, !dbg !2358
  %73 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2359
  %key_len80 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %73, i32 0, i32 4, !dbg !2360
  store i64 %72, i64* %key_len80, align 8, !dbg !2361
  %74 = load %struct.raxNode*, %struct.raxNode** %orig_node, align 8, !dbg !2362
  %75 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2363
  %node81 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %75, i32 0, i32 7, !dbg !2364
  store %struct.raxNode* %74, %struct.raxNode** %node81, align 8, !dbg !2365
  store i32 1, i32* %retval, align 4, !dbg !2366
  br label %return, !dbg !2366

if.end82:                                         ; preds = %land.lhs.true73, %while.body71
  call void @llvm.dbg.declare(metadata i8* %prevchild, metadata !2367, metadata !DIExpression()), !dbg !2368
  %76 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2369
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %76, i32 0, i32 2, !dbg !2370
  %77 = load i8*, i8** %key, align 8, !dbg !2370
  %78 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2371
  %key_len83 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %78, i32 0, i32 4, !dbg !2372
  %79 = load i64, i64* %key_len83, align 8, !dbg !2372
  %sub84 = sub i64 %79, 1, !dbg !2373
  %arrayidx = getelementptr inbounds i8, i8* %77, i64 %sub84, !dbg !2369
  %80 = load i8, i8* %arrayidx, align 1, !dbg !2369
  store i8 %80, i8* %prevchild, align 1, !dbg !2368
  %81 = load i32, i32* %noup.addr, align 4, !dbg !2374
  %tobool85 = icmp ne i32 %81, 0, !dbg !2374
  br i1 %tobool85, label %if.else90, label %if.then86, !dbg !2376

if.then86:                                        ; preds = %if.end82
  %82 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2377
  %stack87 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %82, i32 0, i32 8, !dbg !2379
  %call88 = call i8* @raxStackPop(%struct.raxStack* %stack87), !dbg !2380
  %83 = bitcast i8* %call88 to %struct.raxNode*, !dbg !2380
  %84 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2381
  %node89 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %84, i32 0, i32 7, !dbg !2382
  store %struct.raxNode* %83, %struct.raxNode** %node89, align 8, !dbg !2383
  br label %if.end91, !dbg !2384

if.else90:                                        ; preds = %if.end82
  store i32 0, i32* %noup.addr, align 4, !dbg !2385
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then86
  call void @llvm.dbg.declare(metadata i32* %todel, metadata !2387, metadata !DIExpression()), !dbg !2388
  %85 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2389
  %node92 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %85, i32 0, i32 7, !dbg !2390
  %86 = load %struct.raxNode*, %struct.raxNode** %node92, align 8, !dbg !2390
  %87 = bitcast %struct.raxNode* %86 to i32*, !dbg !2391
  %bf.load93 = load i32, i32* %87, align 4, !dbg !2391
  %bf.lshr94 = lshr i32 %bf.load93, 2, !dbg !2391
  %bf.clear95 = and i32 %bf.lshr94, 1, !dbg !2391
  %tobool96 = icmp ne i32 %bf.clear95, 0, !dbg !2389
  br i1 %tobool96, label %cond.true97, label %cond.false101, !dbg !2389

cond.true97:                                      ; preds = %if.end91
  %88 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2392
  %node98 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %88, i32 0, i32 7, !dbg !2393
  %89 = load %struct.raxNode*, %struct.raxNode** %node98, align 8, !dbg !2393
  %90 = bitcast %struct.raxNode* %89 to i32*, !dbg !2394
  %bf.load99 = load i32, i32* %90, align 4, !dbg !2394
  %bf.lshr100 = lshr i32 %bf.load99, 3, !dbg !2394
  br label %cond.end102, !dbg !2389

cond.false101:                                    ; preds = %if.end91
  br label %cond.end102, !dbg !2389

cond.end102:                                      ; preds = %cond.false101, %cond.true97
  %cond103 = phi i32 [ %bf.lshr100, %cond.true97 ], [ 1, %cond.false101 ], !dbg !2389
  store i32 %cond103, i32* %todel, align 4, !dbg !2388
  %91 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2395
  %92 = load i32, i32* %todel, align 4, !dbg !2396
  %conv104 = sext i32 %92 to i64, !dbg !2396
  call void @raxIteratorDelChars(%struct.raxIterator* %91, i64 %conv104), !dbg !2397
  %93 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2398
  %node105 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %93, i32 0, i32 7, !dbg !2400
  %94 = load %struct.raxNode*, %struct.raxNode** %node105, align 8, !dbg !2400
  %95 = bitcast %struct.raxNode* %94 to i32*, !dbg !2401
  %bf.load106 = load i32, i32* %95, align 4, !dbg !2401
  %bf.lshr107 = lshr i32 %bf.load106, 2, !dbg !2401
  %bf.clear108 = and i32 %bf.lshr107, 1, !dbg !2401
  %tobool109 = icmp ne i32 %bf.clear108, 0, !dbg !2398
  br i1 %tobool109, label %if.end192, label %land.lhs.true110, !dbg !2402

land.lhs.true110:                                 ; preds = %cond.end102
  %96 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2403
  %node111 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %96, i32 0, i32 7, !dbg !2404
  %97 = load %struct.raxNode*, %struct.raxNode** %node111, align 8, !dbg !2404
  %98 = bitcast %struct.raxNode* %97 to i32*, !dbg !2405
  %bf.load112 = load i32, i32* %98, align 4, !dbg !2405
  %bf.lshr113 = lshr i32 %bf.load112, 3, !dbg !2405
  %99 = load i32, i32* %old_noup, align 4, !dbg !2406
  %tobool114 = icmp ne i32 %99, 0, !dbg !2406
  %100 = zext i1 %tobool114 to i64, !dbg !2406
  %cond115 = select i1 %tobool114, i32 0, i32 1, !dbg !2406
  %cmp116 = icmp sgt i32 %bf.lshr113, %cond115, !dbg !2407
  br i1 %cmp116, label %if.then118, label %if.end192, !dbg !2408

if.then118:                                       ; preds = %land.lhs.true110
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp119, metadata !2409, metadata !DIExpression()), !dbg !2411
  %101 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2412
  %node120 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %101, i32 0, i32 7, !dbg !2412
  %102 = load %struct.raxNode*, %struct.raxNode** %node120, align 8, !dbg !2412
  %data121 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %102, i32 0, i32 1, !dbg !2412
  %arraydecay122 = getelementptr inbounds [0 x i8], [0 x i8]* %data121, i64 0, i64 0, !dbg !2412
  %103 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2412
  %node123 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %103, i32 0, i32 7, !dbg !2412
  %104 = load %struct.raxNode*, %struct.raxNode** %node123, align 8, !dbg !2412
  %105 = bitcast %struct.raxNode* %104 to i32*, !dbg !2412
  %bf.load124 = load i32, i32* %105, align 4, !dbg !2412
  %bf.lshr125 = lshr i32 %bf.load124, 3, !dbg !2412
  %idx.ext126 = sext i32 %bf.lshr125 to i64, !dbg !2412
  %add.ptr127 = getelementptr inbounds i8, i8* %arraydecay122, i64 %idx.ext126, !dbg !2412
  %106 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2412
  %node128 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %106, i32 0, i32 7, !dbg !2412
  %107 = load %struct.raxNode*, %struct.raxNode** %node128, align 8, !dbg !2412
  %108 = bitcast %struct.raxNode* %107 to i32*, !dbg !2412
  %bf.load129 = load i32, i32* %108, align 4, !dbg !2412
  %bf.lshr130 = lshr i32 %bf.load129, 3, !dbg !2412
  %add131 = add nsw i32 %bf.lshr130, 4, !dbg !2412
  %conv132 = sext i32 %add131 to i64, !dbg !2412
  %rem133 = urem i64 %conv132, 8, !dbg !2412
  %sub134 = sub i64 8, %rem133, !dbg !2412
  %and135 = and i64 %sub134, 7, !dbg !2412
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr127, i64 %and135, !dbg !2412
  %109 = bitcast i8* %add.ptr136 to %struct.raxNode**, !dbg !2412
  store %struct.raxNode** %109, %struct.raxNode*** %cp119, align 8, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i32 0, i32* %i, align 4, !dbg !2414
  br label %while.cond137, !dbg !2415

while.cond137:                                    ; preds = %if.end152, %if.then118
  %110 = load i32, i32* %i, align 4, !dbg !2416
  %111 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2417
  %node138 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %111, i32 0, i32 7, !dbg !2418
  %112 = load %struct.raxNode*, %struct.raxNode** %node138, align 8, !dbg !2418
  %113 = bitcast %struct.raxNode* %112 to i32*, !dbg !2419
  %bf.load139 = load i32, i32* %113, align 4, !dbg !2419
  %bf.lshr140 = lshr i32 %bf.load139, 3, !dbg !2419
  %cmp141 = icmp slt i32 %110, %bf.lshr140, !dbg !2420
  br i1 %cmp141, label %while.body143, label %while.end, !dbg !2415

while.body143:                                    ; preds = %while.cond137
  %114 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2421
  %node144 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %114, i32 0, i32 7, !dbg !2424
  %115 = load %struct.raxNode*, %struct.raxNode** %node144, align 8, !dbg !2424
  %data145 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %115, i32 0, i32 1, !dbg !2425
  %116 = load i32, i32* %i, align 4, !dbg !2426
  %idxprom = sext i32 %116 to i64, !dbg !2421
  %arrayidx146 = getelementptr inbounds [0 x i8], [0 x i8]* %data145, i64 0, i64 %idxprom, !dbg !2421
  %117 = load i8, i8* %arrayidx146, align 1, !dbg !2421
  %conv147 = zext i8 %117 to i32, !dbg !2421
  %118 = load i8, i8* %prevchild, align 1, !dbg !2427
  %conv148 = zext i8 %118 to i32, !dbg !2427
  %cmp149 = icmp sgt i32 %conv147, %conv148, !dbg !2428
  br i1 %cmp149, label %if.then151, label %if.end152, !dbg !2429

if.then151:                                       ; preds = %while.body143
  br label %while.end, !dbg !2430

if.end152:                                        ; preds = %while.body143
  %119 = load i32, i32* %i, align 4, !dbg !2431
  %inc = add nsw i32 %119, 1, !dbg !2431
  store i32 %inc, i32* %i, align 4, !dbg !2431
  %120 = load %struct.raxNode**, %struct.raxNode*** %cp119, align 8, !dbg !2432
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %120, i32 1, !dbg !2432
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp119, align 8, !dbg !2432
  br label %while.cond137, !dbg !2415, !llvm.loop !2433

while.end:                                        ; preds = %if.then151, %while.cond137
  %121 = load i32, i32* %i, align 4, !dbg !2435
  %122 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2437
  %node153 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %122, i32 0, i32 7, !dbg !2438
  %123 = load %struct.raxNode*, %struct.raxNode** %node153, align 8, !dbg !2438
  %124 = bitcast %struct.raxNode* %123 to i32*, !dbg !2439
  %bf.load154 = load i32, i32* %124, align 4, !dbg !2439
  %bf.lshr155 = lshr i32 %bf.load154, 3, !dbg !2439
  %cmp156 = icmp ne i32 %121, %bf.lshr155, !dbg !2440
  br i1 %cmp156, label %if.then158, label %if.end191, !dbg !2441

if.then158:                                       ; preds = %while.end
  %125 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2442
  %126 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2444
  %node159 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %126, i32 0, i32 7, !dbg !2445
  %127 = load %struct.raxNode*, %struct.raxNode** %node159, align 8, !dbg !2445
  %data160 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %127, i32 0, i32 1, !dbg !2446
  %arraydecay161 = getelementptr inbounds [0 x i8], [0 x i8]* %data160, i64 0, i64 0, !dbg !2444
  %128 = load i32, i32* %i, align 4, !dbg !2447
  %idx.ext162 = sext i32 %128 to i64, !dbg !2448
  %add.ptr163 = getelementptr inbounds i8, i8* %arraydecay161, i64 %idx.ext162, !dbg !2448
  %call164 = call i32 @raxIteratorAddChars(%struct.raxIterator* %125, i8* %add.ptr163, i64 1), !dbg !2449
  %129 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2450
  %stack165 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %129, i32 0, i32 8, !dbg !2452
  %130 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2453
  %node166 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %130, i32 0, i32 7, !dbg !2454
  %131 = load %struct.raxNode*, %struct.raxNode** %node166, align 8, !dbg !2454
  %132 = bitcast %struct.raxNode* %131 to i8*, !dbg !2453
  %call167 = call i32 @raxStackPush(%struct.raxStack* %stack165, i8* %132), !dbg !2455
  %tobool168 = icmp ne i32 %call167, 0, !dbg !2455
  br i1 %tobool168, label %if.end170, label %if.then169, !dbg !2456

if.then169:                                       ; preds = %if.then158
  store i32 0, i32* %retval, align 4, !dbg !2457
  br label %return, !dbg !2457

if.end170:                                        ; preds = %if.then158
  %133 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2458
  %node171 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %133, i32 0, i32 7, !dbg !2459
  %134 = bitcast %struct.raxNode** %node171 to i8*, !dbg !2460
  %135 = load %struct.raxNode**, %struct.raxNode*** %cp119, align 8, !dbg !2461
  %136 = bitcast %struct.raxNode** %135 to i8*, !dbg !2460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %134, i8* align 8 %136, i64 8, i1 false), !dbg !2460
  %137 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2462
  %node_cb172 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %137, i32 0, i32 9, !dbg !2464
  %138 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %node_cb172, align 8, !dbg !2464
  %tobool173 = icmp ne i32 (%struct.raxNode**)* %138, null, !dbg !2462
  br i1 %tobool173, label %land.lhs.true174, label %if.end181, !dbg !2465

land.lhs.true174:                                 ; preds = %if.end170
  %139 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2466
  %node_cb175 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %139, i32 0, i32 9, !dbg !2467
  %140 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %node_cb175, align 8, !dbg !2467
  %141 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2468
  %node176 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %141, i32 0, i32 7, !dbg !2469
  %call177 = call i32 %140(%struct.raxNode** %node176), !dbg !2466
  %tobool178 = icmp ne i32 %call177, 0, !dbg !2466
  br i1 %tobool178, label %if.then179, label %if.end181, !dbg !2470

if.then179:                                       ; preds = %land.lhs.true174
  %142 = load %struct.raxNode**, %struct.raxNode*** %cp119, align 8, !dbg !2471
  %143 = bitcast %struct.raxNode** %142 to i8*, !dbg !2472
  %144 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2473
  %node180 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %144, i32 0, i32 7, !dbg !2474
  %145 = bitcast %struct.raxNode** %node180 to i8*, !dbg !2472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %145, i64 8, i1 false), !dbg !2472
  br label %if.end181, !dbg !2472

if.end181:                                        ; preds = %if.then179, %land.lhs.true174, %if.end170
  %146 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2475
  %node182 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %146, i32 0, i32 7, !dbg !2477
  %147 = load %struct.raxNode*, %struct.raxNode** %node182, align 8, !dbg !2477
  %148 = bitcast %struct.raxNode* %147 to i32*, !dbg !2478
  %bf.load183 = load i32, i32* %148, align 4, !dbg !2478
  %bf.clear184 = and i32 %bf.load183, 1, !dbg !2478
  %tobool185 = icmp ne i32 %bf.clear184, 0, !dbg !2475
  br i1 %tobool185, label %if.then186, label %if.end190, !dbg !2479

if.then186:                                       ; preds = %if.end181
  %149 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2480
  %node187 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %149, i32 0, i32 7, !dbg !2482
  %150 = load %struct.raxNode*, %struct.raxNode** %node187, align 8, !dbg !2482
  %call188 = call i8* @raxGetData(%struct.raxNode* %150), !dbg !2483
  %151 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2484
  %data189 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %151, i32 0, i32 3, !dbg !2485
  store i8* %call188, i8** %data189, align 8, !dbg !2486
  store i32 1, i32* %retval, align 4, !dbg !2487
  br label %return, !dbg !2487

if.end190:                                        ; preds = %if.end181
  br label %while.end193, !dbg !2488

if.end191:                                        ; preds = %while.end
  br label %if.end192, !dbg !2489

if.end192:                                        ; preds = %if.end191, %land.lhs.true110, %cond.end102
  br label %while.body71, !dbg !2333, !llvm.loop !2490

while.end193:                                     ; preds = %if.end190
  br label %if.end194

if.end194:                                        ; preds = %while.end193, %if.end68
  br label %while.body, !dbg !2261, !llvm.loop !2492

return:                                           ; preds = %if.then186, %if.then169, %if.then76, %if.then64, %if.then48, %if.then19, %if.then4, %if.then
  %152 = load i32, i32* %retval, align 4, !dbg !2494
  ret i32 %152, !dbg !2494
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @raxStackPush(%struct.raxStack* %ts, i8* %ptr) #0 !dbg !2495 {
entry:
  %retval = alloca i32, align 4
  %ts.addr = alloca %struct.raxStack*, align 8
  %ptr.addr = alloca i8*, align 8
  %newalloc = alloca i8**, align 8
  store %struct.raxStack* %ts, %struct.raxStack** %ts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxStack** %ts.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2500, metadata !DIExpression()), !dbg !2501
  %0 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2502
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i32 0, i32 1, !dbg !2504
  %1 = load i64, i64* %items, align 8, !dbg !2504
  %2 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2505
  %maxitems = getelementptr inbounds %struct.raxStack, %struct.raxStack* %2, i32 0, i32 2, !dbg !2506
  %3 = load i64, i64* %maxitems, align 8, !dbg !2506
  %cmp = icmp eq i64 %1, %3, !dbg !2507
  br i1 %cmp, label %if.then, label %if.end32, !dbg !2508

if.then:                                          ; preds = %entry
  %4 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2509
  %stack = getelementptr inbounds %struct.raxStack, %struct.raxStack* %4, i32 0, i32 0, !dbg !2512
  %5 = load i8**, i8*** %stack, align 8, !dbg !2512
  %6 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2513
  %static_items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i32 0, i32 3, !dbg !2514
  %arraydecay = getelementptr inbounds [32 x i8*], [32 x i8*]* %static_items, i64 0, i64 0, !dbg !2513
  %cmp1 = icmp eq i8** %5, %arraydecay, !dbg !2515
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2516

if.then2:                                         ; preds = %if.then
  %7 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2517
  %maxitems3 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %7, i32 0, i32 2, !dbg !2519
  %8 = load i64, i64* %maxitems3, align 8, !dbg !2519
  %mul = mul i64 8, %8, !dbg !2520
  %mul4 = mul i64 %mul, 2, !dbg !2521
  %call = call i8* @zmalloc(i64 %mul4), !dbg !2522
  %9 = bitcast i8* %call to i8**, !dbg !2522
  %10 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2523
  %stack5 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %10, i32 0, i32 0, !dbg !2524
  store i8** %9, i8*** %stack5, align 8, !dbg !2525
  %11 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2526
  %stack6 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %11, i32 0, i32 0, !dbg !2528
  %12 = load i8**, i8*** %stack6, align 8, !dbg !2528
  %cmp7 = icmp eq i8** %12, null, !dbg !2529
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !2530

if.then8:                                         ; preds = %if.then2
  %13 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2531
  %static_items9 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %13, i32 0, i32 3, !dbg !2533
  %arraydecay10 = getelementptr inbounds [32 x i8*], [32 x i8*]* %static_items9, i64 0, i64 0, !dbg !2531
  %14 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2534
  %stack11 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %14, i32 0, i32 0, !dbg !2535
  store i8** %arraydecay10, i8*** %stack11, align 8, !dbg !2536
  %15 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2537
  %oom = getelementptr inbounds %struct.raxStack, %struct.raxStack* %15, i32 0, i32 4, !dbg !2538
  store i32 1, i32* %oom, align 8, !dbg !2539
  %call12 = call i32* @__errno_location() #9, !dbg !2540
  store i32 12, i32* %call12, align 4, !dbg !2541
  store i32 0, i32* %retval, align 4, !dbg !2542
  br label %return, !dbg !2542

if.end:                                           ; preds = %if.then2
  %16 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2543
  %stack13 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %16, i32 0, i32 0, !dbg !2544
  %17 = load i8**, i8*** %stack13, align 8, !dbg !2544
  %18 = bitcast i8** %17 to i8*, !dbg !2545
  %19 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2546
  %static_items14 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %19, i32 0, i32 3, !dbg !2547
  %arraydecay15 = getelementptr inbounds [32 x i8*], [32 x i8*]* %static_items14, i64 0, i64 0, !dbg !2545
  %20 = bitcast i8** %arraydecay15 to i8*, !dbg !2545
  %21 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2548
  %maxitems16 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %21, i32 0, i32 2, !dbg !2549
  %22 = load i64, i64* %maxitems16, align 8, !dbg !2549
  %mul17 = mul i64 8, %22, !dbg !2550
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %20, i64 %mul17, i1 false), !dbg !2545
  br label %if.end29, !dbg !2551

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8*** %newalloc, metadata !2552, metadata !DIExpression()), !dbg !2554
  %23 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2555
  %stack18 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %23, i32 0, i32 0, !dbg !2556
  %24 = load i8**, i8*** %stack18, align 8, !dbg !2556
  %25 = bitcast i8** %24 to i8*, !dbg !2555
  %26 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2557
  %maxitems19 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %26, i32 0, i32 2, !dbg !2558
  %27 = load i64, i64* %maxitems19, align 8, !dbg !2558
  %mul20 = mul i64 8, %27, !dbg !2559
  %mul21 = mul i64 %mul20, 2, !dbg !2560
  %call22 = call i8* @zrealloc(i8* %25, i64 %mul21), !dbg !2561
  %28 = bitcast i8* %call22 to i8**, !dbg !2561
  store i8** %28, i8*** %newalloc, align 8, !dbg !2554
  %29 = load i8**, i8*** %newalloc, align 8, !dbg !2562
  %cmp23 = icmp eq i8** %29, null, !dbg !2564
  br i1 %cmp23, label %if.then24, label %if.end27, !dbg !2565

if.then24:                                        ; preds = %if.else
  %30 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2566
  %oom25 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %30, i32 0, i32 4, !dbg !2568
  store i32 1, i32* %oom25, align 8, !dbg !2569
  %call26 = call i32* @__errno_location() #9, !dbg !2570
  store i32 12, i32* %call26, align 4, !dbg !2571
  store i32 0, i32* %retval, align 4, !dbg !2572
  br label %return, !dbg !2572

if.end27:                                         ; preds = %if.else
  %31 = load i8**, i8*** %newalloc, align 8, !dbg !2573
  %32 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2574
  %stack28 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %32, i32 0, i32 0, !dbg !2575
  store i8** %31, i8*** %stack28, align 8, !dbg !2576
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end
  %33 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2577
  %maxitems30 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %33, i32 0, i32 2, !dbg !2578
  %34 = load i64, i64* %maxitems30, align 8, !dbg !2579
  %mul31 = mul i64 %34, 2, !dbg !2579
  store i64 %mul31, i64* %maxitems30, align 8, !dbg !2579
  br label %if.end32, !dbg !2580

if.end32:                                         ; preds = %if.end29, %entry
  %35 = load i8*, i8** %ptr.addr, align 8, !dbg !2581
  %36 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2582
  %stack33 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %36, i32 0, i32 0, !dbg !2583
  %37 = load i8**, i8*** %stack33, align 8, !dbg !2583
  %38 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2584
  %items34 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %38, i32 0, i32 1, !dbg !2585
  %39 = load i64, i64* %items34, align 8, !dbg !2585
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %39, !dbg !2582
  store i8* %35, i8** %arrayidx, align 8, !dbg !2586
  %40 = load %struct.raxStack*, %struct.raxStack** %ts.addr, align 8, !dbg !2587
  %items35 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %40, i32 0, i32 1, !dbg !2588
  %41 = load i64, i64* %items35, align 8, !dbg !2589
  %inc = add i64 %41, 1, !dbg !2589
  store i64 %inc, i64* %items35, align 8, !dbg !2589
  store i32 1, i32* %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

return:                                           ; preds = %if.end32, %if.then24, %if.then8
  %42 = load i32, i32* %retval, align 4, !dbg !2591
  ret i32 %42, !dbg !2591
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxSeekGreatest(%struct.raxIterator* %it) #0 !dbg !2592 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %cp = alloca %struct.raxNode**, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  br label %while.cond, !dbg !2597

while.cond:                                       ; preds = %if.end77, %entry
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2598
  %node = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 7, !dbg !2599
  %1 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !2599
  %2 = bitcast %struct.raxNode* %1 to i32*, !dbg !2600
  %bf.load = load i32, i32* %2, align 4, !dbg !2600
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2600
  %tobool = icmp ne i32 %bf.lshr, 0, !dbg !2597
  br i1 %tobool, label %while.body, label %while.end, !dbg !2597

while.body:                                       ; preds = %while.cond
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2601
  %node1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 7, !dbg !2604
  %4 = load %struct.raxNode*, %struct.raxNode** %node1, align 8, !dbg !2604
  %5 = bitcast %struct.raxNode* %4 to i32*, !dbg !2605
  %bf.load2 = load i32, i32* %5, align 4, !dbg !2605
  %bf.lshr3 = lshr i32 %bf.load2, 2, !dbg !2605
  %bf.clear = and i32 %bf.lshr3, 1, !dbg !2605
  %tobool4 = icmp ne i32 %bf.clear, 0, !dbg !2601
  br i1 %tobool4, label %if.then, label %if.else, !dbg !2606

if.then:                                          ; preds = %while.body
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2607
  %7 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2610
  %node5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %7, i32 0, i32 7, !dbg !2611
  %8 = load %struct.raxNode*, %struct.raxNode** %node5, align 8, !dbg !2611
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %8, i32 0, i32 1, !dbg !2612
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !2610
  %9 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2613
  %node6 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %9, i32 0, i32 7, !dbg !2614
  %10 = load %struct.raxNode*, %struct.raxNode** %node6, align 8, !dbg !2614
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !2615
  %bf.load7 = load i32, i32* %11, align 4, !dbg !2615
  %bf.lshr8 = lshr i32 %bf.load7, 3, !dbg !2615
  %conv = zext i32 %bf.lshr8 to i64, !dbg !2613
  %call = call i32 @raxIteratorAddChars(%struct.raxIterator* %6, i8* %arraydecay, i64 %conv), !dbg !2616
  %tobool9 = icmp ne i32 %call, 0, !dbg !2616
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !2617

if.then10:                                        ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !2618
  br label %return, !dbg !2618

if.end:                                           ; preds = %if.then
  br label %if.end22, !dbg !2619

if.else:                                          ; preds = %while.body
  %12 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2620
  %13 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2623
  %node11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %13, i32 0, i32 7, !dbg !2624
  %14 = load %struct.raxNode*, %struct.raxNode** %node11, align 8, !dbg !2624
  %data12 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %14, i32 0, i32 1, !dbg !2625
  %arraydecay13 = getelementptr inbounds [0 x i8], [0 x i8]* %data12, i64 0, i64 0, !dbg !2623
  %15 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2626
  %node14 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %15, i32 0, i32 7, !dbg !2627
  %16 = load %struct.raxNode*, %struct.raxNode** %node14, align 8, !dbg !2627
  %17 = bitcast %struct.raxNode* %16 to i32*, !dbg !2628
  %bf.load15 = load i32, i32* %17, align 4, !dbg !2628
  %bf.lshr16 = lshr i32 %bf.load15, 3, !dbg !2628
  %idx.ext = sext i32 %bf.lshr16 to i64, !dbg !2629
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay13, i64 %idx.ext, !dbg !2629
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !2630
  %call18 = call i32 @raxIteratorAddChars(%struct.raxIterator* %12, i8* %add.ptr17, i64 1), !dbg !2631
  %tobool19 = icmp ne i32 %call18, 0, !dbg !2631
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2632

if.then20:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !2633
  br label %return, !dbg !2633

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !2634, metadata !DIExpression()), !dbg !2635
  %18 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node23 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %18, i32 0, i32 7, !dbg !2636
  %19 = load %struct.raxNode*, %struct.raxNode** %node23, align 8, !dbg !2636
  %20 = bitcast %struct.raxNode* %19 to i8*, !dbg !2636
  %21 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node24 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %21, i32 0, i32 7, !dbg !2636
  %22 = load %struct.raxNode*, %struct.raxNode** %node24, align 8, !dbg !2636
  %23 = bitcast %struct.raxNode* %22 to i32*, !dbg !2636
  %bf.load25 = load i32, i32* %23, align 4, !dbg !2636
  %bf.lshr26 = lshr i32 %bf.load25, 3, !dbg !2636
  %conv27 = zext i32 %bf.lshr26 to i64, !dbg !2636
  %add = add i64 4, %conv27, !dbg !2636
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 7, !dbg !2636
  %25 = load %struct.raxNode*, %struct.raxNode** %node28, align 8, !dbg !2636
  %26 = bitcast %struct.raxNode* %25 to i32*, !dbg !2636
  %bf.load29 = load i32, i32* %26, align 4, !dbg !2636
  %bf.lshr30 = lshr i32 %bf.load29, 3, !dbg !2636
  %add31 = add nsw i32 %bf.lshr30, 4, !dbg !2636
  %conv32 = sext i32 %add31 to i64, !dbg !2636
  %rem = urem i64 %conv32, 8, !dbg !2636
  %sub = sub i64 8, %rem, !dbg !2636
  %and = and i64 %sub, 7, !dbg !2636
  %add33 = add i64 %add, %and, !dbg !2636
  %27 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node34 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %27, i32 0, i32 7, !dbg !2636
  %28 = load %struct.raxNode*, %struct.raxNode** %node34, align 8, !dbg !2636
  %29 = bitcast %struct.raxNode* %28 to i32*, !dbg !2636
  %bf.load35 = load i32, i32* %29, align 4, !dbg !2636
  %bf.lshr36 = lshr i32 %bf.load35, 2, !dbg !2636
  %bf.clear37 = and i32 %bf.lshr36, 1, !dbg !2636
  %tobool38 = icmp ne i32 %bf.clear37, 0, !dbg !2636
  br i1 %tobool38, label %cond.true, label %cond.false, !dbg !2636

cond.true:                                        ; preds = %if.end22
  br label %cond.end, !dbg !2636

cond.false:                                       ; preds = %if.end22
  %30 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %30, i32 0, i32 7, !dbg !2636
  %31 = load %struct.raxNode*, %struct.raxNode** %node39, align 8, !dbg !2636
  %32 = bitcast %struct.raxNode* %31 to i32*, !dbg !2636
  %bf.load40 = load i32, i32* %32, align 4, !dbg !2636
  %bf.lshr41 = lshr i32 %bf.load40, 3, !dbg !2636
  %conv42 = zext i32 %bf.lshr41 to i64, !dbg !2636
  %mul = mul i64 8, %conv42, !dbg !2636
  br label %cond.end, !dbg !2636

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !2636
  %add43 = add i64 %add33, %cond, !dbg !2636
  %33 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node44 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %33, i32 0, i32 7, !dbg !2636
  %34 = load %struct.raxNode*, %struct.raxNode** %node44, align 8, !dbg !2636
  %35 = bitcast %struct.raxNode* %34 to i32*, !dbg !2636
  %bf.load45 = load i32, i32* %35, align 4, !dbg !2636
  %bf.clear46 = and i32 %bf.load45, 1, !dbg !2636
  %tobool47 = icmp ne i32 %bf.clear46, 0, !dbg !2636
  br i1 %tobool47, label %land.rhs, label %land.end, !dbg !2636

land.rhs:                                         ; preds = %cond.end
  %36 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node48 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %36, i32 0, i32 7, !dbg !2636
  %37 = load %struct.raxNode*, %struct.raxNode** %node48, align 8, !dbg !2636
  %38 = bitcast %struct.raxNode* %37 to i32*, !dbg !2636
  %bf.load49 = load i32, i32* %38, align 4, !dbg !2636
  %bf.lshr50 = lshr i32 %bf.load49, 1, !dbg !2636
  %bf.clear51 = and i32 %bf.lshr50, 1, !dbg !2636
  %tobool52 = icmp ne i32 %bf.clear51, 0, !dbg !2636
  %lnot = xor i1 %tobool52, true, !dbg !2636
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %39 = phi i1 [ false, %cond.end ], [ %lnot, %land.rhs ], !dbg !2637
  %land.ext = zext i1 %39 to i32, !dbg !2636
  %conv53 = sext i32 %land.ext to i64, !dbg !2636
  %mul54 = mul i64 %conv53, 8, !dbg !2636
  %add55 = add i64 %add43, %mul54, !dbg !2636
  %add.ptr56 = getelementptr inbounds i8, i8* %20, i64 %add55, !dbg !2636
  %add.ptr57 = getelementptr inbounds i8, i8* %add.ptr56, i64 -8, !dbg !2636
  %40 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node58 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %40, i32 0, i32 7, !dbg !2636
  %41 = load %struct.raxNode*, %struct.raxNode** %node58, align 8, !dbg !2636
  %42 = bitcast %struct.raxNode* %41 to i32*, !dbg !2636
  %bf.load59 = load i32, i32* %42, align 4, !dbg !2636
  %bf.clear60 = and i32 %bf.load59, 1, !dbg !2636
  %tobool61 = icmp ne i32 %bf.clear60, 0, !dbg !2636
  br i1 %tobool61, label %land.rhs62, label %land.end69, !dbg !2636

land.rhs62:                                       ; preds = %land.end
  %43 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2636
  %node63 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %43, i32 0, i32 7, !dbg !2636
  %44 = load %struct.raxNode*, %struct.raxNode** %node63, align 8, !dbg !2636
  %45 = bitcast %struct.raxNode* %44 to i32*, !dbg !2636
  %bf.load64 = load i32, i32* %45, align 4, !dbg !2636
  %bf.lshr65 = lshr i32 %bf.load64, 1, !dbg !2636
  %bf.clear66 = and i32 %bf.lshr65, 1, !dbg !2636
  %tobool67 = icmp ne i32 %bf.clear66, 0, !dbg !2636
  %lnot68 = xor i1 %tobool67, true, !dbg !2636
  br label %land.end69

land.end69:                                       ; preds = %land.rhs62, %land.end
  %46 = phi i1 [ false, %land.end ], [ %lnot68, %land.rhs62 ], !dbg !2637
  %47 = zext i1 %46 to i64, !dbg !2636
  %cond71 = select i1 %46, i64 8, i64 0, !dbg !2636
  %idx.neg = sub i64 0, %cond71, !dbg !2636
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr57, i64 %idx.neg, !dbg !2636
  %48 = bitcast i8* %add.ptr72 to %struct.raxNode**, !dbg !2636
  store %struct.raxNode** %48, %struct.raxNode*** %cp, align 8, !dbg !2635
  %49 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2638
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %49, i32 0, i32 8, !dbg !2640
  %50 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2641
  %node73 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %50, i32 0, i32 7, !dbg !2642
  %51 = load %struct.raxNode*, %struct.raxNode** %node73, align 8, !dbg !2642
  %52 = bitcast %struct.raxNode* %51 to i8*, !dbg !2641
  %call74 = call i32 @raxStackPush(%struct.raxStack* %stack, i8* %52), !dbg !2643
  %tobool75 = icmp ne i32 %call74, 0, !dbg !2643
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !2644

if.then76:                                        ; preds = %land.end69
  store i32 0, i32* %retval, align 4, !dbg !2645
  br label %return, !dbg !2645

if.end77:                                         ; preds = %land.end69
  %53 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2646
  %node78 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %53, i32 0, i32 7, !dbg !2647
  %54 = bitcast %struct.raxNode** %node78 to i8*, !dbg !2648
  %55 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2649
  %56 = bitcast %struct.raxNode** %55 to i8*, !dbg !2648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %56, i64 8, i1 false), !dbg !2648
  br label %while.cond, !dbg !2597, !llvm.loop !2650

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4, !dbg !2652
  br label %return, !dbg !2652

return:                                           ; preds = %while.end, %if.then76, %if.then20, %if.then10
  %57 = load i32, i32* %retval, align 4, !dbg !2653
  ret i32 %57, !dbg !2653
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxIteratorPrevStep(%struct.raxIterator* %it, i32 %noup) #0 !dbg !2654 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %noup.addr = alloca i32, align 4
  %orig_key_len = alloca i64, align 8
  %orig_stack_items = alloca i64, align 8
  %orig_node = alloca %struct.raxNode*, align 8
  %old_noup = alloca i32, align 4
  %prevchild = alloca i8, align 1
  %todel = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %i = alloca i32, align 4
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i32 %noup, i32* %noup.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %noup.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2659
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 0, !dbg !2661
  %1 = load i32, i32* %flags, align 8, !dbg !2661
  %and = and i32 %1, 2, !dbg !2662
  %tobool = icmp ne i32 %and, 0, !dbg !2662
  br i1 %tobool, label %if.then, label %if.else, !dbg !2663

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2664
  br label %return, !dbg !2664

if.else:                                          ; preds = %entry
  %2 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2666
  %flags1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i32 0, i32 0, !dbg !2668
  %3 = load i32, i32* %flags1, align 8, !dbg !2668
  %and2 = and i32 %3, 1, !dbg !2669
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2669
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2670

if.then4:                                         ; preds = %if.else
  %4 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2671
  %flags5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %4, i32 0, i32 0, !dbg !2673
  %5 = load i32, i32* %flags5, align 8, !dbg !2674
  %and6 = and i32 %5, -2, !dbg !2674
  store i32 %and6, i32* %flags5, align 8, !dbg !2674
  store i32 1, i32* %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %orig_key_len, metadata !2676, metadata !DIExpression()), !dbg !2677
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2678
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 4, !dbg !2679
  %7 = load i64, i64* %key_len, align 8, !dbg !2679
  store i64 %7, i64* %orig_key_len, align 8, !dbg !2677
  call void @llvm.dbg.declare(metadata i64* %orig_stack_items, metadata !2680, metadata !DIExpression()), !dbg !2681
  %8 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2682
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %8, i32 0, i32 8, !dbg !2683
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack, i32 0, i32 1, !dbg !2684
  %9 = load i64, i64* %items, align 8, !dbg !2684
  store i64 %9, i64* %orig_stack_items, align 8, !dbg !2681
  call void @llvm.dbg.declare(metadata %struct.raxNode** %orig_node, metadata !2685, metadata !DIExpression()), !dbg !2686
  %10 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2687
  %node = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %10, i32 0, i32 7, !dbg !2688
  %11 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !2688
  store %struct.raxNode* %11, %struct.raxNode** %orig_node, align 8, !dbg !2686
  br label %while.body, !dbg !2689

while.body:                                       ; preds = %if.end7, %if.end145
  call void @llvm.dbg.declare(metadata i32* %old_noup, metadata !2690, metadata !DIExpression()), !dbg !2692
  %12 = load i32, i32* %noup.addr, align 4, !dbg !2693
  store i32 %12, i32* %old_noup, align 4, !dbg !2692
  %13 = load i32, i32* %noup.addr, align 4, !dbg !2694
  %tobool8 = icmp ne i32 %13, 0, !dbg !2694
  br i1 %tobool8, label %if.end16, label %land.lhs.true, !dbg !2696

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2697
  %node9 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i32 0, i32 7, !dbg !2698
  %15 = load %struct.raxNode*, %struct.raxNode** %node9, align 8, !dbg !2698
  %16 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2699
  %rt = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %16, i32 0, i32 1, !dbg !2700
  %17 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !2700
  %head = getelementptr inbounds %struct.rax, %struct.rax* %17, i32 0, i32 0, !dbg !2701
  %18 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !2701
  %cmp = icmp eq %struct.raxNode* %15, %18, !dbg !2702
  br i1 %cmp, label %if.then10, label %if.end16, !dbg !2703

if.then10:                                        ; preds = %land.lhs.true
  %19 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2704
  %flags11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %19, i32 0, i32 0, !dbg !2706
  %20 = load i32, i32* %flags11, align 8, !dbg !2707
  %or = or i32 %20, 2, !dbg !2707
  store i32 %or, i32* %flags11, align 8, !dbg !2707
  %21 = load i64, i64* %orig_stack_items, align 8, !dbg !2708
  %22 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2709
  %stack12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %22, i32 0, i32 8, !dbg !2710
  %items13 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack12, i32 0, i32 1, !dbg !2711
  store i64 %21, i64* %items13, align 8, !dbg !2712
  %23 = load i64, i64* %orig_key_len, align 8, !dbg !2713
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2714
  %key_len14 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 4, !dbg !2715
  store i64 %23, i64* %key_len14, align 8, !dbg !2716
  %25 = load %struct.raxNode*, %struct.raxNode** %orig_node, align 8, !dbg !2717
  %26 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2718
  %node15 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %26, i32 0, i32 7, !dbg !2719
  store %struct.raxNode* %25, %struct.raxNode** %node15, align 8, !dbg !2720
  store i32 1, i32* %retval, align 4, !dbg !2721
  br label %return, !dbg !2721

if.end16:                                         ; preds = %land.lhs.true, %while.body
  call void @llvm.dbg.declare(metadata i8* %prevchild, metadata !2722, metadata !DIExpression()), !dbg !2723
  %27 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2724
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %27, i32 0, i32 2, !dbg !2725
  %28 = load i8*, i8** %key, align 8, !dbg !2725
  %29 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2726
  %key_len17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %29, i32 0, i32 4, !dbg !2727
  %30 = load i64, i64* %key_len17, align 8, !dbg !2727
  %sub = sub i64 %30, 1, !dbg !2728
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 %sub, !dbg !2724
  %31 = load i8, i8* %arrayidx, align 1, !dbg !2724
  store i8 %31, i8* %prevchild, align 1, !dbg !2723
  %32 = load i32, i32* %noup.addr, align 4, !dbg !2729
  %tobool18 = icmp ne i32 %32, 0, !dbg !2729
  br i1 %tobool18, label %if.else22, label %if.then19, !dbg !2731

if.then19:                                        ; preds = %if.end16
  %33 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2732
  %stack20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %33, i32 0, i32 8, !dbg !2734
  %call = call i8* @raxStackPop(%struct.raxStack* %stack20), !dbg !2735
  %34 = bitcast i8* %call to %struct.raxNode*, !dbg !2735
  %35 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2736
  %node21 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %35, i32 0, i32 7, !dbg !2737
  store %struct.raxNode* %34, %struct.raxNode** %node21, align 8, !dbg !2738
  br label %if.end23, !dbg !2739

if.else22:                                        ; preds = %if.end16
  store i32 0, i32* %noup.addr, align 4, !dbg !2740
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then19
  call void @llvm.dbg.declare(metadata i32* %todel, metadata !2742, metadata !DIExpression()), !dbg !2743
  %36 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2744
  %node24 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %36, i32 0, i32 7, !dbg !2745
  %37 = load %struct.raxNode*, %struct.raxNode** %node24, align 8, !dbg !2745
  %38 = bitcast %struct.raxNode* %37 to i32*, !dbg !2746
  %bf.load = load i32, i32* %38, align 4, !dbg !2746
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !2746
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2746
  %tobool25 = icmp ne i32 %bf.clear, 0, !dbg !2744
  br i1 %tobool25, label %cond.true, label %cond.false, !dbg !2744

cond.true:                                        ; preds = %if.end23
  %39 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2747
  %node26 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %39, i32 0, i32 7, !dbg !2748
  %40 = load %struct.raxNode*, %struct.raxNode** %node26, align 8, !dbg !2748
  %41 = bitcast %struct.raxNode* %40 to i32*, !dbg !2749
  %bf.load27 = load i32, i32* %41, align 4, !dbg !2749
  %bf.lshr28 = lshr i32 %bf.load27, 3, !dbg !2749
  br label %cond.end, !dbg !2744

cond.false:                                       ; preds = %if.end23
  br label %cond.end, !dbg !2744

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %bf.lshr28, %cond.true ], [ 1, %cond.false ], !dbg !2744
  store i32 %cond, i32* %todel, align 4, !dbg !2743
  %42 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2750
  %43 = load i32, i32* %todel, align 4, !dbg !2751
  %conv = sext i32 %43 to i64, !dbg !2751
  call void @raxIteratorDelChars(%struct.raxIterator* %42, i64 %conv), !dbg !2752
  %44 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2753
  %node29 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %44, i32 0, i32 7, !dbg !2755
  %45 = load %struct.raxNode*, %struct.raxNode** %node29, align 8, !dbg !2755
  %46 = bitcast %struct.raxNode* %45 to i32*, !dbg !2756
  %bf.load30 = load i32, i32* %46, align 4, !dbg !2756
  %bf.lshr31 = lshr i32 %bf.load30, 2, !dbg !2756
  %bf.clear32 = and i32 %bf.lshr31, 1, !dbg !2756
  %tobool33 = icmp ne i32 %bf.clear32, 0, !dbg !2753
  br i1 %tobool33, label %if.end136, label %land.lhs.true34, !dbg !2757

land.lhs.true34:                                  ; preds = %cond.end
  %47 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2758
  %node35 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %47, i32 0, i32 7, !dbg !2759
  %48 = load %struct.raxNode*, %struct.raxNode** %node35, align 8, !dbg !2759
  %49 = bitcast %struct.raxNode* %48 to i32*, !dbg !2760
  %bf.load36 = load i32, i32* %49, align 4, !dbg !2760
  %bf.lshr37 = lshr i32 %bf.load36, 3, !dbg !2760
  %50 = load i32, i32* %old_noup, align 4, !dbg !2761
  %tobool38 = icmp ne i32 %50, 0, !dbg !2761
  %51 = zext i1 %tobool38 to i64, !dbg !2761
  %cond39 = select i1 %tobool38, i32 0, i32 1, !dbg !2761
  %cmp40 = icmp sgt i32 %bf.lshr37, %cond39, !dbg !2762
  br i1 %cmp40, label %if.then42, label %if.end136, !dbg !2763

if.then42:                                        ; preds = %land.lhs.true34
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !2764, metadata !DIExpression()), !dbg !2766
  %52 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node43 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %52, i32 0, i32 7, !dbg !2767
  %53 = load %struct.raxNode*, %struct.raxNode** %node43, align 8, !dbg !2767
  %54 = bitcast %struct.raxNode* %53 to i8*, !dbg !2767
  %55 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node44 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %55, i32 0, i32 7, !dbg !2767
  %56 = load %struct.raxNode*, %struct.raxNode** %node44, align 8, !dbg !2767
  %57 = bitcast %struct.raxNode* %56 to i32*, !dbg !2767
  %bf.load45 = load i32, i32* %57, align 4, !dbg !2767
  %bf.lshr46 = lshr i32 %bf.load45, 3, !dbg !2767
  %conv47 = zext i32 %bf.lshr46 to i64, !dbg !2767
  %add = add i64 4, %conv47, !dbg !2767
  %58 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node48 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %58, i32 0, i32 7, !dbg !2767
  %59 = load %struct.raxNode*, %struct.raxNode** %node48, align 8, !dbg !2767
  %60 = bitcast %struct.raxNode* %59 to i32*, !dbg !2767
  %bf.load49 = load i32, i32* %60, align 4, !dbg !2767
  %bf.lshr50 = lshr i32 %bf.load49, 3, !dbg !2767
  %add51 = add nsw i32 %bf.lshr50, 4, !dbg !2767
  %conv52 = sext i32 %add51 to i64, !dbg !2767
  %rem = urem i64 %conv52, 8, !dbg !2767
  %sub53 = sub i64 8, %rem, !dbg !2767
  %and54 = and i64 %sub53, 7, !dbg !2767
  %add55 = add i64 %add, %and54, !dbg !2767
  %61 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node56 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %61, i32 0, i32 7, !dbg !2767
  %62 = load %struct.raxNode*, %struct.raxNode** %node56, align 8, !dbg !2767
  %63 = bitcast %struct.raxNode* %62 to i32*, !dbg !2767
  %bf.load57 = load i32, i32* %63, align 4, !dbg !2767
  %bf.lshr58 = lshr i32 %bf.load57, 2, !dbg !2767
  %bf.clear59 = and i32 %bf.lshr58, 1, !dbg !2767
  %tobool60 = icmp ne i32 %bf.clear59, 0, !dbg !2767
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2767

cond.true61:                                      ; preds = %if.then42
  br label %cond.end67, !dbg !2767

cond.false62:                                     ; preds = %if.then42
  %64 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node63 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %64, i32 0, i32 7, !dbg !2767
  %65 = load %struct.raxNode*, %struct.raxNode** %node63, align 8, !dbg !2767
  %66 = bitcast %struct.raxNode* %65 to i32*, !dbg !2767
  %bf.load64 = load i32, i32* %66, align 4, !dbg !2767
  %bf.lshr65 = lshr i32 %bf.load64, 3, !dbg !2767
  %conv66 = zext i32 %bf.lshr65 to i64, !dbg !2767
  %mul = mul i64 8, %conv66, !dbg !2767
  br label %cond.end67, !dbg !2767

cond.end67:                                       ; preds = %cond.false62, %cond.true61
  %cond68 = phi i64 [ 8, %cond.true61 ], [ %mul, %cond.false62 ], !dbg !2767
  %add69 = add i64 %add55, %cond68, !dbg !2767
  %67 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node70 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %67, i32 0, i32 7, !dbg !2767
  %68 = load %struct.raxNode*, %struct.raxNode** %node70, align 8, !dbg !2767
  %69 = bitcast %struct.raxNode* %68 to i32*, !dbg !2767
  %bf.load71 = load i32, i32* %69, align 4, !dbg !2767
  %bf.clear72 = and i32 %bf.load71, 1, !dbg !2767
  %tobool73 = icmp ne i32 %bf.clear72, 0, !dbg !2767
  br i1 %tobool73, label %land.rhs, label %land.end, !dbg !2767

land.rhs:                                         ; preds = %cond.end67
  %70 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node74 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %70, i32 0, i32 7, !dbg !2767
  %71 = load %struct.raxNode*, %struct.raxNode** %node74, align 8, !dbg !2767
  %72 = bitcast %struct.raxNode* %71 to i32*, !dbg !2767
  %bf.load75 = load i32, i32* %72, align 4, !dbg !2767
  %bf.lshr76 = lshr i32 %bf.load75, 1, !dbg !2767
  %bf.clear77 = and i32 %bf.lshr76, 1, !dbg !2767
  %tobool78 = icmp ne i32 %bf.clear77, 0, !dbg !2767
  %lnot = xor i1 %tobool78, true, !dbg !2767
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end67
  %73 = phi i1 [ false, %cond.end67 ], [ %lnot, %land.rhs ], !dbg !2768
  %land.ext = zext i1 %73 to i32, !dbg !2767
  %conv79 = sext i32 %land.ext to i64, !dbg !2767
  %mul80 = mul i64 %conv79, 8, !dbg !2767
  %add81 = add i64 %add69, %mul80, !dbg !2767
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %add81, !dbg !2767
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !2767
  %74 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node83 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %74, i32 0, i32 7, !dbg !2767
  %75 = load %struct.raxNode*, %struct.raxNode** %node83, align 8, !dbg !2767
  %76 = bitcast %struct.raxNode* %75 to i32*, !dbg !2767
  %bf.load84 = load i32, i32* %76, align 4, !dbg !2767
  %bf.clear85 = and i32 %bf.load84, 1, !dbg !2767
  %tobool86 = icmp ne i32 %bf.clear85, 0, !dbg !2767
  br i1 %tobool86, label %land.rhs87, label %land.end94, !dbg !2767

land.rhs87:                                       ; preds = %land.end
  %77 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2767
  %node88 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %77, i32 0, i32 7, !dbg !2767
  %78 = load %struct.raxNode*, %struct.raxNode** %node88, align 8, !dbg !2767
  %79 = bitcast %struct.raxNode* %78 to i32*, !dbg !2767
  %bf.load89 = load i32, i32* %79, align 4, !dbg !2767
  %bf.lshr90 = lshr i32 %bf.load89, 1, !dbg !2767
  %bf.clear91 = and i32 %bf.lshr90, 1, !dbg !2767
  %tobool92 = icmp ne i32 %bf.clear91, 0, !dbg !2767
  %lnot93 = xor i1 %tobool92, true, !dbg !2767
  br label %land.end94

land.end94:                                       ; preds = %land.rhs87, %land.end
  %80 = phi i1 [ false, %land.end ], [ %lnot93, %land.rhs87 ], !dbg !2768
  %81 = zext i1 %80 to i64, !dbg !2767
  %cond96 = select i1 %80, i64 8, i64 0, !dbg !2767
  %idx.neg = sub i64 0, %cond96, !dbg !2767
  %add.ptr97 = getelementptr inbounds i8, i8* %add.ptr82, i64 %idx.neg, !dbg !2767
  %82 = bitcast i8* %add.ptr97 to %struct.raxNode**, !dbg !2767
  store %struct.raxNode** %82, %struct.raxNode*** %cp, align 8, !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2769, metadata !DIExpression()), !dbg !2770
  %83 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2771
  %node98 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %83, i32 0, i32 7, !dbg !2772
  %84 = load %struct.raxNode*, %struct.raxNode** %node98, align 8, !dbg !2772
  %85 = bitcast %struct.raxNode* %84 to i32*, !dbg !2773
  %bf.load99 = load i32, i32* %85, align 4, !dbg !2773
  %bf.lshr100 = lshr i32 %bf.load99, 3, !dbg !2773
  %sub101 = sub nsw i32 %bf.lshr100, 1, !dbg !2774
  store i32 %sub101, i32* %i, align 4, !dbg !2770
  br label %while.cond102, !dbg !2775

while.cond102:                                    ; preds = %if.end113, %land.end94
  %86 = load i32, i32* %i, align 4, !dbg !2776
  %cmp103 = icmp sge i32 %86, 0, !dbg !2777
  br i1 %cmp103, label %while.body105, label %while.end, !dbg !2775

while.body105:                                    ; preds = %while.cond102
  %87 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2778
  %node106 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %87, i32 0, i32 7, !dbg !2781
  %88 = load %struct.raxNode*, %struct.raxNode** %node106, align 8, !dbg !2781
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %88, i32 0, i32 1, !dbg !2782
  %89 = load i32, i32* %i, align 4, !dbg !2783
  %idxprom = sext i32 %89 to i64, !dbg !2778
  %arrayidx107 = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 %idxprom, !dbg !2778
  %90 = load i8, i8* %arrayidx107, align 1, !dbg !2778
  %conv108 = zext i8 %90 to i32, !dbg !2778
  %91 = load i8, i8* %prevchild, align 1, !dbg !2784
  %conv109 = zext i8 %91 to i32, !dbg !2784
  %cmp110 = icmp slt i32 %conv108, %conv109, !dbg !2785
  br i1 %cmp110, label %if.then112, label %if.end113, !dbg !2786

if.then112:                                       ; preds = %while.body105
  br label %while.end, !dbg !2787

if.end113:                                        ; preds = %while.body105
  %92 = load i32, i32* %i, align 4, !dbg !2788
  %dec = add nsw i32 %92, -1, !dbg !2788
  store i32 %dec, i32* %i, align 4, !dbg !2788
  %93 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2789
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %93, i32 -1, !dbg !2789
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp, align 8, !dbg !2789
  br label %while.cond102, !dbg !2775, !llvm.loop !2790

while.end:                                        ; preds = %if.then112, %while.cond102
  %94 = load i32, i32* %i, align 4, !dbg !2792
  %cmp114 = icmp ne i32 %94, -1, !dbg !2794
  br i1 %cmp114, label %if.then116, label %if.end135, !dbg !2795

if.then116:                                       ; preds = %while.end
  %95 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2796
  %96 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2799
  %node117 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %96, i32 0, i32 7, !dbg !2800
  %97 = load %struct.raxNode*, %struct.raxNode** %node117, align 8, !dbg !2800
  %data118 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %97, i32 0, i32 1, !dbg !2801
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data118, i64 0, i64 0, !dbg !2799
  %98 = load i32, i32* %i, align 4, !dbg !2802
  %idx.ext = sext i32 %98 to i64, !dbg !2803
  %add.ptr119 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !2803
  %call120 = call i32 @raxIteratorAddChars(%struct.raxIterator* %95, i8* %add.ptr119, i64 1), !dbg !2804
  %tobool121 = icmp ne i32 %call120, 0, !dbg !2804
  br i1 %tobool121, label %if.end123, label %if.then122, !dbg !2805

if.then122:                                       ; preds = %if.then116
  store i32 0, i32* %retval, align 4, !dbg !2806
  br label %return, !dbg !2806

if.end123:                                        ; preds = %if.then116
  %99 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2807
  %stack124 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %99, i32 0, i32 8, !dbg !2809
  %100 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2810
  %node125 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %100, i32 0, i32 7, !dbg !2811
  %101 = load %struct.raxNode*, %struct.raxNode** %node125, align 8, !dbg !2811
  %102 = bitcast %struct.raxNode* %101 to i8*, !dbg !2810
  %call126 = call i32 @raxStackPush(%struct.raxStack* %stack124, i8* %102), !dbg !2812
  %tobool127 = icmp ne i32 %call126, 0, !dbg !2812
  br i1 %tobool127, label %if.end129, label %if.then128, !dbg !2813

if.then128:                                       ; preds = %if.end123
  store i32 0, i32* %retval, align 4, !dbg !2814
  br label %return, !dbg !2814

if.end129:                                        ; preds = %if.end123
  %103 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2815
  %node130 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %103, i32 0, i32 7, !dbg !2816
  %104 = bitcast %struct.raxNode** %node130 to i8*, !dbg !2817
  %105 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !2818
  %106 = bitcast %struct.raxNode** %105 to i8*, !dbg !2817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %106, i64 8, i1 false), !dbg !2817
  %107 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2819
  %call131 = call i32 @raxSeekGreatest(%struct.raxIterator* %107), !dbg !2821
  %tobool132 = icmp ne i32 %call131, 0, !dbg !2821
  br i1 %tobool132, label %if.end134, label %if.then133, !dbg !2822

if.then133:                                       ; preds = %if.end129
  store i32 0, i32* %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

if.end134:                                        ; preds = %if.end129
  br label %if.end135, !dbg !2824

if.end135:                                        ; preds = %if.end134, %while.end
  br label %if.end136, !dbg !2825

if.end136:                                        ; preds = %if.end135, %land.lhs.true34, %cond.end
  %108 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2826
  %node137 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %108, i32 0, i32 7, !dbg !2828
  %109 = load %struct.raxNode*, %struct.raxNode** %node137, align 8, !dbg !2828
  %110 = bitcast %struct.raxNode* %109 to i32*, !dbg !2829
  %bf.load138 = load i32, i32* %110, align 4, !dbg !2829
  %bf.clear139 = and i32 %bf.load138, 1, !dbg !2829
  %tobool140 = icmp ne i32 %bf.clear139, 0, !dbg !2826
  br i1 %tobool140, label %if.then141, label %if.end145, !dbg !2830

if.then141:                                       ; preds = %if.end136
  %111 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2831
  %node142 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %111, i32 0, i32 7, !dbg !2833
  %112 = load %struct.raxNode*, %struct.raxNode** %node142, align 8, !dbg !2833
  %call143 = call i8* @raxGetData(%struct.raxNode* %112), !dbg !2834
  %113 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2835
  %data144 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %113, i32 0, i32 3, !dbg !2836
  store i8* %call143, i8** %data144, align 8, !dbg !2837
  store i32 1, i32* %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

if.end145:                                        ; preds = %if.end136
  br label %while.body, !dbg !2689, !llvm.loop !2839

return:                                           ; preds = %if.then141, %if.then133, %if.then128, %if.then122, %if.then10, %if.then4, %if.then
  %114 = load i32, i32* %retval, align 4, !dbg !2841
  ret i32 %114, !dbg !2841
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxSeek(%struct.raxIterator* %it, i8* %op, i8* %ele, i64 %len) #0 !dbg !2842 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %op.addr = alloca i8*, align 8
  %ele.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %eq = alloca i32, align 4
  %lt = alloca i32, align 4
  %gt = alloca i32, align 4
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %splitpos = alloca i32, align 4
  %i = alloca i64, align 8
  %nodechar = alloca i32, align 4
  %keychar = alloca i32, align 4
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !2847, metadata !DIExpression()), !dbg !2848
  store i8* %op, i8** %op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !2849, metadata !DIExpression()), !dbg !2850
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !2855, metadata !DIExpression()), !dbg !2856
  store i32 0, i32* %eq, align 4, !dbg !2856
  call void @llvm.dbg.declare(metadata i32* %lt, metadata !2857, metadata !DIExpression()), !dbg !2858
  store i32 0, i32* %lt, align 4, !dbg !2858
  call void @llvm.dbg.declare(metadata i32* %gt, metadata !2859, metadata !DIExpression()), !dbg !2860
  store i32 0, i32* %gt, align 4, !dbg !2860
  call void @llvm.dbg.declare(metadata i32* %first, metadata !2861, metadata !DIExpression()), !dbg !2862
  store i32 0, i32* %first, align 4, !dbg !2862
  call void @llvm.dbg.declare(metadata i32* %last, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i32 0, i32* %last, align 4, !dbg !2864
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2865
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 8, !dbg !2866
  %items = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack, i32 0, i32 1, !dbg !2867
  store i64 0, i64* %items, align 8, !dbg !2868
  %1 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2869
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %1, i32 0, i32 0, !dbg !2870
  %2 = load i32, i32* %flags, align 8, !dbg !2871
  %or = or i32 %2, 1, !dbg !2871
  store i32 %or, i32* %flags, align 8, !dbg !2871
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2872
  %flags1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 0, !dbg !2873
  %4 = load i32, i32* %flags1, align 8, !dbg !2874
  %and = and i32 %4, -3, !dbg !2874
  store i32 %and, i32* %flags1, align 8, !dbg !2874
  %5 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2875
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %5, i32 0, i32 4, !dbg !2876
  store i64 0, i64* %key_len, align 8, !dbg !2877
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2878
  %node = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 7, !dbg !2879
  store %struct.raxNode* null, %struct.raxNode** %node, align 8, !dbg !2880
  %7 = load i8*, i8** %op.addr, align 8, !dbg !2881
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0, !dbg !2881
  %8 = load i8, i8* %arrayidx, align 1, !dbg !2881
  %conv = sext i8 %8 to i32, !dbg !2881
  %cmp = icmp eq i32 %conv, 62, !dbg !2883
  br i1 %cmp, label %if.then, label %if.else, !dbg !2884

if.then:                                          ; preds = %entry
  store i32 1, i32* %gt, align 4, !dbg !2885
  %9 = load i8*, i8** %op.addr, align 8, !dbg !2887
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2887
  %10 = load i8, i8* %arrayidx3, align 1, !dbg !2887
  %conv4 = sext i8 %10 to i32, !dbg !2887
  %cmp5 = icmp eq i32 %conv4, 61, !dbg !2889
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !2890

if.then7:                                         ; preds = %if.then
  store i32 1, i32* %eq, align 4, !dbg !2891
  br label %if.end, !dbg !2892

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end42, !dbg !2893

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %op.addr, align 8, !dbg !2894
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 0, !dbg !2894
  %12 = load i8, i8* %arrayidx8, align 1, !dbg !2894
  %conv9 = sext i8 %12 to i32, !dbg !2894
  %cmp10 = icmp eq i32 %conv9, 60, !dbg !2896
  br i1 %cmp10, label %if.then12, label %if.else19, !dbg !2897

if.then12:                                        ; preds = %if.else
  store i32 1, i32* %lt, align 4, !dbg !2898
  %13 = load i8*, i8** %op.addr, align 8, !dbg !2900
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2900
  %14 = load i8, i8* %arrayidx13, align 1, !dbg !2900
  %conv14 = sext i8 %14 to i32, !dbg !2900
  %cmp15 = icmp eq i32 %conv14, 61, !dbg !2902
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !2903

if.then17:                                        ; preds = %if.then12
  store i32 1, i32* %eq, align 4, !dbg !2904
  br label %if.end18, !dbg !2905

if.end18:                                         ; preds = %if.then17, %if.then12
  br label %if.end41, !dbg !2906

if.else19:                                        ; preds = %if.else
  %15 = load i8*, i8** %op.addr, align 8, !dbg !2907
  %arrayidx20 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !2907
  %16 = load i8, i8* %arrayidx20, align 1, !dbg !2907
  %conv21 = sext i8 %16 to i32, !dbg !2907
  %cmp22 = icmp eq i32 %conv21, 61, !dbg !2909
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !2910

if.then24:                                        ; preds = %if.else19
  store i32 1, i32* %eq, align 4, !dbg !2911
  br label %if.end40, !dbg !2913

if.else25:                                        ; preds = %if.else19
  %17 = load i8*, i8** %op.addr, align 8, !dbg !2914
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !2914
  %18 = load i8, i8* %arrayidx26, align 1, !dbg !2914
  %conv27 = sext i8 %18 to i32, !dbg !2914
  %cmp28 = icmp eq i32 %conv27, 94, !dbg !2916
  br i1 %cmp28, label %if.then30, label %if.else31, !dbg !2917

if.then30:                                        ; preds = %if.else25
  store i32 1, i32* %first, align 4, !dbg !2918
  br label %if.end39, !dbg !2920

if.else31:                                        ; preds = %if.else25
  %19 = load i8*, i8** %op.addr, align 8, !dbg !2921
  %arrayidx32 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !2921
  %20 = load i8, i8* %arrayidx32, align 1, !dbg !2921
  %conv33 = sext i8 %20 to i32, !dbg !2921
  %cmp34 = icmp eq i32 %conv33, 36, !dbg !2923
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !2924

if.then36:                                        ; preds = %if.else31
  store i32 1, i32* %last, align 4, !dbg !2925
  br label %if.end38, !dbg !2927

if.else37:                                        ; preds = %if.else31
  %call = call i32* @__errno_location() #9, !dbg !2928
  store i32 0, i32* %call, align 4, !dbg !2930
  store i32 0, i32* %retval, align 4, !dbg !2931
  br label %return, !dbg !2931

if.end38:                                         ; preds = %if.then36
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then30
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then24
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end18
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end
  %21 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2932
  %rt = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %21, i32 0, i32 1, !dbg !2934
  %22 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !2934
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %22, i32 0, i32 1, !dbg !2935
  %23 = load i64, i64* %numele, align 8, !dbg !2935
  %cmp43 = icmp eq i64 %23, 0, !dbg !2936
  br i1 %cmp43, label %if.then45, label %if.end48, !dbg !2937

if.then45:                                        ; preds = %if.end42
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2938
  %flags46 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 0, !dbg !2940
  %25 = load i32, i32* %flags46, align 8, !dbg !2941
  %or47 = or i32 %25, 2, !dbg !2941
  store i32 %or47, i32* %flags46, align 8, !dbg !2941
  store i32 1, i32* %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

if.end48:                                         ; preds = %if.end42
  %26 = load i32, i32* %first, align 4, !dbg !2943
  %tobool = icmp ne i32 %26, 0, !dbg !2943
  br i1 %tobool, label %if.then49, label %if.end51, !dbg !2945

if.then49:                                        ; preds = %if.end48
  %27 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2946
  %call50 = call i32 @raxSeek(%struct.raxIterator* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* null, i64 0), !dbg !2948
  store i32 %call50, i32* %retval, align 4, !dbg !2949
  br label %return, !dbg !2949

if.end51:                                         ; preds = %if.end48
  %28 = load i32, i32* %last, align 4, !dbg !2950
  %tobool52 = icmp ne i32 %28, 0, !dbg !2950
  br i1 %tobool52, label %if.then53, label %if.end64, !dbg !2952

if.then53:                                        ; preds = %if.end51
  %29 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2953
  %rt54 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %29, i32 0, i32 1, !dbg !2955
  %30 = load %struct.rax*, %struct.rax** %rt54, align 8, !dbg !2955
  %head = getelementptr inbounds %struct.rax, %struct.rax* %30, i32 0, i32 0, !dbg !2956
  %31 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !2956
  %32 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2957
  %node55 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %32, i32 0, i32 7, !dbg !2958
  store %struct.raxNode* %31, %struct.raxNode** %node55, align 8, !dbg !2959
  %33 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2960
  %call56 = call i32 @raxSeekGreatest(%struct.raxIterator* %33), !dbg !2962
  %tobool57 = icmp ne i32 %call56, 0, !dbg !2962
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !2963

if.then58:                                        ; preds = %if.then53
  store i32 0, i32* %retval, align 4, !dbg !2964
  br label %return, !dbg !2964

if.end59:                                         ; preds = %if.then53
  %34 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2965
  %node60 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %34, i32 0, i32 7, !dbg !2965
  %35 = load %struct.raxNode*, %struct.raxNode** %node60, align 8, !dbg !2965
  %36 = bitcast %struct.raxNode* %35 to i32*, !dbg !2965
  %bf.load = load i32, i32* %36, align 4, !dbg !2965
  %bf.clear = and i32 %bf.load, 1, !dbg !2965
  %tobool61 = icmp ne i32 %bf.clear, 0, !dbg !2965
  br i1 %tobool61, label %cond.true, label %cond.false, !dbg !2965

cond.true:                                        ; preds = %if.end59
  br label %cond.end, !dbg !2965

cond.false:                                       ; preds = %if.end59
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1556, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.raxSeek, i64 0, i64 0)) #8, !dbg !2965
  unreachable, !dbg !2965

37:                                               ; No predecessors!
  br label %cond.end, !dbg !2965

cond.end:                                         ; preds = %37, %cond.true
  %38 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2966
  %node62 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %38, i32 0, i32 7, !dbg !2967
  %39 = load %struct.raxNode*, %struct.raxNode** %node62, align 8, !dbg !2967
  %call63 = call i8* @raxGetData(%struct.raxNode* %39), !dbg !2968
  %40 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2969
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %40, i32 0, i32 3, !dbg !2970
  store i8* %call63, i8** %data, align 8, !dbg !2971
  store i32 1, i32* %retval, align 4, !dbg !2972
  br label %return, !dbg !2972

if.end64:                                         ; preds = %if.end51
  call void @llvm.dbg.declare(metadata i32* %splitpos, metadata !2973, metadata !DIExpression()), !dbg !2974
  store i32 0, i32* %splitpos, align 4, !dbg !2974
  call void @llvm.dbg.declare(metadata i64* %i, metadata !2975, metadata !DIExpression()), !dbg !2976
  %41 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2977
  %rt65 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %41, i32 0, i32 1, !dbg !2978
  %42 = load %struct.rax*, %struct.rax** %rt65, align 8, !dbg !2978
  %43 = load i8*, i8** %ele.addr, align 8, !dbg !2979
  %44 = load i64, i64* %len.addr, align 8, !dbg !2980
  %45 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2981
  %node66 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %45, i32 0, i32 7, !dbg !2982
  %46 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2983
  %stack67 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %46, i32 0, i32 8, !dbg !2984
  %call68 = call i64 @raxLowWalk(%struct.rax* %42, i8* %43, i64 %44, %struct.raxNode** %node66, %struct.raxNode*** null, i32* %splitpos, %struct.raxStack* %stack67), !dbg !2985
  store i64 %call68, i64* %i, align 8, !dbg !2976
  %47 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2986
  %stack69 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %47, i32 0, i32 8, !dbg !2988
  %oom = getelementptr inbounds %struct.raxStack, %struct.raxStack* %stack69, i32 0, i32 4, !dbg !2989
  %48 = load i32, i32* %oom, align 8, !dbg !2989
  %tobool70 = icmp ne i32 %48, 0, !dbg !2986
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !2990

if.then71:                                        ; preds = %if.end64
  store i32 0, i32* %retval, align 4, !dbg !2991
  br label %return, !dbg !2991

if.end72:                                         ; preds = %if.end64
  %49 = load i32, i32* %eq, align 4, !dbg !2992
  %tobool73 = icmp ne i32 %49, 0, !dbg !2992
  br i1 %tobool73, label %land.lhs.true, label %if.else96, !dbg !2994

land.lhs.true:                                    ; preds = %if.end72
  %50 = load i64, i64* %i, align 8, !dbg !2995
  %51 = load i64, i64* %len.addr, align 8, !dbg !2996
  %cmp74 = icmp eq i64 %50, %51, !dbg !2997
  br i1 %cmp74, label %land.lhs.true76, label %if.else96, !dbg !2998

land.lhs.true76:                                  ; preds = %land.lhs.true
  %52 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !2999
  %node77 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %52, i32 0, i32 7, !dbg !3000
  %53 = load %struct.raxNode*, %struct.raxNode** %node77, align 8, !dbg !3000
  %54 = bitcast %struct.raxNode* %53 to i32*, !dbg !3001
  %bf.load78 = load i32, i32* %54, align 4, !dbg !3001
  %bf.lshr = lshr i32 %bf.load78, 2, !dbg !3001
  %bf.clear79 = and i32 %bf.lshr, 1, !dbg !3001
  %tobool80 = icmp ne i32 %bf.clear79, 0, !dbg !2999
  br i1 %tobool80, label %lor.lhs.false, label %land.lhs.true83, !dbg !3002

lor.lhs.false:                                    ; preds = %land.lhs.true76
  %55 = load i32, i32* %splitpos, align 4, !dbg !3003
  %cmp81 = icmp eq i32 %55, 0, !dbg !3004
  br i1 %cmp81, label %land.lhs.true83, label %if.else96, !dbg !3005

land.lhs.true83:                                  ; preds = %lor.lhs.false, %land.lhs.true76
  %56 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3006
  %node84 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %56, i32 0, i32 7, !dbg !3007
  %57 = load %struct.raxNode*, %struct.raxNode** %node84, align 8, !dbg !3007
  %58 = bitcast %struct.raxNode* %57 to i32*, !dbg !3008
  %bf.load85 = load i32, i32* %58, align 4, !dbg !3008
  %bf.clear86 = and i32 %bf.load85, 1, !dbg !3008
  %tobool87 = icmp ne i32 %bf.clear86, 0, !dbg !3006
  br i1 %tobool87, label %if.then88, label %if.else96, !dbg !3009

if.then88:                                        ; preds = %land.lhs.true83
  %59 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3010
  %60 = load i8*, i8** %ele.addr, align 8, !dbg !3013
  %61 = load i64, i64* %len.addr, align 8, !dbg !3014
  %call89 = call i32 @raxIteratorAddChars(%struct.raxIterator* %59, i8* %60, i64 %61), !dbg !3015
  %tobool90 = icmp ne i32 %call89, 0, !dbg !3015
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !3016

if.then91:                                        ; preds = %if.then88
  store i32 0, i32* %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

if.end92:                                         ; preds = %if.then88
  %62 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3018
  %node93 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %62, i32 0, i32 7, !dbg !3019
  %63 = load %struct.raxNode*, %struct.raxNode** %node93, align 8, !dbg !3019
  %call94 = call i8* @raxGetData(%struct.raxNode* %63), !dbg !3020
  %64 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3021
  %data95 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %64, i32 0, i32 3, !dbg !3022
  store i8* %call94, i8** %data95, align 8, !dbg !3023
  br label %if.end251, !dbg !3024

if.else96:                                        ; preds = %land.lhs.true83, %lor.lhs.false, %land.lhs.true, %if.end72
  %65 = load i32, i32* %lt, align 4, !dbg !3025
  %tobool97 = icmp ne i32 %65, 0, !dbg !3025
  br i1 %tobool97, label %if.then100, label %lor.lhs.false98, !dbg !3027

lor.lhs.false98:                                  ; preds = %if.else96
  %66 = load i32, i32* %gt, align 4, !dbg !3028
  %tobool99 = icmp ne i32 %66, 0, !dbg !3028
  br i1 %tobool99, label %if.then100, label %if.else247, !dbg !3029

if.then100:                                       ; preds = %lor.lhs.false98, %if.else96
  %67 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3030
  %68 = load i8*, i8** %ele.addr, align 8, !dbg !3032
  %69 = load i64, i64* %i, align 8, !dbg !3033
  %70 = load i32, i32* %splitpos, align 4, !dbg !3034
  %conv101 = sext i32 %70 to i64, !dbg !3034
  %sub = sub i64 %69, %conv101, !dbg !3035
  %call102 = call i32 @raxIteratorAddChars(%struct.raxIterator* %67, i8* %68, i64 %sub), !dbg !3036
  %71 = load i64, i64* %i, align 8, !dbg !3037
  %72 = load i64, i64* %len.addr, align 8, !dbg !3039
  %cmp103 = icmp ne i64 %71, %72, !dbg !3040
  br i1 %cmp103, label %land.lhs.true105, label %if.else132, !dbg !3041

land.lhs.true105:                                 ; preds = %if.then100
  %73 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3042
  %node106 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %73, i32 0, i32 7, !dbg !3043
  %74 = load %struct.raxNode*, %struct.raxNode** %node106, align 8, !dbg !3043
  %75 = bitcast %struct.raxNode* %74 to i32*, !dbg !3044
  %bf.load107 = load i32, i32* %75, align 4, !dbg !3044
  %bf.lshr108 = lshr i32 %bf.load107, 2, !dbg !3044
  %bf.clear109 = and i32 %bf.lshr108, 1, !dbg !3044
  %tobool110 = icmp ne i32 %bf.clear109, 0, !dbg !3042
  br i1 %tobool110, label %if.else132, label %if.then111, !dbg !3045

if.then111:                                       ; preds = %land.lhs.true105
  %76 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3046
  %77 = load i8*, i8** %ele.addr, align 8, !dbg !3049
  %78 = load i64, i64* %i, align 8, !dbg !3050
  %add.ptr = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3051
  %call112 = call i32 @raxIteratorAddChars(%struct.raxIterator* %76, i8* %add.ptr, i64 1), !dbg !3052
  %tobool113 = icmp ne i32 %call112, 0, !dbg !3052
  br i1 %tobool113, label %if.end115, label %if.then114, !dbg !3053

if.then114:                                       ; preds = %if.then111
  store i32 0, i32* %retval, align 4, !dbg !3054
  br label %return, !dbg !3054

if.end115:                                        ; preds = %if.then111
  %79 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3055
  %flags116 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %79, i32 0, i32 0, !dbg !3056
  %80 = load i32, i32* %flags116, align 8, !dbg !3057
  %and117 = and i32 %80, -2, !dbg !3057
  store i32 %and117, i32* %flags116, align 8, !dbg !3057
  %81 = load i32, i32* %lt, align 4, !dbg !3058
  %tobool118 = icmp ne i32 %81, 0, !dbg !3058
  br i1 %tobool118, label %land.lhs.true119, label %if.end123, !dbg !3060

land.lhs.true119:                                 ; preds = %if.end115
  %82 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3061
  %call120 = call i32 @raxIteratorPrevStep(%struct.raxIterator* %82, i32 1), !dbg !3062
  %tobool121 = icmp ne i32 %call120, 0, !dbg !3062
  br i1 %tobool121, label %if.end123, label %if.then122, !dbg !3063

if.then122:                                       ; preds = %land.lhs.true119
  store i32 0, i32* %retval, align 4, !dbg !3064
  br label %return, !dbg !3064

if.end123:                                        ; preds = %land.lhs.true119, %if.end115
  %83 = load i32, i32* %gt, align 4, !dbg !3065
  %tobool124 = icmp ne i32 %83, 0, !dbg !3065
  br i1 %tobool124, label %land.lhs.true125, label %if.end129, !dbg !3067

land.lhs.true125:                                 ; preds = %if.end123
  %84 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3068
  %call126 = call i32 @raxIteratorNextStep(%struct.raxIterator* %84, i32 1), !dbg !3069
  %tobool127 = icmp ne i32 %call126, 0, !dbg !3069
  br i1 %tobool127, label %if.end129, label %if.then128, !dbg !3070

if.then128:                                       ; preds = %land.lhs.true125
  store i32 0, i32* %retval, align 4, !dbg !3071
  br label %return, !dbg !3071

if.end129:                                        ; preds = %land.lhs.true125, %if.end123
  %85 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3072
  %flags130 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %85, i32 0, i32 0, !dbg !3073
  %86 = load i32, i32* %flags130, align 8, !dbg !3074
  %or131 = or i32 %86, 1, !dbg !3074
  store i32 %or131, i32* %flags130, align 8, !dbg !3074
  br label %if.end246, !dbg !3075

if.else132:                                       ; preds = %land.lhs.true105, %if.then100
  %87 = load i64, i64* %i, align 8, !dbg !3076
  %88 = load i64, i64* %len.addr, align 8, !dbg !3078
  %cmp133 = icmp ne i64 %87, %88, !dbg !3079
  br i1 %cmp133, label %land.lhs.true135, label %if.else208, !dbg !3080

land.lhs.true135:                                 ; preds = %if.else132
  %89 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3081
  %node136 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %89, i32 0, i32 7, !dbg !3082
  %90 = load %struct.raxNode*, %struct.raxNode** %node136, align 8, !dbg !3082
  %91 = bitcast %struct.raxNode* %90 to i32*, !dbg !3083
  %bf.load137 = load i32, i32* %91, align 4, !dbg !3083
  %bf.lshr138 = lshr i32 %bf.load137, 2, !dbg !3083
  %bf.clear139 = and i32 %bf.lshr138, 1, !dbg !3083
  %tobool140 = icmp ne i32 %bf.clear139, 0, !dbg !3081
  br i1 %tobool140, label %if.then141, label %if.else208, !dbg !3084

if.then141:                                       ; preds = %land.lhs.true135
  call void @llvm.dbg.declare(metadata i32* %nodechar, metadata !3085, metadata !DIExpression()), !dbg !3087
  %92 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3088
  %node142 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %92, i32 0, i32 7, !dbg !3089
  %93 = load %struct.raxNode*, %struct.raxNode** %node142, align 8, !dbg !3089
  %data143 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %93, i32 0, i32 1, !dbg !3090
  %94 = load i32, i32* %splitpos, align 4, !dbg !3091
  %idxprom = sext i32 %94 to i64, !dbg !3088
  %arrayidx144 = getelementptr inbounds [0 x i8], [0 x i8]* %data143, i64 0, i64 %idxprom, !dbg !3088
  %95 = load i8, i8* %arrayidx144, align 1, !dbg !3088
  %conv145 = zext i8 %95 to i32, !dbg !3088
  store i32 %conv145, i32* %nodechar, align 4, !dbg !3087
  call void @llvm.dbg.declare(metadata i32* %keychar, metadata !3092, metadata !DIExpression()), !dbg !3093
  %96 = load i8*, i8** %ele.addr, align 8, !dbg !3094
  %97 = load i64, i64* %i, align 8, !dbg !3095
  %arrayidx146 = getelementptr inbounds i8, i8* %96, i64 %97, !dbg !3094
  %98 = load i8, i8* %arrayidx146, align 1, !dbg !3094
  %conv147 = zext i8 %98 to i32, !dbg !3094
  store i32 %conv147, i32* %keychar, align 4, !dbg !3093
  %99 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3096
  %flags148 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %99, i32 0, i32 0, !dbg !3097
  %100 = load i32, i32* %flags148, align 8, !dbg !3098
  %and149 = and i32 %100, -2, !dbg !3098
  store i32 %and149, i32* %flags148, align 8, !dbg !3098
  %101 = load i32, i32* %gt, align 4, !dbg !3099
  %tobool150 = icmp ne i32 %101, 0, !dbg !3099
  br i1 %tobool150, label %if.then151, label %if.end175, !dbg !3101

if.then151:                                       ; preds = %if.then141
  %102 = load i32, i32* %nodechar, align 4, !dbg !3102
  %103 = load i32, i32* %keychar, align 4, !dbg !3105
  %cmp152 = icmp sgt i32 %102, %103, !dbg !3106
  br i1 %cmp152, label %if.then154, label %if.else159, !dbg !3107

if.then154:                                       ; preds = %if.then151
  %104 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3108
  %call155 = call i32 @raxIteratorNextStep(%struct.raxIterator* %104, i32 0), !dbg !3111
  %tobool156 = icmp ne i32 %call155, 0, !dbg !3111
  br i1 %tobool156, label %if.end158, label %if.then157, !dbg !3112

if.then157:                                       ; preds = %if.then154
  store i32 0, i32* %retval, align 4, !dbg !3113
  br label %return, !dbg !3113

if.end158:                                        ; preds = %if.then154
  br label %if.end174, !dbg !3114

if.else159:                                       ; preds = %if.then151
  %105 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3115
  %106 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3118
  %node160 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %106, i32 0, i32 7, !dbg !3119
  %107 = load %struct.raxNode*, %struct.raxNode** %node160, align 8, !dbg !3119
  %data161 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %107, i32 0, i32 1, !dbg !3120
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data161, i64 0, i64 0, !dbg !3118
  %108 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3121
  %node162 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %108, i32 0, i32 7, !dbg !3122
  %109 = load %struct.raxNode*, %struct.raxNode** %node162, align 8, !dbg !3122
  %110 = bitcast %struct.raxNode* %109 to i32*, !dbg !3123
  %bf.load163 = load i32, i32* %110, align 4, !dbg !3123
  %bf.lshr164 = lshr i32 %bf.load163, 3, !dbg !3123
  %conv165 = zext i32 %bf.lshr164 to i64, !dbg !3121
  %call166 = call i32 @raxIteratorAddChars(%struct.raxIterator* %105, i8* %arraydecay, i64 %conv165), !dbg !3124
  %tobool167 = icmp ne i32 %call166, 0, !dbg !3124
  br i1 %tobool167, label %if.end169, label %if.then168, !dbg !3125

if.then168:                                       ; preds = %if.else159
  store i32 0, i32* %retval, align 4, !dbg !3126
  br label %return, !dbg !3126

if.end169:                                        ; preds = %if.else159
  %111 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3127
  %call170 = call i32 @raxIteratorNextStep(%struct.raxIterator* %111, i32 1), !dbg !3129
  %tobool171 = icmp ne i32 %call170, 0, !dbg !3129
  br i1 %tobool171, label %if.end173, label %if.then172, !dbg !3130

if.then172:                                       ; preds = %if.end169
  store i32 0, i32* %retval, align 4, !dbg !3131
  br label %return, !dbg !3131

if.end173:                                        ; preds = %if.end169
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.end158
  br label %if.end175, !dbg !3132

if.end175:                                        ; preds = %if.end174, %if.then141
  %112 = load i32, i32* %lt, align 4, !dbg !3133
  %tobool176 = icmp ne i32 %112, 0, !dbg !3133
  br i1 %tobool176, label %if.then177, label %if.end205, !dbg !3135

if.then177:                                       ; preds = %if.end175
  %113 = load i32, i32* %nodechar, align 4, !dbg !3136
  %114 = load i32, i32* %keychar, align 4, !dbg !3139
  %cmp178 = icmp slt i32 %113, %114, !dbg !3140
  br i1 %cmp178, label %if.then180, label %if.else188, !dbg !3141

if.then180:                                       ; preds = %if.then177
  %115 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3142
  %call181 = call i32 @raxSeekGreatest(%struct.raxIterator* %115), !dbg !3145
  %tobool182 = icmp ne i32 %call181, 0, !dbg !3145
  br i1 %tobool182, label %if.end184, label %if.then183, !dbg !3146

if.then183:                                       ; preds = %if.then180
  store i32 0, i32* %retval, align 4, !dbg !3147
  br label %return, !dbg !3147

if.end184:                                        ; preds = %if.then180
  %116 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3148
  %node185 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %116, i32 0, i32 7, !dbg !3149
  %117 = load %struct.raxNode*, %struct.raxNode** %node185, align 8, !dbg !3149
  %call186 = call i8* @raxGetData(%struct.raxNode* %117), !dbg !3150
  %118 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3151
  %data187 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %118, i32 0, i32 3, !dbg !3152
  store i8* %call186, i8** %data187, align 8, !dbg !3153
  br label %if.end204, !dbg !3154

if.else188:                                       ; preds = %if.then177
  %119 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3155
  %120 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3158
  %node189 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %120, i32 0, i32 7, !dbg !3159
  %121 = load %struct.raxNode*, %struct.raxNode** %node189, align 8, !dbg !3159
  %data190 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %121, i32 0, i32 1, !dbg !3160
  %arraydecay191 = getelementptr inbounds [0 x i8], [0 x i8]* %data190, i64 0, i64 0, !dbg !3158
  %122 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3161
  %node192 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %122, i32 0, i32 7, !dbg !3162
  %123 = load %struct.raxNode*, %struct.raxNode** %node192, align 8, !dbg !3162
  %124 = bitcast %struct.raxNode* %123 to i32*, !dbg !3163
  %bf.load193 = load i32, i32* %124, align 4, !dbg !3163
  %bf.lshr194 = lshr i32 %bf.load193, 3, !dbg !3163
  %conv195 = zext i32 %bf.lshr194 to i64, !dbg !3161
  %call196 = call i32 @raxIteratorAddChars(%struct.raxIterator* %119, i8* %arraydecay191, i64 %conv195), !dbg !3164
  %tobool197 = icmp ne i32 %call196, 0, !dbg !3164
  br i1 %tobool197, label %if.end199, label %if.then198, !dbg !3165

if.then198:                                       ; preds = %if.else188
  store i32 0, i32* %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

if.end199:                                        ; preds = %if.else188
  %125 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3167
  %call200 = call i32 @raxIteratorPrevStep(%struct.raxIterator* %125, i32 1), !dbg !3169
  %tobool201 = icmp ne i32 %call200, 0, !dbg !3169
  br i1 %tobool201, label %if.end203, label %if.then202, !dbg !3170

if.then202:                                       ; preds = %if.end199
  store i32 0, i32* %retval, align 4, !dbg !3171
  br label %return, !dbg !3171

if.end203:                                        ; preds = %if.end199
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.end184
  br label %if.end205, !dbg !3172

if.end205:                                        ; preds = %if.end204, %if.end175
  %126 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3173
  %flags206 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %126, i32 0, i32 0, !dbg !3174
  %127 = load i32, i32* %flags206, align 8, !dbg !3175
  %or207 = or i32 %127, 1, !dbg !3175
  store i32 %or207, i32* %flags206, align 8, !dbg !3175
  br label %if.end245, !dbg !3176

if.else208:                                       ; preds = %land.lhs.true135, %if.else132
  %128 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3177
  %flags209 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %128, i32 0, i32 0, !dbg !3179
  %129 = load i32, i32* %flags209, align 8, !dbg !3180
  %and210 = and i32 %129, -2, !dbg !3180
  store i32 %and210, i32* %flags209, align 8, !dbg !3180
  %130 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3181
  %node211 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %130, i32 0, i32 7, !dbg !3183
  %131 = load %struct.raxNode*, %struct.raxNode** %node211, align 8, !dbg !3183
  %132 = bitcast %struct.raxNode* %131 to i32*, !dbg !3184
  %bf.load212 = load i32, i32* %132, align 4, !dbg !3184
  %bf.lshr213 = lshr i32 %bf.load212, 2, !dbg !3184
  %bf.clear214 = and i32 %bf.lshr213, 1, !dbg !3184
  %tobool215 = icmp ne i32 %bf.clear214, 0, !dbg !3181
  br i1 %tobool215, label %land.lhs.true216, label %if.else229, !dbg !3185

land.lhs.true216:                                 ; preds = %if.else208
  %133 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3186
  %node217 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %133, i32 0, i32 7, !dbg !3187
  %134 = load %struct.raxNode*, %struct.raxNode** %node217, align 8, !dbg !3187
  %135 = bitcast %struct.raxNode* %134 to i32*, !dbg !3188
  %bf.load218 = load i32, i32* %135, align 4, !dbg !3188
  %bf.clear219 = and i32 %bf.load218, 1, !dbg !3188
  %tobool220 = icmp ne i32 %bf.clear219, 0, !dbg !3186
  br i1 %tobool220, label %land.lhs.true221, label %if.else229, !dbg !3189

land.lhs.true221:                                 ; preds = %land.lhs.true216
  %136 = load i32, i32* %splitpos, align 4, !dbg !3190
  %tobool222 = icmp ne i32 %136, 0, !dbg !3190
  br i1 %tobool222, label %land.lhs.true223, label %if.else229, !dbg !3191

land.lhs.true223:                                 ; preds = %land.lhs.true221
  %137 = load i32, i32* %lt, align 4, !dbg !3192
  %tobool224 = icmp ne i32 %137, 0, !dbg !3192
  br i1 %tobool224, label %if.then225, label %if.else229, !dbg !3193

if.then225:                                       ; preds = %land.lhs.true223
  %138 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3194
  %node226 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %138, i32 0, i32 7, !dbg !3196
  %139 = load %struct.raxNode*, %struct.raxNode** %node226, align 8, !dbg !3196
  %call227 = call i8* @raxGetData(%struct.raxNode* %139), !dbg !3197
  %140 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3198
  %data228 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %140, i32 0, i32 3, !dbg !3199
  store i8* %call227, i8** %data228, align 8, !dbg !3200
  br label %if.end242, !dbg !3201

if.else229:                                       ; preds = %land.lhs.true223, %land.lhs.true221, %land.lhs.true216, %if.else208
  %141 = load i32, i32* %gt, align 4, !dbg !3202
  %tobool230 = icmp ne i32 %141, 0, !dbg !3202
  br i1 %tobool230, label %land.lhs.true231, label %if.end235, !dbg !3205

land.lhs.true231:                                 ; preds = %if.else229
  %142 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3206
  %call232 = call i32 @raxIteratorNextStep(%struct.raxIterator* %142, i32 0), !dbg !3207
  %tobool233 = icmp ne i32 %call232, 0, !dbg !3207
  br i1 %tobool233, label %if.end235, label %if.then234, !dbg !3208

if.then234:                                       ; preds = %land.lhs.true231
  store i32 0, i32* %retval, align 4, !dbg !3209
  br label %return, !dbg !3209

if.end235:                                        ; preds = %land.lhs.true231, %if.else229
  %143 = load i32, i32* %lt, align 4, !dbg !3210
  %tobool236 = icmp ne i32 %143, 0, !dbg !3210
  br i1 %tobool236, label %land.lhs.true237, label %if.end241, !dbg !3212

land.lhs.true237:                                 ; preds = %if.end235
  %144 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3213
  %call238 = call i32 @raxIteratorPrevStep(%struct.raxIterator* %144, i32 0), !dbg !3214
  %tobool239 = icmp ne i32 %call238, 0, !dbg !3214
  br i1 %tobool239, label %if.end241, label %if.then240, !dbg !3215

if.then240:                                       ; preds = %land.lhs.true237
  store i32 0, i32* %retval, align 4, !dbg !3216
  br label %return, !dbg !3216

if.end241:                                        ; preds = %land.lhs.true237, %if.end235
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then225
  %145 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3217
  %flags243 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %145, i32 0, i32 0, !dbg !3218
  %146 = load i32, i32* %flags243, align 8, !dbg !3219
  %or244 = or i32 %146, 1, !dbg !3219
  store i32 %or244, i32* %flags243, align 8, !dbg !3219
  br label %if.end245

if.end245:                                        ; preds = %if.end242, %if.end205
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.end129
  br label %if.end250, !dbg !3220

if.else247:                                       ; preds = %lor.lhs.false98
  %147 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3221
  %flags248 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %147, i32 0, i32 0, !dbg !3223
  %148 = load i32, i32* %flags248, align 8, !dbg !3224
  %or249 = or i32 %148, 2, !dbg !3224
  store i32 %or249, i32* %flags248, align 8, !dbg !3224
  store i32 1, i32* %retval, align 4, !dbg !3225
  br label %return, !dbg !3225

if.end250:                                        ; preds = %if.end246
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end92
  store i32 1, i32* %retval, align 4, !dbg !3226
  br label %return, !dbg !3226

return:                                           ; preds = %if.end251, %if.else247, %if.then240, %if.then234, %if.then202, %if.then198, %if.then183, %if.then172, %if.then168, %if.then157, %if.then128, %if.then122, %if.then114, %if.then91, %if.then71, %cond.end, %if.then58, %if.then49, %if.then45, %if.else37
  %149 = load i32, i32* %retval, align 4, !dbg !3227
  ret i32 %149, !dbg !3227
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxNext(%struct.raxIterator* %it) #0 !dbg !3228 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !3229, metadata !DIExpression()), !dbg !3230
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3231
  %call = call i32 @raxIteratorNextStep(%struct.raxIterator* %0, i32 0), !dbg !3233
  %tobool = icmp ne i32 %call, 0, !dbg !3233
  br i1 %tobool, label %if.end, label %if.then, !dbg !3234

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9, !dbg !3235
  store i32 12, i32* %call1, align 4, !dbg !3237
  store i32 0, i32* %retval, align 4, !dbg !3238
  br label %return, !dbg !3238

if.end:                                           ; preds = %entry
  %1 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3239
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %1, i32 0, i32 0, !dbg !3241
  %2 = load i32, i32* %flags, align 8, !dbg !3241
  %and = and i32 %2, 2, !dbg !3242
  %tobool2 = icmp ne i32 %and, 0, !dbg !3242
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3243

if.then3:                                         ; preds = %if.end
  %call4 = call i32* @__errno_location() #9, !dbg !3244
  store i32 0, i32* %call4, align 4, !dbg !3246
  store i32 0, i32* %retval, align 4, !dbg !3247
  br label %return, !dbg !3247

if.end5:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !3248
  br label %return, !dbg !3248

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3249
  ret i32 %3, !dbg !3249
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxPrev(%struct.raxIterator* %it) #0 !dbg !3250 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3253
  %call = call i32 @raxIteratorPrevStep(%struct.raxIterator* %0, i32 0), !dbg !3255
  %tobool = icmp ne i32 %call, 0, !dbg !3255
  br i1 %tobool, label %if.end, label %if.then, !dbg !3256

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #9, !dbg !3257
  store i32 12, i32* %call1, align 4, !dbg !3259
  store i32 0, i32* %retval, align 4, !dbg !3260
  br label %return, !dbg !3260

if.end:                                           ; preds = %entry
  %1 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3261
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %1, i32 0, i32 0, !dbg !3263
  %2 = load i32, i32* %flags, align 8, !dbg !3263
  %and = and i32 %2, 2, !dbg !3264
  %tobool2 = icmp ne i32 %and, 0, !dbg !3264
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !3265

if.then3:                                         ; preds = %if.end
  %call4 = call i32* @__errno_location() #9, !dbg !3266
  store i32 0, i32* %call4, align 4, !dbg !3268
  store i32 0, i32* %retval, align 4, !dbg !3269
  br label %return, !dbg !3269

if.end5:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !3270
  br label %return, !dbg !3270

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3271
  ret i32 %3, !dbg !3271
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxRandomWalk(%struct.raxIterator* %it, i64 %steps) #0 !dbg !3272 {
entry:
  %retval = alloca i32, align 4
  %it.addr = alloca %struct.raxIterator*, align 8
  %steps.addr = alloca i64, align 8
  %fle = alloca i64, align 8
  %n = alloca %struct.raxNode*, align 8
  %numchildren = alloca i32, align 4
  %r = alloca i32, align 4
  %todel = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  store i64 %steps, i64* %steps.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %steps.addr, metadata !3277, metadata !DIExpression()), !dbg !3278
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3279
  %rt = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 1, !dbg !3281
  %1 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !3281
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %1, i32 0, i32 1, !dbg !3282
  %2 = load i64, i64* %numele, align 8, !dbg !3282
  %cmp = icmp eq i64 %2, 0, !dbg !3283
  br i1 %cmp, label %if.then, label %if.end, !dbg !3284

if.then:                                          ; preds = %entry
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3285
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 0, !dbg !3287
  %4 = load i32, i32* %flags, align 8, !dbg !3288
  %or = or i32 %4, 2, !dbg !3288
  store i32 %or, i32* %flags, align 8, !dbg !3288
  store i32 0, i32* %retval, align 4, !dbg !3289
  br label %return, !dbg !3289

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %steps.addr, align 8, !dbg !3290
  %cmp1 = icmp eq i64 %5, 0, !dbg !3292
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !3293

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %fle, metadata !3294, metadata !DIExpression()), !dbg !3296
  %6 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3297
  %rt3 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %6, i32 0, i32 1, !dbg !3298
  %7 = load %struct.rax*, %struct.rax** %rt3, align 8, !dbg !3298
  %numele4 = getelementptr inbounds %struct.rax, %struct.rax* %7, i32 0, i32 1, !dbg !3299
  %8 = load i64, i64* %numele4, align 8, !dbg !3299
  %conv = uitofp i64 %8 to double, !dbg !3297
  %call = call double @log(double %conv) #10, !dbg !3300
  %9 = call double @llvm.floor.f64(double %call), !dbg !3301
  %add = fadd double 1.000000e+00, %9, !dbg !3302
  %conv5 = fptoui double %add to i64, !dbg !3303
  store i64 %conv5, i64* %fle, align 8, !dbg !3296
  %10 = load i64, i64* %fle, align 8, !dbg !3304
  %mul = mul i64 %10, 2, !dbg !3304
  store i64 %mul, i64* %fle, align 8, !dbg !3304
  %call6 = call i32 @rand() #10, !dbg !3305
  %conv7 = sext i32 %call6 to i64, !dbg !3305
  %11 = load i64, i64* %fle, align 8, !dbg !3306
  %rem = urem i64 %conv7, %11, !dbg !3307
  %add8 = add i64 1, %rem, !dbg !3308
  store i64 %add8, i64* %steps.addr, align 8, !dbg !3309
  br label %if.end9, !dbg !3310

if.end9:                                          ; preds = %if.then2, %if.end
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n, metadata !3311, metadata !DIExpression()), !dbg !3312
  %12 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3313
  %node = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %12, i32 0, i32 7, !dbg !3314
  %13 = load %struct.raxNode*, %struct.raxNode** %node, align 8, !dbg !3314
  store %struct.raxNode* %13, %struct.raxNode** %n, align 8, !dbg !3312
  br label %while.cond, !dbg !3315

while.cond:                                       ; preds = %if.end82, %if.end9
  %14 = load i64, i64* %steps.addr, align 8, !dbg !3316
  %cmp10 = icmp ugt i64 %14, 0, !dbg !3317
  br i1 %cmp10, label %lor.end, label %lor.rhs, !dbg !3318

lor.rhs:                                          ; preds = %while.cond
  %15 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3319
  %16 = bitcast %struct.raxNode* %15 to i32*, !dbg !3320
  %bf.load = load i32, i32* %16, align 4, !dbg !3320
  %bf.clear = and i32 %bf.load, 1, !dbg !3320
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3321
  %lnot = xor i1 %tobool, true, !dbg !3321
  br label %lor.end, !dbg !3318

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %17 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %17, label %while.body, label %while.end, !dbg !3315

while.body:                                       ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i32* %numchildren, metadata !3322, metadata !DIExpression()), !dbg !3324
  %18 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3325
  %19 = bitcast %struct.raxNode* %18 to i32*, !dbg !3326
  %bf.load12 = load i32, i32* %19, align 4, !dbg !3326
  %bf.lshr = lshr i32 %bf.load12, 2, !dbg !3326
  %bf.clear13 = and i32 %bf.lshr, 1, !dbg !3326
  %tobool14 = icmp ne i32 %bf.clear13, 0, !dbg !3325
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !3325

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !3325

cond.false:                                       ; preds = %while.body
  %20 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3327
  %21 = bitcast %struct.raxNode* %20 to i32*, !dbg !3328
  %bf.load15 = load i32, i32* %21, align 4, !dbg !3328
  %bf.lshr16 = lshr i32 %bf.load15, 3, !dbg !3328
  br label %cond.end, !dbg !3325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %bf.lshr16, %cond.false ], !dbg !3325
  store i32 %cond, i32* %numchildren, align 4, !dbg !3324
  call void @llvm.dbg.declare(metadata i32* %r, metadata !3329, metadata !DIExpression()), !dbg !3330
  %call17 = call i32 @rand() #10, !dbg !3331
  %22 = load i32, i32* %numchildren, align 4, !dbg !3332
  %23 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3333
  %24 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3334
  %rt18 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 1, !dbg !3335
  %25 = load %struct.rax*, %struct.rax** %rt18, align 8, !dbg !3335
  %head = getelementptr inbounds %struct.rax, %struct.rax* %25, i32 0, i32 0, !dbg !3336
  %26 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !3336
  %cmp19 = icmp ne %struct.raxNode* %23, %26, !dbg !3337
  %conv20 = zext i1 %cmp19 to i32, !dbg !3337
  %add21 = add nsw i32 %22, %conv20, !dbg !3338
  %rem22 = srem i32 %call17, %add21, !dbg !3339
  store i32 %rem22, i32* %r, align 4, !dbg !3330
  %27 = load i32, i32* %r, align 4, !dbg !3340
  %28 = load i32, i32* %numchildren, align 4, !dbg !3342
  %cmp23 = icmp eq i32 %27, %28, !dbg !3343
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !3344

if.then25:                                        ; preds = %cond.end
  %29 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3345
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %29, i32 0, i32 8, !dbg !3347
  %call26 = call i8* @raxStackPop(%struct.raxStack* %stack), !dbg !3348
  %30 = bitcast i8* %call26 to %struct.raxNode*, !dbg !3348
  store %struct.raxNode* %30, %struct.raxNode** %n, align 8, !dbg !3349
  call void @llvm.dbg.declare(metadata i32* %todel, metadata !3350, metadata !DIExpression()), !dbg !3351
  %31 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3352
  %32 = bitcast %struct.raxNode* %31 to i32*, !dbg !3353
  %bf.load27 = load i32, i32* %32, align 4, !dbg !3353
  %bf.lshr28 = lshr i32 %bf.load27, 2, !dbg !3353
  %bf.clear29 = and i32 %bf.lshr28, 1, !dbg !3353
  %tobool30 = icmp ne i32 %bf.clear29, 0, !dbg !3352
  br i1 %tobool30, label %cond.true31, label %cond.false34, !dbg !3352

cond.true31:                                      ; preds = %if.then25
  %33 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3354
  %34 = bitcast %struct.raxNode* %33 to i32*, !dbg !3355
  %bf.load32 = load i32, i32* %34, align 4, !dbg !3355
  %bf.lshr33 = lshr i32 %bf.load32, 3, !dbg !3355
  br label %cond.end35, !dbg !3352

cond.false34:                                     ; preds = %if.then25
  br label %cond.end35, !dbg !3352

cond.end35:                                       ; preds = %cond.false34, %cond.true31
  %cond36 = phi i32 [ %bf.lshr33, %cond.true31 ], [ 1, %cond.false34 ], !dbg !3352
  store i32 %cond36, i32* %todel, align 4, !dbg !3351
  %35 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3356
  %36 = load i32, i32* %todel, align 4, !dbg !3357
  %conv37 = sext i32 %36 to i64, !dbg !3357
  call void @raxIteratorDelChars(%struct.raxIterator* %35, i64 %conv37), !dbg !3358
  br label %if.end77, !dbg !3359

if.else:                                          ; preds = %cond.end
  %37 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3360
  %38 = bitcast %struct.raxNode* %37 to i32*, !dbg !3363
  %bf.load38 = load i32, i32* %38, align 4, !dbg !3363
  %bf.lshr39 = lshr i32 %bf.load38, 2, !dbg !3363
  %bf.clear40 = and i32 %bf.lshr39, 1, !dbg !3363
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !3360
  br i1 %tobool41, label %if.then42, label %if.else50, !dbg !3364

if.then42:                                        ; preds = %if.else
  %39 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3365
  %40 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3368
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %40, i32 0, i32 1, !dbg !3369
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !3368
  %41 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3370
  %42 = bitcast %struct.raxNode* %41 to i32*, !dbg !3371
  %bf.load43 = load i32, i32* %42, align 4, !dbg !3371
  %bf.lshr44 = lshr i32 %bf.load43, 3, !dbg !3371
  %conv45 = zext i32 %bf.lshr44 to i64, !dbg !3370
  %call46 = call i32 @raxIteratorAddChars(%struct.raxIterator* %39, i8* %arraydecay, i64 %conv45), !dbg !3372
  %tobool47 = icmp ne i32 %call46, 0, !dbg !3372
  br i1 %tobool47, label %if.end49, label %if.then48, !dbg !3373

if.then48:                                        ; preds = %if.then42
  store i32 0, i32* %retval, align 4, !dbg !3374
  br label %return, !dbg !3374

if.end49:                                         ; preds = %if.then42
  br label %if.end57, !dbg !3375

if.else50:                                        ; preds = %if.else
  %43 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3376
  %44 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3379
  %data51 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %44, i32 0, i32 1, !dbg !3380
  %arraydecay52 = getelementptr inbounds [0 x i8], [0 x i8]* %data51, i64 0, i64 0, !dbg !3379
  %45 = load i32, i32* %r, align 4, !dbg !3381
  %idx.ext = sext i32 %45 to i64, !dbg !3382
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay52, i64 %idx.ext, !dbg !3382
  %call53 = call i32 @raxIteratorAddChars(%struct.raxIterator* %43, i8* %add.ptr, i64 1), !dbg !3383
  %tobool54 = icmp ne i32 %call53, 0, !dbg !3383
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !3384

if.then55:                                        ; preds = %if.else50
  store i32 0, i32* %retval, align 4, !dbg !3385
  br label %return, !dbg !3385

if.end56:                                         ; preds = %if.else50
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end49
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !3386, metadata !DIExpression()), !dbg !3387
  %46 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3388
  %data58 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %46, i32 0, i32 1, !dbg !3388
  %arraydecay59 = getelementptr inbounds [0 x i8], [0 x i8]* %data58, i64 0, i64 0, !dbg !3388
  %47 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3388
  %48 = bitcast %struct.raxNode* %47 to i32*, !dbg !3388
  %bf.load60 = load i32, i32* %48, align 4, !dbg !3388
  %bf.lshr61 = lshr i32 %bf.load60, 3, !dbg !3388
  %idx.ext62 = sext i32 %bf.lshr61 to i64, !dbg !3388
  %add.ptr63 = getelementptr inbounds i8, i8* %arraydecay59, i64 %idx.ext62, !dbg !3388
  %49 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3388
  %50 = bitcast %struct.raxNode* %49 to i32*, !dbg !3388
  %bf.load64 = load i32, i32* %50, align 4, !dbg !3388
  %bf.lshr65 = lshr i32 %bf.load64, 3, !dbg !3388
  %add66 = add nsw i32 %bf.lshr65, 4, !dbg !3388
  %conv67 = sext i32 %add66 to i64, !dbg !3388
  %rem68 = urem i64 %conv67, 8, !dbg !3388
  %sub = sub i64 8, %rem68, !dbg !3388
  %and = and i64 %sub, 7, !dbg !3388
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr63, i64 %and, !dbg !3388
  %51 = bitcast i8* %add.ptr69 to %struct.raxNode**, !dbg !3388
  %52 = load i32, i32* %r, align 4, !dbg !3389
  %idx.ext70 = sext i32 %52 to i64, !dbg !3390
  %add.ptr71 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %51, i64 %idx.ext70, !dbg !3390
  store %struct.raxNode** %add.ptr71, %struct.raxNode*** %cp, align 8, !dbg !3387
  %53 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3391
  %stack72 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %53, i32 0, i32 8, !dbg !3393
  %54 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3394
  %55 = bitcast %struct.raxNode* %54 to i8*, !dbg !3394
  %call73 = call i32 @raxStackPush(%struct.raxStack* %stack72, i8* %55), !dbg !3395
  %tobool74 = icmp ne i32 %call73, 0, !dbg !3395
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !3396

if.then75:                                        ; preds = %if.end57
  store i32 0, i32* %retval, align 4, !dbg !3397
  br label %return, !dbg !3397

if.end76:                                         ; preds = %if.end57
  %56 = bitcast %struct.raxNode** %n to i8*, !dbg !3398
  %57 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !3399
  %58 = bitcast %struct.raxNode** %57 to i8*, !dbg !3398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %58, i64 8, i1 false), !dbg !3398
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %cond.end35
  %59 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3400
  %60 = bitcast %struct.raxNode* %59 to i32*, !dbg !3402
  %bf.load78 = load i32, i32* %60, align 4, !dbg !3402
  %bf.clear79 = and i32 %bf.load78, 1, !dbg !3402
  %tobool80 = icmp ne i32 %bf.clear79, 0, !dbg !3400
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !3403

if.then81:                                        ; preds = %if.end77
  %61 = load i64, i64* %steps.addr, align 8, !dbg !3404
  %dec = add i64 %61, -1, !dbg !3404
  store i64 %dec, i64* %steps.addr, align 8, !dbg !3404
  br label %if.end82, !dbg !3405

if.end82:                                         ; preds = %if.then81, %if.end77
  br label %while.cond, !dbg !3315, !llvm.loop !3406

while.end:                                        ; preds = %lor.end
  %62 = load %struct.raxNode*, %struct.raxNode** %n, align 8, !dbg !3408
  %63 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3409
  %node83 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %63, i32 0, i32 7, !dbg !3410
  store %struct.raxNode* %62, %struct.raxNode** %node83, align 8, !dbg !3411
  %64 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3412
  %node84 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %64, i32 0, i32 7, !dbg !3413
  %65 = load %struct.raxNode*, %struct.raxNode** %node84, align 8, !dbg !3413
  %call85 = call i8* @raxGetData(%struct.raxNode* %65), !dbg !3414
  %66 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3415
  %data86 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %66, i32 0, i32 3, !dbg !3416
  store i8* %call85, i8** %data86, align 8, !dbg !3417
  store i32 1, i32* %retval, align 4, !dbg !3418
  br label %return, !dbg !3418

return:                                           ; preds = %while.end, %if.then75, %if.then55, %if.then48, %if.then
  %67 = load i32, i32* %retval, align 4, !dbg !3419
  ret i32 %67, !dbg !3419
}

; Function Attrs: nounwind
declare dso_local double @log(double) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxCompare(%struct.raxIterator* %iter, i8* %op, i8* %key, i64 %key_len) #0 !dbg !3420 {
entry:
  %retval = alloca i32, align 4
  %iter.addr = alloca %struct.raxIterator*, align 8
  %op.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %key_len.addr = alloca i64, align 8
  %eq = alloca i32, align 4
  %lt = alloca i32, align 4
  %gt = alloca i32, align 4
  %minlen = alloca i64, align 8
  %cmp29 = alloca i32, align 4
  store %struct.raxIterator* %iter, %struct.raxIterator** %iter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %iter.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i8* %op, i8** %op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !3423, metadata !DIExpression()), !dbg !3424
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !3425, metadata !DIExpression()), !dbg !3426
  store i64 %key_len, i64* %key_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key_len.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.declare(metadata i32* %eq, metadata !3429, metadata !DIExpression()), !dbg !3430
  store i32 0, i32* %eq, align 4, !dbg !3430
  call void @llvm.dbg.declare(metadata i32* %lt, metadata !3431, metadata !DIExpression()), !dbg !3432
  store i32 0, i32* %lt, align 4, !dbg !3432
  call void @llvm.dbg.declare(metadata i32* %gt, metadata !3433, metadata !DIExpression()), !dbg !3434
  store i32 0, i32* %gt, align 4, !dbg !3434
  %0 = load i8*, i8** %op.addr, align 8, !dbg !3435
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !3435
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3435
  %conv = sext i8 %1 to i32, !dbg !3435
  %cmp = icmp eq i32 %conv, 61, !dbg !3437
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3438

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %op.addr, align 8, !dbg !3439
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !3439
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !3439
  %conv3 = sext i8 %3 to i32, !dbg !3439
  %cmp4 = icmp eq i32 %conv3, 61, !dbg !3440
  br i1 %cmp4, label %if.then, label %if.end, !dbg !3441

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %eq, align 4, !dbg !3442
  br label %if.end, !dbg !3443

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %4 = load i8*, i8** %op.addr, align 8, !dbg !3444
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !3444
  %5 = load i8, i8* %arrayidx6, align 1, !dbg !3444
  %conv7 = sext i8 %5 to i32, !dbg !3444
  %cmp8 = icmp eq i32 %conv7, 62, !dbg !3446
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !3447

if.then10:                                        ; preds = %if.end
  store i32 1, i32* %gt, align 4, !dbg !3448
  br label %if.end24, !dbg !3449

if.else:                                          ; preds = %if.end
  %6 = load i8*, i8** %op.addr, align 8, !dbg !3450
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !3450
  %7 = load i8, i8* %arrayidx11, align 1, !dbg !3450
  %conv12 = sext i8 %7 to i32, !dbg !3450
  %cmp13 = icmp eq i32 %conv12, 60, !dbg !3452
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !3453

if.then15:                                        ; preds = %if.else
  store i32 1, i32* %lt, align 4, !dbg !3454
  br label %if.end23, !dbg !3455

if.else16:                                        ; preds = %if.else
  %8 = load i8*, i8** %op.addr, align 8, !dbg !3456
  %arrayidx17 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !3456
  %9 = load i8, i8* %arrayidx17, align 1, !dbg !3456
  %conv18 = sext i8 %9 to i32, !dbg !3456
  %cmp19 = icmp ne i32 %conv18, 61, !dbg !3458
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !3459

if.then21:                                        ; preds = %if.else16
  store i32 0, i32* %retval, align 4, !dbg !3460
  br label %return, !dbg !3460

if.end22:                                         ; preds = %if.else16
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  call void @llvm.dbg.declare(metadata i64* %minlen, metadata !3461, metadata !DIExpression()), !dbg !3462
  %10 = load i64, i64* %key_len.addr, align 8, !dbg !3463
  %11 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3464
  %key_len25 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %11, i32 0, i32 4, !dbg !3465
  %12 = load i64, i64* %key_len25, align 8, !dbg !3465
  %cmp26 = icmp ult i64 %10, %12, !dbg !3466
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !3463

cond.true:                                        ; preds = %if.end24
  %13 = load i64, i64* %key_len.addr, align 8, !dbg !3467
  br label %cond.end, !dbg !3463

cond.false:                                       ; preds = %if.end24
  %14 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3468
  %key_len28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %14, i32 0, i32 4, !dbg !3469
  %15 = load i64, i64* %key_len28, align 8, !dbg !3469
  br label %cond.end, !dbg !3463

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %15, %cond.false ], !dbg !3463
  store i64 %cond, i64* %minlen, align 8, !dbg !3462
  call void @llvm.dbg.declare(metadata i32* %cmp29, metadata !3470, metadata !DIExpression()), !dbg !3471
  %16 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3472
  %key30 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %16, i32 0, i32 2, !dbg !3473
  %17 = load i8*, i8** %key30, align 8, !dbg !3473
  %18 = load i8*, i8** %key.addr, align 8, !dbg !3474
  %19 = load i64, i64* %minlen, align 8, !dbg !3475
  %call = call i32 @memcmp(i8* %17, i8* %18, i64 %19) #11, !dbg !3476
  store i32 %call, i32* %cmp29, align 4, !dbg !3471
  %20 = load i32, i32* %lt, align 4, !dbg !3477
  %cmp31 = icmp eq i32 %20, 0, !dbg !3479
  br i1 %cmp31, label %land.lhs.true, label %if.end41, !dbg !3480

land.lhs.true:                                    ; preds = %cond.end
  %21 = load i32, i32* %gt, align 4, !dbg !3481
  %cmp33 = icmp eq i32 %21, 0, !dbg !3482
  br i1 %cmp33, label %if.then35, label %if.end41, !dbg !3483

if.then35:                                        ; preds = %land.lhs.true
  %22 = load i32, i32* %cmp29, align 4, !dbg !3484
  %cmp36 = icmp eq i32 %22, 0, !dbg !3485
  br i1 %cmp36, label %land.rhs, label %land.end, !dbg !3486

land.rhs:                                         ; preds = %if.then35
  %23 = load i64, i64* %key_len.addr, align 8, !dbg !3487
  %24 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3488
  %key_len38 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %24, i32 0, i32 4, !dbg !3489
  %25 = load i64, i64* %key_len38, align 8, !dbg !3489
  %cmp39 = icmp eq i64 %23, %25, !dbg !3490
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then35
  %26 = phi i1 [ false, %if.then35 ], [ %cmp39, %land.rhs ], !dbg !3491
  %land.ext = zext i1 %26 to i32, !dbg !3486
  store i32 %land.ext, i32* %retval, align 4, !dbg !3492
  br label %return, !dbg !3492

if.end41:                                         ; preds = %land.lhs.true, %cond.end
  %27 = load i32, i32* %cmp29, align 4, !dbg !3493
  %cmp42 = icmp eq i32 %27, 0, !dbg !3495
  br i1 %cmp42, label %if.then44, label %if.else63, !dbg !3496

if.then44:                                        ; preds = %if.end41
  %28 = load i32, i32* %eq, align 4, !dbg !3497
  %tobool = icmp ne i32 %28, 0, !dbg !3497
  br i1 %tobool, label %land.lhs.true45, label %if.else50, !dbg !3500

land.lhs.true45:                                  ; preds = %if.then44
  %29 = load i64, i64* %key_len.addr, align 8, !dbg !3501
  %30 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3502
  %key_len46 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %30, i32 0, i32 4, !dbg !3503
  %31 = load i64, i64* %key_len46, align 8, !dbg !3503
  %cmp47 = icmp eq i64 %29, %31, !dbg !3504
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !3505

if.then49:                                        ; preds = %land.lhs.true45
  store i32 1, i32* %retval, align 4, !dbg !3506
  br label %return, !dbg !3506

if.else50:                                        ; preds = %land.lhs.true45, %if.then44
  %32 = load i32, i32* %lt, align 4, !dbg !3507
  %tobool51 = icmp ne i32 %32, 0, !dbg !3507
  br i1 %tobool51, label %if.then52, label %if.else56, !dbg !3509

if.then52:                                        ; preds = %if.else50
  %33 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3510
  %key_len53 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %33, i32 0, i32 4, !dbg !3511
  %34 = load i64, i64* %key_len53, align 8, !dbg !3511
  %35 = load i64, i64* %key_len.addr, align 8, !dbg !3512
  %cmp54 = icmp ult i64 %34, %35, !dbg !3513
  %conv55 = zext i1 %cmp54 to i32, !dbg !3513
  store i32 %conv55, i32* %retval, align 4, !dbg !3514
  br label %return, !dbg !3514

if.else56:                                        ; preds = %if.else50
  %36 = load i32, i32* %gt, align 4, !dbg !3515
  %tobool57 = icmp ne i32 %36, 0, !dbg !3515
  br i1 %tobool57, label %if.then58, label %if.else62, !dbg !3517

if.then58:                                        ; preds = %if.else56
  %37 = load %struct.raxIterator*, %struct.raxIterator** %iter.addr, align 8, !dbg !3518
  %key_len59 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %37, i32 0, i32 4, !dbg !3519
  %38 = load i64, i64* %key_len59, align 8, !dbg !3519
  %39 = load i64, i64* %key_len.addr, align 8, !dbg !3520
  %cmp60 = icmp ugt i64 %38, %39, !dbg !3521
  %conv61 = zext i1 %cmp60 to i32, !dbg !3521
  store i32 %conv61, i32* %retval, align 4, !dbg !3522
  br label %return, !dbg !3522

if.else62:                                        ; preds = %if.else56
  store i32 0, i32* %retval, align 4, !dbg !3523
  br label %return, !dbg !3523

if.else63:                                        ; preds = %if.end41
  %40 = load i32, i32* %cmp29, align 4, !dbg !3524
  %cmp64 = icmp sgt i32 %40, 0, !dbg !3526
  br i1 %cmp64, label %if.then66, label %if.else69, !dbg !3527

if.then66:                                        ; preds = %if.else63
  %41 = load i32, i32* %gt, align 4, !dbg !3528
  %tobool67 = icmp ne i32 %41, 0, !dbg !3528
  %42 = zext i1 %tobool67 to i64, !dbg !3528
  %cond68 = select i1 %tobool67, i32 1, i32 0, !dbg !3528
  store i32 %cond68, i32* %retval, align 4, !dbg !3530
  br label %return, !dbg !3530

if.else69:                                        ; preds = %if.else63
  %43 = load i32, i32* %lt, align 4, !dbg !3531
  %tobool70 = icmp ne i32 %43, 0, !dbg !3531
  %44 = zext i1 %tobool70 to i64, !dbg !3531
  %cond71 = select i1 %tobool70, i32 1, i32 0, !dbg !3531
  store i32 %cond71, i32* %retval, align 4, !dbg !3533
  br label %return, !dbg !3533

return:                                           ; preds = %if.else69, %if.then66, %if.else62, %if.then58, %if.then52, %if.then49, %land.end, %if.then21
  %45 = load i32, i32* %retval, align 4, !dbg !3534
  ret i32 %45, !dbg !3534
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxStop(%struct.raxIterator* %it) #0 !dbg !3535 {
entry:
  %it.addr = alloca %struct.raxIterator*, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3540
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 2, !dbg !3542
  %1 = load i8*, i8** %key, align 8, !dbg !3542
  %2 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3543
  %key_static_string = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %2, i32 0, i32 6, !dbg !3544
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %key_static_string, i64 0, i64 0, !dbg !3543
  %cmp = icmp ne i8* %1, %arraydecay, !dbg !3545
  br i1 %cmp, label %if.then, label %if.end, !dbg !3546

if.then:                                          ; preds = %entry
  %3 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3547
  %key1 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %3, i32 0, i32 2, !dbg !3548
  %4 = load i8*, i8** %key1, align 8, !dbg !3548
  call void @zfree(i8* %4), !dbg !3549
  br label %if.end, !dbg !3549

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3550
  %stack = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %5, i32 0, i32 8, !dbg !3551
  call void @raxStackFree(%struct.raxStack* %stack), !dbg !3552
  ret void, !dbg !3553
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @raxEOF(%struct.raxIterator* %it) #0 !dbg !3554 {
entry:
  %it.addr = alloca %struct.raxIterator*, align 8
  store %struct.raxIterator* %it, %struct.raxIterator** %it.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator** %it.addr, metadata !3555, metadata !DIExpression()), !dbg !3556
  %0 = load %struct.raxIterator*, %struct.raxIterator** %it.addr, align 8, !dbg !3557
  %flags = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i32 0, i32 0, !dbg !3558
  %1 = load i32, i32* %flags, align 8, !dbg !3558
  %and = and i32 %1, 2, !dbg !3559
  ret i32 %and, !dbg !3560
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @raxSize(%struct.rax* %rax) #0 !dbg !3561 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !3566
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %0, i32 0, i32 1, !dbg !3567
  %1 = load i64, i64* %numele, align 8, !dbg !3567
  ret i64 %1, !dbg !3568
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxRecursiveShow(i32 %level, i32 %lpad, %struct.raxNode* %n) #0 !dbg !3569 {
entry:
  %level.addr = alloca i32, align 4
  %lpad.addr = alloca i32, align 4
  %n.addr = alloca %struct.raxNode*, align 8
  %s = alloca i8, align 1
  %e = alloca i8, align 1
  %numchars = alloca i32, align 4
  %numchildren = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %i = alloca i32, align 4
  %branch = alloca i8*, align 8
  %j = alloca i32, align 4
  %child = alloca %struct.raxNode*, align 8
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !3572, metadata !DIExpression()), !dbg !3573
  store i32 %lpad, i32* %lpad.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lpad.addr, metadata !3574, metadata !DIExpression()), !dbg !3575
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !3576, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.declare(metadata i8* %s, metadata !3578, metadata !DIExpression()), !dbg !3579
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3580
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !3581
  %bf.load = load i32, i32* %1, align 4, !dbg !3581
  %bf.lshr = lshr i32 %bf.load, 2, !dbg !3581
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3581
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3580
  %2 = zext i1 %tobool to i64, !dbg !3580
  %cond = select i1 %tobool, i32 34, i32 91, !dbg !3580
  %conv = trunc i32 %cond to i8, !dbg !3580
  store i8 %conv, i8* %s, align 1, !dbg !3579
  call void @llvm.dbg.declare(metadata i8* %e, metadata !3582, metadata !DIExpression()), !dbg !3583
  %3 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3584
  %4 = bitcast %struct.raxNode* %3 to i32*, !dbg !3585
  %bf.load1 = load i32, i32* %4, align 4, !dbg !3585
  %bf.lshr2 = lshr i32 %bf.load1, 2, !dbg !3585
  %bf.clear3 = and i32 %bf.lshr2, 1, !dbg !3585
  %tobool4 = icmp ne i32 %bf.clear3, 0, !dbg !3584
  %5 = zext i1 %tobool4 to i64, !dbg !3584
  %cond5 = select i1 %tobool4, i32 34, i32 93, !dbg !3584
  %conv6 = trunc i32 %cond5 to i8, !dbg !3584
  store i8 %conv6, i8* %e, align 1, !dbg !3583
  call void @llvm.dbg.declare(metadata i32* %numchars, metadata !3586, metadata !DIExpression()), !dbg !3587
  %6 = load i8, i8* %s, align 1, !dbg !3588
  %conv7 = sext i8 %6 to i32, !dbg !3588
  %7 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3589
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !3590
  %bf.load8 = load i32, i32* %8, align 4, !dbg !3590
  %bf.lshr9 = lshr i32 %bf.load8, 3, !dbg !3590
  %9 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3591
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %9, i32 0, i32 1, !dbg !3592
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !3591
  %10 = load i8, i8* %e, align 1, !dbg !3593
  %conv10 = sext i8 %10 to i32, !dbg !3593
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %conv7, i32 %bf.lshr9, i8* %arraydecay, i32 %conv10), !dbg !3594
  store i32 %call, i32* %numchars, align 4, !dbg !3587
  %11 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3595
  %12 = bitcast %struct.raxNode* %11 to i32*, !dbg !3597
  %bf.load11 = load i32, i32* %12, align 4, !dbg !3597
  %bf.clear12 = and i32 %bf.load11, 1, !dbg !3597
  %tobool13 = icmp ne i32 %bf.clear12, 0, !dbg !3595
  br i1 %tobool13, label %if.then, label %if.end, !dbg !3598

if.then:                                          ; preds = %entry
  %13 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3599
  %call14 = call i8* @raxGetData(%struct.raxNode* %13), !dbg !3601
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %call14), !dbg !3602
  %14 = load i32, i32* %numchars, align 4, !dbg !3603
  %add = add nsw i32 %14, %call15, !dbg !3603
  store i32 %add, i32* %numchars, align 4, !dbg !3603
  br label %if.end, !dbg !3604

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %numchildren, metadata !3605, metadata !DIExpression()), !dbg !3606
  %15 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3607
  %16 = bitcast %struct.raxNode* %15 to i32*, !dbg !3608
  %bf.load16 = load i32, i32* %16, align 4, !dbg !3608
  %bf.lshr17 = lshr i32 %bf.load16, 2, !dbg !3608
  %bf.clear18 = and i32 %bf.lshr17, 1, !dbg !3608
  %tobool19 = icmp ne i32 %bf.clear18, 0, !dbg !3607
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !3607

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3607

cond.false:                                       ; preds = %if.end
  %17 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3609
  %18 = bitcast %struct.raxNode* %17 to i32*, !dbg !3610
  %bf.load20 = load i32, i32* %18, align 4, !dbg !3610
  %bf.lshr21 = lshr i32 %bf.load20, 3, !dbg !3610
  br label %cond.end, !dbg !3607

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ 1, %cond.true ], [ %bf.lshr21, %cond.false ], !dbg !3607
  store i32 %cond22, i32* %numchildren, align 4, !dbg !3606
  %19 = load i32, i32* %level.addr, align 4, !dbg !3611
  %tobool23 = icmp ne i32 %19, 0, !dbg !3611
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !3613

if.then24:                                        ; preds = %cond.end
  %20 = load i32, i32* %numchildren, align 4, !dbg !3614
  %cmp = icmp sgt i32 %20, 1, !dbg !3616
  %21 = zext i1 %cmp to i64, !dbg !3617
  %cond26 = select i1 %cmp, i32 7, i32 4, !dbg !3617
  %22 = load i32, i32* %lpad.addr, align 4, !dbg !3618
  %add27 = add nsw i32 %22, %cond26, !dbg !3618
  store i32 %add27, i32* %lpad.addr, align 4, !dbg !3618
  %23 = load i32, i32* %numchildren, align 4, !dbg !3619
  %cmp28 = icmp eq i32 %23, 1, !dbg !3621
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !3622

if.then30:                                        ; preds = %if.then24
  %24 = load i32, i32* %numchars, align 4, !dbg !3623
  %25 = load i32, i32* %lpad.addr, align 4, !dbg !3624
  %add31 = add nsw i32 %25, %24, !dbg !3624
  store i32 %add31, i32* %lpad.addr, align 4, !dbg !3624
  br label %if.end32, !dbg !3625

if.end32:                                         ; preds = %if.then30, %if.then24
  br label %if.end33, !dbg !3626

if.end33:                                         ; preds = %if.end32, %cond.end
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !3627, metadata !DIExpression()), !dbg !3628
  %26 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3629
  %data34 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %26, i32 0, i32 1, !dbg !3629
  %arraydecay35 = getelementptr inbounds [0 x i8], [0 x i8]* %data34, i64 0, i64 0, !dbg !3629
  %27 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3629
  %28 = bitcast %struct.raxNode* %27 to i32*, !dbg !3629
  %bf.load36 = load i32, i32* %28, align 4, !dbg !3629
  %bf.lshr37 = lshr i32 %bf.load36, 3, !dbg !3629
  %idx.ext = sext i32 %bf.lshr37 to i64, !dbg !3629
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay35, i64 %idx.ext, !dbg !3629
  %29 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3629
  %30 = bitcast %struct.raxNode* %29 to i32*, !dbg !3629
  %bf.load38 = load i32, i32* %30, align 4, !dbg !3629
  %bf.lshr39 = lshr i32 %bf.load38, 3, !dbg !3629
  %add40 = add nsw i32 %bf.lshr39, 4, !dbg !3629
  %conv41 = sext i32 %add40 to i64, !dbg !3629
  %rem = urem i64 %conv41, 8, !dbg !3629
  %sub = sub i64 8, %rem, !dbg !3629
  %and = and i64 %sub, 7, !dbg !3629
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr, i64 %and, !dbg !3629
  %31 = bitcast i8* %add.ptr42 to %struct.raxNode**, !dbg !3629
  store %struct.raxNode** %31, %struct.raxNode*** %cp, align 8, !dbg !3628
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3630, metadata !DIExpression()), !dbg !3632
  store i32 0, i32* %i, align 4, !dbg !3632
  br label %for.cond, !dbg !3633

for.cond:                                         ; preds = %for.inc60, %if.end33
  %32 = load i32, i32* %i, align 4, !dbg !3634
  %33 = load i32, i32* %numchildren, align 4, !dbg !3636
  %cmp43 = icmp slt i32 %32, %33, !dbg !3637
  br i1 %cmp43, label %for.body, label %for.end62, !dbg !3638

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %branch, metadata !3639, metadata !DIExpression()), !dbg !3641
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %branch, align 8, !dbg !3641
  %34 = load i32, i32* %numchildren, align 4, !dbg !3642
  %cmp45 = icmp sgt i32 %34, 1, !dbg !3644
  br i1 %cmp45, label %if.then47, label %if.else, !dbg !3645

if.then47:                                        ; preds = %for.body
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)), !dbg !3646
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3648, metadata !DIExpression()), !dbg !3650
  store i32 0, i32* %j, align 4, !dbg !3650
  br label %for.cond49, !dbg !3651

for.cond49:                                       ; preds = %for.inc, %if.then47
  %35 = load i32, i32* %j, align 4, !dbg !3652
  %36 = load i32, i32* %lpad.addr, align 4, !dbg !3654
  %cmp50 = icmp slt i32 %35, %36, !dbg !3655
  br i1 %cmp50, label %for.body52, label %for.end, !dbg !3656

for.body52:                                       ; preds = %for.cond49
  %call53 = call i32 @putchar(i32 32), !dbg !3657
  br label %for.inc, !dbg !3657

for.inc:                                          ; preds = %for.body52
  %37 = load i32, i32* %j, align 4, !dbg !3658
  %inc = add nsw i32 %37, 1, !dbg !3658
  store i32 %inc, i32* %j, align 4, !dbg !3658
  br label %for.cond49, !dbg !3659, !llvm.loop !3660

for.end:                                          ; preds = %for.cond49
  %38 = load i8*, i8** %branch, align 8, !dbg !3662
  %39 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3663
  %data54 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %39, i32 0, i32 1, !dbg !3664
  %40 = load i32, i32* %i, align 4, !dbg !3665
  %idxprom = sext i32 %40 to i64, !dbg !3663
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %data54, i64 0, i64 %idxprom, !dbg !3663
  %41 = load i8, i8* %arrayidx, align 1, !dbg !3663
  %conv55 = zext i8 %41 to i32, !dbg !3663
  %call56 = call i32 (i8*, ...) @printf(i8* %38, i32 %conv55), !dbg !3666
  br label %if.end58, !dbg !3667

if.else:                                          ; preds = %for.body
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)), !dbg !3668
  br label %if.end58

if.end58:                                         ; preds = %if.else, %for.end
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !3670, metadata !DIExpression()), !dbg !3671
  %42 = bitcast %struct.raxNode** %child to i8*, !dbg !3672
  %43 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !3673
  %44 = bitcast %struct.raxNode** %43 to i8*, !dbg !3672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %44, i64 8, i1 false), !dbg !3672
  %45 = load i32, i32* %level.addr, align 4, !dbg !3674
  %add59 = add nsw i32 %45, 1, !dbg !3675
  %46 = load i32, i32* %lpad.addr, align 4, !dbg !3676
  %47 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !3677
  call void @raxRecursiveShow(i32 %add59, i32 %46, %struct.raxNode* %47), !dbg !3678
  %48 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !3679
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %48, i32 1, !dbg !3679
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp, align 8, !dbg !3679
  br label %for.inc60, !dbg !3680

for.inc60:                                        ; preds = %if.end58
  %49 = load i32, i32* %i, align 4, !dbg !3681
  %inc61 = add nsw i32 %49, 1, !dbg !3681
  store i32 %inc61, i32* %i, align 4, !dbg !3681
  br label %for.cond, !dbg !3682, !llvm.loop !3683

for.end62:                                        ; preds = %for.cond
  ret void, !dbg !3685
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxShow(%struct.rax* %rax) #0 !dbg !3686 {
entry:
  %rax.addr = alloca %struct.rax*, align 8
  store %struct.rax* %rax, %struct.rax** %rax.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rax.addr, metadata !3687, metadata !DIExpression()), !dbg !3688
  %0 = load %struct.rax*, %struct.rax** %rax.addr, align 8, !dbg !3689
  %head = getelementptr inbounds %struct.rax, %struct.rax* %0, i32 0, i32 0, !dbg !3690
  %1 = load %struct.raxNode*, %struct.raxNode** %head, align 8, !dbg !3690
  call void @raxRecursiveShow(i32 0, i32 0, %struct.raxNode* %1), !dbg !3691
  %call = call i32 @putchar(i32 10), !dbg !3692
  ret void, !dbg !3693
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @raxDebugShowNode(i8* %msg, %struct.raxNode* %n) #0 !dbg !3694 {
entry:
  %msg.addr = alloca i8*, align 8
  %n.addr = alloca %struct.raxNode*, align 8
  %numcld = alloca i32, align 4
  %cldptr = alloca %struct.raxNode**, align 8
  %child = alloca %struct.raxNode*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !3697, metadata !DIExpression()), !dbg !3698
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !3699, metadata !DIExpression()), !dbg !3700
  %0 = load i32, i32* @raxDebugMsg, align 4, !dbg !3701
  %cmp = icmp eq i32 %0, 0, !dbg !3703
  br i1 %cmp, label %if.then, label %if.end, !dbg !3704

if.then:                                          ; preds = %entry
  br label %return, !dbg !3705

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %msg.addr, align 8, !dbg !3706
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3707
  %3 = bitcast %struct.raxNode* %2 to i8*, !dbg !3708
  %4 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3709
  %5 = bitcast %struct.raxNode* %4 to i32*, !dbg !3710
  %bf.load = load i32, i32* %5, align 4, !dbg !3710
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3710
  %6 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3711
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %6, i32 0, i32 1, !dbg !3712
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !3711
  %7 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3713
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !3714
  %bf.load1 = load i32, i32* %8, align 4, !dbg !3714
  %bf.clear = and i32 %bf.load1, 1, !dbg !3714
  %9 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3715
  %10 = bitcast %struct.raxNode* %9 to i32*, !dbg !3716
  %bf.load2 = load i32, i32* %10, align 4, !dbg !3716
  %bf.lshr3 = lshr i32 %bf.load2, 3, !dbg !3716
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %1, i8* %3, i32 %bf.lshr, i8* %arraydecay, i32 %bf.clear, i32 %bf.lshr3), !dbg !3717
  call void @llvm.dbg.declare(metadata i32* %numcld, metadata !3718, metadata !DIExpression()), !dbg !3719
  %11 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3720
  %12 = bitcast %struct.raxNode* %11 to i32*, !dbg !3721
  %bf.load4 = load i32, i32* %12, align 4, !dbg !3721
  %bf.lshr5 = lshr i32 %bf.load4, 2, !dbg !3721
  %bf.clear6 = and i32 %bf.lshr5, 1, !dbg !3721
  %tobool = icmp ne i32 %bf.clear6, 0, !dbg !3720
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3720

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3720

cond.false:                                       ; preds = %if.end
  %13 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3722
  %14 = bitcast %struct.raxNode* %13 to i32*, !dbg !3723
  %bf.load7 = load i32, i32* %14, align 4, !dbg !3723
  %bf.lshr8 = lshr i32 %bf.load7, 3, !dbg !3723
  br label %cond.end, !dbg !3720

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %bf.lshr8, %cond.false ], !dbg !3720
  store i32 %cond, i32* %numcld, align 4, !dbg !3719
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cldptr, metadata !3724, metadata !DIExpression()), !dbg !3725
  %15 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %16 = bitcast %struct.raxNode* %15 to i8*, !dbg !3726
  %17 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %18 = bitcast %struct.raxNode* %17 to i32*, !dbg !3726
  %bf.load9 = load i32, i32* %18, align 4, !dbg !3726
  %bf.lshr10 = lshr i32 %bf.load9, 3, !dbg !3726
  %conv = zext i32 %bf.lshr10 to i64, !dbg !3726
  %add = add i64 4, %conv, !dbg !3726
  %19 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %20 = bitcast %struct.raxNode* %19 to i32*, !dbg !3726
  %bf.load11 = load i32, i32* %20, align 4, !dbg !3726
  %bf.lshr12 = lshr i32 %bf.load11, 3, !dbg !3726
  %add13 = add nsw i32 %bf.lshr12, 4, !dbg !3726
  %conv14 = sext i32 %add13 to i64, !dbg !3726
  %rem = urem i64 %conv14, 8, !dbg !3726
  %sub = sub i64 8, %rem, !dbg !3726
  %and = and i64 %sub, 7, !dbg !3726
  %add15 = add i64 %add, %and, !dbg !3726
  %21 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %22 = bitcast %struct.raxNode* %21 to i32*, !dbg !3726
  %bf.load16 = load i32, i32* %22, align 4, !dbg !3726
  %bf.lshr17 = lshr i32 %bf.load16, 2, !dbg !3726
  %bf.clear18 = and i32 %bf.lshr17, 1, !dbg !3726
  %tobool19 = icmp ne i32 %bf.clear18, 0, !dbg !3726
  br i1 %tobool19, label %cond.true20, label %cond.false21, !dbg !3726

cond.true20:                                      ; preds = %cond.end
  br label %cond.end25, !dbg !3726

cond.false21:                                     ; preds = %cond.end
  %23 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %24 = bitcast %struct.raxNode* %23 to i32*, !dbg !3726
  %bf.load22 = load i32, i32* %24, align 4, !dbg !3726
  %bf.lshr23 = lshr i32 %bf.load22, 3, !dbg !3726
  %conv24 = zext i32 %bf.lshr23 to i64, !dbg !3726
  %mul = mul i64 8, %conv24, !dbg !3726
  br label %cond.end25, !dbg !3726

cond.end25:                                       ; preds = %cond.false21, %cond.true20
  %cond26 = phi i64 [ 8, %cond.true20 ], [ %mul, %cond.false21 ], !dbg !3726
  %add27 = add i64 %add15, %cond26, !dbg !3726
  %25 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %26 = bitcast %struct.raxNode* %25 to i32*, !dbg !3726
  %bf.load28 = load i32, i32* %26, align 4, !dbg !3726
  %bf.clear29 = and i32 %bf.load28, 1, !dbg !3726
  %tobool30 = icmp ne i32 %bf.clear29, 0, !dbg !3726
  br i1 %tobool30, label %land.rhs, label %land.end, !dbg !3726

land.rhs:                                         ; preds = %cond.end25
  %27 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %28 = bitcast %struct.raxNode* %27 to i32*, !dbg !3726
  %bf.load31 = load i32, i32* %28, align 4, !dbg !3726
  %bf.lshr32 = lshr i32 %bf.load31, 1, !dbg !3726
  %bf.clear33 = and i32 %bf.lshr32, 1, !dbg !3726
  %tobool34 = icmp ne i32 %bf.clear33, 0, !dbg !3726
  %lnot = xor i1 %tobool34, true, !dbg !3726
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end25
  %29 = phi i1 [ false, %cond.end25 ], [ %lnot, %land.rhs ], !dbg !3727
  %land.ext = zext i1 %29 to i32, !dbg !3726
  %conv35 = sext i32 %land.ext to i64, !dbg !3726
  %mul36 = mul i64 %conv35, 8, !dbg !3726
  %add37 = add i64 %add27, %mul36, !dbg !3726
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %add37, !dbg !3726
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 -8, !dbg !3726
  %30 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %31 = bitcast %struct.raxNode* %30 to i32*, !dbg !3726
  %bf.load39 = load i32, i32* %31, align 4, !dbg !3726
  %bf.clear40 = and i32 %bf.load39, 1, !dbg !3726
  %tobool41 = icmp ne i32 %bf.clear40, 0, !dbg !3726
  br i1 %tobool41, label %land.rhs42, label %land.end48, !dbg !3726

land.rhs42:                                       ; preds = %land.end
  %32 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3726
  %33 = bitcast %struct.raxNode* %32 to i32*, !dbg !3726
  %bf.load43 = load i32, i32* %33, align 4, !dbg !3726
  %bf.lshr44 = lshr i32 %bf.load43, 1, !dbg !3726
  %bf.clear45 = and i32 %bf.lshr44, 1, !dbg !3726
  %tobool46 = icmp ne i32 %bf.clear45, 0, !dbg !3726
  %lnot47 = xor i1 %tobool46, true, !dbg !3726
  br label %land.end48

land.end48:                                       ; preds = %land.rhs42, %land.end
  %34 = phi i1 [ false, %land.end ], [ %lnot47, %land.rhs42 ], !dbg !3727
  %35 = zext i1 %34 to i64, !dbg !3726
  %cond50 = select i1 %34, i64 8, i64 0, !dbg !3726
  %idx.neg = sub i64 0, %cond50, !dbg !3726
  %add.ptr51 = getelementptr inbounds i8, i8* %add.ptr38, i64 %idx.neg, !dbg !3726
  %36 = bitcast i8* %add.ptr51 to %struct.raxNode**, !dbg !3726
  %37 = load i32, i32* %numcld, align 4, !dbg !3728
  %sub52 = sub nsw i32 %37, 1, !dbg !3729
  %idx.ext = sext i32 %sub52 to i64, !dbg !3730
  %idx.neg53 = sub i64 0, %idx.ext, !dbg !3730
  %add.ptr54 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %36, i64 %idx.neg53, !dbg !3730
  store %struct.raxNode** %add.ptr54, %struct.raxNode*** %cldptr, align 8, !dbg !3725
  br label %while.cond, !dbg !3731

while.cond:                                       ; preds = %while.body, %land.end48
  %38 = load i32, i32* %numcld, align 4, !dbg !3732
  %dec = add nsw i32 %38, -1, !dbg !3732
  store i32 %dec, i32* %numcld, align 4, !dbg !3732
  %tobool55 = icmp ne i32 %38, 0, !dbg !3731
  br i1 %tobool55, label %while.body, label %while.end, !dbg !3731

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !3733, metadata !DIExpression()), !dbg !3735
  %39 = bitcast %struct.raxNode** %child to i8*, !dbg !3736
  %40 = load %struct.raxNode**, %struct.raxNode*** %cldptr, align 8, !dbg !3737
  %41 = bitcast %struct.raxNode** %40 to i8*, !dbg !3736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %41, i64 8, i1 false), !dbg !3736
  %42 = load %struct.raxNode**, %struct.raxNode*** %cldptr, align 8, !dbg !3738
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %42, i32 1, !dbg !3738
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cldptr, align 8, !dbg !3738
  %43 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !3739
  %44 = bitcast %struct.raxNode* %43 to i8*, !dbg !3740
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %44), !dbg !3741
  br label %while.cond, !dbg !3731, !llvm.loop !3742

while.end:                                        ; preds = %while.cond
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)), !dbg !3744
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3745
  %call58 = call i32 @fflush(%struct._IO_FILE* %45), !dbg !3746
  br label %return, !dbg !3747

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !3747
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @raxTouch(%struct.raxNode* %n) #0 !dbg !3748 {
entry:
  %n.addr = alloca %struct.raxNode*, align 8
  %sum = alloca i64, align 8
  %numchildren = alloca i32, align 4
  %cp = alloca %struct.raxNode**, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %child = alloca %struct.raxNode*, align 8
  store %struct.raxNode* %n, %struct.raxNode** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.raxNode** %n.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata i64* %sum, metadata !3753, metadata !DIExpression()), !dbg !3754
  store i64 0, i64* %sum, align 8, !dbg !3754
  %0 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3755
  %1 = bitcast %struct.raxNode* %0 to i32*, !dbg !3757
  %bf.load = load i32, i32* %1, align 4, !dbg !3757
  %bf.clear = and i32 %bf.load, 1, !dbg !3757
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3755
  br i1 %tobool, label %if.then, label %if.end, !dbg !3758

if.then:                                          ; preds = %entry
  %2 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3759
  %call = call i8* @raxGetData(%struct.raxNode* %2), !dbg !3761
  %3 = ptrtoint i8* %call to i64, !dbg !3762
  %4 = load i64, i64* %sum, align 8, !dbg !3763
  %add = add i64 %4, %3, !dbg !3763
  store i64 %add, i64* %sum, align 8, !dbg !3763
  br label %if.end, !dbg !3764

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %numchildren, metadata !3765, metadata !DIExpression()), !dbg !3766
  %5 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3767
  %6 = bitcast %struct.raxNode* %5 to i32*, !dbg !3768
  %bf.load1 = load i32, i32* %6, align 4, !dbg !3768
  %bf.lshr = lshr i32 %bf.load1, 2, !dbg !3768
  %bf.clear2 = and i32 %bf.lshr, 1, !dbg !3768
  %tobool3 = icmp ne i32 %bf.clear2, 0, !dbg !3767
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !3767

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3767

cond.false:                                       ; preds = %if.end
  %7 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3769
  %8 = bitcast %struct.raxNode* %7 to i32*, !dbg !3770
  %bf.load4 = load i32, i32* %8, align 4, !dbg !3770
  %bf.lshr5 = lshr i32 %bf.load4, 3, !dbg !3770
  br label %cond.end, !dbg !3767

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %bf.lshr5, %cond.false ], !dbg !3767
  store i32 %cond, i32* %numchildren, align 4, !dbg !3766
  call void @llvm.dbg.declare(metadata %struct.raxNode*** %cp, metadata !3771, metadata !DIExpression()), !dbg !3772
  %9 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3773
  %data = getelementptr inbounds %struct.raxNode, %struct.raxNode* %9, i32 0, i32 1, !dbg !3773
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %data, i64 0, i64 0, !dbg !3773
  %10 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3773
  %11 = bitcast %struct.raxNode* %10 to i32*, !dbg !3773
  %bf.load6 = load i32, i32* %11, align 4, !dbg !3773
  %bf.lshr7 = lshr i32 %bf.load6, 3, !dbg !3773
  %idx.ext = sext i32 %bf.lshr7 to i64, !dbg !3773
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext, !dbg !3773
  %12 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3773
  %13 = bitcast %struct.raxNode* %12 to i32*, !dbg !3773
  %bf.load8 = load i32, i32* %13, align 4, !dbg !3773
  %bf.lshr9 = lshr i32 %bf.load8, 3, !dbg !3773
  %add10 = add nsw i32 %bf.lshr9, 4, !dbg !3773
  %conv = sext i32 %add10 to i64, !dbg !3773
  %rem = urem i64 %conv, 8, !dbg !3773
  %sub = sub i64 8, %rem, !dbg !3773
  %and = and i64 %sub, 7, !dbg !3773
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %and, !dbg !3773
  %14 = bitcast i8* %add.ptr11 to %struct.raxNode**, !dbg !3773
  store %struct.raxNode** %14, %struct.raxNode*** %cp, align 8, !dbg !3772
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3774, metadata !DIExpression()), !dbg !3775
  store i32 0, i32* %count, align 4, !dbg !3775
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3776, metadata !DIExpression()), !dbg !3778
  store i32 0, i32* %i, align 4, !dbg !3778
  br label %for.cond, !dbg !3779

for.cond:                                         ; preds = %for.inc, %cond.end
  %15 = load i32, i32* %i, align 4, !dbg !3780
  %16 = load i32, i32* %numchildren, align 4, !dbg !3782
  %cmp = icmp slt i32 %15, %16, !dbg !3783
  br i1 %cmp, label %for.body, label %for.end, !dbg !3784

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %numchildren, align 4, !dbg !3785
  %cmp13 = icmp sgt i32 %17, 1, !dbg !3788
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !3789

if.then15:                                        ; preds = %for.body
  %18 = load %struct.raxNode*, %struct.raxNode** %n.addr, align 8, !dbg !3790
  %data16 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %18, i32 0, i32 1, !dbg !3792
  %19 = load i32, i32* %i, align 4, !dbg !3793
  %idxprom = sext i32 %19 to i64, !dbg !3790
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %data16, i64 0, i64 %idxprom, !dbg !3790
  %20 = load i8, i8* %arrayidx, align 1, !dbg !3790
  %conv17 = zext i8 %20 to i64, !dbg !3794
  %21 = load i64, i64* %sum, align 8, !dbg !3795
  %add18 = add i64 %21, %conv17, !dbg !3795
  store i64 %add18, i64* %sum, align 8, !dbg !3795
  br label %if.end19, !dbg !3796

if.end19:                                         ; preds = %if.then15, %for.body
  call void @llvm.dbg.declare(metadata %struct.raxNode** %child, metadata !3797, metadata !DIExpression()), !dbg !3798
  %22 = bitcast %struct.raxNode** %child to i8*, !dbg !3799
  %23 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !3800
  %24 = bitcast %struct.raxNode** %23 to i8*, !dbg !3799
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %24, i64 8, i1 false), !dbg !3799
  %25 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !3801
  %cmp20 = icmp eq %struct.raxNode* %25, inttoptr (i64 106764128 to %struct.raxNode*), !dbg !3803
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3804

if.then22:                                        ; preds = %if.end19
  %26 = load i32, i32* %count, align 4, !dbg !3805
  %inc = add nsw i32 %26, 1, !dbg !3805
  store i32 %inc, i32* %count, align 4, !dbg !3805
  br label %if.end23, !dbg !3806

if.end23:                                         ; preds = %if.then22, %if.end19
  %27 = load i32, i32* %count, align 4, !dbg !3807
  %cmp24 = icmp sgt i32 %27, 1, !dbg !3809
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !3810

if.then26:                                        ; preds = %if.end23
  call void @exit(i32 1) #8, !dbg !3811
  unreachable, !dbg !3811

if.end27:                                         ; preds = %if.end23
  %28 = load %struct.raxNode*, %struct.raxNode** %child, align 8, !dbg !3812
  %call28 = call i64 @raxTouch(%struct.raxNode* %28), !dbg !3813
  %29 = load i64, i64* %sum, align 8, !dbg !3814
  %add29 = add i64 %29, %call28, !dbg !3814
  store i64 %add29, i64* %sum, align 8, !dbg !3814
  %30 = load %struct.raxNode**, %struct.raxNode*** %cp, align 8, !dbg !3815
  %incdec.ptr = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %30, i32 1, !dbg !3815
  store %struct.raxNode** %incdec.ptr, %struct.raxNode*** %cp, align 8, !dbg !3815
  br label %for.inc, !dbg !3816

for.inc:                                          ; preds = %if.end27
  %31 = load i32, i32* %i, align 4, !dbg !3817
  %inc30 = add nsw i32 %31, 1, !dbg !3817
  store i32 %inc30, i32* %i, align 4, !dbg !3817
  br label %for.cond, !dbg !3818, !llvm.loop !3819

for.end:                                          ; preds = %for.cond
  %32 = load i64, i64* %sum, align 8, !dbg !3821
  ret i64 %32, !dbg !3822
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "raxNotFound", scope: !2, file: !3, line: 50, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rax.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!6, !7, !8, !10, !12, !31, !32, !33}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !15, line: 131, baseType: !16)
!15 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !15, line: 98, size: 32, elements: !17)
!17 = !{!18, !24, !25, !26, !27}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !16, file: !15, line: 99, baseType: !19, size: 1, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 26, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 42, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !16, file: !15, line: 100, baseType: !19, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !16, file: !15, line: 101, baseType: !19, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !16, file: !15, line: 102, baseType: !19, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 130, baseType: !28, offset: 32)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: -1)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !{!0, !35}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "raxDebugMsg", scope: !2, file: !3, line: 76, type: !31, isLocal: true, isDefinition: true)
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!43 = distinct !DISubprogram(name: "raxSetDebugMsg", scope: !3, file: !3, line: 81, type: !44, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !31}
!46 = !DILocalVariable(name: "onoff", arg: 1, scope: !43, file: !3, line: 81, type: !31)
!47 = !DILocation(line: 81, column: 25, scope: !43)
!48 = !DILocation(line: 82, column: 19, scope: !43)
!49 = !DILocation(line: 82, column: 17, scope: !43)
!50 = !DILocation(line: 83, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "raxNewNode", scope: !3, file: !3, line: 188, type: !52, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!52 = !DISubroutineType(types: !53)
!53 = !{!13, !54, !31}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !32)
!55 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!56 = !DILocalVariable(name: "children", arg: 1, scope: !51, file: !3, line: 188, type: !54)
!57 = !DILocation(line: 188, column: 28, scope: !51)
!58 = !DILocalVariable(name: "datafield", arg: 2, scope: !51, file: !3, line: 188, type: !31)
!59 = !DILocation(line: 188, column: 42, scope: !51)
!60 = !DILocalVariable(name: "nodesize", scope: !51, file: !3, line: 189, type: !54)
!61 = !DILocation(line: 189, column: 12, scope: !51)
!62 = !DILocation(line: 189, column: 39, scope: !51)
!63 = !DILocation(line: 189, column: 38, scope: !51)
!64 = !DILocation(line: 189, column: 48, scope: !51)
!65 = !DILocation(line: 189, column: 47, scope: !51)
!66 = !DILocation(line: 190, column: 40, scope: !51)
!67 = !DILocation(line: 190, column: 39, scope: !51)
!68 = !DILocation(line: 189, column: 68, scope: !51)
!69 = !DILocation(line: 191, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !51, file: !3, line: 191, column: 9)
!71 = !DILocation(line: 191, column: 9, scope: !51)
!72 = !DILocation(line: 191, column: 29, scope: !70)
!73 = !DILocation(line: 191, column: 20, scope: !70)
!74 = !DILocalVariable(name: "node", scope: !51, file: !3, line: 192, type: !13)
!75 = !DILocation(line: 192, column: 14, scope: !51)
!76 = !DILocation(line: 192, column: 32, scope: !51)
!77 = !DILocation(line: 192, column: 21, scope: !51)
!78 = !DILocation(line: 193, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !51, file: !3, line: 193, column: 9)
!80 = !DILocation(line: 193, column: 14, scope: !79)
!81 = !DILocation(line: 193, column: 9, scope: !51)
!82 = !DILocation(line: 193, column: 23, scope: !79)
!83 = !DILocation(line: 194, column: 5, scope: !51)
!84 = !DILocation(line: 194, column: 11, scope: !51)
!85 = !DILocation(line: 194, column: 17, scope: !51)
!86 = !DILocation(line: 195, column: 5, scope: !51)
!87 = !DILocation(line: 195, column: 11, scope: !51)
!88 = !DILocation(line: 195, column: 18, scope: !51)
!89 = !DILocation(line: 196, column: 5, scope: !51)
!90 = !DILocation(line: 196, column: 11, scope: !51)
!91 = !DILocation(line: 196, column: 19, scope: !51)
!92 = !DILocation(line: 197, column: 18, scope: !51)
!93 = !DILocation(line: 197, column: 5, scope: !51)
!94 = !DILocation(line: 197, column: 11, scope: !51)
!95 = !DILocation(line: 197, column: 16, scope: !51)
!96 = !DILocation(line: 198, column: 12, scope: !51)
!97 = !DILocation(line: 198, column: 5, scope: !51)
!98 = !DILocation(line: 199, column: 1, scope: !51)
!99 = distinct !DISubprogram(name: "raxNew", scope: !3, file: !3, line: 203, type: !100, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !15, line: 137, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !15, line: 133, size: 192, elements: !105)
!105 = !{!106, !107, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !104, file: !15, line: 134, baseType: !13, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !104, file: !15, line: 135, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 27, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 45, baseType: !32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !104, file: !15, line: 136, baseType: !108, size: 64, offset: 128)
!111 = !DILocalVariable(name: "rax", scope: !99, file: !3, line: 204, type: !102)
!112 = !DILocation(line: 204, column: 10, scope: !99)
!113 = !DILocation(line: 204, column: 16, scope: !99)
!114 = !DILocation(line: 205, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !99, file: !3, line: 205, column: 9)
!116 = !DILocation(line: 205, column: 13, scope: !115)
!117 = !DILocation(line: 205, column: 9, scope: !99)
!118 = !DILocation(line: 205, column: 22, scope: !115)
!119 = !DILocation(line: 206, column: 5, scope: !99)
!120 = !DILocation(line: 206, column: 10, scope: !99)
!121 = !DILocation(line: 206, column: 17, scope: !99)
!122 = !DILocation(line: 207, column: 5, scope: !99)
!123 = !DILocation(line: 207, column: 10, scope: !99)
!124 = !DILocation(line: 207, column: 19, scope: !99)
!125 = !DILocation(line: 208, column: 17, scope: !99)
!126 = !DILocation(line: 208, column: 5, scope: !99)
!127 = !DILocation(line: 208, column: 10, scope: !99)
!128 = !DILocation(line: 208, column: 15, scope: !99)
!129 = !DILocation(line: 209, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !99, file: !3, line: 209, column: 9)
!131 = !DILocation(line: 209, column: 14, scope: !130)
!132 = !DILocation(line: 209, column: 19, scope: !130)
!133 = !DILocation(line: 209, column: 9, scope: !99)
!134 = !DILocation(line: 210, column: 18, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !3, line: 209, column: 28)
!136 = !DILocation(line: 210, column: 9, scope: !135)
!137 = !DILocation(line: 211, column: 9, scope: !135)
!138 = !DILocation(line: 213, column: 16, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !3, line: 212, column: 12)
!140 = !DILocation(line: 213, column: 9, scope: !139)
!141 = !DILocation(line: 215, column: 1, scope: !99)
!142 = distinct !DISubprogram(name: "raxReallocForData", scope: !3, file: !3, line: 219, type: !143, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!143 = !DISubroutineType(types: !144)
!144 = !{!13, !13, !6}
!145 = !DILocalVariable(name: "n", arg: 1, scope: !142, file: !3, line: 219, type: !13)
!146 = !DILocation(line: 219, column: 37, scope: !142)
!147 = !DILocalVariable(name: "data", arg: 2, scope: !142, file: !3, line: 219, type: !6)
!148 = !DILocation(line: 219, column: 46, scope: !142)
!149 = !DILocation(line: 220, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 220, column: 9)
!151 = !DILocation(line: 220, column: 14, scope: !150)
!152 = !DILocation(line: 220, column: 9, scope: !142)
!153 = !DILocation(line: 220, column: 30, scope: !150)
!154 = !DILocation(line: 220, column: 23, scope: !150)
!155 = !DILocalVariable(name: "curlen", scope: !142, file: !3, line: 221, type: !54)
!156 = !DILocation(line: 221, column: 12, scope: !142)
!157 = !DILocation(line: 221, column: 21, scope: !142)
!158 = !DILocation(line: 0, scope: !142)
!159 = !DILocation(line: 222, column: 24, scope: !142)
!160 = !DILocation(line: 222, column: 26, scope: !142)
!161 = !DILocation(line: 222, column: 32, scope: !142)
!162 = !DILocation(line: 222, column: 12, scope: !142)
!163 = !DILocation(line: 222, column: 5, scope: !142)
!164 = !DILocation(line: 223, column: 1, scope: !142)
!165 = distinct !DISubprogram(name: "raxSetData", scope: !3, file: !3, line: 226, type: !166, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !13, !6}
!168 = !DILocalVariable(name: "n", arg: 1, scope: !165, file: !3, line: 226, type: !13)
!169 = !DILocation(line: 226, column: 26, scope: !165)
!170 = !DILocalVariable(name: "data", arg: 2, scope: !165, file: !3, line: 226, type: !6)
!171 = !DILocation(line: 226, column: 35, scope: !165)
!172 = !DILocation(line: 227, column: 5, scope: !165)
!173 = !DILocation(line: 227, column: 8, scope: !165)
!174 = !DILocation(line: 227, column: 14, scope: !165)
!175 = !DILocation(line: 228, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !165, file: !3, line: 228, column: 9)
!177 = !DILocation(line: 228, column: 14, scope: !176)
!178 = !DILocation(line: 228, column: 9, scope: !165)
!179 = !DILocation(line: 229, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 228, column: 23)
!181 = !DILocation(line: 229, column: 12, scope: !180)
!182 = !DILocation(line: 229, column: 19, scope: !180)
!183 = !DILocalVariable(name: "ndata", scope: !180, file: !3, line: 230, type: !7)
!184 = !DILocation(line: 230, column: 16, scope: !180)
!185 = !DILocation(line: 231, column: 21, scope: !180)
!186 = !DILocation(line: 231, column: 14, scope: !180)
!187 = !DILocation(line: 231, column: 23, scope: !180)
!188 = !DILocation(line: 0, scope: !180)
!189 = !DILocation(line: 231, column: 22, scope: !180)
!190 = !DILocation(line: 231, column: 46, scope: !180)
!191 = !DILocation(line: 230, column: 24, scope: !180)
!192 = !DILocation(line: 232, column: 16, scope: !180)
!193 = !DILocation(line: 232, column: 9, scope: !180)
!194 = !DILocation(line: 233, column: 5, scope: !180)
!195 = !DILocation(line: 234, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !176, file: !3, line: 233, column: 12)
!197 = !DILocation(line: 234, column: 12, scope: !196)
!198 = !DILocation(line: 234, column: 19, scope: !196)
!199 = !DILocation(line: 236, column: 1, scope: !165)
!200 = distinct !DISubprogram(name: "raxGetData", scope: !3, file: !3, line: 239, type: !201, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!201 = !DISubroutineType(types: !202)
!202 = !{!6, !13}
!203 = !DILocalVariable(name: "n", arg: 1, scope: !200, file: !3, line: 239, type: !13)
!204 = !DILocation(line: 239, column: 27, scope: !200)
!205 = !DILocation(line: 240, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !200, file: !3, line: 240, column: 9)
!207 = !DILocation(line: 240, column: 12, scope: !206)
!208 = !DILocation(line: 240, column: 9, scope: !200)
!209 = !DILocation(line: 240, column: 20, scope: !206)
!210 = !DILocalVariable(name: "ndata", scope: !200, file: !3, line: 241, type: !7)
!211 = !DILocation(line: 241, column: 12, scope: !200)
!212 = !DILocation(line: 241, column: 35, scope: !200)
!213 = !DILocation(line: 241, column: 28, scope: !200)
!214 = !DILocation(line: 241, column: 37, scope: !200)
!215 = !DILocation(line: 0, scope: !200)
!216 = !DILocation(line: 241, column: 36, scope: !200)
!217 = !DILocation(line: 241, column: 60, scope: !200)
!218 = !DILocation(line: 241, column: 19, scope: !200)
!219 = !DILocalVariable(name: "data", scope: !200, file: !3, line: 242, type: !6)
!220 = !DILocation(line: 242, column: 11, scope: !200)
!221 = !DILocation(line: 243, column: 5, scope: !200)
!222 = !DILocation(line: 243, column: 18, scope: !200)
!223 = !DILocation(line: 244, column: 12, scope: !200)
!224 = !DILocation(line: 244, column: 5, scope: !200)
!225 = !DILocation(line: 245, column: 1, scope: !200)
!226 = distinct !DISubprogram(name: "raxAddChild", scope: !3, file: !3, line: 256, type: !227, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!227 = !DISubroutineType(types: !228)
!228 = !{!13, !13, !11, !12, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!230 = !DILocalVariable(name: "n", arg: 1, scope: !226, file: !3, line: 256, type: !13)
!231 = !DILocation(line: 256, column: 31, scope: !226)
!232 = !DILocalVariable(name: "c", arg: 2, scope: !226, file: !3, line: 256, type: !11)
!233 = !DILocation(line: 256, column: 48, scope: !226)
!234 = !DILocalVariable(name: "childptr", arg: 3, scope: !226, file: !3, line: 256, type: !12)
!235 = !DILocation(line: 256, column: 61, scope: !226)
!236 = !DILocalVariable(name: "parentlink", arg: 4, scope: !226, file: !3, line: 256, type: !229)
!237 = !DILocation(line: 256, column: 82, scope: !226)
!238 = !DILocation(line: 257, column: 5, scope: !226)
!239 = !DILocalVariable(name: "curlen", scope: !226, file: !3, line: 259, type: !54)
!240 = !DILocation(line: 259, column: 12, scope: !226)
!241 = !DILocation(line: 259, column: 21, scope: !226)
!242 = !DILocation(line: 0, scope: !226)
!243 = !DILocation(line: 260, column: 5, scope: !226)
!244 = !DILocation(line: 260, column: 8, scope: !226)
!245 = !DILocation(line: 260, column: 12, scope: !226)
!246 = !DILocalVariable(name: "newlen", scope: !226, file: !3, line: 261, type: !54)
!247 = !DILocation(line: 261, column: 12, scope: !226)
!248 = !DILocation(line: 261, column: 21, scope: !226)
!249 = !DILocation(line: 262, column: 5, scope: !226)
!250 = !DILocation(line: 262, column: 8, scope: !226)
!251 = !DILocation(line: 262, column: 12, scope: !226)
!252 = !DILocalVariable(name: "child", scope: !226, file: !3, line: 266, type: !13)
!253 = !DILocation(line: 266, column: 14, scope: !226)
!254 = !DILocation(line: 266, column: 22, scope: !226)
!255 = !DILocation(line: 267, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !226, file: !3, line: 267, column: 9)
!257 = !DILocation(line: 267, column: 15, scope: !256)
!258 = !DILocation(line: 267, column: 9, scope: !226)
!259 = !DILocation(line: 267, column: 24, scope: !256)
!260 = !DILocalVariable(name: "newn", scope: !226, file: !3, line: 270, type: !13)
!261 = !DILocation(line: 270, column: 14, scope: !226)
!262 = !DILocation(line: 270, column: 33, scope: !226)
!263 = !DILocation(line: 270, column: 35, scope: !226)
!264 = !DILocation(line: 270, column: 21, scope: !226)
!265 = !DILocation(line: 271, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !226, file: !3, line: 271, column: 9)
!267 = !DILocation(line: 271, column: 14, scope: !266)
!268 = !DILocation(line: 271, column: 9, scope: !226)
!269 = !DILocation(line: 272, column: 18, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 271, column: 23)
!271 = !DILocation(line: 272, column: 9, scope: !270)
!272 = !DILocation(line: 273, column: 9, scope: !270)
!273 = !DILocation(line: 275, column: 9, scope: !226)
!274 = !DILocation(line: 275, column: 7, scope: !226)
!275 = !DILocalVariable(name: "pos", scope: !226, file: !3, line: 305, type: !31)
!276 = !DILocation(line: 305, column: 9, scope: !226)
!277 = !DILocation(line: 306, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !226, file: !3, line: 306, column: 5)
!279 = !DILocation(line: 306, column: 10, scope: !278)
!280 = !DILocation(line: 306, column: 19, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 306, column: 5)
!282 = !DILocation(line: 306, column: 25, scope: !281)
!283 = !DILocation(line: 306, column: 28, scope: !281)
!284 = !DILocation(line: 306, column: 23, scope: !281)
!285 = !DILocation(line: 306, column: 5, scope: !278)
!286 = !DILocation(line: 307, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 307, column: 13)
!288 = distinct !DILexicalBlock(scope: !281, file: !3, line: 306, column: 41)
!289 = !DILocation(line: 307, column: 16, scope: !287)
!290 = !DILocation(line: 307, column: 21, scope: !287)
!291 = !DILocation(line: 307, column: 28, scope: !287)
!292 = !DILocation(line: 307, column: 26, scope: !287)
!293 = !DILocation(line: 307, column: 13, scope: !288)
!294 = !DILocation(line: 307, column: 31, scope: !287)
!295 = !DILocation(line: 308, column: 5, scope: !288)
!296 = !DILocation(line: 306, column: 37, scope: !281)
!297 = !DILocation(line: 306, column: 5, scope: !281)
!298 = distinct !{!298, !285, !299, !300}
!299 = !DILocation(line: 308, column: 5, scope: !278)
!300 = !{!"llvm.loop.mustprogress"}
!301 = !DILocalVariable(name: "src", scope: !226, file: !3, line: 316, type: !10)
!302 = !DILocation(line: 316, column: 20, scope: !226)
!303 = !DILocalVariable(name: "dst", scope: !226, file: !3, line: 316, type: !10)
!304 = !DILocation(line: 316, column: 26, scope: !226)
!305 = !DILocation(line: 317, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !226, file: !3, line: 317, column: 9)
!307 = !DILocation(line: 317, column: 12, scope: !306)
!308 = !DILocation(line: 317, column: 18, scope: !306)
!309 = !DILocation(line: 317, column: 22, scope: !306)
!310 = !DILocation(line: 317, column: 25, scope: !306)
!311 = !DILocation(line: 317, column: 9, scope: !226)
!312 = !DILocation(line: 318, column: 32, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !3, line: 317, column: 33)
!314 = !DILocation(line: 318, column: 16, scope: !313)
!315 = !DILocation(line: 318, column: 34, scope: !313)
!316 = !DILocation(line: 318, column: 33, scope: !313)
!317 = !DILocation(line: 318, column: 40, scope: !313)
!318 = !DILocation(line: 318, column: 13, scope: !313)
!319 = !DILocation(line: 319, column: 32, scope: !313)
!320 = !DILocation(line: 319, column: 16, scope: !313)
!321 = !DILocation(line: 319, column: 34, scope: !313)
!322 = !DILocation(line: 319, column: 33, scope: !313)
!323 = !DILocation(line: 319, column: 40, scope: !313)
!324 = !DILocation(line: 319, column: 13, scope: !313)
!325 = !DILocation(line: 320, column: 17, scope: !313)
!326 = !DILocation(line: 320, column: 21, scope: !313)
!327 = !DILocation(line: 320, column: 9, scope: !313)
!328 = !DILocation(line: 321, column: 5, scope: !313)
!329 = !DILocalVariable(name: "shift", scope: !226, file: !3, line: 334, type: !54)
!330 = !DILocation(line: 334, column: 12, scope: !226)
!331 = !DILocation(line: 334, column: 20, scope: !226)
!332 = !DILocation(line: 334, column: 29, scope: !226)
!333 = !DILocation(line: 334, column: 27, scope: !226)
!334 = !DILocation(line: 334, column: 36, scope: !226)
!335 = !DILocation(line: 346, column: 11, scope: !226)
!336 = !DILocation(line: 346, column: 14, scope: !226)
!337 = !DILocation(line: 346, column: 19, scope: !226)
!338 = !DILocation(line: 346, column: 22, scope: !226)
!339 = !DILocation(line: 346, column: 18, scope: !226)
!340 = !DILocation(line: 347, column: 11, scope: !226)
!341 = !DILocation(line: 346, column: 26, scope: !226)
!342 = !DILocation(line: 348, column: 28, scope: !226)
!343 = !DILocation(line: 348, column: 27, scope: !226)
!344 = !DILocation(line: 347, column: 30, scope: !226)
!345 = !DILocation(line: 346, column: 9, scope: !226)
!346 = !DILocation(line: 349, column: 13, scope: !226)
!347 = !DILocation(line: 349, column: 17, scope: !226)
!348 = !DILocation(line: 349, column: 16, scope: !226)
!349 = !DILocation(line: 349, column: 22, scope: !226)
!350 = !DILocation(line: 349, column: 40, scope: !226)
!351 = !DILocation(line: 349, column: 62, scope: !226)
!352 = !DILocation(line: 349, column: 65, scope: !226)
!353 = !DILocation(line: 349, column: 70, scope: !226)
!354 = !DILocation(line: 349, column: 69, scope: !226)
!355 = !DILocation(line: 349, column: 61, scope: !226)
!356 = !DILocation(line: 349, column: 60, scope: !226)
!357 = !DILocation(line: 349, column: 5, scope: !226)
!358 = !DILocation(line: 360, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !226, file: !3, line: 360, column: 9)
!360 = !DILocation(line: 360, column: 9, scope: !226)
!361 = !DILocation(line: 361, column: 32, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 360, column: 16)
!363 = !DILocation(line: 361, column: 15, scope: !362)
!364 = !DILocation(line: 361, column: 13, scope: !362)
!365 = !DILocation(line: 362, column: 17, scope: !362)
!366 = !DILocation(line: 362, column: 21, scope: !362)
!367 = !DILocation(line: 362, column: 20, scope: !362)
!368 = !DILocation(line: 362, column: 27, scope: !362)
!369 = !DILocation(line: 362, column: 48, scope: !362)
!370 = !DILocation(line: 362, column: 47, scope: !362)
!371 = !DILocation(line: 362, column: 9, scope: !362)
!372 = !DILocation(line: 363, column: 5, scope: !362)
!373 = !DILocation(line: 371, column: 11, scope: !226)
!374 = !DILocation(line: 371, column: 14, scope: !226)
!375 = !DILocation(line: 371, column: 19, scope: !226)
!376 = !DILocation(line: 371, column: 18, scope: !226)
!377 = !DILocation(line: 371, column: 9, scope: !226)
!378 = !DILocation(line: 372, column: 13, scope: !226)
!379 = !DILocation(line: 372, column: 16, scope: !226)
!380 = !DILocation(line: 372, column: 19, scope: !226)
!381 = !DILocation(line: 372, column: 23, scope: !226)
!382 = !DILocation(line: 372, column: 26, scope: !226)
!383 = !DILocation(line: 372, column: 31, scope: !226)
!384 = !DILocation(line: 372, column: 30, scope: !226)
!385 = !DILocation(line: 372, column: 5, scope: !226)
!386 = !DILocation(line: 379, column: 20, scope: !226)
!387 = !DILocation(line: 379, column: 5, scope: !226)
!388 = !DILocation(line: 379, column: 8, scope: !226)
!389 = !DILocation(line: 379, column: 13, scope: !226)
!390 = !DILocation(line: 379, column: 18, scope: !226)
!391 = !DILocation(line: 380, column: 5, scope: !226)
!392 = !DILocation(line: 380, column: 8, scope: !226)
!393 = !DILocation(line: 380, column: 12, scope: !226)
!394 = !DILocation(line: 381, column: 28, scope: !226)
!395 = !DILocation(line: 381, column: 11, scope: !226)
!396 = !DILocation(line: 381, column: 9, scope: !226)
!397 = !DILocalVariable(name: "childfield", scope: !226, file: !3, line: 382, type: !12)
!398 = !DILocation(line: 382, column: 15, scope: !226)
!399 = !DILocation(line: 382, column: 40, scope: !226)
!400 = !DILocation(line: 382, column: 61, scope: !226)
!401 = !DILocation(line: 382, column: 60, scope: !226)
!402 = !DILocation(line: 382, column: 43, scope: !226)
!403 = !DILocation(line: 382, column: 28, scope: !226)
!404 = !DILocation(line: 383, column: 12, scope: !226)
!405 = !DILocation(line: 383, column: 5, scope: !226)
!406 = !DILocation(line: 384, column: 17, scope: !226)
!407 = !DILocation(line: 384, column: 6, scope: !226)
!408 = !DILocation(line: 384, column: 15, scope: !226)
!409 = !DILocation(line: 385, column: 19, scope: !226)
!410 = !DILocation(line: 385, column: 6, scope: !226)
!411 = !DILocation(line: 385, column: 17, scope: !226)
!412 = !DILocation(line: 386, column: 12, scope: !226)
!413 = !DILocation(line: 386, column: 5, scope: !226)
!414 = !DILocation(line: 387, column: 1, scope: !226)
!415 = distinct !DISubprogram(name: "raxCompressNode", scope: !3, file: !3, line: 397, type: !416, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!416 = !DISubroutineType(types: !417)
!417 = !{!13, !13, !10, !54, !12}
!418 = !DILocalVariable(name: "n", arg: 1, scope: !415, file: !3, line: 397, type: !13)
!419 = !DILocation(line: 397, column: 35, scope: !415)
!420 = !DILocalVariable(name: "s", arg: 2, scope: !415, file: !3, line: 397, type: !10)
!421 = !DILocation(line: 397, column: 53, scope: !415)
!422 = !DILocalVariable(name: "len", arg: 3, scope: !415, file: !3, line: 397, type: !54)
!423 = !DILocation(line: 397, column: 63, scope: !415)
!424 = !DILocalVariable(name: "child", arg: 4, scope: !415, file: !3, line: 397, type: !12)
!425 = !DILocation(line: 397, column: 78, scope: !415)
!426 = !DILocation(line: 398, column: 5, scope: !415)
!427 = !DILocalVariable(name: "data", scope: !415, file: !3, line: 399, type: !6)
!428 = !DILocation(line: 399, column: 11, scope: !415)
!429 = !DILocalVariable(name: "newsize", scope: !415, file: !3, line: 400, type: !54)
!430 = !DILocation(line: 400, column: 12, scope: !415)
!431 = !DILocation(line: 405, column: 14, scope: !415)
!432 = !DILocation(line: 405, column: 6, scope: !415)
!433 = !DILocation(line: 405, column: 12, scope: !415)
!434 = !DILocation(line: 406, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !415, file: !3, line: 406, column: 9)
!436 = !DILocation(line: 406, column: 9, scope: !435)
!437 = !DILocation(line: 406, column: 16, scope: !435)
!438 = !DILocation(line: 406, column: 9, scope: !415)
!439 = !DILocation(line: 406, column: 25, scope: !435)
!440 = !DILocation(line: 409, column: 31, scope: !415)
!441 = !DILocation(line: 409, column: 30, scope: !415)
!442 = !DILocation(line: 409, column: 35, scope: !415)
!443 = !DILocation(line: 409, column: 34, scope: !415)
!444 = !DILocation(line: 409, column: 50, scope: !415)
!445 = !DILocation(line: 409, column: 13, scope: !415)
!446 = !DILocation(line: 410, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !415, file: !3, line: 410, column: 9)
!448 = !DILocation(line: 410, column: 12, scope: !447)
!449 = !DILocation(line: 410, column: 9, scope: !415)
!450 = !DILocation(line: 411, column: 27, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 410, column: 19)
!452 = !DILocation(line: 411, column: 16, scope: !451)
!453 = !DILocation(line: 411, column: 14, scope: !451)
!454 = !DILocation(line: 412, column: 14, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 412, column: 13)
!456 = !DILocation(line: 412, column: 17, scope: !455)
!457 = !DILocation(line: 412, column: 13, scope: !451)
!458 = !DILocation(line: 412, column: 33, scope: !455)
!459 = !DILocation(line: 412, column: 25, scope: !455)
!460 = !DILocation(line: 413, column: 5, scope: !451)
!461 = !DILocalVariable(name: "newn", scope: !415, file: !3, line: 414, type: !13)
!462 = !DILocation(line: 414, column: 14, scope: !415)
!463 = !DILocation(line: 414, column: 33, scope: !415)
!464 = !DILocation(line: 414, column: 35, scope: !415)
!465 = !DILocation(line: 414, column: 21, scope: !415)
!466 = !DILocation(line: 415, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !415, file: !3, line: 415, column: 9)
!468 = !DILocation(line: 415, column: 14, scope: !467)
!469 = !DILocation(line: 415, column: 9, scope: !415)
!470 = !DILocation(line: 416, column: 19, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !3, line: 415, column: 23)
!472 = !DILocation(line: 416, column: 18, scope: !471)
!473 = !DILocation(line: 416, column: 9, scope: !471)
!474 = !DILocation(line: 417, column: 9, scope: !471)
!475 = !DILocation(line: 419, column: 9, scope: !415)
!476 = !DILocation(line: 419, column: 7, scope: !415)
!477 = !DILocation(line: 421, column: 5, scope: !415)
!478 = !DILocation(line: 421, column: 8, scope: !415)
!479 = !DILocation(line: 421, column: 16, scope: !415)
!480 = !DILocation(line: 422, column: 15, scope: !415)
!481 = !DILocation(line: 422, column: 5, scope: !415)
!482 = !DILocation(line: 422, column: 8, scope: !415)
!483 = !DILocation(line: 422, column: 13, scope: !415)
!484 = !DILocation(line: 423, column: 12, scope: !415)
!485 = !DILocation(line: 423, column: 15, scope: !415)
!486 = !DILocation(line: 423, column: 5, scope: !415)
!487 = !DILocation(line: 423, column: 20, scope: !415)
!488 = !DILocation(line: 423, column: 22, scope: !415)
!489 = !DILocation(line: 424, column: 9, scope: !490)
!490 = distinct !DILexicalBlock(scope: !415, file: !3, line: 424, column: 9)
!491 = !DILocation(line: 424, column: 12, scope: !490)
!492 = !DILocation(line: 424, column: 9, scope: !415)
!493 = !DILocation(line: 424, column: 30, scope: !490)
!494 = !DILocation(line: 424, column: 32, scope: !490)
!495 = !DILocation(line: 424, column: 19, scope: !490)
!496 = !DILocalVariable(name: "childfield", scope: !415, file: !3, line: 425, type: !12)
!497 = !DILocation(line: 425, column: 15, scope: !415)
!498 = !DILocation(line: 425, column: 28, scope: !415)
!499 = !DILocation(line: 0, scope: !415)
!500 = !DILocation(line: 426, column: 12, scope: !415)
!501 = !DILocation(line: 426, column: 5, scope: !415)
!502 = !DILocation(line: 426, column: 23, scope: !415)
!503 = !DILocation(line: 427, column: 12, scope: !415)
!504 = !DILocation(line: 427, column: 5, scope: !415)
!505 = !DILocation(line: 428, column: 1, scope: !415)
!506 = distinct !DISubprogram(name: "raxGenericInsert", scope: !3, file: !3, line: 509, type: !507, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{!31, !102, !10, !54, !6, !7, !31}
!509 = !DILocalVariable(name: "rax", arg: 1, scope: !506, file: !3, line: 509, type: !102)
!510 = !DILocation(line: 509, column: 27, scope: !506)
!511 = !DILocalVariable(name: "s", arg: 2, scope: !506, file: !3, line: 509, type: !10)
!512 = !DILocation(line: 509, column: 47, scope: !506)
!513 = !DILocalVariable(name: "len", arg: 3, scope: !506, file: !3, line: 509, type: !54)
!514 = !DILocation(line: 509, column: 57, scope: !506)
!515 = !DILocalVariable(name: "data", arg: 4, scope: !506, file: !3, line: 509, type: !6)
!516 = !DILocation(line: 509, column: 68, scope: !506)
!517 = !DILocalVariable(name: "old", arg: 5, scope: !506, file: !3, line: 509, type: !7)
!518 = !DILocation(line: 509, column: 81, scope: !506)
!519 = !DILocalVariable(name: "overwrite", arg: 6, scope: !506, file: !3, line: 509, type: !31)
!520 = !DILocation(line: 509, column: 90, scope: !506)
!521 = !DILocalVariable(name: "i", scope: !506, file: !3, line: 510, type: !54)
!522 = !DILocation(line: 510, column: 12, scope: !506)
!523 = !DILocalVariable(name: "j", scope: !506, file: !3, line: 511, type: !31)
!524 = !DILocation(line: 511, column: 9, scope: !506)
!525 = !DILocalVariable(name: "h", scope: !506, file: !3, line: 515, type: !13)
!526 = !DILocation(line: 515, column: 14, scope: !506)
!527 = !DILocalVariable(name: "parentlink", scope: !506, file: !3, line: 515, type: !12)
!528 = !DILocation(line: 515, column: 19, scope: !506)
!529 = !DILocation(line: 518, column: 20, scope: !506)
!530 = !DILocation(line: 518, column: 24, scope: !506)
!531 = !DILocation(line: 518, column: 26, scope: !506)
!532 = !DILocation(line: 518, column: 9, scope: !506)
!533 = !DILocation(line: 518, column: 7, scope: !506)
!534 = !DILocation(line: 525, column: 9, scope: !535)
!535 = distinct !DILexicalBlock(scope: !506, file: !3, line: 525, column: 9)
!536 = !DILocation(line: 525, column: 14, scope: !535)
!537 = !DILocation(line: 525, column: 11, scope: !535)
!538 = !DILocation(line: 525, column: 18, scope: !535)
!539 = !DILocation(line: 525, column: 23, scope: !535)
!540 = !DILocation(line: 525, column: 26, scope: !535)
!541 = !DILocation(line: 525, column: 34, scope: !535)
!542 = !DILocation(line: 525, column: 37, scope: !535)
!543 = !DILocation(line: 525, column: 39, scope: !535)
!544 = !DILocation(line: 525, column: 9, scope: !506)
!545 = !DILocation(line: 528, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 528, column: 13)
!547 = distinct !DILexicalBlock(scope: !535, file: !3, line: 525, column: 80)
!548 = !DILocation(line: 528, column: 17, scope: !546)
!549 = !DILocation(line: 528, column: 23, scope: !546)
!550 = !DILocation(line: 528, column: 27, scope: !546)
!551 = !DILocation(line: 528, column: 30, scope: !546)
!552 = !DILocation(line: 528, column: 37, scope: !546)
!553 = !DILocation(line: 528, column: 40, scope: !546)
!554 = !DILocation(line: 528, column: 13, scope: !547)
!555 = !DILocation(line: 529, column: 35, scope: !556)
!556 = distinct !DILexicalBlock(scope: !546, file: !3, line: 528, column: 52)
!557 = !DILocation(line: 529, column: 37, scope: !556)
!558 = !DILocation(line: 529, column: 17, scope: !556)
!559 = !DILocation(line: 529, column: 15, scope: !556)
!560 = !DILocation(line: 530, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !3, line: 530, column: 17)
!562 = !DILocation(line: 530, column: 17, scope: !556)
!563 = !DILocation(line: 530, column: 27, scope: !561)
!564 = !DILocation(line: 530, column: 20, scope: !561)
!565 = !DILocation(line: 531, column: 9, scope: !556)
!566 = !DILocation(line: 532, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !547, file: !3, line: 532, column: 13)
!568 = !DILocation(line: 532, column: 15, scope: !567)
!569 = !DILocation(line: 532, column: 13, scope: !547)
!570 = !DILocation(line: 533, column: 13, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 532, column: 24)
!572 = !DILocation(line: 533, column: 19, scope: !571)
!573 = !DILocation(line: 534, column: 13, scope: !571)
!574 = !DILocation(line: 538, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !547, file: !3, line: 538, column: 13)
!576 = !DILocation(line: 538, column: 16, scope: !575)
!577 = !DILocation(line: 538, column: 13, scope: !547)
!578 = !DILocation(line: 539, column: 17, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 539, column: 17)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 538, column: 23)
!581 = !DILocation(line: 539, column: 17, scope: !580)
!582 = !DILocation(line: 539, column: 40, scope: !579)
!583 = !DILocation(line: 539, column: 29, scope: !579)
!584 = !DILocation(line: 539, column: 23, scope: !579)
!585 = !DILocation(line: 539, column: 27, scope: !579)
!586 = !DILocation(line: 539, column: 22, scope: !579)
!587 = !DILocation(line: 540, column: 17, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !3, line: 540, column: 17)
!589 = !DILocation(line: 540, column: 17, scope: !580)
!590 = !DILocation(line: 540, column: 39, scope: !588)
!591 = !DILocation(line: 540, column: 41, scope: !588)
!592 = !DILocation(line: 540, column: 28, scope: !588)
!593 = !DILocation(line: 541, column: 13, scope: !580)
!594 = !DILocation(line: 541, column: 19, scope: !580)
!595 = !DILocation(line: 542, column: 13, scope: !580)
!596 = !DILocation(line: 547, column: 20, scope: !547)
!597 = !DILocation(line: 547, column: 22, scope: !547)
!598 = !DILocation(line: 547, column: 9, scope: !547)
!599 = !DILocation(line: 548, column: 9, scope: !547)
!600 = !DILocation(line: 548, column: 14, scope: !547)
!601 = !DILocation(line: 548, column: 20, scope: !547)
!602 = !DILocation(line: 549, column: 9, scope: !547)
!603 = !DILocation(line: 677, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !506, file: !3, line: 677, column: 9)
!605 = !DILocation(line: 677, column: 12, scope: !604)
!606 = !DILocation(line: 677, column: 20, scope: !604)
!607 = !DILocation(line: 677, column: 23, scope: !604)
!608 = !DILocation(line: 677, column: 28, scope: !604)
!609 = !DILocation(line: 677, column: 25, scope: !604)
!610 = !DILocation(line: 677, column: 9, scope: !506)
!611 = !DILocalVariable(name: "childfield", scope: !612, file: !3, line: 685, type: !12)
!612 = distinct !DILexicalBlock(scope: !604, file: !3, line: 677, column: 33)
!613 = !DILocation(line: 685, column: 19, scope: !612)
!614 = !DILocation(line: 685, column: 32, scope: !612)
!615 = !DILocation(line: 0, scope: !612)
!616 = !DILocalVariable(name: "next", scope: !612, file: !3, line: 686, type: !13)
!617 = !DILocation(line: 686, column: 18, scope: !612)
!618 = !DILocation(line: 687, column: 9, scope: !612)
!619 = !DILocation(line: 687, column: 22, scope: !612)
!620 = !DILocation(line: 690, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !612, file: !3, line: 690, column: 13)
!622 = !DILocation(line: 690, column: 16, scope: !621)
!623 = !DILocation(line: 690, column: 13, scope: !612)
!624 = !DILocation(line: 692, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 690, column: 23)
!626 = !DILocalVariable(name: "trimmedlen", scope: !612, file: !3, line: 695, type: !54)
!627 = !DILocation(line: 695, column: 16, scope: !612)
!628 = !DILocation(line: 695, column: 29, scope: !612)
!629 = !DILocalVariable(name: "postfixlen", scope: !612, file: !3, line: 696, type: !54)
!630 = !DILocation(line: 696, column: 16, scope: !612)
!631 = !DILocation(line: 696, column: 29, scope: !612)
!632 = !DILocation(line: 696, column: 32, scope: !612)
!633 = !DILocation(line: 696, column: 39, scope: !612)
!634 = !DILocation(line: 696, column: 37, scope: !612)
!635 = !DILocation(line: 696, column: 41, scope: !612)
!636 = !DILocalVariable(name: "split_node_is_key", scope: !612, file: !3, line: 697, type: !31)
!637 = !DILocation(line: 697, column: 13, scope: !612)
!638 = !DILocation(line: 697, column: 34, scope: !612)
!639 = !DILocation(line: 697, column: 45, scope: !612)
!640 = !DILocation(line: 697, column: 48, scope: !612)
!641 = !DILocation(line: 697, column: 51, scope: !612)
!642 = !DILocation(line: 697, column: 57, scope: !612)
!643 = !DILocation(line: 697, column: 61, scope: !612)
!644 = !DILocation(line: 697, column: 64, scope: !612)
!645 = !DILocation(line: 697, column: 60, scope: !612)
!646 = !DILocalVariable(name: "nodesize", scope: !612, file: !3, line: 698, type: !54)
!647 = !DILocation(line: 698, column: 16, scope: !612)
!648 = !DILocalVariable(name: "splitnode", scope: !612, file: !3, line: 702, type: !13)
!649 = !DILocation(line: 702, column: 18, scope: !612)
!650 = !DILocation(line: 702, column: 44, scope: !612)
!651 = !DILocation(line: 702, column: 30, scope: !612)
!652 = !DILocalVariable(name: "trimmed", scope: !612, file: !3, line: 703, type: !13)
!653 = !DILocation(line: 703, column: 18, scope: !612)
!654 = !DILocalVariable(name: "postfix", scope: !612, file: !3, line: 704, type: !13)
!655 = !DILocation(line: 704, column: 18, scope: !612)
!656 = !DILocation(line: 706, column: 13, scope: !657)
!657 = distinct !DILexicalBlock(scope: !612, file: !3, line: 706, column: 13)
!658 = !DILocation(line: 706, column: 13, scope: !612)
!659 = !DILocation(line: 707, column: 40, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !3, line: 706, column: 25)
!661 = !DILocation(line: 707, column: 39, scope: !660)
!662 = !DILocation(line: 707, column: 51, scope: !660)
!663 = !DILocation(line: 707, column: 50, scope: !660)
!664 = !DILocation(line: 707, column: 73, scope: !660)
!665 = !DILocation(line: 707, column: 22, scope: !660)
!666 = !DILocation(line: 709, column: 17, scope: !667)
!667 = distinct !DILexicalBlock(scope: !660, file: !3, line: 709, column: 17)
!668 = !DILocation(line: 709, column: 20, scope: !667)
!669 = !DILocation(line: 709, column: 26, scope: !667)
!670 = !DILocation(line: 709, column: 30, scope: !667)
!671 = !DILocation(line: 709, column: 33, scope: !667)
!672 = !DILocation(line: 709, column: 17, scope: !660)
!673 = !DILocation(line: 709, column: 50, scope: !667)
!674 = !DILocation(line: 709, column: 41, scope: !667)
!675 = !DILocation(line: 710, column: 34, scope: !660)
!676 = !DILocation(line: 710, column: 23, scope: !660)
!677 = !DILocation(line: 710, column: 21, scope: !660)
!678 = !DILocation(line: 711, column: 9, scope: !660)
!679 = !DILocation(line: 713, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !612, file: !3, line: 713, column: 13)
!681 = !DILocation(line: 713, column: 13, scope: !612)
!682 = !DILocation(line: 714, column: 40, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !3, line: 713, column: 25)
!684 = !DILocation(line: 714, column: 39, scope: !683)
!685 = !DILocation(line: 714, column: 51, scope: !683)
!686 = !DILocation(line: 714, column: 50, scope: !683)
!687 = !DILocation(line: 714, column: 73, scope: !683)
!688 = !DILocation(line: 714, column: 22, scope: !683)
!689 = !DILocation(line: 716, column: 34, scope: !683)
!690 = !DILocation(line: 716, column: 23, scope: !683)
!691 = !DILocation(line: 716, column: 21, scope: !683)
!692 = !DILocation(line: 717, column: 9, scope: !683)
!693 = !DILocation(line: 720, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !612, file: !3, line: 720, column: 13)
!695 = !DILocation(line: 720, column: 23, scope: !694)
!696 = !DILocation(line: 720, column: 31, scope: !694)
!697 = !DILocation(line: 721, column: 14, scope: !694)
!698 = !DILocation(line: 721, column: 25, scope: !694)
!699 = !DILocation(line: 721, column: 28, scope: !694)
!700 = !DILocation(line: 721, column: 36, scope: !694)
!701 = !DILocation(line: 721, column: 45, scope: !694)
!702 = !DILocation(line: 722, column: 14, scope: !694)
!703 = !DILocation(line: 722, column: 25, scope: !694)
!704 = !DILocation(line: 722, column: 28, scope: !694)
!705 = !DILocation(line: 722, column: 36, scope: !694)
!706 = !DILocation(line: 720, column: 13, scope: !612)
!707 = !DILocation(line: 724, column: 22, scope: !708)
!708 = distinct !DILexicalBlock(scope: !694, file: !3, line: 723, column: 9)
!709 = !DILocation(line: 724, column: 13, scope: !708)
!710 = !DILocation(line: 725, column: 22, scope: !708)
!711 = !DILocation(line: 725, column: 13, scope: !708)
!712 = !DILocation(line: 726, column: 22, scope: !708)
!713 = !DILocation(line: 726, column: 13, scope: !708)
!714 = !DILocation(line: 727, column: 13, scope: !708)
!715 = !DILocation(line: 727, column: 19, scope: !708)
!716 = !DILocation(line: 728, column: 13, scope: !708)
!717 = !DILocation(line: 730, column: 30, scope: !612)
!718 = !DILocation(line: 730, column: 33, scope: !612)
!719 = !DILocation(line: 730, column: 38, scope: !612)
!720 = !DILocation(line: 730, column: 9, scope: !612)
!721 = !DILocation(line: 730, column: 20, scope: !612)
!722 = !DILocation(line: 730, column: 28, scope: !612)
!723 = !DILocation(line: 732, column: 13, scope: !724)
!724 = distinct !DILexicalBlock(scope: !612, file: !3, line: 732, column: 13)
!725 = !DILocation(line: 732, column: 15, scope: !724)
!726 = !DILocation(line: 732, column: 13, scope: !612)
!727 = !DILocation(line: 734, column: 17, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 734, column: 17)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 732, column: 21)
!730 = !DILocation(line: 734, column: 20, scope: !728)
!731 = !DILocation(line: 734, column: 17, scope: !729)
!732 = !DILocalVariable(name: "ndata", scope: !733, file: !3, line: 735, type: !6)
!733 = distinct !DILexicalBlock(scope: !728, file: !3, line: 734, column: 27)
!734 = !DILocation(line: 735, column: 23, scope: !733)
!735 = !DILocation(line: 735, column: 42, scope: !733)
!736 = !DILocation(line: 735, column: 31, scope: !733)
!737 = !DILocation(line: 736, column: 28, scope: !733)
!738 = !DILocation(line: 736, column: 38, scope: !733)
!739 = !DILocation(line: 736, column: 17, scope: !733)
!740 = !DILocation(line: 737, column: 13, scope: !733)
!741 = !DILocation(line: 738, column: 20, scope: !729)
!742 = !DILocation(line: 738, column: 13, scope: !729)
!743 = !DILocation(line: 739, column: 9, scope: !729)
!744 = !DILocation(line: 741, column: 29, scope: !745)
!745 = distinct !DILexicalBlock(scope: !724, file: !3, line: 739, column: 16)
!746 = !DILocation(line: 741, column: 13, scope: !745)
!747 = !DILocation(line: 741, column: 22, scope: !745)
!748 = !DILocation(line: 741, column: 27, scope: !745)
!749 = !DILocation(line: 742, column: 20, scope: !745)
!750 = !DILocation(line: 742, column: 29, scope: !745)
!751 = !DILocation(line: 742, column: 13, scope: !745)
!752 = !DILocation(line: 742, column: 34, scope: !745)
!753 = !DILocation(line: 742, column: 37, scope: !745)
!754 = !DILocation(line: 742, column: 42, scope: !745)
!755 = !DILocation(line: 743, column: 32, scope: !745)
!756 = !DILocation(line: 743, column: 34, scope: !745)
!757 = !DILocation(line: 743, column: 13, scope: !745)
!758 = !DILocation(line: 743, column: 22, scope: !745)
!759 = !DILocation(line: 743, column: 30, scope: !745)
!760 = !DILocation(line: 744, column: 30, scope: !745)
!761 = !DILocation(line: 744, column: 33, scope: !745)
!762 = !DILocation(line: 744, column: 13, scope: !745)
!763 = !DILocation(line: 744, column: 22, scope: !745)
!764 = !DILocation(line: 744, column: 28, scope: !745)
!765 = !DILocation(line: 745, column: 31, scope: !745)
!766 = !DILocation(line: 745, column: 34, scope: !745)
!767 = !DILocation(line: 745, column: 13, scope: !745)
!768 = !DILocation(line: 745, column: 22, scope: !745)
!769 = !DILocation(line: 745, column: 29, scope: !745)
!770 = !DILocation(line: 746, column: 17, scope: !771)
!771 = distinct !DILexicalBlock(scope: !745, file: !3, line: 746, column: 17)
!772 = !DILocation(line: 746, column: 20, scope: !771)
!773 = !DILocation(line: 746, column: 26, scope: !771)
!774 = !DILocation(line: 746, column: 30, scope: !771)
!775 = !DILocation(line: 746, column: 33, scope: !771)
!776 = !DILocation(line: 746, column: 17, scope: !745)
!777 = !DILocalVariable(name: "ndata", scope: !778, file: !3, line: 747, type: !6)
!778 = distinct !DILexicalBlock(scope: !771, file: !3, line: 746, column: 41)
!779 = !DILocation(line: 747, column: 23, scope: !778)
!780 = !DILocation(line: 747, column: 42, scope: !778)
!781 = !DILocation(line: 747, column: 31, scope: !778)
!782 = !DILocation(line: 748, column: 28, scope: !778)
!783 = !DILocation(line: 748, column: 36, scope: !778)
!784 = !DILocation(line: 748, column: 17, scope: !778)
!785 = !DILocation(line: 749, column: 13, scope: !778)
!786 = !DILocalVariable(name: "cp", scope: !745, file: !3, line: 750, type: !12)
!787 = !DILocation(line: 750, column: 23, scope: !745)
!788 = !DILocation(line: 750, column: 28, scope: !745)
!789 = !DILocation(line: 0, scope: !745)
!790 = !DILocation(line: 751, column: 20, scope: !745)
!791 = !DILocation(line: 751, column: 13, scope: !745)
!792 = !DILocation(line: 752, column: 20, scope: !745)
!793 = !DILocation(line: 752, column: 13, scope: !745)
!794 = !DILocation(line: 753, column: 26, scope: !745)
!795 = !DILocation(line: 753, column: 24, scope: !745)
!796 = !DILocation(line: 754, column: 13, scope: !745)
!797 = !DILocation(line: 754, column: 18, scope: !745)
!798 = !DILocation(line: 754, column: 26, scope: !745)
!799 = !DILocation(line: 759, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !612, file: !3, line: 759, column: 13)
!801 = !DILocation(line: 759, column: 13, scope: !612)
!802 = !DILocation(line: 761, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 759, column: 25)
!804 = !DILocation(line: 761, column: 22, scope: !803)
!805 = !DILocation(line: 761, column: 28, scope: !803)
!806 = !DILocation(line: 762, column: 13, scope: !803)
!807 = !DILocation(line: 762, column: 22, scope: !803)
!808 = !DILocation(line: 762, column: 29, scope: !803)
!809 = !DILocation(line: 763, column: 29, scope: !803)
!810 = !DILocation(line: 763, column: 13, scope: !803)
!811 = !DILocation(line: 763, column: 22, scope: !803)
!812 = !DILocation(line: 763, column: 27, scope: !803)
!813 = !DILocation(line: 764, column: 32, scope: !803)
!814 = !DILocation(line: 764, column: 43, scope: !803)
!815 = !DILocation(line: 764, column: 13, scope: !803)
!816 = !DILocation(line: 764, column: 22, scope: !803)
!817 = !DILocation(line: 764, column: 30, scope: !803)
!818 = !DILocation(line: 765, column: 20, scope: !803)
!819 = !DILocation(line: 765, column: 29, scope: !803)
!820 = !DILocation(line: 765, column: 13, scope: !803)
!821 = !DILocation(line: 765, column: 34, scope: !803)
!822 = !DILocation(line: 765, column: 37, scope: !803)
!823 = !DILocation(line: 765, column: 42, scope: !803)
!824 = !DILocation(line: 765, column: 41, scope: !803)
!825 = !DILocation(line: 765, column: 43, scope: !803)
!826 = !DILocation(line: 765, column: 46, scope: !803)
!827 = !DILocalVariable(name: "cp", scope: !803, file: !3, line: 766, type: !12)
!828 = !DILocation(line: 766, column: 23, scope: !803)
!829 = !DILocation(line: 766, column: 28, scope: !803)
!830 = !DILocation(line: 0, scope: !803)
!831 = !DILocation(line: 767, column: 20, scope: !803)
!832 = !DILocation(line: 767, column: 13, scope: !803)
!833 = !DILocation(line: 768, column: 13, scope: !803)
!834 = !DILocation(line: 768, column: 18, scope: !803)
!835 = !DILocation(line: 768, column: 26, scope: !803)
!836 = !DILocation(line: 769, column: 9, scope: !803)
!837 = !DILocation(line: 771, column: 23, scope: !838)
!838 = distinct !DILexicalBlock(scope: !800, file: !3, line: 769, column: 16)
!839 = !DILocation(line: 771, column: 21, scope: !838)
!840 = !DILocalVariable(name: "splitchild", scope: !612, file: !3, line: 775, type: !12)
!841 = !DILocation(line: 775, column: 19, scope: !612)
!842 = !DILocation(line: 775, column: 32, scope: !612)
!843 = !DILocation(line: 776, column: 16, scope: !612)
!844 = !DILocation(line: 776, column: 9, scope: !612)
!845 = !DILocation(line: 781, column: 18, scope: !612)
!846 = !DILocation(line: 781, column: 9, scope: !612)
!847 = !DILocation(line: 782, column: 13, scope: !612)
!848 = !DILocation(line: 782, column: 11, scope: !612)
!849 = !DILocation(line: 783, column: 5, scope: !612)
!850 = !DILocation(line: 783, column: 16, scope: !851)
!851 = distinct !DILexicalBlock(scope: !604, file: !3, line: 783, column: 16)
!852 = !DILocation(line: 783, column: 19, scope: !851)
!853 = !DILocation(line: 783, column: 27, scope: !851)
!854 = !DILocation(line: 783, column: 30, scope: !851)
!855 = !DILocation(line: 783, column: 35, scope: !851)
!856 = !DILocation(line: 783, column: 32, scope: !851)
!857 = !DILocation(line: 783, column: 16, scope: !604)
!858 = !DILocalVariable(name: "postfixlen", scope: !859, file: !3, line: 789, type: !54)
!859 = distinct !DILexicalBlock(scope: !851, file: !3, line: 783, column: 40)
!860 = !DILocation(line: 789, column: 16, scope: !859)
!861 = !DILocation(line: 789, column: 29, scope: !859)
!862 = !DILocation(line: 789, column: 32, scope: !859)
!863 = !DILocation(line: 789, column: 39, scope: !859)
!864 = !DILocation(line: 789, column: 37, scope: !859)
!865 = !DILocalVariable(name: "nodesize", scope: !859, file: !3, line: 790, type: !54)
!866 = !DILocation(line: 790, column: 16, scope: !859)
!867 = !DILocation(line: 790, column: 43, scope: !859)
!868 = !DILocation(line: 790, column: 42, scope: !859)
!869 = !DILocation(line: 790, column: 54, scope: !859)
!870 = !DILocation(line: 790, column: 53, scope: !859)
!871 = !DILocation(line: 790, column: 76, scope: !859)
!872 = !DILocation(line: 792, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !859, file: !3, line: 792, column: 13)
!874 = !DILocation(line: 792, column: 18, scope: !873)
!875 = !DILocation(line: 792, column: 13, scope: !859)
!876 = !DILocation(line: 792, column: 36, scope: !873)
!877 = !DILocation(line: 792, column: 27, scope: !873)
!878 = !DILocalVariable(name: "postfix", scope: !859, file: !3, line: 793, type: !13)
!879 = !DILocation(line: 793, column: 18, scope: !859)
!880 = !DILocation(line: 793, column: 39, scope: !859)
!881 = !DILocation(line: 793, column: 28, scope: !859)
!882 = !DILocation(line: 795, column: 36, scope: !859)
!883 = !DILocation(line: 795, column: 35, scope: !859)
!884 = !DILocation(line: 795, column: 38, scope: !859)
!885 = !DILocation(line: 795, column: 37, scope: !859)
!886 = !DILocation(line: 795, column: 51, scope: !859)
!887 = !DILocation(line: 795, column: 18, scope: !859)
!888 = !DILocation(line: 796, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !859, file: !3, line: 796, column: 13)
!890 = !DILocation(line: 796, column: 16, scope: !889)
!891 = !DILocation(line: 796, column: 22, scope: !889)
!892 = !DILocation(line: 796, column: 26, scope: !889)
!893 = !DILocation(line: 796, column: 29, scope: !889)
!894 = !DILocation(line: 796, column: 13, scope: !859)
!895 = !DILocation(line: 796, column: 46, scope: !889)
!896 = !DILocation(line: 796, column: 37, scope: !889)
!897 = !DILocalVariable(name: "trimmed", scope: !859, file: !3, line: 797, type: !13)
!898 = !DILocation(line: 797, column: 18, scope: !859)
!899 = !DILocation(line: 797, column: 39, scope: !859)
!900 = !DILocation(line: 797, column: 28, scope: !859)
!901 = !DILocation(line: 799, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !859, file: !3, line: 799, column: 13)
!903 = !DILocation(line: 799, column: 21, scope: !902)
!904 = !DILocation(line: 799, column: 29, scope: !902)
!905 = !DILocation(line: 799, column: 32, scope: !902)
!906 = !DILocation(line: 799, column: 40, scope: !902)
!907 = !DILocation(line: 799, column: 13, scope: !859)
!908 = !DILocation(line: 800, column: 22, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !3, line: 799, column: 49)
!910 = !DILocation(line: 800, column: 13, scope: !909)
!911 = !DILocation(line: 801, column: 22, scope: !909)
!912 = !DILocation(line: 801, column: 13, scope: !909)
!913 = !DILocation(line: 802, column: 13, scope: !909)
!914 = !DILocation(line: 802, column: 19, scope: !909)
!915 = !DILocation(line: 803, column: 13, scope: !909)
!916 = !DILocalVariable(name: "childfield", scope: !859, file: !3, line: 807, type: !12)
!917 = !DILocation(line: 807, column: 19, scope: !859)
!918 = !DILocation(line: 807, column: 32, scope: !859)
!919 = !DILocation(line: 0, scope: !859)
!920 = !DILocalVariable(name: "next", scope: !859, file: !3, line: 808, type: !13)
!921 = !DILocation(line: 808, column: 18, scope: !859)
!922 = !DILocation(line: 809, column: 9, scope: !859)
!923 = !DILocation(line: 809, column: 22, scope: !859)
!924 = !DILocation(line: 812, column: 25, scope: !859)
!925 = !DILocation(line: 812, column: 9, scope: !859)
!926 = !DILocation(line: 812, column: 18, scope: !859)
!927 = !DILocation(line: 812, column: 23, scope: !859)
!928 = !DILocation(line: 813, column: 28, scope: !859)
!929 = !DILocation(line: 813, column: 39, scope: !859)
!930 = !DILocation(line: 813, column: 9, scope: !859)
!931 = !DILocation(line: 813, column: 18, scope: !859)
!932 = !DILocation(line: 813, column: 26, scope: !859)
!933 = !DILocation(line: 814, column: 9, scope: !859)
!934 = !DILocation(line: 814, column: 18, scope: !859)
!935 = !DILocation(line: 814, column: 24, scope: !859)
!936 = !DILocation(line: 815, column: 9, scope: !859)
!937 = !DILocation(line: 815, column: 18, scope: !859)
!938 = !DILocation(line: 815, column: 25, scope: !859)
!939 = !DILocation(line: 816, column: 16, scope: !859)
!940 = !DILocation(line: 816, column: 25, scope: !859)
!941 = !DILocation(line: 816, column: 9, scope: !859)
!942 = !DILocation(line: 816, column: 30, scope: !859)
!943 = !DILocation(line: 816, column: 33, scope: !859)
!944 = !DILocation(line: 816, column: 38, scope: !859)
!945 = !DILocation(line: 816, column: 37, scope: !859)
!946 = !DILocation(line: 816, column: 40, scope: !859)
!947 = !DILocation(line: 817, column: 20, scope: !859)
!948 = !DILocation(line: 817, column: 28, scope: !859)
!949 = !DILocation(line: 817, column: 9, scope: !859)
!950 = !DILocalVariable(name: "cp", scope: !859, file: !3, line: 818, type: !12)
!951 = !DILocation(line: 818, column: 19, scope: !859)
!952 = !DILocation(line: 818, column: 24, scope: !859)
!953 = !DILocation(line: 819, column: 16, scope: !859)
!954 = !DILocation(line: 819, column: 9, scope: !859)
!955 = !DILocation(line: 820, column: 9, scope: !859)
!956 = !DILocation(line: 820, column: 14, scope: !859)
!957 = !DILocation(line: 820, column: 22, scope: !859)
!958 = !DILocation(line: 823, column: 25, scope: !859)
!959 = !DILocation(line: 823, column: 9, scope: !859)
!960 = !DILocation(line: 823, column: 18, scope: !859)
!961 = !DILocation(line: 823, column: 23, scope: !859)
!962 = !DILocation(line: 824, column: 28, scope: !859)
!963 = !DILocation(line: 824, column: 30, scope: !859)
!964 = !DILocation(line: 824, column: 9, scope: !859)
!965 = !DILocation(line: 824, column: 18, scope: !859)
!966 = !DILocation(line: 824, column: 26, scope: !859)
!967 = !DILocation(line: 825, column: 9, scope: !859)
!968 = !DILocation(line: 825, column: 18, scope: !859)
!969 = !DILocation(line: 825, column: 24, scope: !859)
!970 = !DILocation(line: 826, column: 9, scope: !859)
!971 = !DILocation(line: 826, column: 18, scope: !859)
!972 = !DILocation(line: 826, column: 25, scope: !859)
!973 = !DILocation(line: 827, column: 16, scope: !859)
!974 = !DILocation(line: 827, column: 25, scope: !859)
!975 = !DILocation(line: 827, column: 9, scope: !859)
!976 = !DILocation(line: 827, column: 30, scope: !859)
!977 = !DILocation(line: 827, column: 33, scope: !859)
!978 = !DILocation(line: 827, column: 38, scope: !859)
!979 = !DILocation(line: 828, column: 16, scope: !859)
!980 = !DILocation(line: 828, column: 9, scope: !859)
!981 = !DILocation(line: 829, column: 13, scope: !982)
!982 = distinct !DILexicalBlock(scope: !859, file: !3, line: 829, column: 13)
!983 = !DILocation(line: 829, column: 16, scope: !982)
!984 = !DILocation(line: 829, column: 13, scope: !859)
!985 = !DILocalVariable(name: "aux", scope: !986, file: !3, line: 830, type: !6)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 829, column: 23)
!987 = !DILocation(line: 830, column: 19, scope: !986)
!988 = !DILocation(line: 830, column: 36, scope: !986)
!989 = !DILocation(line: 830, column: 25, scope: !986)
!990 = !DILocation(line: 831, column: 24, scope: !986)
!991 = !DILocation(line: 831, column: 32, scope: !986)
!992 = !DILocation(line: 831, column: 13, scope: !986)
!993 = !DILocation(line: 832, column: 9, scope: !986)
!994 = !DILocation(line: 836, column: 14, scope: !859)
!995 = !DILocation(line: 836, column: 12, scope: !859)
!996 = !DILocation(line: 837, column: 16, scope: !859)
!997 = !DILocation(line: 837, column: 9, scope: !859)
!998 = !DILocation(line: 841, column: 9, scope: !859)
!999 = !DILocation(line: 841, column: 14, scope: !859)
!1000 = !DILocation(line: 841, column: 20, scope: !859)
!1001 = !DILocation(line: 842, column: 18, scope: !859)
!1002 = !DILocation(line: 842, column: 9, scope: !859)
!1003 = !DILocation(line: 843, column: 9, scope: !859)
!1004 = !DILocation(line: 848, column: 5, scope: !506)
!1005 = !DILocation(line: 848, column: 11, scope: !506)
!1006 = !DILocation(line: 848, column: 15, scope: !506)
!1007 = !DILocation(line: 848, column: 13, scope: !506)
!1008 = !DILocalVariable(name: "child", scope: !1009, file: !3, line: 849, type: !13)
!1009 = distinct !DILexicalBlock(scope: !506, file: !3, line: 848, column: 20)
!1010 = !DILocation(line: 849, column: 18, scope: !1009)
!1011 = !DILocation(line: 854, column: 13, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 854, column: 13)
!1013 = !DILocation(line: 854, column: 16, scope: !1012)
!1014 = !DILocation(line: 854, column: 21, scope: !1012)
!1015 = !DILocation(line: 854, column: 26, scope: !1012)
!1016 = !DILocation(line: 854, column: 29, scope: !1012)
!1017 = !DILocation(line: 854, column: 33, scope: !1012)
!1018 = !DILocation(line: 854, column: 32, scope: !1012)
!1019 = !DILocation(line: 854, column: 35, scope: !1012)
!1020 = !DILocation(line: 854, column: 13, scope: !1009)
!1021 = !DILocalVariable(name: "comprsize", scope: !1022, file: !3, line: 856, type: !54)
!1022 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 854, column: 40)
!1023 = !DILocation(line: 856, column: 20, scope: !1022)
!1024 = !DILocation(line: 856, column: 32, scope: !1022)
!1025 = !DILocation(line: 856, column: 36, scope: !1022)
!1026 = !DILocation(line: 856, column: 35, scope: !1022)
!1027 = !DILocation(line: 857, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 857, column: 17)
!1029 = !DILocation(line: 857, column: 27, scope: !1028)
!1030 = !DILocation(line: 857, column: 17, scope: !1022)
!1031 = !DILocation(line: 858, column: 27, scope: !1028)
!1032 = !DILocation(line: 858, column: 17, scope: !1028)
!1033 = !DILocalVariable(name: "newh", scope: !1022, file: !3, line: 859, type: !13)
!1034 = !DILocation(line: 859, column: 22, scope: !1022)
!1035 = !DILocation(line: 859, column: 45, scope: !1022)
!1036 = !DILocation(line: 859, column: 47, scope: !1022)
!1037 = !DILocation(line: 859, column: 49, scope: !1022)
!1038 = !DILocation(line: 859, column: 48, scope: !1022)
!1039 = !DILocation(line: 859, column: 51, scope: !1022)
!1040 = !DILocation(line: 859, column: 29, scope: !1022)
!1041 = !DILocation(line: 860, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 860, column: 17)
!1043 = !DILocation(line: 860, column: 22, scope: !1042)
!1044 = !DILocation(line: 860, column: 17, scope: !1022)
!1045 = !DILocation(line: 860, column: 31, scope: !1042)
!1046 = !DILocation(line: 861, column: 17, scope: !1022)
!1047 = !DILocation(line: 861, column: 15, scope: !1022)
!1048 = !DILocation(line: 862, column: 20, scope: !1022)
!1049 = !DILocation(line: 862, column: 13, scope: !1022)
!1050 = !DILocation(line: 863, column: 26, scope: !1022)
!1051 = !DILocation(line: 0, scope: !1022)
!1052 = !DILocation(line: 863, column: 24, scope: !1022)
!1053 = !DILocation(line: 864, column: 18, scope: !1022)
!1054 = !DILocation(line: 864, column: 15, scope: !1022)
!1055 = !DILocation(line: 865, column: 9, scope: !1022)
!1056 = !DILocalVariable(name: "new_parentlink", scope: !1057, file: !3, line: 867, type: !12)
!1057 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 865, column: 16)
!1058 = !DILocation(line: 867, column: 23, scope: !1057)
!1059 = !DILocalVariable(name: "newh", scope: !1057, file: !3, line: 868, type: !13)
!1060 = !DILocation(line: 868, column: 22, scope: !1057)
!1061 = !DILocation(line: 868, column: 41, scope: !1057)
!1062 = !DILocation(line: 868, column: 43, scope: !1057)
!1063 = !DILocation(line: 868, column: 45, scope: !1057)
!1064 = !DILocation(line: 868, column: 29, scope: !1057)
!1065 = !DILocation(line: 869, column: 17, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 869, column: 17)
!1067 = !DILocation(line: 869, column: 22, scope: !1066)
!1068 = !DILocation(line: 869, column: 17, scope: !1057)
!1069 = !DILocation(line: 869, column: 31, scope: !1066)
!1070 = !DILocation(line: 870, column: 17, scope: !1057)
!1071 = !DILocation(line: 870, column: 15, scope: !1057)
!1072 = !DILocation(line: 871, column: 20, scope: !1057)
!1073 = !DILocation(line: 871, column: 13, scope: !1057)
!1074 = !DILocation(line: 872, column: 26, scope: !1057)
!1075 = !DILocation(line: 872, column: 24, scope: !1057)
!1076 = !DILocation(line: 873, column: 14, scope: !1057)
!1077 = !DILocation(line: 875, column: 9, scope: !1009)
!1078 = !DILocation(line: 875, column: 14, scope: !1009)
!1079 = !DILocation(line: 875, column: 22, scope: !1009)
!1080 = !DILocation(line: 876, column: 13, scope: !1009)
!1081 = !DILocation(line: 876, column: 11, scope: !1009)
!1082 = distinct !{!1082, !1004, !1083, !300}
!1083 = !DILocation(line: 877, column: 5, scope: !506)
!1084 = !DILocalVariable(name: "newh", scope: !506, file: !3, line: 878, type: !13)
!1085 = !DILocation(line: 878, column: 14, scope: !506)
!1086 = !DILocation(line: 878, column: 39, scope: !506)
!1087 = !DILocation(line: 878, column: 41, scope: !506)
!1088 = !DILocation(line: 878, column: 21, scope: !506)
!1089 = !DILocation(line: 879, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !506, file: !3, line: 879, column: 9)
!1091 = !DILocation(line: 879, column: 14, scope: !1090)
!1092 = !DILocation(line: 879, column: 9, scope: !506)
!1093 = !DILocation(line: 879, column: 23, scope: !1090)
!1094 = !DILocation(line: 880, column: 9, scope: !506)
!1095 = !DILocation(line: 880, column: 7, scope: !506)
!1096 = !DILocation(line: 881, column: 10, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !506, file: !3, line: 881, column: 9)
!1098 = !DILocation(line: 881, column: 13, scope: !1097)
!1099 = !DILocation(line: 881, column: 9, scope: !506)
!1100 = !DILocation(line: 881, column: 20, scope: !1097)
!1101 = !DILocation(line: 881, column: 25, scope: !1097)
!1102 = !DILocation(line: 881, column: 31, scope: !1097)
!1103 = !DILocation(line: 882, column: 16, scope: !506)
!1104 = !DILocation(line: 882, column: 18, scope: !506)
!1105 = !DILocation(line: 882, column: 5, scope: !506)
!1106 = !DILocation(line: 883, column: 12, scope: !506)
!1107 = !DILocation(line: 883, column: 5, scope: !506)
!1108 = !DILocation(line: 884, column: 5, scope: !506)
!1109 = !DILabel(scope: !506, name: "oom", file: !3, line: 886)
!1110 = !DILocation(line: 886, column: 1, scope: !506)
!1111 = !DILocation(line: 892, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !506, file: !3, line: 892, column: 9)
!1113 = !DILocation(line: 892, column: 12, scope: !1112)
!1114 = !DILocation(line: 892, column: 17, scope: !1112)
!1115 = !DILocation(line: 892, column: 9, scope: !506)
!1116 = !DILocation(line: 893, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 892, column: 23)
!1118 = !DILocation(line: 893, column: 12, scope: !1117)
!1119 = !DILocation(line: 893, column: 19, scope: !1117)
!1120 = !DILocation(line: 894, column: 9, scope: !1117)
!1121 = !DILocation(line: 894, column: 12, scope: !1117)
!1122 = !DILocation(line: 894, column: 18, scope: !1117)
!1123 = !DILocation(line: 895, column: 9, scope: !1117)
!1124 = !DILocation(line: 895, column: 14, scope: !1117)
!1125 = !DILocation(line: 895, column: 20, scope: !1117)
!1126 = !DILocation(line: 896, column: 9, scope: !1117)
!1127 = !DILocation(line: 897, column: 5, scope: !1117)
!1128 = !DILocation(line: 898, column: 5, scope: !506)
!1129 = !DILocation(line: 898, column: 11, scope: !506)
!1130 = !DILocation(line: 899, column: 5, scope: !506)
!1131 = !DILocation(line: 900, column: 1, scope: !506)
!1132 = distinct !DISubprogram(name: "raxLowWalk", scope: !3, file: !3, line: 459, type: !1133, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!54, !102, !10, !54, !12, !229, !1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !15, line: 150, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !15, line: 143, size: 2304, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1147}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1138, file: !15, line: 144, baseType: !7, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1138, file: !15, line: 145, baseType: !54, size: 64, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !1138, file: !15, line: 145, baseType: !54, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !1138, file: !15, line: 148, baseType: !1144, size: 2048, offset: 192)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !1138, file: !15, line: 149, baseType: !31, size: 32, offset: 2240)
!1148 = !DILocalVariable(name: "rax", arg: 1, scope: !1132, file: !3, line: 459, type: !102)
!1149 = !DILocation(line: 459, column: 38, scope: !1132)
!1150 = !DILocalVariable(name: "s", arg: 2, scope: !1132, file: !3, line: 459, type: !10)
!1151 = !DILocation(line: 459, column: 58, scope: !1132)
!1152 = !DILocalVariable(name: "len", arg: 3, scope: !1132, file: !3, line: 459, type: !54)
!1153 = !DILocation(line: 459, column: 68, scope: !1132)
!1154 = !DILocalVariable(name: "stopnode", arg: 4, scope: !1132, file: !3, line: 459, type: !12)
!1155 = !DILocation(line: 459, column: 83, scope: !1132)
!1156 = !DILocalVariable(name: "plink", arg: 5, scope: !1132, file: !3, line: 459, type: !229)
!1157 = !DILocation(line: 459, column: 104, scope: !1132)
!1158 = !DILocalVariable(name: "splitpos", arg: 6, scope: !1132, file: !3, line: 459, type: !1135)
!1159 = !DILocation(line: 459, column: 116, scope: !1132)
!1160 = !DILocalVariable(name: "ts", arg: 7, scope: !1132, file: !3, line: 459, type: !1136)
!1161 = !DILocation(line: 459, column: 136, scope: !1132)
!1162 = !DILocalVariable(name: "h", scope: !1132, file: !3, line: 460, type: !13)
!1163 = !DILocation(line: 460, column: 14, scope: !1132)
!1164 = !DILocation(line: 460, column: 18, scope: !1132)
!1165 = !DILocation(line: 460, column: 23, scope: !1132)
!1166 = !DILocalVariable(name: "parentlink", scope: !1132, file: !3, line: 461, type: !12)
!1167 = !DILocation(line: 461, column: 15, scope: !1132)
!1168 = !DILocation(line: 461, column: 29, scope: !1132)
!1169 = !DILocation(line: 461, column: 34, scope: !1132)
!1170 = !DILocalVariable(name: "i", scope: !1132, file: !3, line: 463, type: !54)
!1171 = !DILocation(line: 463, column: 12, scope: !1132)
!1172 = !DILocalVariable(name: "j", scope: !1132, file: !3, line: 464, type: !54)
!1173 = !DILocation(line: 464, column: 12, scope: !1132)
!1174 = !DILocation(line: 465, column: 5, scope: !1132)
!1175 = !DILocation(line: 465, column: 11, scope: !1132)
!1176 = !DILocation(line: 465, column: 14, scope: !1132)
!1177 = !DILocation(line: 465, column: 19, scope: !1132)
!1178 = !DILocation(line: 465, column: 22, scope: !1132)
!1179 = !DILocation(line: 465, column: 26, scope: !1132)
!1180 = !DILocation(line: 465, column: 24, scope: !1132)
!1181 = !DILocation(line: 0, scope: !1132)
!1182 = !DILocalVariable(name: "v", scope: !1183, file: !3, line: 467, type: !10)
!1183 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 465, column: 31)
!1184 = !DILocation(line: 467, column: 24, scope: !1183)
!1185 = !DILocation(line: 467, column: 28, scope: !1183)
!1186 = !DILocation(line: 467, column: 31, scope: !1183)
!1187 = !DILocation(line: 469, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 469, column: 13)
!1189 = !DILocation(line: 469, column: 16, scope: !1188)
!1190 = !DILocation(line: 469, column: 13, scope: !1183)
!1191 = !DILocation(line: 470, column: 20, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 470, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 469, column: 25)
!1194 = !DILocation(line: 470, column: 18, scope: !1192)
!1195 = !DILocation(line: 470, column: 25, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 470, column: 13)
!1197 = !DILocation(line: 470, column: 29, scope: !1196)
!1198 = !DILocation(line: 470, column: 32, scope: !1196)
!1199 = !DILocation(line: 470, column: 27, scope: !1196)
!1200 = !DILocation(line: 470, column: 37, scope: !1196)
!1201 = !DILocation(line: 470, column: 40, scope: !1196)
!1202 = !DILocation(line: 470, column: 44, scope: !1196)
!1203 = !DILocation(line: 470, column: 42, scope: !1196)
!1204 = !DILocation(line: 0, scope: !1196)
!1205 = !DILocation(line: 470, column: 13, scope: !1192)
!1206 = !DILocation(line: 471, column: 21, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 471, column: 21)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 470, column: 59)
!1209 = !DILocation(line: 471, column: 23, scope: !1207)
!1210 = !DILocation(line: 471, column: 29, scope: !1207)
!1211 = !DILocation(line: 471, column: 31, scope: !1207)
!1212 = !DILocation(line: 471, column: 26, scope: !1207)
!1213 = !DILocation(line: 471, column: 21, scope: !1208)
!1214 = !DILocation(line: 471, column: 35, scope: !1207)
!1215 = !DILocation(line: 472, column: 13, scope: !1208)
!1216 = !DILocation(line: 470, column: 50, scope: !1196)
!1217 = !DILocation(line: 470, column: 55, scope: !1196)
!1218 = !DILocation(line: 470, column: 13, scope: !1196)
!1219 = distinct !{!1219, !1205, !1220, !300}
!1220 = !DILocation(line: 472, column: 13, scope: !1192)
!1221 = !DILocation(line: 473, column: 17, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 473, column: 17)
!1223 = !DILocation(line: 473, column: 22, scope: !1222)
!1224 = !DILocation(line: 473, column: 25, scope: !1222)
!1225 = !DILocation(line: 473, column: 19, scope: !1222)
!1226 = !DILocation(line: 473, column: 17, scope: !1193)
!1227 = !DILocation(line: 473, column: 31, scope: !1222)
!1228 = !DILocation(line: 474, column: 9, scope: !1193)
!1229 = !DILocation(line: 478, column: 20, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 478, column: 13)
!1231 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 474, column: 16)
!1232 = !DILocation(line: 478, column: 18, scope: !1230)
!1233 = !DILocation(line: 478, column: 25, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 478, column: 13)
!1235 = !DILocation(line: 478, column: 29, scope: !1234)
!1236 = !DILocation(line: 478, column: 32, scope: !1234)
!1237 = !DILocation(line: 478, column: 27, scope: !1234)
!1238 = !DILocation(line: 478, column: 13, scope: !1230)
!1239 = !DILocation(line: 479, column: 21, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 479, column: 21)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 478, column: 43)
!1242 = !DILocation(line: 479, column: 23, scope: !1240)
!1243 = !DILocation(line: 479, column: 29, scope: !1240)
!1244 = !DILocation(line: 479, column: 31, scope: !1240)
!1245 = !DILocation(line: 479, column: 26, scope: !1240)
!1246 = !DILocation(line: 479, column: 21, scope: !1241)
!1247 = !DILocation(line: 479, column: 35, scope: !1240)
!1248 = !DILocation(line: 480, column: 13, scope: !1241)
!1249 = !DILocation(line: 478, column: 39, scope: !1234)
!1250 = !DILocation(line: 478, column: 13, scope: !1234)
!1251 = distinct !{!1251, !1238, !1252, !300}
!1252 = !DILocation(line: 480, column: 13, scope: !1230)
!1253 = !DILocation(line: 481, column: 17, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 481, column: 17)
!1255 = !DILocation(line: 481, column: 22, scope: !1254)
!1256 = !DILocation(line: 481, column: 25, scope: !1254)
!1257 = !DILocation(line: 481, column: 19, scope: !1254)
!1258 = !DILocation(line: 481, column: 17, scope: !1231)
!1259 = !DILocation(line: 481, column: 31, scope: !1254)
!1260 = !DILocation(line: 482, column: 14, scope: !1231)
!1261 = !DILocation(line: 485, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 485, column: 13)
!1263 = !DILocation(line: 485, column: 13, scope: !1183)
!1264 = !DILocation(line: 485, column: 30, scope: !1262)
!1265 = !DILocation(line: 485, column: 33, scope: !1262)
!1266 = !DILocation(line: 485, column: 17, scope: !1262)
!1267 = !DILocalVariable(name: "children", scope: !1183, file: !3, line: 486, type: !12)
!1268 = !DILocation(line: 486, column: 19, scope: !1183)
!1269 = !DILocation(line: 486, column: 30, scope: !1183)
!1270 = !DILocation(line: 487, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 487, column: 13)
!1272 = !DILocation(line: 487, column: 16, scope: !1271)
!1273 = !DILocation(line: 487, column: 13, scope: !1183)
!1274 = !DILocation(line: 487, column: 27, scope: !1271)
!1275 = !DILocation(line: 487, column: 25, scope: !1271)
!1276 = !DILocation(line: 488, column: 9, scope: !1183)
!1277 = !DILocation(line: 488, column: 19, scope: !1183)
!1278 = !DILocation(line: 488, column: 28, scope: !1183)
!1279 = !DILocation(line: 488, column: 27, scope: !1183)
!1280 = !DILocation(line: 489, column: 22, scope: !1183)
!1281 = !DILocation(line: 489, column: 31, scope: !1183)
!1282 = !DILocation(line: 489, column: 30, scope: !1183)
!1283 = !DILocation(line: 489, column: 20, scope: !1183)
!1284 = !DILocation(line: 490, column: 11, scope: !1183)
!1285 = distinct !{!1285, !1174, !1286, !300}
!1286 = !DILocation(line: 494, column: 5, scope: !1132)
!1287 = !DILocation(line: 496, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 496, column: 9)
!1289 = !DILocation(line: 496, column: 9, scope: !1132)
!1290 = !DILocation(line: 496, column: 31, scope: !1288)
!1291 = !DILocation(line: 496, column: 20, scope: !1288)
!1292 = !DILocation(line: 496, column: 29, scope: !1288)
!1293 = !DILocation(line: 496, column: 19, scope: !1288)
!1294 = !DILocation(line: 497, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 497, column: 9)
!1296 = !DILocation(line: 497, column: 9, scope: !1132)
!1297 = !DILocation(line: 497, column: 25, scope: !1295)
!1298 = !DILocation(line: 497, column: 17, scope: !1295)
!1299 = !DILocation(line: 497, column: 23, scope: !1295)
!1300 = !DILocation(line: 497, column: 16, scope: !1295)
!1301 = !DILocation(line: 498, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 498, column: 9)
!1303 = !DILocation(line: 498, column: 18, scope: !1302)
!1304 = !DILocation(line: 498, column: 21, scope: !1302)
!1305 = !DILocation(line: 498, column: 24, scope: !1302)
!1306 = !DILocation(line: 498, column: 9, scope: !1132)
!1307 = !DILocation(line: 498, column: 45, scope: !1302)
!1308 = !DILocation(line: 498, column: 34, scope: !1302)
!1309 = !DILocation(line: 498, column: 43, scope: !1302)
!1310 = !DILocation(line: 498, column: 33, scope: !1302)
!1311 = !DILocation(line: 499, column: 12, scope: !1132)
!1312 = !DILocation(line: 499, column: 5, scope: !1132)
!1313 = distinct !DISubprogram(name: "raxRemove", scope: !3, file: !3, line: 1022, type: !1314, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!31, !102, !10, !54, !7}
!1316 = !DILocalVariable(name: "rax", arg: 1, scope: !1313, file: !3, line: 1022, type: !102)
!1317 = !DILocation(line: 1022, column: 20, scope: !1313)
!1318 = !DILocalVariable(name: "s", arg: 2, scope: !1313, file: !3, line: 1022, type: !10)
!1319 = !DILocation(line: 1022, column: 40, scope: !1313)
!1320 = !DILocalVariable(name: "len", arg: 3, scope: !1313, file: !3, line: 1022, type: !54)
!1321 = !DILocation(line: 1022, column: 50, scope: !1313)
!1322 = !DILocalVariable(name: "old", arg: 4, scope: !1313, file: !3, line: 1022, type: !7)
!1323 = !DILocation(line: 1022, column: 62, scope: !1313)
!1324 = !DILocalVariable(name: "h", scope: !1313, file: !3, line: 1023, type: !13)
!1325 = !DILocation(line: 1023, column: 14, scope: !1313)
!1326 = !DILocalVariable(name: "ts", scope: !1313, file: !3, line: 1024, type: !1137)
!1327 = !DILocation(line: 1024, column: 14, scope: !1313)
!1328 = !DILocation(line: 1027, column: 5, scope: !1313)
!1329 = !DILocalVariable(name: "splitpos", scope: !1313, file: !3, line: 1028, type: !31)
!1330 = !DILocation(line: 1028, column: 9, scope: !1313)
!1331 = !DILocalVariable(name: "i", scope: !1313, file: !3, line: 1029, type: !54)
!1332 = !DILocation(line: 1029, column: 12, scope: !1313)
!1333 = !DILocation(line: 1029, column: 27, scope: !1313)
!1334 = !DILocation(line: 1029, column: 31, scope: !1313)
!1335 = !DILocation(line: 1029, column: 33, scope: !1313)
!1336 = !DILocation(line: 1029, column: 16, scope: !1313)
!1337 = !DILocation(line: 1030, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1030, column: 9)
!1339 = !DILocation(line: 1030, column: 14, scope: !1338)
!1340 = !DILocation(line: 1030, column: 11, scope: !1338)
!1341 = !DILocation(line: 1030, column: 18, scope: !1338)
!1342 = !DILocation(line: 1030, column: 22, scope: !1338)
!1343 = !DILocation(line: 1030, column: 25, scope: !1338)
!1344 = !DILocation(line: 1030, column: 33, scope: !1338)
!1345 = !DILocation(line: 1030, column: 36, scope: !1338)
!1346 = !DILocation(line: 1030, column: 45, scope: !1338)
!1347 = !DILocation(line: 1030, column: 51, scope: !1338)
!1348 = !DILocation(line: 1030, column: 55, scope: !1338)
!1349 = !DILocation(line: 1030, column: 58, scope: !1338)
!1350 = !DILocation(line: 1030, column: 9, scope: !1313)
!1351 = !DILocation(line: 1031, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1030, column: 65)
!1353 = !DILocation(line: 1032, column: 9, scope: !1352)
!1354 = !DILocation(line: 1034, column: 9, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1034, column: 9)
!1356 = !DILocation(line: 1034, column: 9, scope: !1313)
!1357 = !DILocation(line: 1034, column: 32, scope: !1355)
!1358 = !DILocation(line: 1034, column: 21, scope: !1355)
!1359 = !DILocation(line: 1034, column: 15, scope: !1355)
!1360 = !DILocation(line: 1034, column: 19, scope: !1355)
!1361 = !DILocation(line: 1034, column: 14, scope: !1355)
!1362 = !DILocation(line: 1035, column: 5, scope: !1313)
!1363 = !DILocation(line: 1035, column: 8, scope: !1313)
!1364 = !DILocation(line: 1035, column: 14, scope: !1313)
!1365 = !DILocation(line: 1036, column: 5, scope: !1313)
!1366 = !DILocation(line: 1036, column: 10, scope: !1313)
!1367 = !DILocation(line: 1036, column: 16, scope: !1313)
!1368 = !DILocalVariable(name: "trycompress", scope: !1313, file: !3, line: 1044, type: !31)
!1369 = !DILocation(line: 1044, column: 9, scope: !1313)
!1370 = !DILocation(line: 1047, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1047, column: 9)
!1372 = !DILocation(line: 1047, column: 12, scope: !1371)
!1373 = !DILocation(line: 1047, column: 17, scope: !1371)
!1374 = !DILocation(line: 1047, column: 9, scope: !1313)
!1375 = !DILocalVariable(name: "child", scope: !1376, file: !3, line: 1049, type: !13)
!1376 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1047, column: 23)
!1377 = !DILocation(line: 1049, column: 18, scope: !1376)
!1378 = !DILocation(line: 1050, column: 9, scope: !1376)
!1379 = !DILocation(line: 1050, column: 15, scope: !1376)
!1380 = !DILocation(line: 1050, column: 20, scope: !1376)
!1381 = !DILocation(line: 1050, column: 25, scope: !1376)
!1382 = !DILocation(line: 1050, column: 17, scope: !1376)
!1383 = !DILocation(line: 1051, column: 21, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1050, column: 31)
!1385 = !DILocation(line: 1051, column: 19, scope: !1384)
!1386 = !DILocation(line: 1054, column: 22, scope: !1384)
!1387 = !DILocation(line: 1054, column: 13, scope: !1384)
!1388 = !DILocation(line: 1055, column: 13, scope: !1384)
!1389 = !DILocation(line: 1055, column: 18, scope: !1384)
!1390 = !DILocation(line: 1055, column: 26, scope: !1384)
!1391 = !DILocation(line: 1056, column: 17, scope: !1384)
!1392 = !DILocation(line: 1056, column: 15, scope: !1384)
!1393 = !DILocation(line: 1059, column: 17, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1059, column: 17)
!1395 = !DILocation(line: 1059, column: 20, scope: !1394)
!1396 = !DILocation(line: 1059, column: 26, scope: !1394)
!1397 = !DILocation(line: 1059, column: 31, scope: !1394)
!1398 = !DILocation(line: 1059, column: 34, scope: !1394)
!1399 = !DILocation(line: 1059, column: 42, scope: !1394)
!1400 = !DILocation(line: 1059, column: 45, scope: !1394)
!1401 = !DILocation(line: 1059, column: 48, scope: !1394)
!1402 = !DILocation(line: 1059, column: 53, scope: !1394)
!1403 = !DILocation(line: 1059, column: 17, scope: !1384)
!1404 = !DILocation(line: 1059, column: 60, scope: !1394)
!1405 = distinct !{!1405, !1378, !1406, !300}
!1406 = !DILocation(line: 1060, column: 9, scope: !1376)
!1407 = !DILocation(line: 1061, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1061, column: 13)
!1409 = !DILocation(line: 1061, column: 13, scope: !1376)
!1410 = !DILocalVariable(name: "new", scope: !1411, file: !3, line: 1064, type: !13)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1061, column: 20)
!1412 = !DILocation(line: 1064, column: 22, scope: !1411)
!1413 = !DILocation(line: 1064, column: 43, scope: !1411)
!1414 = !DILocation(line: 1064, column: 45, scope: !1411)
!1415 = !DILocation(line: 1064, column: 28, scope: !1411)
!1416 = !DILocation(line: 1065, column: 17, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1065, column: 17)
!1418 = !DILocation(line: 1065, column: 24, scope: !1417)
!1419 = !DILocation(line: 1065, column: 21, scope: !1417)
!1420 = !DILocation(line: 1065, column: 17, scope: !1411)
!1421 = !DILocalVariable(name: "parent", scope: !1422, file: !3, line: 1066, type: !13)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 1065, column: 27)
!1423 = !DILocation(line: 1066, column: 26, scope: !1422)
!1424 = !DILocation(line: 1066, column: 35, scope: !1422)
!1425 = !DILocalVariable(name: "parentlink", scope: !1422, file: !3, line: 1067, type: !12)
!1426 = !DILocation(line: 1067, column: 27, scope: !1422)
!1427 = !DILocation(line: 1068, column: 21, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1068, column: 21)
!1429 = !DILocation(line: 1068, column: 28, scope: !1428)
!1430 = !DILocation(line: 1068, column: 21, scope: !1422)
!1431 = !DILocation(line: 1069, column: 35, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1068, column: 37)
!1433 = !DILocation(line: 1069, column: 40, scope: !1432)
!1434 = !DILocation(line: 1069, column: 32, scope: !1432)
!1435 = !DILocation(line: 1070, column: 17, scope: !1432)
!1436 = !DILocation(line: 1071, column: 52, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1070, column: 24)
!1438 = !DILocation(line: 1071, column: 59, scope: !1437)
!1439 = !DILocation(line: 1071, column: 34, scope: !1437)
!1440 = !DILocation(line: 1071, column: 32, scope: !1437)
!1441 = !DILocation(line: 1073, column: 24, scope: !1422)
!1442 = !DILocation(line: 1073, column: 17, scope: !1422)
!1443 = !DILocation(line: 1074, column: 13, scope: !1422)
!1444 = !DILocation(line: 1078, column: 17, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1078, column: 17)
!1446 = !DILocation(line: 1078, column: 22, scope: !1445)
!1447 = !DILocation(line: 1078, column: 27, scope: !1445)
!1448 = !DILocation(line: 1078, column: 32, scope: !1445)
!1449 = !DILocation(line: 1078, column: 35, scope: !1445)
!1450 = !DILocation(line: 1078, column: 40, scope: !1445)
!1451 = !DILocation(line: 1078, column: 46, scope: !1445)
!1452 = !DILocation(line: 1078, column: 17, scope: !1411)
!1453 = !DILocation(line: 1079, column: 29, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1078, column: 52)
!1455 = !DILocation(line: 1080, column: 21, scope: !1454)
!1456 = !DILocation(line: 1080, column: 19, scope: !1454)
!1457 = !DILocation(line: 1081, column: 13, scope: !1454)
!1458 = !DILocation(line: 1082, column: 9, scope: !1411)
!1459 = !DILocation(line: 1083, column: 5, scope: !1376)
!1460 = !DILocation(line: 1083, column: 16, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1083, column: 16)
!1462 = !DILocation(line: 1083, column: 19, scope: !1461)
!1463 = !DILocation(line: 1083, column: 24, scope: !1461)
!1464 = !DILocation(line: 1083, column: 16, scope: !1371)
!1465 = !DILocation(line: 1086, column: 21, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1083, column: 30)
!1467 = !DILocation(line: 1087, column: 5, scope: !1466)
!1468 = !DILocation(line: 1091, column: 9, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1091, column: 9)
!1470 = !DILocation(line: 1091, column: 21, scope: !1469)
!1471 = !DILocation(line: 1091, column: 27, scope: !1469)
!1472 = !DILocation(line: 1091, column: 24, scope: !1469)
!1473 = !DILocation(line: 1091, column: 9, scope: !1313)
!1474 = !DILocation(line: 1091, column: 44, scope: !1469)
!1475 = !DILocation(line: 1091, column: 32, scope: !1469)
!1476 = !DILocation(line: 1136, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1136, column: 9)
!1478 = !DILocation(line: 1136, column: 9, scope: !1313)
!1479 = !DILocalVariable(name: "parent", scope: !1480, file: !3, line: 1144, type: !13)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1136, column: 22)
!1481 = !DILocation(line: 1144, column: 18, scope: !1480)
!1482 = !DILocation(line: 1145, column: 9, scope: !1480)
!1483 = !DILocation(line: 1146, column: 22, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 1145, column: 18)
!1485 = !DILocation(line: 1146, column: 20, scope: !1484)
!1486 = !DILocation(line: 1147, column: 18, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 1147, column: 17)
!1488 = !DILocation(line: 1147, column: 25, scope: !1487)
!1489 = !DILocation(line: 1147, column: 28, scope: !1487)
!1490 = !DILocation(line: 1147, column: 36, scope: !1487)
!1491 = !DILocation(line: 1147, column: 42, scope: !1487)
!1492 = !DILocation(line: 1148, column: 19, scope: !1487)
!1493 = !DILocation(line: 1148, column: 27, scope: !1487)
!1494 = !DILocation(line: 1148, column: 35, scope: !1487)
!1495 = !DILocation(line: 1148, column: 38, scope: !1487)
!1496 = !DILocation(line: 1148, column: 46, scope: !1487)
!1497 = !DILocation(line: 1148, column: 51, scope: !1487)
!1498 = !DILocation(line: 1147, column: 17, scope: !1484)
!1499 = !DILocation(line: 1148, column: 58, scope: !1487)
!1500 = !DILocation(line: 1149, column: 17, scope: !1484)
!1501 = !DILocation(line: 1149, column: 15, scope: !1484)
!1502 = distinct !{!1502, !1482, !1503}
!1503 = !DILocation(line: 1151, column: 9, scope: !1480)
!1504 = !DILocalVariable(name: "start", scope: !1480, file: !3, line: 1152, type: !13)
!1505 = !DILocation(line: 1152, column: 18, scope: !1480)
!1506 = !DILocation(line: 1152, column: 26, scope: !1480)
!1507 = !DILocalVariable(name: "comprsize", scope: !1480, file: !3, line: 1155, type: !54)
!1508 = !DILocation(line: 1155, column: 16, scope: !1480)
!1509 = !DILocation(line: 1155, column: 28, scope: !1480)
!1510 = !DILocation(line: 1155, column: 31, scope: !1480)
!1511 = !DILocalVariable(name: "nodes", scope: !1480, file: !3, line: 1156, type: !31)
!1512 = !DILocation(line: 1156, column: 13, scope: !1480)
!1513 = !DILocation(line: 1157, column: 9, scope: !1480)
!1514 = !DILocation(line: 1157, column: 15, scope: !1480)
!1515 = !DILocation(line: 1157, column: 18, scope: !1480)
!1516 = !DILocation(line: 1157, column: 23, scope: !1480)
!1517 = !DILocalVariable(name: "cp", scope: !1518, file: !3, line: 1158, type: !12)
!1518 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 1157, column: 29)
!1519 = !DILocation(line: 1158, column: 23, scope: !1518)
!1520 = !DILocation(line: 1158, column: 28, scope: !1518)
!1521 = !DILocation(line: 0, scope: !1518)
!1522 = !DILocation(line: 1159, column: 13, scope: !1518)
!1523 = !DILocation(line: 1159, column: 23, scope: !1518)
!1524 = !DILocation(line: 1160, column: 17, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1160, column: 17)
!1526 = !DILocation(line: 1160, column: 20, scope: !1525)
!1527 = !DILocation(line: 1160, column: 26, scope: !1525)
!1528 = !DILocation(line: 1160, column: 31, scope: !1525)
!1529 = !DILocation(line: 1160, column: 34, scope: !1525)
!1530 = !DILocation(line: 1160, column: 42, scope: !1525)
!1531 = !DILocation(line: 1160, column: 45, scope: !1525)
!1532 = !DILocation(line: 1160, column: 48, scope: !1525)
!1533 = !DILocation(line: 1160, column: 53, scope: !1525)
!1534 = !DILocation(line: 1160, column: 17, scope: !1518)
!1535 = !DILocation(line: 1160, column: 60, scope: !1525)
!1536 = !DILocation(line: 1163, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 1163, column: 17)
!1538 = !DILocation(line: 1163, column: 29, scope: !1537)
!1539 = !DILocation(line: 1163, column: 32, scope: !1537)
!1540 = !DILocation(line: 1163, column: 27, scope: !1537)
!1541 = !DILocation(line: 1163, column: 37, scope: !1537)
!1542 = !DILocation(line: 1163, column: 17, scope: !1518)
!1543 = !DILocation(line: 1163, column: 58, scope: !1537)
!1544 = !DILocation(line: 1164, column: 18, scope: !1518)
!1545 = !DILocation(line: 1165, column: 26, scope: !1518)
!1546 = !DILocation(line: 1165, column: 29, scope: !1518)
!1547 = !DILocation(line: 1165, column: 23, scope: !1518)
!1548 = distinct !{!1548, !1513, !1549, !300}
!1549 = !DILocation(line: 1166, column: 9, scope: !1480)
!1550 = !DILocation(line: 1167, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 1167, column: 13)
!1552 = !DILocation(line: 1167, column: 19, scope: !1551)
!1553 = !DILocation(line: 1167, column: 13, scope: !1480)
!1554 = !DILocalVariable(name: "nodesize", scope: !1555, file: !3, line: 1169, type: !54)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1167, column: 24)
!1556 = !DILocation(line: 1169, column: 20, scope: !1555)
!1557 = !DILocation(line: 1170, column: 33, scope: !1555)
!1558 = !DILocation(line: 1170, column: 32, scope: !1555)
!1559 = !DILocation(line: 1170, column: 43, scope: !1555)
!1560 = !DILocation(line: 1170, column: 42, scope: !1555)
!1561 = !DILocation(line: 1170, column: 64, scope: !1555)
!1562 = !DILocalVariable(name: "new", scope: !1555, file: !3, line: 1171, type: !13)
!1563 = !DILocation(line: 1171, column: 22, scope: !1555)
!1564 = !DILocation(line: 1171, column: 39, scope: !1555)
!1565 = !DILocation(line: 1171, column: 28, scope: !1555)
!1566 = !DILocation(line: 1174, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1174, column: 17)
!1568 = !DILocation(line: 1174, column: 21, scope: !1567)
!1569 = !DILocation(line: 1174, column: 17, scope: !1555)
!1570 = !DILocation(line: 1175, column: 17, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1174, column: 30)
!1572 = !DILocation(line: 1176, column: 17, scope: !1571)
!1573 = !DILocation(line: 1178, column: 13, scope: !1555)
!1574 = !DILocation(line: 1178, column: 18, scope: !1555)
!1575 = !DILocation(line: 1178, column: 24, scope: !1555)
!1576 = !DILocation(line: 1179, column: 13, scope: !1555)
!1577 = !DILocation(line: 1179, column: 18, scope: !1555)
!1578 = !DILocation(line: 1179, column: 25, scope: !1555)
!1579 = !DILocation(line: 1180, column: 13, scope: !1555)
!1580 = !DILocation(line: 1180, column: 18, scope: !1555)
!1581 = !DILocation(line: 1180, column: 26, scope: !1555)
!1582 = !DILocation(line: 1181, column: 25, scope: !1555)
!1583 = !DILocation(line: 1181, column: 13, scope: !1555)
!1584 = !DILocation(line: 1181, column: 18, scope: !1555)
!1585 = !DILocation(line: 1181, column: 23, scope: !1555)
!1586 = !DILocation(line: 1182, column: 13, scope: !1555)
!1587 = !DILocation(line: 1182, column: 18, scope: !1555)
!1588 = !DILocation(line: 1182, column: 26, scope: !1555)
!1589 = !DILocation(line: 1187, column: 23, scope: !1555)
!1590 = !DILocation(line: 1188, column: 17, scope: !1555)
!1591 = !DILocation(line: 1188, column: 15, scope: !1555)
!1592 = !DILocation(line: 1189, column: 13, scope: !1555)
!1593 = !DILocation(line: 1189, column: 19, scope: !1555)
!1594 = !DILocation(line: 1189, column: 22, scope: !1555)
!1595 = !DILocation(line: 1189, column: 27, scope: !1555)
!1596 = !DILocation(line: 1190, column: 24, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1189, column: 33)
!1598 = !DILocation(line: 1190, column: 29, scope: !1597)
!1599 = !DILocation(line: 1190, column: 34, scope: !1597)
!1600 = !DILocation(line: 1190, column: 33, scope: !1597)
!1601 = !DILocation(line: 1190, column: 44, scope: !1597)
!1602 = !DILocation(line: 1190, column: 47, scope: !1597)
!1603 = !DILocation(line: 1190, column: 17, scope: !1597)
!1604 = !DILocation(line: 1190, column: 52, scope: !1597)
!1605 = !DILocation(line: 1190, column: 55, scope: !1597)
!1606 = !DILocation(line: 1191, column: 30, scope: !1597)
!1607 = !DILocation(line: 1191, column: 33, scope: !1597)
!1608 = !DILocation(line: 1191, column: 27, scope: !1597)
!1609 = !DILocalVariable(name: "cp", scope: !1597, file: !3, line: 1192, type: !12)
!1610 = !DILocation(line: 1192, column: 27, scope: !1597)
!1611 = !DILocation(line: 1192, column: 32, scope: !1597)
!1612 = !DILocation(line: 0, scope: !1597)
!1613 = !DILocalVariable(name: "tofree", scope: !1597, file: !3, line: 1193, type: !13)
!1614 = !DILocation(line: 1193, column: 26, scope: !1597)
!1615 = !DILocation(line: 1193, column: 35, scope: !1597)
!1616 = !DILocation(line: 1194, column: 17, scope: !1597)
!1617 = !DILocation(line: 1194, column: 27, scope: !1597)
!1618 = !DILocation(line: 1195, column: 26, scope: !1597)
!1619 = !DILocation(line: 1195, column: 17, scope: !1597)
!1620 = !DILocation(line: 1195, column: 35, scope: !1597)
!1621 = !DILocation(line: 1195, column: 40, scope: !1597)
!1622 = !DILocation(line: 1195, column: 48, scope: !1597)
!1623 = !DILocation(line: 1196, column: 21, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1196, column: 21)
!1625 = !DILocation(line: 1196, column: 24, scope: !1624)
!1626 = !DILocation(line: 1196, column: 30, scope: !1624)
!1627 = !DILocation(line: 1196, column: 35, scope: !1624)
!1628 = !DILocation(line: 1196, column: 38, scope: !1624)
!1629 = !DILocation(line: 1196, column: 46, scope: !1624)
!1630 = !DILocation(line: 1196, column: 49, scope: !1624)
!1631 = !DILocation(line: 1196, column: 52, scope: !1624)
!1632 = !DILocation(line: 1196, column: 57, scope: !1624)
!1633 = !DILocation(line: 1196, column: 21, scope: !1597)
!1634 = !DILocation(line: 1196, column: 64, scope: !1624)
!1635 = distinct !{!1635, !1592, !1636, !300}
!1636 = !DILocation(line: 1197, column: 13, scope: !1555)
!1637 = !DILocalVariable(name: "cp", scope: !1555, file: !3, line: 1202, type: !12)
!1638 = !DILocation(line: 1202, column: 23, scope: !1555)
!1639 = !DILocation(line: 1202, column: 28, scope: !1555)
!1640 = !DILocation(line: 0, scope: !1555)
!1641 = !DILocation(line: 1203, column: 20, scope: !1555)
!1642 = !DILocation(line: 1203, column: 13, scope: !1555)
!1643 = !DILocation(line: 1206, column: 17, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 1206, column: 17)
!1645 = !DILocation(line: 1206, column: 17, scope: !1555)
!1646 = !DILocalVariable(name: "parentlink", scope: !1647, file: !3, line: 1207, type: !12)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1206, column: 25)
!1648 = !DILocation(line: 1207, column: 27, scope: !1647)
!1649 = !DILocation(line: 1207, column: 58, scope: !1647)
!1650 = !DILocation(line: 1207, column: 65, scope: !1647)
!1651 = !DILocation(line: 1207, column: 40, scope: !1647)
!1652 = !DILocation(line: 1208, column: 24, scope: !1647)
!1653 = !DILocation(line: 1208, column: 17, scope: !1647)
!1654 = !DILocation(line: 1209, column: 13, scope: !1647)
!1655 = !DILocation(line: 1210, column: 29, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1209, column: 20)
!1657 = !DILocation(line: 1210, column: 17, scope: !1656)
!1658 = !DILocation(line: 1210, column: 22, scope: !1656)
!1659 = !DILocation(line: 1210, column: 27, scope: !1656)
!1660 = !DILocation(line: 1215, column: 9, scope: !1555)
!1661 = !DILocation(line: 1216, column: 5, scope: !1480)
!1662 = !DILocation(line: 1217, column: 5, scope: !1313)
!1663 = !DILocation(line: 1218, column: 5, scope: !1313)
!1664 = !DILocation(line: 1219, column: 1, scope: !1313)
!1665 = distinct !DISubprogram(name: "raxInsert", scope: !3, file: !3, line: 904, type: !1666, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!31, !102, !10, !54, !6, !7}
!1668 = !DILocalVariable(name: "rax", arg: 1, scope: !1665, file: !3, line: 904, type: !102)
!1669 = !DILocation(line: 904, column: 20, scope: !1665)
!1670 = !DILocalVariable(name: "s", arg: 2, scope: !1665, file: !3, line: 904, type: !10)
!1671 = !DILocation(line: 904, column: 40, scope: !1665)
!1672 = !DILocalVariable(name: "len", arg: 3, scope: !1665, file: !3, line: 904, type: !54)
!1673 = !DILocation(line: 904, column: 50, scope: !1665)
!1674 = !DILocalVariable(name: "data", arg: 4, scope: !1665, file: !3, line: 904, type: !6)
!1675 = !DILocation(line: 904, column: 61, scope: !1665)
!1676 = !DILocalVariable(name: "old", arg: 5, scope: !1665, file: !3, line: 904, type: !7)
!1677 = !DILocation(line: 904, column: 74, scope: !1665)
!1678 = !DILocation(line: 905, column: 29, scope: !1665)
!1679 = !DILocation(line: 905, column: 33, scope: !1665)
!1680 = !DILocation(line: 905, column: 35, scope: !1665)
!1681 = !DILocation(line: 905, column: 39, scope: !1665)
!1682 = !DILocation(line: 905, column: 44, scope: !1665)
!1683 = !DILocation(line: 905, column: 12, scope: !1665)
!1684 = !DILocation(line: 905, column: 5, scope: !1665)
!1685 = distinct !DISubprogram(name: "raxTryInsert", scope: !3, file: !3, line: 911, type: !1666, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1686 = !DILocalVariable(name: "rax", arg: 1, scope: !1685, file: !3, line: 911, type: !102)
!1687 = !DILocation(line: 911, column: 23, scope: !1685)
!1688 = !DILocalVariable(name: "s", arg: 2, scope: !1685, file: !3, line: 911, type: !10)
!1689 = !DILocation(line: 911, column: 43, scope: !1685)
!1690 = !DILocalVariable(name: "len", arg: 3, scope: !1685, file: !3, line: 911, type: !54)
!1691 = !DILocation(line: 911, column: 53, scope: !1685)
!1692 = !DILocalVariable(name: "data", arg: 4, scope: !1685, file: !3, line: 911, type: !6)
!1693 = !DILocation(line: 911, column: 64, scope: !1685)
!1694 = !DILocalVariable(name: "old", arg: 5, scope: !1685, file: !3, line: 911, type: !7)
!1695 = !DILocation(line: 911, column: 77, scope: !1685)
!1696 = !DILocation(line: 912, column: 29, scope: !1685)
!1697 = !DILocation(line: 912, column: 33, scope: !1685)
!1698 = !DILocation(line: 912, column: 35, scope: !1685)
!1699 = !DILocation(line: 912, column: 39, scope: !1685)
!1700 = !DILocation(line: 912, column: 44, scope: !1685)
!1701 = !DILocation(line: 912, column: 12, scope: !1685)
!1702 = !DILocation(line: 912, column: 5, scope: !1685)
!1703 = distinct !DISubprogram(name: "raxFind", scope: !3, file: !3, line: 918, type: !1704, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!6, !102, !10, !54}
!1706 = !DILocalVariable(name: "rax", arg: 1, scope: !1703, file: !3, line: 918, type: !102)
!1707 = !DILocation(line: 918, column: 20, scope: !1703)
!1708 = !DILocalVariable(name: "s", arg: 2, scope: !1703, file: !3, line: 918, type: !10)
!1709 = !DILocation(line: 918, column: 40, scope: !1703)
!1710 = !DILocalVariable(name: "len", arg: 3, scope: !1703, file: !3, line: 918, type: !54)
!1711 = !DILocation(line: 918, column: 50, scope: !1703)
!1712 = !DILocalVariable(name: "h", scope: !1703, file: !3, line: 919, type: !13)
!1713 = !DILocation(line: 919, column: 14, scope: !1703)
!1714 = !DILocalVariable(name: "splitpos", scope: !1703, file: !3, line: 922, type: !31)
!1715 = !DILocation(line: 922, column: 9, scope: !1703)
!1716 = !DILocalVariable(name: "i", scope: !1703, file: !3, line: 923, type: !54)
!1717 = !DILocation(line: 923, column: 12, scope: !1703)
!1718 = !DILocation(line: 923, column: 27, scope: !1703)
!1719 = !DILocation(line: 923, column: 31, scope: !1703)
!1720 = !DILocation(line: 923, column: 33, scope: !1703)
!1721 = !DILocation(line: 923, column: 16, scope: !1703)
!1722 = !DILocation(line: 924, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 924, column: 9)
!1724 = !DILocation(line: 924, column: 14, scope: !1723)
!1725 = !DILocation(line: 924, column: 11, scope: !1723)
!1726 = !DILocation(line: 924, column: 18, scope: !1723)
!1727 = !DILocation(line: 924, column: 22, scope: !1723)
!1728 = !DILocation(line: 924, column: 25, scope: !1723)
!1729 = !DILocation(line: 924, column: 33, scope: !1723)
!1730 = !DILocation(line: 924, column: 36, scope: !1723)
!1731 = !DILocation(line: 924, column: 45, scope: !1723)
!1732 = !DILocation(line: 924, column: 51, scope: !1723)
!1733 = !DILocation(line: 924, column: 55, scope: !1723)
!1734 = !DILocation(line: 924, column: 58, scope: !1723)
!1735 = !DILocation(line: 924, column: 9, scope: !1703)
!1736 = !DILocation(line: 925, column: 16, scope: !1723)
!1737 = !DILocation(line: 925, column: 9, scope: !1723)
!1738 = !DILocation(line: 926, column: 23, scope: !1703)
!1739 = !DILocation(line: 926, column: 12, scope: !1703)
!1740 = !DILocation(line: 926, column: 5, scope: !1703)
!1741 = !DILocation(line: 927, column: 1, scope: !1703)
!1742 = distinct !DISubprogram(name: "raxFindParentLink", scope: !3, file: !3, line: 934, type: !1743, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!12, !13, !13}
!1745 = !DILocalVariable(name: "parent", arg: 1, scope: !1742, file: !3, line: 934, type: !13)
!1746 = !DILocation(line: 934, column: 38, scope: !1742)
!1747 = !DILocalVariable(name: "child", arg: 2, scope: !1742, file: !3, line: 934, type: !13)
!1748 = !DILocation(line: 934, column: 55, scope: !1742)
!1749 = !DILocalVariable(name: "cp", scope: !1742, file: !3, line: 935, type: !12)
!1750 = !DILocation(line: 935, column: 15, scope: !1742)
!1751 = !DILocation(line: 935, column: 20, scope: !1742)
!1752 = !DILocalVariable(name: "c", scope: !1742, file: !3, line: 936, type: !13)
!1753 = !DILocation(line: 936, column: 14, scope: !1742)
!1754 = !DILocation(line: 937, column: 5, scope: !1742)
!1755 = !DILocation(line: 938, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 937, column: 14)
!1757 = !DILocation(line: 938, column: 19, scope: !1756)
!1758 = !DILocation(line: 939, column: 13, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 939, column: 13)
!1760 = !DILocation(line: 939, column: 18, scope: !1759)
!1761 = !DILocation(line: 939, column: 15, scope: !1759)
!1762 = !DILocation(line: 939, column: 13, scope: !1756)
!1763 = !DILocation(line: 939, column: 25, scope: !1759)
!1764 = !DILocation(line: 940, column: 11, scope: !1756)
!1765 = distinct !{!1765, !1754, !1766}
!1766 = !DILocation(line: 941, column: 5, scope: !1742)
!1767 = !DILocation(line: 942, column: 12, scope: !1742)
!1768 = !DILocation(line: 942, column: 5, scope: !1742)
!1769 = distinct !DISubprogram(name: "raxRemoveChild", scope: !3, file: !3, line: 949, type: !1770, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!13, !13, !13}
!1772 = !DILocalVariable(name: "parent", arg: 1, scope: !1769, file: !3, line: 949, type: !13)
!1773 = !DILocation(line: 949, column: 34, scope: !1769)
!1774 = !DILocalVariable(name: "child", arg: 2, scope: !1769, file: !3, line: 949, type: !13)
!1775 = !DILocation(line: 949, column: 51, scope: !1769)
!1776 = !DILocation(line: 954, column: 9, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 954, column: 9)
!1778 = !DILocation(line: 954, column: 17, scope: !1777)
!1779 = !DILocation(line: 954, column: 9, scope: !1769)
!1780 = !DILocalVariable(name: "data", scope: !1781, file: !3, line: 955, type: !6)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 954, column: 26)
!1782 = !DILocation(line: 955, column: 15, scope: !1781)
!1783 = !DILocation(line: 956, column: 13, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 956, column: 13)
!1785 = !DILocation(line: 956, column: 21, scope: !1784)
!1786 = !DILocation(line: 956, column: 13, scope: !1781)
!1787 = !DILocation(line: 956, column: 46, scope: !1784)
!1788 = !DILocation(line: 956, column: 35, scope: !1784)
!1789 = !DILocation(line: 956, column: 33, scope: !1784)
!1790 = !DILocation(line: 956, column: 28, scope: !1784)
!1791 = !DILocation(line: 957, column: 9, scope: !1781)
!1792 = !DILocation(line: 957, column: 17, scope: !1781)
!1793 = !DILocation(line: 957, column: 24, scope: !1781)
!1794 = !DILocation(line: 958, column: 9, scope: !1781)
!1795 = !DILocation(line: 958, column: 17, scope: !1781)
!1796 = !DILocation(line: 958, column: 25, scope: !1781)
!1797 = !DILocation(line: 959, column: 9, scope: !1781)
!1798 = !DILocation(line: 959, column: 17, scope: !1781)
!1799 = !DILocation(line: 959, column: 22, scope: !1781)
!1800 = !DILocation(line: 960, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 960, column: 13)
!1802 = !DILocation(line: 960, column: 21, scope: !1801)
!1803 = !DILocation(line: 960, column: 13, scope: !1781)
!1804 = !DILocation(line: 960, column: 39, scope: !1801)
!1805 = !DILocation(line: 960, column: 46, scope: !1801)
!1806 = !DILocation(line: 960, column: 28, scope: !1801)
!1807 = !DILocation(line: 962, column: 16, scope: !1781)
!1808 = !DILocation(line: 962, column: 9, scope: !1781)
!1809 = !DILocalVariable(name: "cp", scope: !1769, file: !3, line: 970, type: !12)
!1810 = !DILocation(line: 970, column: 15, scope: !1769)
!1811 = !DILocation(line: 970, column: 20, scope: !1769)
!1812 = !DILocalVariable(name: "c", scope: !1769, file: !3, line: 971, type: !12)
!1813 = !DILocation(line: 971, column: 15, scope: !1769)
!1814 = !DILocation(line: 971, column: 19, scope: !1769)
!1815 = !DILocalVariable(name: "e", scope: !1769, file: !3, line: 972, type: !10)
!1816 = !DILocation(line: 972, column: 20, scope: !1769)
!1817 = !DILocation(line: 972, column: 24, scope: !1769)
!1818 = !DILocation(line: 972, column: 32, scope: !1769)
!1819 = !DILocation(line: 976, column: 5, scope: !1769)
!1820 = !DILocalVariable(name: "aux", scope: !1821, file: !3, line: 977, type: !13)
!1821 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 976, column: 14)
!1822 = !DILocation(line: 977, column: 18, scope: !1821)
!1823 = !DILocation(line: 978, column: 9, scope: !1821)
!1824 = !DILocation(line: 978, column: 21, scope: !1821)
!1825 = !DILocation(line: 979, column: 13, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 979, column: 13)
!1827 = !DILocation(line: 979, column: 20, scope: !1826)
!1828 = !DILocation(line: 979, column: 17, scope: !1826)
!1829 = !DILocation(line: 979, column: 13, scope: !1821)
!1830 = !DILocation(line: 979, column: 27, scope: !1826)
!1831 = !DILocation(line: 980, column: 10, scope: !1821)
!1832 = !DILocation(line: 981, column: 10, scope: !1821)
!1833 = distinct !{!1833, !1819, !1834}
!1834 = !DILocation(line: 982, column: 5, scope: !1769)
!1835 = !DILocalVariable(name: "taillen", scope: !1769, file: !3, line: 986, type: !31)
!1836 = !DILocation(line: 986, column: 9, scope: !1769)
!1837 = !DILocation(line: 986, column: 19, scope: !1769)
!1838 = !DILocation(line: 986, column: 27, scope: !1769)
!1839 = !DILocation(line: 986, column: 35, scope: !1769)
!1840 = !DILocation(line: 986, column: 39, scope: !1769)
!1841 = !DILocation(line: 986, column: 47, scope: !1769)
!1842 = !DILocation(line: 986, column: 37, scope: !1769)
!1843 = !DILocation(line: 986, column: 32, scope: !1769)
!1844 = !DILocation(line: 986, column: 53, scope: !1769)
!1845 = !DILocation(line: 988, column: 13, scope: !1769)
!1846 = !DILocation(line: 988, column: 15, scope: !1769)
!1847 = !DILocation(line: 988, column: 16, scope: !1769)
!1848 = !DILocation(line: 988, column: 19, scope: !1769)
!1849 = !DILocation(line: 988, column: 5, scope: !1769)
!1850 = !DILocalVariable(name: "shift", scope: !1769, file: !3, line: 996, type: !54)
!1851 = !DILocation(line: 996, column: 12, scope: !1769)
!1852 = !DILocation(line: 996, column: 22, scope: !1769)
!1853 = !DILocation(line: 996, column: 30, scope: !1769)
!1854 = !DILocation(line: 996, column: 34, scope: !1769)
!1855 = !DILocation(line: 996, column: 21, scope: !1769)
!1856 = !DILocation(line: 996, column: 38, scope: !1769)
!1857 = !DILocation(line: 996, column: 55, scope: !1769)
!1858 = !DILocation(line: 996, column: 20, scope: !1769)
!1859 = !DILocation(line: 999, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 999, column: 9)
!1861 = !DILocation(line: 999, column: 9, scope: !1769)
!1862 = !DILocation(line: 1000, column: 25, scope: !1860)
!1863 = !DILocation(line: 1000, column: 18, scope: !1860)
!1864 = !DILocation(line: 1000, column: 29, scope: !1860)
!1865 = !DILocation(line: 1000, column: 28, scope: !1860)
!1866 = !DILocation(line: 1000, column: 35, scope: !1860)
!1867 = !DILocation(line: 1000, column: 9, scope: !1860)
!1868 = !DILocation(line: 1000, column: 39, scope: !1860)
!1869 = !DILocation(line: 1000, column: 47, scope: !1860)
!1870 = !DILocation(line: 1000, column: 52, scope: !1860)
!1871 = !DILocation(line: 1000, column: 51, scope: !1860)
!1872 = !DILocation(line: 1000, column: 59, scope: !1860)
!1873 = !DILocation(line: 1000, column: 38, scope: !1860)
!1874 = !DILocation(line: 1000, column: 62, scope: !1860)
!1875 = !DILocalVariable(name: "valuelen", scope: !1769, file: !3, line: 1003, type: !54)
!1876 = !DILocation(line: 1003, column: 12, scope: !1769)
!1877 = !DILocation(line: 1003, column: 24, scope: !1769)
!1878 = !DILocation(line: 1003, column: 32, scope: !1769)
!1879 = !DILocation(line: 1003, column: 38, scope: !1769)
!1880 = !DILocation(line: 1003, column: 42, scope: !1769)
!1881 = !DILocation(line: 1003, column: 50, scope: !1769)
!1882 = !DILocation(line: 1003, column: 41, scope: !1769)
!1883 = !DILocation(line: 0, scope: !1769)
!1884 = !DILocation(line: 1003, column: 23, scope: !1769)
!1885 = !DILocation(line: 1004, column: 21, scope: !1769)
!1886 = !DILocation(line: 1004, column: 14, scope: !1769)
!1887 = !DILocation(line: 1004, column: 24, scope: !1769)
!1888 = !DILocation(line: 1004, column: 23, scope: !1769)
!1889 = !DILocation(line: 1004, column: 30, scope: !1769)
!1890 = !DILocation(line: 1004, column: 31, scope: !1769)
!1891 = !DILocation(line: 1004, column: 5, scope: !1769)
!1892 = !DILocation(line: 1004, column: 34, scope: !1769)
!1893 = !DILocation(line: 1004, column: 41, scope: !1769)
!1894 = !DILocation(line: 1004, column: 60, scope: !1769)
!1895 = !DILocation(line: 1004, column: 59, scope: !1769)
!1896 = !DILocation(line: 1007, column: 5, scope: !1769)
!1897 = !DILocation(line: 1007, column: 13, scope: !1769)
!1898 = !DILocation(line: 1007, column: 17, scope: !1769)
!1899 = !DILocalVariable(name: "newnode", scope: !1769, file: !3, line: 1011, type: !13)
!1900 = !DILocation(line: 1011, column: 14, scope: !1769)
!1901 = !DILocation(line: 1011, column: 36, scope: !1769)
!1902 = !DILocation(line: 1011, column: 43, scope: !1769)
!1903 = !DILocation(line: 1011, column: 24, scope: !1769)
!1904 = !DILocation(line: 1012, column: 9, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1012, column: 9)
!1906 = !DILocation(line: 1012, column: 9, scope: !1769)
!1907 = !DILocation(line: 1014, column: 5, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1012, column: 18)
!1909 = !DILocation(line: 1017, column: 12, scope: !1769)
!1910 = !DILocation(line: 1017, column: 22, scope: !1769)
!1911 = !DILocation(line: 1017, column: 32, scope: !1769)
!1912 = !DILocation(line: 1017, column: 5, scope: !1769)
!1913 = !DILocation(line: 1018, column: 1, scope: !1769)
!1914 = distinct !DISubprogram(name: "raxStackInit", scope: !3, file: !3, line: 94, type: !1915, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1136}
!1917 = !DILocalVariable(name: "ts", arg: 1, scope: !1914, file: !3, line: 94, type: !1136)
!1918 = !DILocation(line: 94, column: 43, scope: !1914)
!1919 = !DILocation(line: 95, column: 17, scope: !1914)
!1920 = !DILocation(line: 95, column: 21, scope: !1914)
!1921 = !DILocation(line: 95, column: 5, scope: !1914)
!1922 = !DILocation(line: 95, column: 9, scope: !1914)
!1923 = !DILocation(line: 95, column: 15, scope: !1914)
!1924 = !DILocation(line: 96, column: 5, scope: !1914)
!1925 = !DILocation(line: 96, column: 9, scope: !1914)
!1926 = !DILocation(line: 96, column: 15, scope: !1914)
!1927 = !DILocation(line: 97, column: 5, scope: !1914)
!1928 = !DILocation(line: 97, column: 9, scope: !1914)
!1929 = !DILocation(line: 97, column: 18, scope: !1914)
!1930 = !DILocation(line: 98, column: 5, scope: !1914)
!1931 = !DILocation(line: 98, column: 9, scope: !1914)
!1932 = !DILocation(line: 98, column: 13, scope: !1914)
!1933 = !DILocation(line: 99, column: 1, scope: !1914)
!1934 = distinct !DISubprogram(name: "raxStackFree", scope: !3, file: !3, line: 145, type: !1915, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1935 = !DILocalVariable(name: "ts", arg: 1, scope: !1934, file: !3, line: 145, type: !1136)
!1936 = !DILocation(line: 145, column: 43, scope: !1934)
!1937 = !DILocation(line: 146, column: 9, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 146, column: 9)
!1939 = !DILocation(line: 146, column: 13, scope: !1938)
!1940 = !DILocation(line: 146, column: 22, scope: !1938)
!1941 = !DILocation(line: 146, column: 26, scope: !1938)
!1942 = !DILocation(line: 146, column: 19, scope: !1938)
!1943 = !DILocation(line: 146, column: 9, scope: !1934)
!1944 = !DILocation(line: 146, column: 49, scope: !1938)
!1945 = !DILocation(line: 146, column: 53, scope: !1938)
!1946 = !DILocation(line: 146, column: 40, scope: !1938)
!1947 = !DILocation(line: 147, column: 1, scope: !1934)
!1948 = distinct !DISubprogram(name: "raxStackPop", scope: !3, file: !3, line: 131, type: !1949, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!6, !1136}
!1951 = !DILocalVariable(name: "ts", arg: 1, scope: !1948, file: !3, line: 131, type: !1136)
!1952 = !DILocation(line: 131, column: 43, scope: !1948)
!1953 = !DILocation(line: 132, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 132, column: 9)
!1955 = !DILocation(line: 132, column: 13, scope: !1954)
!1956 = !DILocation(line: 132, column: 19, scope: !1954)
!1957 = !DILocation(line: 132, column: 9, scope: !1948)
!1958 = !DILocation(line: 132, column: 25, scope: !1954)
!1959 = !DILocation(line: 133, column: 5, scope: !1948)
!1960 = !DILocation(line: 133, column: 9, scope: !1948)
!1961 = !DILocation(line: 133, column: 14, scope: !1948)
!1962 = !DILocation(line: 134, column: 12, scope: !1948)
!1963 = !DILocation(line: 134, column: 16, scope: !1948)
!1964 = !DILocation(line: 134, column: 22, scope: !1948)
!1965 = !DILocation(line: 134, column: 26, scope: !1948)
!1966 = !DILocation(line: 134, column: 5, scope: !1948)
!1967 = !DILocation(line: 135, column: 1, scope: !1948)
!1968 = distinct !DISubprogram(name: "raxStackPeek", scope: !3, file: !3, line: 139, type: !1949, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1969 = !DILocalVariable(name: "ts", arg: 1, scope: !1968, file: !3, line: 139, type: !1136)
!1970 = !DILocation(line: 139, column: 44, scope: !1968)
!1971 = !DILocation(line: 140, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 140, column: 9)
!1973 = !DILocation(line: 140, column: 13, scope: !1972)
!1974 = !DILocation(line: 140, column: 19, scope: !1972)
!1975 = !DILocation(line: 140, column: 9, scope: !1968)
!1976 = !DILocation(line: 140, column: 25, scope: !1972)
!1977 = !DILocation(line: 141, column: 12, scope: !1968)
!1978 = !DILocation(line: 141, column: 16, scope: !1968)
!1979 = !DILocation(line: 141, column: 22, scope: !1968)
!1980 = !DILocation(line: 141, column: 26, scope: !1968)
!1981 = !DILocation(line: 141, column: 31, scope: !1968)
!1982 = !DILocation(line: 141, column: 5, scope: !1968)
!1983 = !DILocation(line: 142, column: 1, scope: !1968)
!1984 = distinct !DISubprogram(name: "raxRecursiveFree", scope: !3, file: !3, line: 1223, type: !1985, scopeLine: 1223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !102, !13, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !6}
!1990 = !DILocalVariable(name: "rax", arg: 1, scope: !1984, file: !3, line: 1223, type: !102)
!1991 = !DILocation(line: 1223, column: 28, scope: !1984)
!1992 = !DILocalVariable(name: "n", arg: 2, scope: !1984, file: !3, line: 1223, type: !13)
!1993 = !DILocation(line: 1223, column: 42, scope: !1984)
!1994 = !DILocalVariable(name: "free_callback", arg: 3, scope: !1984, file: !3, line: 1223, type: !1987)
!1995 = !DILocation(line: 1223, column: 52, scope: !1984)
!1996 = !DILocalVariable(name: "numchildren", scope: !1984, file: !3, line: 1225, type: !31)
!1997 = !DILocation(line: 1225, column: 9, scope: !1984)
!1998 = !DILocation(line: 1225, column: 23, scope: !1984)
!1999 = !DILocation(line: 1225, column: 26, scope: !1984)
!2000 = !DILocation(line: 1225, column: 40, scope: !1984)
!2001 = !DILocation(line: 1225, column: 43, scope: !1984)
!2002 = !DILocalVariable(name: "cp", scope: !1984, file: !3, line: 1226, type: !12)
!2003 = !DILocation(line: 1226, column: 15, scope: !1984)
!2004 = !DILocation(line: 1226, column: 20, scope: !1984)
!2005 = !DILocation(line: 0, scope: !1984)
!2006 = !DILocation(line: 1227, column: 5, scope: !1984)
!2007 = !DILocation(line: 1227, column: 22, scope: !1984)
!2008 = !DILocalVariable(name: "child", scope: !2009, file: !3, line: 1228, type: !13)
!2009 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1227, column: 26)
!2010 = !DILocation(line: 1228, column: 18, scope: !2009)
!2011 = !DILocation(line: 1229, column: 9, scope: !2009)
!2012 = !DILocation(line: 1229, column: 23, scope: !2009)
!2013 = !DILocation(line: 1230, column: 26, scope: !2009)
!2014 = !DILocation(line: 1230, column: 30, scope: !2009)
!2015 = !DILocation(line: 1230, column: 36, scope: !2009)
!2016 = !DILocation(line: 1230, column: 9, scope: !2009)
!2017 = !DILocation(line: 1231, column: 11, scope: !2009)
!2018 = distinct !{!2018, !2006, !2019, !300}
!2019 = !DILocation(line: 1232, column: 5, scope: !1984)
!2020 = !DILocation(line: 1234, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1234, column: 9)
!2022 = !DILocation(line: 1234, column: 23, scope: !2021)
!2023 = !DILocation(line: 1234, column: 26, scope: !2021)
!2024 = !DILocation(line: 1234, column: 29, scope: !2021)
!2025 = !DILocation(line: 1234, column: 35, scope: !2021)
!2026 = !DILocation(line: 1234, column: 39, scope: !2021)
!2027 = !DILocation(line: 1234, column: 42, scope: !2021)
!2028 = !DILocation(line: 1234, column: 9, scope: !1984)
!2029 = !DILocation(line: 1235, column: 9, scope: !2021)
!2030 = !DILocation(line: 1235, column: 34, scope: !2021)
!2031 = !DILocation(line: 1235, column: 23, scope: !2021)
!2032 = !DILocation(line: 1236, column: 14, scope: !1984)
!2033 = !DILocation(line: 1236, column: 5, scope: !1984)
!2034 = !DILocation(line: 1237, column: 5, scope: !1984)
!2035 = !DILocation(line: 1237, column: 10, scope: !1984)
!2036 = !DILocation(line: 1237, column: 18, scope: !1984)
!2037 = !DILocation(line: 1238, column: 1, scope: !1984)
!2038 = distinct !DISubprogram(name: "raxFreeWithCallback", scope: !3, file: !3, line: 1242, type: !2039, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !102, !1987}
!2041 = !DILocalVariable(name: "rax", arg: 1, scope: !2038, file: !3, line: 1242, type: !102)
!2042 = !DILocation(line: 1242, column: 31, scope: !2038)
!2043 = !DILocalVariable(name: "free_callback", arg: 2, scope: !2038, file: !3, line: 1242, type: !1987)
!2044 = !DILocation(line: 1242, column: 43, scope: !2038)
!2045 = !DILocation(line: 1243, column: 22, scope: !2038)
!2046 = !DILocation(line: 1243, column: 26, scope: !2038)
!2047 = !DILocation(line: 1243, column: 31, scope: !2038)
!2048 = !DILocation(line: 1243, column: 36, scope: !2038)
!2049 = !DILocation(line: 1243, column: 5, scope: !2038)
!2050 = !DILocation(line: 1244, column: 5, scope: !2038)
!2051 = !DILocation(line: 1245, column: 14, scope: !2038)
!2052 = !DILocation(line: 1245, column: 5, scope: !2038)
!2053 = !DILocation(line: 1246, column: 1, scope: !2038)
!2054 = distinct !DISubprogram(name: "raxFree", scope: !3, file: !3, line: 1249, type: !2055, scopeLine: 1249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !102}
!2057 = !DILocalVariable(name: "rax", arg: 1, scope: !2054, file: !3, line: 1249, type: !102)
!2058 = !DILocation(line: 1249, column: 19, scope: !2054)
!2059 = !DILocation(line: 1250, column: 25, scope: !2054)
!2060 = !DILocation(line: 1250, column: 5, scope: !2054)
!2061 = !DILocation(line: 1251, column: 1, scope: !2054)
!2062 = distinct !DISubprogram(name: "raxStart", scope: !3, file: !3, line: 1258, type: !2063, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !2065, !102}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !15, line: 186, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !15, line: 175, size: 3840, elements: !2068)
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2075, !2079, !2080, !2081}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2067, file: !15, line: 176, baseType: !31, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2067, file: !15, line: 177, baseType: !102, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2067, file: !15, line: 178, baseType: !10, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2067, file: !15, line: 179, baseType: !6, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2067, file: !15, line: 180, baseType: !54, size: 64, offset: 256)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !2067, file: !15, line: 181, baseType: !54, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !2067, file: !15, line: 182, baseType: !2076, size: 1024, offset: 384)
!2076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !2077)
!2077 = !{!2078}
!2078 = !DISubrange(count: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2067, file: !15, line: 183, baseType: !13, size: 64, offset: 1408)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2067, file: !15, line: 184, baseType: !1137, size: 2304, offset: 1472)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !2067, file: !15, line: 185, baseType: !2082, size: 64, offset: 3776)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !15, line: 165, baseType: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!31, !12}
!2086 = !DILocalVariable(name: "it", arg: 1, scope: !2062, file: !3, line: 1258, type: !2065)
!2087 = !DILocation(line: 1258, column: 28, scope: !2062)
!2088 = !DILocalVariable(name: "rt", arg: 2, scope: !2062, file: !3, line: 1258, type: !102)
!2089 = !DILocation(line: 1258, column: 37, scope: !2062)
!2090 = !DILocation(line: 1259, column: 5, scope: !2062)
!2091 = !DILocation(line: 1259, column: 9, scope: !2062)
!2092 = !DILocation(line: 1259, column: 15, scope: !2062)
!2093 = !DILocation(line: 1260, column: 14, scope: !2062)
!2094 = !DILocation(line: 1260, column: 5, scope: !2062)
!2095 = !DILocation(line: 1260, column: 9, scope: !2062)
!2096 = !DILocation(line: 1260, column: 12, scope: !2062)
!2097 = !DILocation(line: 1261, column: 5, scope: !2062)
!2098 = !DILocation(line: 1261, column: 9, scope: !2062)
!2099 = !DILocation(line: 1261, column: 17, scope: !2062)
!2100 = !DILocation(line: 1262, column: 15, scope: !2062)
!2101 = !DILocation(line: 1262, column: 19, scope: !2062)
!2102 = !DILocation(line: 1262, column: 5, scope: !2062)
!2103 = !DILocation(line: 1262, column: 9, scope: !2062)
!2104 = !DILocation(line: 1262, column: 13, scope: !2062)
!2105 = !DILocation(line: 1263, column: 5, scope: !2062)
!2106 = !DILocation(line: 1263, column: 9, scope: !2062)
!2107 = !DILocation(line: 1263, column: 17, scope: !2062)
!2108 = !DILocation(line: 1264, column: 5, scope: !2062)
!2109 = !DILocation(line: 1264, column: 9, scope: !2062)
!2110 = !DILocation(line: 1264, column: 14, scope: !2062)
!2111 = !DILocation(line: 1265, column: 5, scope: !2062)
!2112 = !DILocation(line: 1265, column: 9, scope: !2062)
!2113 = !DILocation(line: 1265, column: 17, scope: !2062)
!2114 = !DILocation(line: 1266, column: 19, scope: !2062)
!2115 = !DILocation(line: 1266, column: 23, scope: !2062)
!2116 = !DILocation(line: 1266, column: 5, scope: !2062)
!2117 = !DILocation(line: 1267, column: 1, scope: !2062)
!2118 = distinct !DISubprogram(name: "raxIteratorAddChars", scope: !3, file: !3, line: 1272, type: !2119, scopeLine: 1272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!31, !2065, !10, !54}
!2121 = !DILocalVariable(name: "it", arg: 1, scope: !2118, file: !3, line: 1272, type: !2065)
!2122 = !DILocation(line: 1272, column: 38, scope: !2118)
!2123 = !DILocalVariable(name: "s", arg: 2, scope: !2118, file: !3, line: 1272, type: !10)
!2124 = !DILocation(line: 1272, column: 57, scope: !2118)
!2125 = !DILocalVariable(name: "len", arg: 3, scope: !2118, file: !3, line: 1272, type: !54)
!2126 = !DILocation(line: 1272, column: 67, scope: !2118)
!2127 = !DILocation(line: 1273, column: 9, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1273, column: 9)
!2129 = !DILocation(line: 1273, column: 13, scope: !2128)
!2130 = !DILocation(line: 1273, column: 9, scope: !2118)
!2131 = !DILocation(line: 1273, column: 19, scope: !2128)
!2132 = !DILocation(line: 1274, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1274, column: 9)
!2134 = !DILocation(line: 1274, column: 13, scope: !2133)
!2135 = !DILocation(line: 1274, column: 23, scope: !2133)
!2136 = !DILocation(line: 1274, column: 27, scope: !2133)
!2137 = !DILocation(line: 1274, column: 35, scope: !2133)
!2138 = !DILocation(line: 1274, column: 34, scope: !2133)
!2139 = !DILocation(line: 1274, column: 21, scope: !2133)
!2140 = !DILocation(line: 1274, column: 9, scope: !2118)
!2141 = !DILocalVariable(name: "old", scope: !2142, file: !3, line: 1275, type: !10)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 1274, column: 40)
!2143 = !DILocation(line: 1275, column: 24, scope: !2142)
!2144 = !DILocation(line: 1275, column: 31, scope: !2142)
!2145 = !DILocation(line: 1275, column: 35, scope: !2142)
!2146 = !DILocation(line: 1275, column: 42, scope: !2142)
!2147 = !DILocation(line: 1275, column: 46, scope: !2142)
!2148 = !DILocation(line: 1275, column: 39, scope: !2142)
!2149 = !DILocation(line: 1275, column: 30, scope: !2142)
!2150 = !DILocation(line: 1276, column: 67, scope: !2142)
!2151 = !DILocation(line: 1276, column: 71, scope: !2142)
!2152 = !DILocalVariable(name: "new_max", scope: !2142, file: !3, line: 1277, type: !54)
!2153 = !DILocation(line: 1277, column: 16, scope: !2142)
!2154 = !DILocation(line: 1277, column: 27, scope: !2142)
!2155 = !DILocation(line: 1277, column: 31, scope: !2142)
!2156 = !DILocation(line: 1277, column: 39, scope: !2142)
!2157 = !DILocation(line: 1277, column: 38, scope: !2142)
!2158 = !DILocation(line: 1277, column: 43, scope: !2142)
!2159 = !DILocation(line: 1278, column: 31, scope: !2142)
!2160 = !DILocation(line: 1278, column: 35, scope: !2142)
!2161 = !DILocation(line: 1278, column: 19, scope: !2142)
!2162 = !DILocation(line: 1278, column: 9, scope: !2142)
!2163 = !DILocation(line: 1278, column: 13, scope: !2142)
!2164 = !DILocation(line: 1278, column: 17, scope: !2142)
!2165 = !DILocation(line: 1279, column: 13, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1279, column: 13)
!2167 = !DILocation(line: 1279, column: 17, scope: !2166)
!2168 = !DILocation(line: 1279, column: 21, scope: !2166)
!2169 = !DILocation(line: 1279, column: 13, scope: !2142)
!2170 = !DILocation(line: 1280, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1279, column: 30)
!2172 = !DILocation(line: 1280, column: 23, scope: !2171)
!2173 = !DILocation(line: 1280, column: 32, scope: !2171)
!2174 = !DILocation(line: 1280, column: 36, scope: !2171)
!2175 = !DILocation(line: 1280, column: 56, scope: !2171)
!2176 = !DILocation(line: 1280, column: 13, scope: !2171)
!2177 = !DILocation(line: 1280, column: 17, scope: !2171)
!2178 = !DILocation(line: 1280, column: 21, scope: !2171)
!2179 = !DILocation(line: 1281, column: 13, scope: !2171)
!2180 = !DILocation(line: 1281, column: 19, scope: !2171)
!2181 = !DILocation(line: 1282, column: 13, scope: !2171)
!2182 = !DILocation(line: 1284, column: 13, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1284, column: 13)
!2184 = !DILocation(line: 1284, column: 17, scope: !2183)
!2185 = !DILocation(line: 1284, column: 13, scope: !2142)
!2186 = !DILocation(line: 1284, column: 33, scope: !2183)
!2187 = !DILocation(line: 1284, column: 37, scope: !2183)
!2188 = !DILocation(line: 1284, column: 41, scope: !2183)
!2189 = !DILocation(line: 1284, column: 45, scope: !2183)
!2190 = !DILocation(line: 1284, column: 26, scope: !2183)
!2191 = !DILocation(line: 1284, column: 63, scope: !2183)
!2192 = !DILocation(line: 1284, column: 67, scope: !2183)
!2193 = !DILocation(line: 1285, column: 23, scope: !2142)
!2194 = !DILocation(line: 1285, column: 9, scope: !2142)
!2195 = !DILocation(line: 1285, column: 13, scope: !2142)
!2196 = !DILocation(line: 1285, column: 21, scope: !2142)
!2197 = !DILocation(line: 1286, column: 5, scope: !2142)
!2198 = !DILocation(line: 1289, column: 13, scope: !2118)
!2199 = !DILocation(line: 1289, column: 17, scope: !2118)
!2200 = !DILocation(line: 1289, column: 21, scope: !2118)
!2201 = !DILocation(line: 1289, column: 25, scope: !2118)
!2202 = !DILocation(line: 1289, column: 20, scope: !2118)
!2203 = !DILocation(line: 1289, column: 33, scope: !2118)
!2204 = !DILocation(line: 1289, column: 35, scope: !2118)
!2205 = !DILocation(line: 1289, column: 5, scope: !2118)
!2206 = !DILocation(line: 1290, column: 20, scope: !2118)
!2207 = !DILocation(line: 1290, column: 5, scope: !2118)
!2208 = !DILocation(line: 1290, column: 9, scope: !2118)
!2209 = !DILocation(line: 1290, column: 17, scope: !2118)
!2210 = !DILocation(line: 1291, column: 5, scope: !2118)
!2211 = !DILocation(line: 1292, column: 1, scope: !2118)
!2212 = distinct !DISubprogram(name: "raxIteratorDelChars", scope: !3, file: !3, line: 1296, type: !2213, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2065, !54}
!2215 = !DILocalVariable(name: "it", arg: 1, scope: !2212, file: !3, line: 1296, type: !2065)
!2216 = !DILocation(line: 1296, column: 39, scope: !2212)
!2217 = !DILocalVariable(name: "count", arg: 2, scope: !2212, file: !3, line: 1296, type: !54)
!2218 = !DILocation(line: 1296, column: 50, scope: !2212)
!2219 = !DILocation(line: 1297, column: 20, scope: !2212)
!2220 = !DILocation(line: 1297, column: 5, scope: !2212)
!2221 = !DILocation(line: 1297, column: 9, scope: !2212)
!2222 = !DILocation(line: 1297, column: 17, scope: !2212)
!2223 = !DILocation(line: 1298, column: 1, scope: !2212)
!2224 = distinct !DISubprogram(name: "raxIteratorNextStep", scope: !3, file: !3, line: 1314, type: !2225, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!31, !2065, !31}
!2227 = !DILocalVariable(name: "it", arg: 1, scope: !2224, file: !3, line: 1314, type: !2065)
!2228 = !DILocation(line: 1314, column: 38, scope: !2224)
!2229 = !DILocalVariable(name: "noup", arg: 2, scope: !2224, file: !3, line: 1314, type: !31)
!2230 = !DILocation(line: 1314, column: 46, scope: !2224)
!2231 = !DILocation(line: 1315, column: 9, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1315, column: 9)
!2233 = !DILocation(line: 1315, column: 13, scope: !2232)
!2234 = !DILocation(line: 1315, column: 19, scope: !2232)
!2235 = !DILocation(line: 1315, column: 9, scope: !2224)
!2236 = !DILocation(line: 1316, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1315, column: 35)
!2238 = !DILocation(line: 1317, column: 16, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1317, column: 16)
!2240 = !DILocation(line: 1317, column: 20, scope: !2239)
!2241 = !DILocation(line: 1317, column: 26, scope: !2239)
!2242 = !DILocation(line: 1317, column: 16, scope: !2232)
!2243 = !DILocation(line: 1318, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1317, column: 50)
!2245 = !DILocation(line: 1318, column: 13, scope: !2244)
!2246 = !DILocation(line: 1318, column: 19, scope: !2244)
!2247 = !DILocation(line: 1319, column: 9, scope: !2244)
!2248 = !DILocalVariable(name: "orig_key_len", scope: !2224, file: !3, line: 1324, type: !54)
!2249 = !DILocation(line: 1324, column: 12, scope: !2224)
!2250 = !DILocation(line: 1324, column: 27, scope: !2224)
!2251 = !DILocation(line: 1324, column: 31, scope: !2224)
!2252 = !DILocalVariable(name: "orig_stack_items", scope: !2224, file: !3, line: 1325, type: !54)
!2253 = !DILocation(line: 1325, column: 12, scope: !2224)
!2254 = !DILocation(line: 1325, column: 31, scope: !2224)
!2255 = !DILocation(line: 1325, column: 35, scope: !2224)
!2256 = !DILocation(line: 1325, column: 41, scope: !2224)
!2257 = !DILocalVariable(name: "orig_node", scope: !2224, file: !3, line: 1326, type: !13)
!2258 = !DILocation(line: 1326, column: 14, scope: !2224)
!2259 = !DILocation(line: 1326, column: 26, scope: !2224)
!2260 = !DILocation(line: 1326, column: 30, scope: !2224)
!2261 = !DILocation(line: 1328, column: 5, scope: !2224)
!2262 = !DILocalVariable(name: "children", scope: !2263, file: !3, line: 1329, type: !31)
!2263 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1328, column: 14)
!2264 = !DILocation(line: 1329, column: 13, scope: !2263)
!2265 = !DILocation(line: 1329, column: 24, scope: !2263)
!2266 = !DILocation(line: 1329, column: 28, scope: !2263)
!2267 = !DILocation(line: 1329, column: 34, scope: !2263)
!2268 = !DILocation(line: 1329, column: 48, scope: !2263)
!2269 = !DILocation(line: 1329, column: 52, scope: !2263)
!2270 = !DILocation(line: 1329, column: 58, scope: !2263)
!2271 = !DILocation(line: 1330, column: 14, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1330, column: 13)
!2273 = !DILocation(line: 1330, column: 19, scope: !2272)
!2274 = !DILocation(line: 1330, column: 22, scope: !2272)
!2275 = !DILocation(line: 1330, column: 13, scope: !2263)
!2276 = !DILocation(line: 1335, column: 32, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1335, column: 17)
!2278 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1330, column: 32)
!2279 = !DILocation(line: 1335, column: 36, scope: !2277)
!2280 = !DILocation(line: 1335, column: 42, scope: !2277)
!2281 = !DILocation(line: 1335, column: 46, scope: !2277)
!2282 = !DILocation(line: 1335, column: 18, scope: !2277)
!2283 = !DILocation(line: 1335, column: 17, scope: !2278)
!2284 = !DILocation(line: 1335, column: 53, scope: !2277)
!2285 = !DILocalVariable(name: "cp", scope: !2278, file: !3, line: 1336, type: !12)
!2286 = !DILocation(line: 1336, column: 23, scope: !2278)
!2287 = !DILocation(line: 1336, column: 28, scope: !2278)
!2288 = !DILocation(line: 1337, column: 38, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1337, column: 17)
!2290 = !DILocation(line: 1337, column: 41, scope: !2289)
!2291 = !DILocation(line: 1337, column: 45, scope: !2289)
!2292 = !DILocation(line: 1337, column: 51, scope: !2289)
!2293 = !DILocation(line: 1338, column: 17, scope: !2289)
!2294 = !DILocation(line: 1338, column: 21, scope: !2289)
!2295 = !DILocation(line: 1338, column: 27, scope: !2289)
!2296 = !DILocation(line: 1338, column: 37, scope: !2289)
!2297 = !DILocation(line: 1338, column: 41, scope: !2289)
!2298 = !DILocation(line: 1338, column: 47, scope: !2289)
!2299 = !DILocation(line: 1337, column: 18, scope: !2289)
!2300 = !DILocation(line: 1337, column: 17, scope: !2278)
!2301 = !DILocation(line: 1338, column: 58, scope: !2289)
!2302 = !DILocation(line: 1339, column: 21, scope: !2278)
!2303 = !DILocation(line: 1339, column: 25, scope: !2278)
!2304 = !DILocation(line: 1339, column: 13, scope: !2278)
!2305 = !DILocation(line: 1339, column: 30, scope: !2278)
!2306 = !DILocation(line: 1342, column: 17, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1342, column: 17)
!2308 = !DILocation(line: 1342, column: 21, scope: !2307)
!2309 = !DILocation(line: 1342, column: 29, scope: !2307)
!2310 = !DILocation(line: 1342, column: 32, scope: !2307)
!2311 = !DILocation(line: 1342, column: 36, scope: !2307)
!2312 = !DILocation(line: 1342, column: 45, scope: !2307)
!2313 = !DILocation(line: 1342, column: 49, scope: !2307)
!2314 = !DILocation(line: 1342, column: 17, scope: !2278)
!2315 = !DILocation(line: 1343, column: 24, scope: !2307)
!2316 = !DILocation(line: 1343, column: 17, scope: !2307)
!2317 = !DILocation(line: 1343, column: 28, scope: !2307)
!2318 = !DILocation(line: 1343, column: 32, scope: !2307)
!2319 = !DILocation(line: 1347, column: 17, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1347, column: 17)
!2321 = !DILocation(line: 1347, column: 21, scope: !2320)
!2322 = !DILocation(line: 1347, column: 27, scope: !2320)
!2323 = !DILocation(line: 1347, column: 17, scope: !2278)
!2324 = !DILocation(line: 1348, column: 39, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1347, column: 34)
!2326 = !DILocation(line: 1348, column: 43, scope: !2325)
!2327 = !DILocation(line: 1348, column: 28, scope: !2325)
!2328 = !DILocation(line: 1348, column: 17, scope: !2325)
!2329 = !DILocation(line: 1348, column: 21, scope: !2325)
!2330 = !DILocation(line: 1348, column: 26, scope: !2325)
!2331 = !DILocation(line: 1349, column: 17, scope: !2325)
!2332 = !DILocation(line: 1351, column: 9, scope: !2278)
!2333 = !DILocation(line: 1356, column: 13, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1351, column: 16)
!2335 = !DILocalVariable(name: "old_noup", scope: !2336, file: !3, line: 1357, type: !31)
!2336 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1356, column: 22)
!2337 = !DILocation(line: 1357, column: 21, scope: !2336)
!2338 = !DILocation(line: 1357, column: 32, scope: !2336)
!2339 = !DILocation(line: 1360, column: 22, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1360, column: 21)
!2341 = !DILocation(line: 1360, column: 27, scope: !2340)
!2342 = !DILocation(line: 1360, column: 30, scope: !2340)
!2343 = !DILocation(line: 1360, column: 34, scope: !2340)
!2344 = !DILocation(line: 1360, column: 42, scope: !2340)
!2345 = !DILocation(line: 1360, column: 46, scope: !2340)
!2346 = !DILocation(line: 1360, column: 50, scope: !2340)
!2347 = !DILocation(line: 1360, column: 39, scope: !2340)
!2348 = !DILocation(line: 1360, column: 21, scope: !2336)
!2349 = !DILocation(line: 1361, column: 21, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 1360, column: 56)
!2351 = !DILocation(line: 1361, column: 25, scope: !2350)
!2352 = !DILocation(line: 1361, column: 31, scope: !2350)
!2353 = !DILocation(line: 1362, column: 39, scope: !2350)
!2354 = !DILocation(line: 1362, column: 21, scope: !2350)
!2355 = !DILocation(line: 1362, column: 25, scope: !2350)
!2356 = !DILocation(line: 1362, column: 31, scope: !2350)
!2357 = !DILocation(line: 1362, column: 37, scope: !2350)
!2358 = !DILocation(line: 1363, column: 35, scope: !2350)
!2359 = !DILocation(line: 1363, column: 21, scope: !2350)
!2360 = !DILocation(line: 1363, column: 25, scope: !2350)
!2361 = !DILocation(line: 1363, column: 33, scope: !2350)
!2362 = !DILocation(line: 1364, column: 32, scope: !2350)
!2363 = !DILocation(line: 1364, column: 21, scope: !2350)
!2364 = !DILocation(line: 1364, column: 25, scope: !2350)
!2365 = !DILocation(line: 1364, column: 30, scope: !2350)
!2366 = !DILocation(line: 1365, column: 21, scope: !2350)
!2367 = !DILocalVariable(name: "prevchild", scope: !2336, file: !3, line: 1369, type: !11)
!2368 = !DILocation(line: 1369, column: 31, scope: !2336)
!2369 = !DILocation(line: 1369, column: 43, scope: !2336)
!2370 = !DILocation(line: 1369, column: 47, scope: !2336)
!2371 = !DILocation(line: 1369, column: 51, scope: !2336)
!2372 = !DILocation(line: 1369, column: 55, scope: !2336)
!2373 = !DILocation(line: 1369, column: 62, scope: !2336)
!2374 = !DILocation(line: 1370, column: 22, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1370, column: 21)
!2376 = !DILocation(line: 1370, column: 21, scope: !2336)
!2377 = !DILocation(line: 1371, column: 45, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1370, column: 28)
!2379 = !DILocation(line: 1371, column: 49, scope: !2378)
!2380 = !DILocation(line: 1371, column: 32, scope: !2378)
!2381 = !DILocation(line: 1371, column: 21, scope: !2378)
!2382 = !DILocation(line: 1371, column: 25, scope: !2378)
!2383 = !DILocation(line: 1371, column: 30, scope: !2378)
!2384 = !DILocation(line: 1372, column: 17, scope: !2378)
!2385 = !DILocation(line: 1373, column: 26, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1372, column: 24)
!2387 = !DILocalVariable(name: "todel", scope: !2336, file: !3, line: 1377, type: !31)
!2388 = !DILocation(line: 1377, column: 21, scope: !2336)
!2389 = !DILocation(line: 1377, column: 29, scope: !2336)
!2390 = !DILocation(line: 1377, column: 33, scope: !2336)
!2391 = !DILocation(line: 1377, column: 39, scope: !2336)
!2392 = !DILocation(line: 1377, column: 49, scope: !2336)
!2393 = !DILocation(line: 1377, column: 53, scope: !2336)
!2394 = !DILocation(line: 1377, column: 59, scope: !2336)
!2395 = !DILocation(line: 1378, column: 37, scope: !2336)
!2396 = !DILocation(line: 1378, column: 40, scope: !2336)
!2397 = !DILocation(line: 1378, column: 17, scope: !2336)
!2398 = !DILocation(line: 1382, column: 22, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1382, column: 21)
!2400 = !DILocation(line: 1382, column: 26, scope: !2399)
!2401 = !DILocation(line: 1382, column: 32, scope: !2399)
!2402 = !DILocation(line: 1382, column: 40, scope: !2399)
!2403 = !DILocation(line: 1382, column: 43, scope: !2399)
!2404 = !DILocation(line: 1382, column: 47, scope: !2399)
!2405 = !DILocation(line: 1382, column: 53, scope: !2399)
!2406 = !DILocation(line: 1382, column: 61, scope: !2399)
!2407 = !DILocation(line: 1382, column: 58, scope: !2399)
!2408 = !DILocation(line: 1382, column: 21, scope: !2336)
!2409 = !DILocalVariable(name: "cp", scope: !2410, file: !3, line: 1383, type: !12)
!2410 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1382, column: 80)
!2411 = !DILocation(line: 1383, column: 31, scope: !2410)
!2412 = !DILocation(line: 1383, column: 36, scope: !2410)
!2413 = !DILocalVariable(name: "i", scope: !2410, file: !3, line: 1384, type: !31)
!2414 = !DILocation(line: 1384, column: 25, scope: !2410)
!2415 = !DILocation(line: 1385, column: 21, scope: !2410)
!2416 = !DILocation(line: 1385, column: 28, scope: !2410)
!2417 = !DILocation(line: 1385, column: 32, scope: !2410)
!2418 = !DILocation(line: 1385, column: 36, scope: !2410)
!2419 = !DILocation(line: 1385, column: 42, scope: !2410)
!2420 = !DILocation(line: 1385, column: 30, scope: !2410)
!2421 = !DILocation(line: 1387, column: 29, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1387, column: 29)
!2423 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1385, column: 48)
!2424 = !DILocation(line: 1387, column: 33, scope: !2422)
!2425 = !DILocation(line: 1387, column: 39, scope: !2422)
!2426 = !DILocation(line: 1387, column: 44, scope: !2422)
!2427 = !DILocation(line: 1387, column: 49, scope: !2422)
!2428 = !DILocation(line: 1387, column: 47, scope: !2422)
!2429 = !DILocation(line: 1387, column: 29, scope: !2423)
!2430 = !DILocation(line: 1387, column: 60, scope: !2422)
!2431 = !DILocation(line: 1388, column: 26, scope: !2423)
!2432 = !DILocation(line: 1389, column: 27, scope: !2423)
!2433 = distinct !{!2433, !2415, !2434, !300}
!2434 = !DILocation(line: 1390, column: 21, scope: !2410)
!2435 = !DILocation(line: 1391, column: 25, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2410, file: !3, line: 1391, column: 25)
!2437 = !DILocation(line: 1391, column: 30, scope: !2436)
!2438 = !DILocation(line: 1391, column: 34, scope: !2436)
!2439 = !DILocation(line: 1391, column: 40, scope: !2436)
!2440 = !DILocation(line: 1391, column: 27, scope: !2436)
!2441 = !DILocation(line: 1391, column: 25, scope: !2410)
!2442 = !DILocation(line: 1393, column: 45, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1391, column: 46)
!2444 = !DILocation(line: 1393, column: 48, scope: !2443)
!2445 = !DILocation(line: 1393, column: 52, scope: !2443)
!2446 = !DILocation(line: 1393, column: 58, scope: !2443)
!2447 = !DILocation(line: 1393, column: 63, scope: !2443)
!2448 = !DILocation(line: 1393, column: 62, scope: !2443)
!2449 = !DILocation(line: 1393, column: 25, scope: !2443)
!2450 = !DILocation(line: 1394, column: 44, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1394, column: 29)
!2452 = !DILocation(line: 1394, column: 48, scope: !2451)
!2453 = !DILocation(line: 1394, column: 54, scope: !2451)
!2454 = !DILocation(line: 1394, column: 58, scope: !2451)
!2455 = !DILocation(line: 1394, column: 30, scope: !2451)
!2456 = !DILocation(line: 1394, column: 29, scope: !2443)
!2457 = !DILocation(line: 1394, column: 65, scope: !2451)
!2458 = !DILocation(line: 1395, column: 33, scope: !2443)
!2459 = !DILocation(line: 1395, column: 37, scope: !2443)
!2460 = !DILocation(line: 1395, column: 25, scope: !2443)
!2461 = !DILocation(line: 1395, column: 42, scope: !2443)
!2462 = !DILocation(line: 1398, column: 29, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1398, column: 29)
!2464 = !DILocation(line: 1398, column: 33, scope: !2463)
!2465 = !DILocation(line: 1398, column: 41, scope: !2463)
!2466 = !DILocation(line: 1398, column: 44, scope: !2463)
!2467 = !DILocation(line: 1398, column: 48, scope: !2463)
!2468 = !DILocation(line: 1398, column: 57, scope: !2463)
!2469 = !DILocation(line: 1398, column: 61, scope: !2463)
!2470 = !DILocation(line: 1398, column: 29, scope: !2443)
!2471 = !DILocation(line: 1399, column: 36, scope: !2463)
!2472 = !DILocation(line: 1399, column: 29, scope: !2463)
!2473 = !DILocation(line: 1399, column: 40, scope: !2463)
!2474 = !DILocation(line: 1399, column: 44, scope: !2463)
!2475 = !DILocation(line: 1400, column: 29, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1400, column: 29)
!2477 = !DILocation(line: 1400, column: 33, scope: !2476)
!2478 = !DILocation(line: 1400, column: 39, scope: !2476)
!2479 = !DILocation(line: 1400, column: 29, scope: !2443)
!2480 = !DILocation(line: 1401, column: 51, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1400, column: 46)
!2482 = !DILocation(line: 1401, column: 55, scope: !2481)
!2483 = !DILocation(line: 1401, column: 40, scope: !2481)
!2484 = !DILocation(line: 1401, column: 29, scope: !2481)
!2485 = !DILocation(line: 1401, column: 33, scope: !2481)
!2486 = !DILocation(line: 1401, column: 38, scope: !2481)
!2487 = !DILocation(line: 1402, column: 29, scope: !2481)
!2488 = !DILocation(line: 1404, column: 25, scope: !2443)
!2489 = !DILocation(line: 1406, column: 17, scope: !2410)
!2490 = distinct !{!2490, !2333, !2491}
!2491 = !DILocation(line: 1407, column: 13, scope: !2334)
!2492 = distinct !{!2492, !2261, !2493}
!2493 = !DILocation(line: 1409, column: 5, scope: !2224)
!2494 = !DILocation(line: 1410, column: 1, scope: !2224)
!2495 = distinct !DISubprogram(name: "raxStackPush", scope: !3, file: !3, line: 102, type: !2496, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!31, !1136, !6}
!2498 = !DILocalVariable(name: "ts", arg: 1, scope: !2495, file: !3, line: 102, type: !1136)
!2499 = !DILocation(line: 102, column: 42, scope: !2495)
!2500 = !DILocalVariable(name: "ptr", arg: 2, scope: !2495, file: !3, line: 102, type: !6)
!2501 = !DILocation(line: 102, column: 52, scope: !2495)
!2502 = !DILocation(line: 103, column: 9, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 103, column: 9)
!2504 = !DILocation(line: 103, column: 13, scope: !2503)
!2505 = !DILocation(line: 103, column: 22, scope: !2503)
!2506 = !DILocation(line: 103, column: 26, scope: !2503)
!2507 = !DILocation(line: 103, column: 19, scope: !2503)
!2508 = !DILocation(line: 103, column: 9, scope: !2495)
!2509 = !DILocation(line: 104, column: 13, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 104, column: 13)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 103, column: 36)
!2512 = !DILocation(line: 104, column: 17, scope: !2510)
!2513 = !DILocation(line: 104, column: 26, scope: !2510)
!2514 = !DILocation(line: 104, column: 30, scope: !2510)
!2515 = !DILocation(line: 104, column: 23, scope: !2510)
!2516 = !DILocation(line: 104, column: 13, scope: !2511)
!2517 = !DILocation(line: 105, column: 50, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 104, column: 44)
!2519 = !DILocation(line: 105, column: 54, scope: !2518)
!2520 = !DILocation(line: 105, column: 49, scope: !2518)
!2521 = !DILocation(line: 105, column: 62, scope: !2518)
!2522 = !DILocation(line: 105, column: 25, scope: !2518)
!2523 = !DILocation(line: 105, column: 13, scope: !2518)
!2524 = !DILocation(line: 105, column: 17, scope: !2518)
!2525 = !DILocation(line: 105, column: 23, scope: !2518)
!2526 = !DILocation(line: 106, column: 17, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 106, column: 17)
!2528 = !DILocation(line: 106, column: 21, scope: !2527)
!2529 = !DILocation(line: 106, column: 27, scope: !2527)
!2530 = !DILocation(line: 106, column: 17, scope: !2518)
!2531 = !DILocation(line: 107, column: 29, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 106, column: 36)
!2533 = !DILocation(line: 107, column: 33, scope: !2532)
!2534 = !DILocation(line: 107, column: 17, scope: !2532)
!2535 = !DILocation(line: 107, column: 21, scope: !2532)
!2536 = !DILocation(line: 107, column: 27, scope: !2532)
!2537 = !DILocation(line: 108, column: 17, scope: !2532)
!2538 = !DILocation(line: 108, column: 21, scope: !2532)
!2539 = !DILocation(line: 108, column: 25, scope: !2532)
!2540 = !DILocation(line: 109, column: 17, scope: !2532)
!2541 = !DILocation(line: 109, column: 23, scope: !2532)
!2542 = !DILocation(line: 110, column: 17, scope: !2532)
!2543 = !DILocation(line: 112, column: 20, scope: !2518)
!2544 = !DILocation(line: 112, column: 24, scope: !2518)
!2545 = !DILocation(line: 112, column: 13, scope: !2518)
!2546 = !DILocation(line: 112, column: 30, scope: !2518)
!2547 = !DILocation(line: 112, column: 34, scope: !2518)
!2548 = !DILocation(line: 112, column: 61, scope: !2518)
!2549 = !DILocation(line: 112, column: 65, scope: !2518)
!2550 = !DILocation(line: 112, column: 60, scope: !2518)
!2551 = !DILocation(line: 113, column: 9, scope: !2518)
!2552 = !DILocalVariable(name: "newalloc", scope: !2553, file: !3, line: 114, type: !7)
!2553 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 113, column: 16)
!2554 = !DILocation(line: 114, column: 20, scope: !2553)
!2555 = !DILocation(line: 114, column: 43, scope: !2553)
!2556 = !DILocation(line: 114, column: 47, scope: !2553)
!2557 = !DILocation(line: 114, column: 67, scope: !2553)
!2558 = !DILocation(line: 114, column: 71, scope: !2553)
!2559 = !DILocation(line: 114, column: 66, scope: !2553)
!2560 = !DILocation(line: 114, column: 79, scope: !2553)
!2561 = !DILocation(line: 114, column: 31, scope: !2553)
!2562 = !DILocation(line: 115, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 115, column: 17)
!2564 = !DILocation(line: 115, column: 26, scope: !2563)
!2565 = !DILocation(line: 115, column: 17, scope: !2553)
!2566 = !DILocation(line: 116, column: 17, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 115, column: 35)
!2568 = !DILocation(line: 116, column: 21, scope: !2567)
!2569 = !DILocation(line: 116, column: 25, scope: !2567)
!2570 = !DILocation(line: 117, column: 17, scope: !2567)
!2571 = !DILocation(line: 117, column: 23, scope: !2567)
!2572 = !DILocation(line: 118, column: 17, scope: !2567)
!2573 = !DILocation(line: 120, column: 25, scope: !2553)
!2574 = !DILocation(line: 120, column: 13, scope: !2553)
!2575 = !DILocation(line: 120, column: 17, scope: !2553)
!2576 = !DILocation(line: 120, column: 23, scope: !2553)
!2577 = !DILocation(line: 122, column: 9, scope: !2511)
!2578 = !DILocation(line: 122, column: 13, scope: !2511)
!2579 = !DILocation(line: 122, column: 22, scope: !2511)
!2580 = !DILocation(line: 123, column: 5, scope: !2511)
!2581 = !DILocation(line: 124, column: 28, scope: !2495)
!2582 = !DILocation(line: 124, column: 5, scope: !2495)
!2583 = !DILocation(line: 124, column: 9, scope: !2495)
!2584 = !DILocation(line: 124, column: 15, scope: !2495)
!2585 = !DILocation(line: 124, column: 19, scope: !2495)
!2586 = !DILocation(line: 124, column: 26, scope: !2495)
!2587 = !DILocation(line: 125, column: 5, scope: !2495)
!2588 = !DILocation(line: 125, column: 9, scope: !2495)
!2589 = !DILocation(line: 125, column: 14, scope: !2495)
!2590 = !DILocation(line: 126, column: 5, scope: !2495)
!2591 = !DILocation(line: 127, column: 1, scope: !2495)
!2592 = distinct !DISubprogram(name: "raxSeekGreatest", scope: !3, file: !3, line: 1415, type: !2593, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!31, !2065}
!2595 = !DILocalVariable(name: "it", arg: 1, scope: !2592, file: !3, line: 1415, type: !2065)
!2596 = !DILocation(line: 1415, column: 34, scope: !2592)
!2597 = !DILocation(line: 1416, column: 5, scope: !2592)
!2598 = !DILocation(line: 1416, column: 11, scope: !2592)
!2599 = !DILocation(line: 1416, column: 15, scope: !2592)
!2600 = !DILocation(line: 1416, column: 21, scope: !2592)
!2601 = !DILocation(line: 1417, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1417, column: 13)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1416, column: 27)
!2604 = !DILocation(line: 1417, column: 17, scope: !2602)
!2605 = !DILocation(line: 1417, column: 23, scope: !2602)
!2606 = !DILocation(line: 1417, column: 13, scope: !2603)
!2607 = !DILocation(line: 1418, column: 38, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1418, column: 17)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1417, column: 32)
!2610 = !DILocation(line: 1418, column: 41, scope: !2608)
!2611 = !DILocation(line: 1418, column: 45, scope: !2608)
!2612 = !DILocation(line: 1418, column: 51, scope: !2608)
!2613 = !DILocation(line: 1419, column: 17, scope: !2608)
!2614 = !DILocation(line: 1419, column: 21, scope: !2608)
!2615 = !DILocation(line: 1419, column: 27, scope: !2608)
!2616 = !DILocation(line: 1418, column: 18, scope: !2608)
!2617 = !DILocation(line: 1418, column: 17, scope: !2609)
!2618 = !DILocation(line: 1419, column: 34, scope: !2608)
!2619 = !DILocation(line: 1420, column: 9, scope: !2609)
!2620 = !DILocation(line: 1421, column: 38, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1421, column: 17)
!2622 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1420, column: 16)
!2623 = !DILocation(line: 1421, column: 41, scope: !2621)
!2624 = !DILocation(line: 1421, column: 45, scope: !2621)
!2625 = !DILocation(line: 1421, column: 51, scope: !2621)
!2626 = !DILocation(line: 1421, column: 56, scope: !2621)
!2627 = !DILocation(line: 1421, column: 60, scope: !2621)
!2628 = !DILocation(line: 1421, column: 66, scope: !2621)
!2629 = !DILocation(line: 1421, column: 55, scope: !2621)
!2630 = !DILocation(line: 1421, column: 70, scope: !2621)
!2631 = !DILocation(line: 1421, column: 18, scope: !2621)
!2632 = !DILocation(line: 1421, column: 17, scope: !2622)
!2633 = !DILocation(line: 1422, column: 17, scope: !2621)
!2634 = !DILocalVariable(name: "cp", scope: !2603, file: !3, line: 1424, type: !12)
!2635 = !DILocation(line: 1424, column: 19, scope: !2603)
!2636 = !DILocation(line: 1424, column: 24, scope: !2603)
!2637 = !DILocation(line: 0, scope: !2603)
!2638 = !DILocation(line: 1425, column: 28, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1425, column: 13)
!2640 = !DILocation(line: 1425, column: 32, scope: !2639)
!2641 = !DILocation(line: 1425, column: 38, scope: !2639)
!2642 = !DILocation(line: 1425, column: 42, scope: !2639)
!2643 = !DILocation(line: 1425, column: 14, scope: !2639)
!2644 = !DILocation(line: 1425, column: 13, scope: !2603)
!2645 = !DILocation(line: 1425, column: 49, scope: !2639)
!2646 = !DILocation(line: 1426, column: 17, scope: !2603)
!2647 = !DILocation(line: 1426, column: 21, scope: !2603)
!2648 = !DILocation(line: 1426, column: 9, scope: !2603)
!2649 = !DILocation(line: 1426, column: 26, scope: !2603)
!2650 = distinct !{!2650, !2597, !2651, !300}
!2651 = !DILocation(line: 1427, column: 5, scope: !2592)
!2652 = !DILocation(line: 1428, column: 5, scope: !2592)
!2653 = !DILocation(line: 1429, column: 1, scope: !2592)
!2654 = distinct !DISubprogram(name: "raxIteratorPrevStep", scope: !3, file: !3, line: 1434, type: !2225, scopeLine: 1434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2655 = !DILocalVariable(name: "it", arg: 1, scope: !2654, file: !3, line: 1434, type: !2065)
!2656 = !DILocation(line: 1434, column: 38, scope: !2654)
!2657 = !DILocalVariable(name: "noup", arg: 2, scope: !2654, file: !3, line: 1434, type: !31)
!2658 = !DILocation(line: 1434, column: 46, scope: !2654)
!2659 = !DILocation(line: 1435, column: 9, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1435, column: 9)
!2661 = !DILocation(line: 1435, column: 13, scope: !2660)
!2662 = !DILocation(line: 1435, column: 19, scope: !2660)
!2663 = !DILocation(line: 1435, column: 9, scope: !2654)
!2664 = !DILocation(line: 1436, column: 9, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1435, column: 35)
!2666 = !DILocation(line: 1437, column: 16, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1437, column: 16)
!2668 = !DILocation(line: 1437, column: 20, scope: !2667)
!2669 = !DILocation(line: 1437, column: 26, scope: !2667)
!2670 = !DILocation(line: 1437, column: 16, scope: !2660)
!2671 = !DILocation(line: 1438, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1437, column: 50)
!2673 = !DILocation(line: 1438, column: 13, scope: !2672)
!2674 = !DILocation(line: 1438, column: 19, scope: !2672)
!2675 = !DILocation(line: 1439, column: 9, scope: !2672)
!2676 = !DILocalVariable(name: "orig_key_len", scope: !2654, file: !3, line: 1444, type: !54)
!2677 = !DILocation(line: 1444, column: 12, scope: !2654)
!2678 = !DILocation(line: 1444, column: 27, scope: !2654)
!2679 = !DILocation(line: 1444, column: 31, scope: !2654)
!2680 = !DILocalVariable(name: "orig_stack_items", scope: !2654, file: !3, line: 1445, type: !54)
!2681 = !DILocation(line: 1445, column: 12, scope: !2654)
!2682 = !DILocation(line: 1445, column: 31, scope: !2654)
!2683 = !DILocation(line: 1445, column: 35, scope: !2654)
!2684 = !DILocation(line: 1445, column: 41, scope: !2654)
!2685 = !DILocalVariable(name: "orig_node", scope: !2654, file: !3, line: 1446, type: !13)
!2686 = !DILocation(line: 1446, column: 14, scope: !2654)
!2687 = !DILocation(line: 1446, column: 26, scope: !2654)
!2688 = !DILocation(line: 1446, column: 30, scope: !2654)
!2689 = !DILocation(line: 1448, column: 5, scope: !2654)
!2690 = !DILocalVariable(name: "old_noup", scope: !2691, file: !3, line: 1449, type: !31)
!2691 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1448, column: 14)
!2692 = !DILocation(line: 1449, column: 13, scope: !2691)
!2693 = !DILocation(line: 1449, column: 24, scope: !2691)
!2694 = !DILocation(line: 1452, column: 14, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1452, column: 13)
!2696 = !DILocation(line: 1452, column: 19, scope: !2695)
!2697 = !DILocation(line: 1452, column: 22, scope: !2695)
!2698 = !DILocation(line: 1452, column: 26, scope: !2695)
!2699 = !DILocation(line: 1452, column: 34, scope: !2695)
!2700 = !DILocation(line: 1452, column: 38, scope: !2695)
!2701 = !DILocation(line: 1452, column: 42, scope: !2695)
!2702 = !DILocation(line: 1452, column: 31, scope: !2695)
!2703 = !DILocation(line: 1452, column: 13, scope: !2691)
!2704 = !DILocation(line: 1453, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 1452, column: 48)
!2706 = !DILocation(line: 1453, column: 17, scope: !2705)
!2707 = !DILocation(line: 1453, column: 23, scope: !2705)
!2708 = !DILocation(line: 1454, column: 31, scope: !2705)
!2709 = !DILocation(line: 1454, column: 13, scope: !2705)
!2710 = !DILocation(line: 1454, column: 17, scope: !2705)
!2711 = !DILocation(line: 1454, column: 23, scope: !2705)
!2712 = !DILocation(line: 1454, column: 29, scope: !2705)
!2713 = !DILocation(line: 1455, column: 27, scope: !2705)
!2714 = !DILocation(line: 1455, column: 13, scope: !2705)
!2715 = !DILocation(line: 1455, column: 17, scope: !2705)
!2716 = !DILocation(line: 1455, column: 25, scope: !2705)
!2717 = !DILocation(line: 1456, column: 24, scope: !2705)
!2718 = !DILocation(line: 1456, column: 13, scope: !2705)
!2719 = !DILocation(line: 1456, column: 17, scope: !2705)
!2720 = !DILocation(line: 1456, column: 22, scope: !2705)
!2721 = !DILocation(line: 1457, column: 13, scope: !2705)
!2722 = !DILocalVariable(name: "prevchild", scope: !2691, file: !3, line: 1460, type: !11)
!2723 = !DILocation(line: 1460, column: 23, scope: !2691)
!2724 = !DILocation(line: 1460, column: 35, scope: !2691)
!2725 = !DILocation(line: 1460, column: 39, scope: !2691)
!2726 = !DILocation(line: 1460, column: 43, scope: !2691)
!2727 = !DILocation(line: 1460, column: 47, scope: !2691)
!2728 = !DILocation(line: 1460, column: 54, scope: !2691)
!2729 = !DILocation(line: 1461, column: 14, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1461, column: 13)
!2731 = !DILocation(line: 1461, column: 13, scope: !2691)
!2732 = !DILocation(line: 1462, column: 37, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1461, column: 20)
!2734 = !DILocation(line: 1462, column: 41, scope: !2733)
!2735 = !DILocation(line: 1462, column: 24, scope: !2733)
!2736 = !DILocation(line: 1462, column: 13, scope: !2733)
!2737 = !DILocation(line: 1462, column: 17, scope: !2733)
!2738 = !DILocation(line: 1462, column: 22, scope: !2733)
!2739 = !DILocation(line: 1463, column: 9, scope: !2733)
!2740 = !DILocation(line: 1464, column: 18, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1463, column: 16)
!2742 = !DILocalVariable(name: "todel", scope: !2691, file: !3, line: 1469, type: !31)
!2743 = !DILocation(line: 1469, column: 13, scope: !2691)
!2744 = !DILocation(line: 1469, column: 21, scope: !2691)
!2745 = !DILocation(line: 1469, column: 25, scope: !2691)
!2746 = !DILocation(line: 1469, column: 31, scope: !2691)
!2747 = !DILocation(line: 1469, column: 41, scope: !2691)
!2748 = !DILocation(line: 1469, column: 45, scope: !2691)
!2749 = !DILocation(line: 1469, column: 51, scope: !2691)
!2750 = !DILocation(line: 1470, column: 29, scope: !2691)
!2751 = !DILocation(line: 1470, column: 32, scope: !2691)
!2752 = !DILocation(line: 1470, column: 9, scope: !2691)
!2753 = !DILocation(line: 1474, column: 14, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1474, column: 13)
!2755 = !DILocation(line: 1474, column: 18, scope: !2754)
!2756 = !DILocation(line: 1474, column: 24, scope: !2754)
!2757 = !DILocation(line: 1474, column: 32, scope: !2754)
!2758 = !DILocation(line: 1474, column: 35, scope: !2754)
!2759 = !DILocation(line: 1474, column: 39, scope: !2754)
!2760 = !DILocation(line: 1474, column: 45, scope: !2754)
!2761 = !DILocation(line: 1474, column: 53, scope: !2754)
!2762 = !DILocation(line: 1474, column: 50, scope: !2754)
!2763 = !DILocation(line: 1474, column: 13, scope: !2691)
!2764 = !DILocalVariable(name: "cp", scope: !2765, file: !3, line: 1475, type: !12)
!2765 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1474, column: 72)
!2766 = !DILocation(line: 1475, column: 23, scope: !2765)
!2767 = !DILocation(line: 1475, column: 28, scope: !2765)
!2768 = !DILocation(line: 0, scope: !2765)
!2769 = !DILocalVariable(name: "i", scope: !2765, file: !3, line: 1476, type: !31)
!2770 = !DILocation(line: 1476, column: 17, scope: !2765)
!2771 = !DILocation(line: 1476, column: 21, scope: !2765)
!2772 = !DILocation(line: 1476, column: 25, scope: !2765)
!2773 = !DILocation(line: 1476, column: 31, scope: !2765)
!2774 = !DILocation(line: 1476, column: 35, scope: !2765)
!2775 = !DILocation(line: 1477, column: 13, scope: !2765)
!2776 = !DILocation(line: 1477, column: 20, scope: !2765)
!2777 = !DILocation(line: 1477, column: 22, scope: !2765)
!2778 = !DILocation(line: 1479, column: 21, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1479, column: 21)
!2780 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 1477, column: 28)
!2781 = !DILocation(line: 1479, column: 25, scope: !2779)
!2782 = !DILocation(line: 1479, column: 31, scope: !2779)
!2783 = !DILocation(line: 1479, column: 36, scope: !2779)
!2784 = !DILocation(line: 1479, column: 41, scope: !2779)
!2785 = !DILocation(line: 1479, column: 39, scope: !2779)
!2786 = !DILocation(line: 1479, column: 21, scope: !2780)
!2787 = !DILocation(line: 1479, column: 52, scope: !2779)
!2788 = !DILocation(line: 1480, column: 18, scope: !2780)
!2789 = !DILocation(line: 1481, column: 19, scope: !2780)
!2790 = distinct !{!2790, !2775, !2791, !300}
!2791 = !DILocation(line: 1482, column: 13, scope: !2765)
!2792 = !DILocation(line: 1486, column: 17, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 1486, column: 17)
!2794 = !DILocation(line: 1486, column: 19, scope: !2793)
!2795 = !DILocation(line: 1486, column: 17, scope: !2765)
!2796 = !DILocation(line: 1489, column: 42, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1489, column: 21)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1486, column: 26)
!2799 = !DILocation(line: 1489, column: 45, scope: !2797)
!2800 = !DILocation(line: 1489, column: 49, scope: !2797)
!2801 = !DILocation(line: 1489, column: 55, scope: !2797)
!2802 = !DILocation(line: 1489, column: 60, scope: !2797)
!2803 = !DILocation(line: 1489, column: 59, scope: !2797)
!2804 = !DILocation(line: 1489, column: 22, scope: !2797)
!2805 = !DILocation(line: 1489, column: 21, scope: !2798)
!2806 = !DILocation(line: 1489, column: 66, scope: !2797)
!2807 = !DILocation(line: 1490, column: 36, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1490, column: 21)
!2809 = !DILocation(line: 1490, column: 40, scope: !2808)
!2810 = !DILocation(line: 1490, column: 46, scope: !2808)
!2811 = !DILocation(line: 1490, column: 50, scope: !2808)
!2812 = !DILocation(line: 1490, column: 22, scope: !2808)
!2813 = !DILocation(line: 1490, column: 21, scope: !2798)
!2814 = !DILocation(line: 1490, column: 57, scope: !2808)
!2815 = !DILocation(line: 1491, column: 25, scope: !2798)
!2816 = !DILocation(line: 1491, column: 29, scope: !2798)
!2817 = !DILocation(line: 1491, column: 17, scope: !2798)
!2818 = !DILocation(line: 1491, column: 34, scope: !2798)
!2819 = !DILocation(line: 1493, column: 38, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1493, column: 21)
!2821 = !DILocation(line: 1493, column: 22, scope: !2820)
!2822 = !DILocation(line: 1493, column: 21, scope: !2798)
!2823 = !DILocation(line: 1493, column: 43, scope: !2820)
!2824 = !DILocation(line: 1494, column: 13, scope: !2798)
!2825 = !DILocation(line: 1495, column: 9, scope: !2765)
!2826 = !DILocation(line: 1500, column: 13, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1500, column: 13)
!2828 = !DILocation(line: 1500, column: 17, scope: !2827)
!2829 = !DILocation(line: 1500, column: 23, scope: !2827)
!2830 = !DILocation(line: 1500, column: 13, scope: !2691)
!2831 = !DILocation(line: 1501, column: 35, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1500, column: 30)
!2833 = !DILocation(line: 1501, column: 39, scope: !2832)
!2834 = !DILocation(line: 1501, column: 24, scope: !2832)
!2835 = !DILocation(line: 1501, column: 13, scope: !2832)
!2836 = !DILocation(line: 1501, column: 17, scope: !2832)
!2837 = !DILocation(line: 1501, column: 22, scope: !2832)
!2838 = !DILocation(line: 1502, column: 13, scope: !2832)
!2839 = distinct !{!2839, !2689, !2840}
!2840 = !DILocation(line: 1504, column: 5, scope: !2654)
!2841 = !DILocation(line: 1505, column: 1, scope: !2654)
!2842 = distinct !DISubprogram(name: "raxSeek", scope: !3, file: !3, line: 1511, type: !2843, scopeLine: 1511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!31, !2065, !2845, !10, !54}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!2847 = !DILocalVariable(name: "it", arg: 1, scope: !2842, file: !3, line: 1511, type: !2065)
!2848 = !DILocation(line: 1511, column: 26, scope: !2842)
!2849 = !DILocalVariable(name: "op", arg: 2, scope: !2842, file: !3, line: 1511, type: !2845)
!2850 = !DILocation(line: 1511, column: 42, scope: !2842)
!2851 = !DILocalVariable(name: "ele", arg: 3, scope: !2842, file: !3, line: 1511, type: !10)
!2852 = !DILocation(line: 1511, column: 61, scope: !2842)
!2853 = !DILocalVariable(name: "len", arg: 4, scope: !2842, file: !3, line: 1511, type: !54)
!2854 = !DILocation(line: 1511, column: 73, scope: !2842)
!2855 = !DILocalVariable(name: "eq", scope: !2842, file: !3, line: 1512, type: !31)
!2856 = !DILocation(line: 1512, column: 9, scope: !2842)
!2857 = !DILocalVariable(name: "lt", scope: !2842, file: !3, line: 1512, type: !31)
!2858 = !DILocation(line: 1512, column: 17, scope: !2842)
!2859 = !DILocalVariable(name: "gt", scope: !2842, file: !3, line: 1512, type: !31)
!2860 = !DILocation(line: 1512, column: 25, scope: !2842)
!2861 = !DILocalVariable(name: "first", scope: !2842, file: !3, line: 1512, type: !31)
!2862 = !DILocation(line: 1512, column: 33, scope: !2842)
!2863 = !DILocalVariable(name: "last", scope: !2842, file: !3, line: 1512, type: !31)
!2864 = !DILocation(line: 1512, column: 44, scope: !2842)
!2865 = !DILocation(line: 1514, column: 5, scope: !2842)
!2866 = !DILocation(line: 1514, column: 9, scope: !2842)
!2867 = !DILocation(line: 1514, column: 15, scope: !2842)
!2868 = !DILocation(line: 1514, column: 21, scope: !2842)
!2869 = !DILocation(line: 1515, column: 5, scope: !2842)
!2870 = !DILocation(line: 1515, column: 9, scope: !2842)
!2871 = !DILocation(line: 1515, column: 15, scope: !2842)
!2872 = !DILocation(line: 1516, column: 5, scope: !2842)
!2873 = !DILocation(line: 1516, column: 9, scope: !2842)
!2874 = !DILocation(line: 1516, column: 15, scope: !2842)
!2875 = !DILocation(line: 1517, column: 5, scope: !2842)
!2876 = !DILocation(line: 1517, column: 9, scope: !2842)
!2877 = !DILocation(line: 1517, column: 17, scope: !2842)
!2878 = !DILocation(line: 1518, column: 5, scope: !2842)
!2879 = !DILocation(line: 1518, column: 9, scope: !2842)
!2880 = !DILocation(line: 1518, column: 14, scope: !2842)
!2881 = !DILocation(line: 1521, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1521, column: 9)
!2883 = !DILocation(line: 1521, column: 15, scope: !2882)
!2884 = !DILocation(line: 1521, column: 9, scope: !2842)
!2885 = !DILocation(line: 1522, column: 12, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1521, column: 23)
!2887 = !DILocation(line: 1523, column: 13, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1523, column: 13)
!2889 = !DILocation(line: 1523, column: 19, scope: !2888)
!2890 = !DILocation(line: 1523, column: 13, scope: !2886)
!2891 = !DILocation(line: 1523, column: 30, scope: !2888)
!2892 = !DILocation(line: 1523, column: 27, scope: !2888)
!2893 = !DILocation(line: 1524, column: 5, scope: !2886)
!2894 = !DILocation(line: 1524, column: 16, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1524, column: 16)
!2896 = !DILocation(line: 1524, column: 22, scope: !2895)
!2897 = !DILocation(line: 1524, column: 16, scope: !2882)
!2898 = !DILocation(line: 1525, column: 12, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 1524, column: 30)
!2900 = !DILocation(line: 1526, column: 13, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 1526, column: 13)
!2902 = !DILocation(line: 1526, column: 19, scope: !2901)
!2903 = !DILocation(line: 1526, column: 13, scope: !2899)
!2904 = !DILocation(line: 1526, column: 30, scope: !2901)
!2905 = !DILocation(line: 1526, column: 27, scope: !2901)
!2906 = !DILocation(line: 1527, column: 5, scope: !2899)
!2907 = !DILocation(line: 1527, column: 16, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2895, file: !3, line: 1527, column: 16)
!2909 = !DILocation(line: 1527, column: 22, scope: !2908)
!2910 = !DILocation(line: 1527, column: 16, scope: !2895)
!2911 = !DILocation(line: 1528, column: 12, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1527, column: 30)
!2913 = !DILocation(line: 1529, column: 5, scope: !2912)
!2914 = !DILocation(line: 1529, column: 16, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1529, column: 16)
!2916 = !DILocation(line: 1529, column: 22, scope: !2915)
!2917 = !DILocation(line: 1529, column: 16, scope: !2908)
!2918 = !DILocation(line: 1530, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1529, column: 30)
!2920 = !DILocation(line: 1531, column: 5, scope: !2919)
!2921 = !DILocation(line: 1531, column: 16, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 1531, column: 16)
!2923 = !DILocation(line: 1531, column: 22, scope: !2922)
!2924 = !DILocation(line: 1531, column: 16, scope: !2915)
!2925 = !DILocation(line: 1532, column: 14, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1531, column: 30)
!2927 = !DILocation(line: 1533, column: 5, scope: !2926)
!2928 = !DILocation(line: 1534, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 1533, column: 12)
!2930 = !DILocation(line: 1534, column: 15, scope: !2929)
!2931 = !DILocation(line: 1535, column: 9, scope: !2929)
!2932 = !DILocation(line: 1540, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1540, column: 9)
!2934 = !DILocation(line: 1540, column: 13, scope: !2933)
!2935 = !DILocation(line: 1540, column: 17, scope: !2933)
!2936 = !DILocation(line: 1540, column: 24, scope: !2933)
!2937 = !DILocation(line: 1540, column: 9, scope: !2842)
!2938 = !DILocation(line: 1541, column: 9, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1540, column: 30)
!2940 = !DILocation(line: 1541, column: 13, scope: !2939)
!2941 = !DILocation(line: 1541, column: 19, scope: !2939)
!2942 = !DILocation(line: 1542, column: 9, scope: !2939)
!2943 = !DILocation(line: 1545, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1545, column: 9)
!2945 = !DILocation(line: 1545, column: 9, scope: !2842)
!2946 = !DILocation(line: 1548, column: 24, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1545, column: 16)
!2948 = !DILocation(line: 1548, column: 16, scope: !2947)
!2949 = !DILocation(line: 1548, column: 9, scope: !2947)
!2950 = !DILocation(line: 1551, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1551, column: 9)
!2952 = !DILocation(line: 1551, column: 9, scope: !2842)
!2953 = !DILocation(line: 1554, column: 20, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1551, column: 15)
!2955 = !DILocation(line: 1554, column: 24, scope: !2954)
!2956 = !DILocation(line: 1554, column: 28, scope: !2954)
!2957 = !DILocation(line: 1554, column: 9, scope: !2954)
!2958 = !DILocation(line: 1554, column: 13, scope: !2954)
!2959 = !DILocation(line: 1554, column: 18, scope: !2954)
!2960 = !DILocation(line: 1555, column: 30, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 1555, column: 13)
!2962 = !DILocation(line: 1555, column: 14, scope: !2961)
!2963 = !DILocation(line: 1555, column: 13, scope: !2954)
!2964 = !DILocation(line: 1555, column: 35, scope: !2961)
!2965 = !DILocation(line: 1556, column: 9, scope: !2954)
!2966 = !DILocation(line: 1557, column: 31, scope: !2954)
!2967 = !DILocation(line: 1557, column: 35, scope: !2954)
!2968 = !DILocation(line: 1557, column: 20, scope: !2954)
!2969 = !DILocation(line: 1557, column: 9, scope: !2954)
!2970 = !DILocation(line: 1557, column: 13, scope: !2954)
!2971 = !DILocation(line: 1557, column: 18, scope: !2954)
!2972 = !DILocation(line: 1558, column: 9, scope: !2954)
!2973 = !DILocalVariable(name: "splitpos", scope: !2842, file: !3, line: 1564, type: !31)
!2974 = !DILocation(line: 1564, column: 9, scope: !2842)
!2975 = !DILocalVariable(name: "i", scope: !2842, file: !3, line: 1565, type: !54)
!2976 = !DILocation(line: 1565, column: 12, scope: !2842)
!2977 = !DILocation(line: 1565, column: 27, scope: !2842)
!2978 = !DILocation(line: 1565, column: 31, scope: !2842)
!2979 = !DILocation(line: 1565, column: 34, scope: !2842)
!2980 = !DILocation(line: 1565, column: 38, scope: !2842)
!2981 = !DILocation(line: 1565, column: 43, scope: !2842)
!2982 = !DILocation(line: 1565, column: 47, scope: !2842)
!2983 = !DILocation(line: 1565, column: 68, scope: !2842)
!2984 = !DILocation(line: 1565, column: 72, scope: !2842)
!2985 = !DILocation(line: 1565, column: 16, scope: !2842)
!2986 = !DILocation(line: 1568, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1568, column: 9)
!2988 = !DILocation(line: 1568, column: 13, scope: !2987)
!2989 = !DILocation(line: 1568, column: 19, scope: !2987)
!2990 = !DILocation(line: 1568, column: 9, scope: !2842)
!2991 = !DILocation(line: 1568, column: 24, scope: !2987)
!2992 = !DILocation(line: 1570, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1570, column: 9)
!2994 = !DILocation(line: 1570, column: 12, scope: !2993)
!2995 = !DILocation(line: 1570, column: 15, scope: !2993)
!2996 = !DILocation(line: 1570, column: 20, scope: !2993)
!2997 = !DILocation(line: 1570, column: 17, scope: !2993)
!2998 = !DILocation(line: 1570, column: 24, scope: !2993)
!2999 = !DILocation(line: 1570, column: 29, scope: !2993)
!3000 = !DILocation(line: 1570, column: 33, scope: !2993)
!3001 = !DILocation(line: 1570, column: 39, scope: !2993)
!3002 = !DILocation(line: 1570, column: 47, scope: !2993)
!3003 = !DILocation(line: 1570, column: 50, scope: !2993)
!3004 = !DILocation(line: 1570, column: 59, scope: !2993)
!3005 = !DILocation(line: 1570, column: 65, scope: !2993)
!3006 = !DILocation(line: 1571, column: 9, scope: !2993)
!3007 = !DILocation(line: 1571, column: 13, scope: !2993)
!3008 = !DILocation(line: 1571, column: 19, scope: !2993)
!3009 = !DILocation(line: 1570, column: 9, scope: !2842)
!3010 = !DILocation(line: 1575, column: 34, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1575, column: 13)
!3012 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 1572, column: 5)
!3013 = !DILocation(line: 1575, column: 37, scope: !3011)
!3014 = !DILocation(line: 1575, column: 41, scope: !3011)
!3015 = !DILocation(line: 1575, column: 14, scope: !3011)
!3016 = !DILocation(line: 1575, column: 13, scope: !3012)
!3017 = !DILocation(line: 1575, column: 47, scope: !3011)
!3018 = !DILocation(line: 1576, column: 31, scope: !3012)
!3019 = !DILocation(line: 1576, column: 35, scope: !3012)
!3020 = !DILocation(line: 1576, column: 20, scope: !3012)
!3021 = !DILocation(line: 1576, column: 9, scope: !3012)
!3022 = !DILocation(line: 1576, column: 13, scope: !3012)
!3023 = !DILocation(line: 1576, column: 18, scope: !3012)
!3024 = !DILocation(line: 1577, column: 5, scope: !3012)
!3025 = !DILocation(line: 1577, column: 16, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 1577, column: 16)
!3027 = !DILocation(line: 1577, column: 19, scope: !3026)
!3028 = !DILocation(line: 1577, column: 22, scope: !3026)
!3029 = !DILocation(line: 1577, column: 16, scope: !2993)
!3030 = !DILocation(line: 1581, column: 29, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1577, column: 26)
!3032 = !DILocation(line: 1581, column: 33, scope: !3031)
!3033 = !DILocation(line: 1581, column: 38, scope: !3031)
!3034 = !DILocation(line: 1581, column: 40, scope: !3031)
!3035 = !DILocation(line: 1581, column: 39, scope: !3031)
!3036 = !DILocation(line: 1581, column: 9, scope: !3031)
!3037 = !DILocation(line: 1587, column: 13, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 1587, column: 13)
!3039 = !DILocation(line: 1587, column: 18, scope: !3038)
!3040 = !DILocation(line: 1587, column: 15, scope: !3038)
!3041 = !DILocation(line: 1587, column: 22, scope: !3038)
!3042 = !DILocation(line: 1587, column: 26, scope: !3038)
!3043 = !DILocation(line: 1587, column: 30, scope: !3038)
!3044 = !DILocation(line: 1587, column: 36, scope: !3038)
!3045 = !DILocation(line: 1587, column: 13, scope: !3031)
!3046 = !DILocation(line: 1593, column: 38, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1593, column: 17)
!3048 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1587, column: 45)
!3049 = !DILocation(line: 1593, column: 41, scope: !3047)
!3050 = !DILocation(line: 1593, column: 45, scope: !3047)
!3051 = !DILocation(line: 1593, column: 44, scope: !3047)
!3052 = !DILocation(line: 1593, column: 18, scope: !3047)
!3053 = !DILocation(line: 1593, column: 17, scope: !3048)
!3054 = !DILocation(line: 1593, column: 51, scope: !3047)
!3055 = !DILocation(line: 1597, column: 13, scope: !3048)
!3056 = !DILocation(line: 1597, column: 17, scope: !3048)
!3057 = !DILocation(line: 1597, column: 23, scope: !3048)
!3058 = !DILocation(line: 1598, column: 17, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1598, column: 17)
!3060 = !DILocation(line: 1598, column: 20, scope: !3059)
!3061 = !DILocation(line: 1598, column: 44, scope: !3059)
!3062 = !DILocation(line: 1598, column: 24, scope: !3059)
!3063 = !DILocation(line: 1598, column: 17, scope: !3048)
!3064 = !DILocation(line: 1598, column: 51, scope: !3059)
!3065 = !DILocation(line: 1599, column: 17, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1599, column: 17)
!3067 = !DILocation(line: 1599, column: 20, scope: !3066)
!3068 = !DILocation(line: 1599, column: 44, scope: !3066)
!3069 = !DILocation(line: 1599, column: 24, scope: !3066)
!3070 = !DILocation(line: 1599, column: 17, scope: !3048)
!3071 = !DILocation(line: 1599, column: 51, scope: !3066)
!3072 = !DILocation(line: 1600, column: 13, scope: !3048)
!3073 = !DILocation(line: 1600, column: 17, scope: !3048)
!3074 = !DILocation(line: 1600, column: 23, scope: !3048)
!3075 = !DILocation(line: 1601, column: 9, scope: !3048)
!3076 = !DILocation(line: 1601, column: 20, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1601, column: 20)
!3078 = !DILocation(line: 1601, column: 25, scope: !3077)
!3079 = !DILocation(line: 1601, column: 22, scope: !3077)
!3080 = !DILocation(line: 1601, column: 29, scope: !3077)
!3081 = !DILocation(line: 1601, column: 32, scope: !3077)
!3082 = !DILocation(line: 1601, column: 36, scope: !3077)
!3083 = !DILocation(line: 1601, column: 42, scope: !3077)
!3084 = !DILocation(line: 1601, column: 20, scope: !3038)
!3085 = !DILocalVariable(name: "nodechar", scope: !3086, file: !3, line: 1605, type: !31)
!3086 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1601, column: 51)
!3087 = !DILocation(line: 1605, column: 17, scope: !3086)
!3088 = !DILocation(line: 1605, column: 28, scope: !3086)
!3089 = !DILocation(line: 1605, column: 32, scope: !3086)
!3090 = !DILocation(line: 1605, column: 38, scope: !3086)
!3091 = !DILocation(line: 1605, column: 43, scope: !3086)
!3092 = !DILocalVariable(name: "keychar", scope: !3086, file: !3, line: 1606, type: !31)
!3093 = !DILocation(line: 1606, column: 17, scope: !3086)
!3094 = !DILocation(line: 1606, column: 27, scope: !3086)
!3095 = !DILocation(line: 1606, column: 31, scope: !3086)
!3096 = !DILocation(line: 1607, column: 13, scope: !3086)
!3097 = !DILocation(line: 1607, column: 17, scope: !3086)
!3098 = !DILocation(line: 1607, column: 23, scope: !3086)
!3099 = !DILocation(line: 1608, column: 17, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1608, column: 17)
!3101 = !DILocation(line: 1608, column: 17, scope: !3086)
!3102 = !DILocation(line: 1612, column: 21, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1612, column: 21)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1608, column: 21)
!3105 = !DILocation(line: 1612, column: 32, scope: !3103)
!3106 = !DILocation(line: 1612, column: 30, scope: !3103)
!3107 = !DILocation(line: 1612, column: 21, scope: !3104)
!3108 = !DILocation(line: 1613, column: 46, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1613, column: 25)
!3110 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1612, column: 41)
!3111 = !DILocation(line: 1613, column: 26, scope: !3109)
!3112 = !DILocation(line: 1613, column: 25, scope: !3110)
!3113 = !DILocation(line: 1613, column: 53, scope: !3109)
!3114 = !DILocation(line: 1614, column: 17, scope: !3110)
!3115 = !DILocation(line: 1615, column: 46, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1615, column: 25)
!3117 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1614, column: 24)
!3118 = !DILocation(line: 1615, column: 49, scope: !3116)
!3119 = !DILocation(line: 1615, column: 53, scope: !3116)
!3120 = !DILocation(line: 1615, column: 59, scope: !3116)
!3121 = !DILocation(line: 1615, column: 64, scope: !3116)
!3122 = !DILocation(line: 1615, column: 68, scope: !3116)
!3123 = !DILocation(line: 1615, column: 74, scope: !3116)
!3124 = !DILocation(line: 1615, column: 26, scope: !3116)
!3125 = !DILocation(line: 1615, column: 25, scope: !3117)
!3126 = !DILocation(line: 1616, column: 25, scope: !3116)
!3127 = !DILocation(line: 1617, column: 46, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1617, column: 25)
!3129 = !DILocation(line: 1617, column: 26, scope: !3128)
!3130 = !DILocation(line: 1617, column: 25, scope: !3117)
!3131 = !DILocation(line: 1617, column: 53, scope: !3128)
!3132 = !DILocation(line: 1619, column: 13, scope: !3104)
!3133 = !DILocation(line: 1620, column: 17, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1620, column: 17)
!3135 = !DILocation(line: 1620, column: 17, scope: !3086)
!3136 = !DILocation(line: 1625, column: 21, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1625, column: 21)
!3138 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 1620, column: 21)
!3139 = !DILocation(line: 1625, column: 32, scope: !3137)
!3140 = !DILocation(line: 1625, column: 30, scope: !3137)
!3141 = !DILocation(line: 1625, column: 21, scope: !3138)
!3142 = !DILocation(line: 1626, column: 42, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1626, column: 25)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1625, column: 41)
!3145 = !DILocation(line: 1626, column: 26, scope: !3143)
!3146 = !DILocation(line: 1626, column: 25, scope: !3144)
!3147 = !DILocation(line: 1626, column: 47, scope: !3143)
!3148 = !DILocation(line: 1627, column: 43, scope: !3144)
!3149 = !DILocation(line: 1627, column: 47, scope: !3144)
!3150 = !DILocation(line: 1627, column: 32, scope: !3144)
!3151 = !DILocation(line: 1627, column: 21, scope: !3144)
!3152 = !DILocation(line: 1627, column: 25, scope: !3144)
!3153 = !DILocation(line: 1627, column: 30, scope: !3144)
!3154 = !DILocation(line: 1628, column: 17, scope: !3144)
!3155 = !DILocation(line: 1629, column: 46, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1629, column: 25)
!3157 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1628, column: 24)
!3158 = !DILocation(line: 1629, column: 49, scope: !3156)
!3159 = !DILocation(line: 1629, column: 53, scope: !3156)
!3160 = !DILocation(line: 1629, column: 59, scope: !3156)
!3161 = !DILocation(line: 1629, column: 64, scope: !3156)
!3162 = !DILocation(line: 1629, column: 68, scope: !3156)
!3163 = !DILocation(line: 1629, column: 74, scope: !3156)
!3164 = !DILocation(line: 1629, column: 26, scope: !3156)
!3165 = !DILocation(line: 1629, column: 25, scope: !3157)
!3166 = !DILocation(line: 1630, column: 25, scope: !3156)
!3167 = !DILocation(line: 1631, column: 46, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 1631, column: 25)
!3169 = !DILocation(line: 1631, column: 26, scope: !3168)
!3170 = !DILocation(line: 1631, column: 25, scope: !3157)
!3171 = !DILocation(line: 1631, column: 53, scope: !3168)
!3172 = !DILocation(line: 1633, column: 13, scope: !3138)
!3173 = !DILocation(line: 1634, column: 13, scope: !3086)
!3174 = !DILocation(line: 1634, column: 17, scope: !3086)
!3175 = !DILocation(line: 1634, column: 23, scope: !3086)
!3176 = !DILocation(line: 1635, column: 9, scope: !3086)
!3177 = !DILocation(line: 1643, column: 13, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1635, column: 16)
!3179 = !DILocation(line: 1643, column: 17, scope: !3178)
!3180 = !DILocation(line: 1643, column: 23, scope: !3178)
!3181 = !DILocation(line: 1644, column: 17, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1644, column: 17)
!3183 = !DILocation(line: 1644, column: 21, scope: !3182)
!3184 = !DILocation(line: 1644, column: 27, scope: !3182)
!3185 = !DILocation(line: 1644, column: 35, scope: !3182)
!3186 = !DILocation(line: 1644, column: 38, scope: !3182)
!3187 = !DILocation(line: 1644, column: 42, scope: !3182)
!3188 = !DILocation(line: 1644, column: 48, scope: !3182)
!3189 = !DILocation(line: 1644, column: 54, scope: !3182)
!3190 = !DILocation(line: 1644, column: 57, scope: !3182)
!3191 = !DILocation(line: 1644, column: 66, scope: !3182)
!3192 = !DILocation(line: 1644, column: 69, scope: !3182)
!3193 = !DILocation(line: 1644, column: 17, scope: !3178)
!3194 = !DILocation(line: 1657, column: 39, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1644, column: 73)
!3196 = !DILocation(line: 1657, column: 43, scope: !3195)
!3197 = !DILocation(line: 1657, column: 28, scope: !3195)
!3198 = !DILocation(line: 1657, column: 17, scope: !3195)
!3199 = !DILocation(line: 1657, column: 21, scope: !3195)
!3200 = !DILocation(line: 1657, column: 26, scope: !3195)
!3201 = !DILocation(line: 1658, column: 13, scope: !3195)
!3202 = !DILocation(line: 1659, column: 21, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1659, column: 21)
!3204 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 1658, column: 20)
!3205 = !DILocation(line: 1659, column: 24, scope: !3203)
!3206 = !DILocation(line: 1659, column: 48, scope: !3203)
!3207 = !DILocation(line: 1659, column: 28, scope: !3203)
!3208 = !DILocation(line: 1659, column: 21, scope: !3204)
!3209 = !DILocation(line: 1659, column: 55, scope: !3203)
!3210 = !DILocation(line: 1660, column: 21, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1660, column: 21)
!3212 = !DILocation(line: 1660, column: 24, scope: !3211)
!3213 = !DILocation(line: 1660, column: 48, scope: !3211)
!3214 = !DILocation(line: 1660, column: 28, scope: !3211)
!3215 = !DILocation(line: 1660, column: 21, scope: !3204)
!3216 = !DILocation(line: 1660, column: 55, scope: !3211)
!3217 = !DILocation(line: 1662, column: 13, scope: !3178)
!3218 = !DILocation(line: 1662, column: 17, scope: !3178)
!3219 = !DILocation(line: 1662, column: 23, scope: !3178)
!3220 = !DILocation(line: 1664, column: 5, scope: !3031)
!3221 = !DILocation(line: 1666, column: 9, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1664, column: 12)
!3223 = !DILocation(line: 1666, column: 13, scope: !3222)
!3224 = !DILocation(line: 1666, column: 19, scope: !3222)
!3225 = !DILocation(line: 1667, column: 9, scope: !3222)
!3226 = !DILocation(line: 1669, column: 5, scope: !2842)
!3227 = !DILocation(line: 1670, column: 1, scope: !2842)
!3228 = distinct !DISubprogram(name: "raxNext", scope: !3, file: !3, line: 1675, type: !2593, scopeLine: 1675, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3229 = !DILocalVariable(name: "it", arg: 1, scope: !3228, file: !3, line: 1675, type: !2065)
!3230 = !DILocation(line: 1675, column: 26, scope: !3228)
!3231 = !DILocation(line: 1676, column: 30, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1676, column: 9)
!3233 = !DILocation(line: 1676, column: 10, scope: !3232)
!3234 = !DILocation(line: 1676, column: 9, scope: !3228)
!3235 = !DILocation(line: 1677, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 1676, column: 37)
!3237 = !DILocation(line: 1677, column: 15, scope: !3236)
!3238 = !DILocation(line: 1678, column: 9, scope: !3236)
!3239 = !DILocation(line: 1680, column: 9, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1680, column: 9)
!3241 = !DILocation(line: 1680, column: 13, scope: !3240)
!3242 = !DILocation(line: 1680, column: 19, scope: !3240)
!3243 = !DILocation(line: 1680, column: 9, scope: !3228)
!3244 = !DILocation(line: 1681, column: 9, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 1680, column: 35)
!3246 = !DILocation(line: 1681, column: 15, scope: !3245)
!3247 = !DILocation(line: 1682, column: 9, scope: !3245)
!3248 = !DILocation(line: 1684, column: 5, scope: !3228)
!3249 = !DILocation(line: 1685, column: 1, scope: !3228)
!3250 = distinct !DISubprogram(name: "raxPrev", scope: !3, file: !3, line: 1690, type: !2593, scopeLine: 1690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3251 = !DILocalVariable(name: "it", arg: 1, scope: !3250, file: !3, line: 1690, type: !2065)
!3252 = !DILocation(line: 1690, column: 26, scope: !3250)
!3253 = !DILocation(line: 1691, column: 30, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1691, column: 9)
!3255 = !DILocation(line: 1691, column: 10, scope: !3254)
!3256 = !DILocation(line: 1691, column: 9, scope: !3250)
!3257 = !DILocation(line: 1692, column: 9, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1691, column: 37)
!3259 = !DILocation(line: 1692, column: 15, scope: !3258)
!3260 = !DILocation(line: 1693, column: 9, scope: !3258)
!3261 = !DILocation(line: 1695, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1695, column: 9)
!3263 = !DILocation(line: 1695, column: 13, scope: !3262)
!3264 = !DILocation(line: 1695, column: 19, scope: !3262)
!3265 = !DILocation(line: 1695, column: 9, scope: !3250)
!3266 = !DILocation(line: 1696, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1695, column: 35)
!3268 = !DILocation(line: 1696, column: 15, scope: !3267)
!3269 = !DILocation(line: 1697, column: 9, scope: !3267)
!3270 = !DILocation(line: 1699, column: 5, scope: !3250)
!3271 = !DILocation(line: 1700, column: 1, scope: !3250)
!3272 = distinct !DISubprogram(name: "raxRandomWalk", scope: !3, file: !3, line: 1714, type: !3273, scopeLine: 1714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!31, !2065, !54}
!3275 = !DILocalVariable(name: "it", arg: 1, scope: !3272, file: !3, line: 1714, type: !2065)
!3276 = !DILocation(line: 1714, column: 32, scope: !3272)
!3277 = !DILocalVariable(name: "steps", arg: 2, scope: !3272, file: !3, line: 1714, type: !54)
!3278 = !DILocation(line: 1714, column: 43, scope: !3272)
!3279 = !DILocation(line: 1715, column: 9, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1715, column: 9)
!3281 = !DILocation(line: 1715, column: 13, scope: !3280)
!3282 = !DILocation(line: 1715, column: 17, scope: !3280)
!3283 = !DILocation(line: 1715, column: 24, scope: !3280)
!3284 = !DILocation(line: 1715, column: 9, scope: !3272)
!3285 = !DILocation(line: 1716, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1715, column: 30)
!3287 = !DILocation(line: 1716, column: 13, scope: !3286)
!3288 = !DILocation(line: 1716, column: 19, scope: !3286)
!3289 = !DILocation(line: 1717, column: 9, scope: !3286)
!3290 = !DILocation(line: 1720, column: 9, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1720, column: 9)
!3292 = !DILocation(line: 1720, column: 15, scope: !3291)
!3293 = !DILocation(line: 1720, column: 9, scope: !3272)
!3294 = !DILocalVariable(name: "fle", scope: !3295, file: !3, line: 1721, type: !54)
!3295 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 1720, column: 21)
!3296 = !DILocation(line: 1721, column: 16, scope: !3295)
!3297 = !DILocation(line: 1721, column: 34, scope: !3295)
!3298 = !DILocation(line: 1721, column: 38, scope: !3295)
!3299 = !DILocation(line: 1721, column: 42, scope: !3295)
!3300 = !DILocation(line: 1721, column: 30, scope: !3295)
!3301 = !DILocation(line: 1721, column: 24, scope: !3295)
!3302 = !DILocation(line: 1721, column: 23, scope: !3295)
!3303 = !DILocation(line: 1721, column: 22, scope: !3295)
!3304 = !DILocation(line: 1722, column: 13, scope: !3295)
!3305 = !DILocation(line: 1723, column: 21, scope: !3295)
!3306 = !DILocation(line: 1723, column: 30, scope: !3295)
!3307 = !DILocation(line: 1723, column: 28, scope: !3295)
!3308 = !DILocation(line: 1723, column: 19, scope: !3295)
!3309 = !DILocation(line: 1723, column: 15, scope: !3295)
!3310 = !DILocation(line: 1724, column: 5, scope: !3295)
!3311 = !DILocalVariable(name: "n", scope: !3272, file: !3, line: 1726, type: !13)
!3312 = !DILocation(line: 1726, column: 14, scope: !3272)
!3313 = !DILocation(line: 1726, column: 18, scope: !3272)
!3314 = !DILocation(line: 1726, column: 22, scope: !3272)
!3315 = !DILocation(line: 1727, column: 5, scope: !3272)
!3316 = !DILocation(line: 1727, column: 11, scope: !3272)
!3317 = !DILocation(line: 1727, column: 17, scope: !3272)
!3318 = !DILocation(line: 1727, column: 21, scope: !3272)
!3319 = !DILocation(line: 1727, column: 25, scope: !3272)
!3320 = !DILocation(line: 1727, column: 28, scope: !3272)
!3321 = !DILocation(line: 1727, column: 24, scope: !3272)
!3322 = !DILocalVariable(name: "numchildren", scope: !3323, file: !3, line: 1728, type: !31)
!3323 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1727, column: 35)
!3324 = !DILocation(line: 1728, column: 13, scope: !3323)
!3325 = !DILocation(line: 1728, column: 27, scope: !3323)
!3326 = !DILocation(line: 1728, column: 30, scope: !3323)
!3327 = !DILocation(line: 1728, column: 44, scope: !3323)
!3328 = !DILocation(line: 1728, column: 47, scope: !3323)
!3329 = !DILocalVariable(name: "r", scope: !3323, file: !3, line: 1729, type: !31)
!3330 = !DILocation(line: 1729, column: 13, scope: !3323)
!3331 = !DILocation(line: 1729, column: 17, scope: !3323)
!3332 = !DILocation(line: 1729, column: 27, scope: !3323)
!3333 = !DILocation(line: 1729, column: 40, scope: !3323)
!3334 = !DILocation(line: 1729, column: 45, scope: !3323)
!3335 = !DILocation(line: 1729, column: 49, scope: !3323)
!3336 = !DILocation(line: 1729, column: 53, scope: !3323)
!3337 = !DILocation(line: 1729, column: 42, scope: !3323)
!3338 = !DILocation(line: 1729, column: 38, scope: !3323)
!3339 = !DILocation(line: 1729, column: 24, scope: !3323)
!3340 = !DILocation(line: 1731, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1731, column: 13)
!3342 = !DILocation(line: 1731, column: 18, scope: !3341)
!3343 = !DILocation(line: 1731, column: 15, scope: !3341)
!3344 = !DILocation(line: 1731, column: 13, scope: !3323)
!3345 = !DILocation(line: 1733, column: 30, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 1731, column: 31)
!3347 = !DILocation(line: 1733, column: 34, scope: !3346)
!3348 = !DILocation(line: 1733, column: 17, scope: !3346)
!3349 = !DILocation(line: 1733, column: 15, scope: !3346)
!3350 = !DILocalVariable(name: "todel", scope: !3346, file: !3, line: 1734, type: !31)
!3351 = !DILocation(line: 1734, column: 17, scope: !3346)
!3352 = !DILocation(line: 1734, column: 25, scope: !3346)
!3353 = !DILocation(line: 1734, column: 28, scope: !3346)
!3354 = !DILocation(line: 1734, column: 38, scope: !3346)
!3355 = !DILocation(line: 1734, column: 41, scope: !3346)
!3356 = !DILocation(line: 1735, column: 33, scope: !3346)
!3357 = !DILocation(line: 1735, column: 36, scope: !3346)
!3358 = !DILocation(line: 1735, column: 13, scope: !3346)
!3359 = !DILocation(line: 1736, column: 9, scope: !3346)
!3360 = !DILocation(line: 1738, column: 17, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 1738, column: 17)
!3362 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 1736, column: 16)
!3363 = !DILocation(line: 1738, column: 20, scope: !3361)
!3364 = !DILocation(line: 1738, column: 17, scope: !3362)
!3365 = !DILocation(line: 1739, column: 42, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1739, column: 21)
!3367 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1738, column: 29)
!3368 = !DILocation(line: 1739, column: 45, scope: !3366)
!3369 = !DILocation(line: 1739, column: 48, scope: !3366)
!3370 = !DILocation(line: 1739, column: 53, scope: !3366)
!3371 = !DILocation(line: 1739, column: 56, scope: !3366)
!3372 = !DILocation(line: 1739, column: 22, scope: !3366)
!3373 = !DILocation(line: 1739, column: 21, scope: !3367)
!3374 = !DILocation(line: 1739, column: 63, scope: !3366)
!3375 = !DILocation(line: 1740, column: 13, scope: !3367)
!3376 = !DILocation(line: 1741, column: 42, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1741, column: 21)
!3378 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1740, column: 20)
!3379 = !DILocation(line: 1741, column: 45, scope: !3377)
!3380 = !DILocation(line: 1741, column: 48, scope: !3377)
!3381 = !DILocation(line: 1741, column: 53, scope: !3377)
!3382 = !DILocation(line: 1741, column: 52, scope: !3377)
!3383 = !DILocation(line: 1741, column: 22, scope: !3377)
!3384 = !DILocation(line: 1741, column: 21, scope: !3378)
!3385 = !DILocation(line: 1741, column: 59, scope: !3377)
!3386 = !DILocalVariable(name: "cp", scope: !3362, file: !3, line: 1743, type: !12)
!3387 = !DILocation(line: 1743, column: 23, scope: !3362)
!3388 = !DILocation(line: 1743, column: 28, scope: !3362)
!3389 = !DILocation(line: 1743, column: 52, scope: !3362)
!3390 = !DILocation(line: 1743, column: 51, scope: !3362)
!3391 = !DILocation(line: 1744, column: 32, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 1744, column: 17)
!3393 = !DILocation(line: 1744, column: 36, scope: !3392)
!3394 = !DILocation(line: 1744, column: 42, scope: !3392)
!3395 = !DILocation(line: 1744, column: 18, scope: !3392)
!3396 = !DILocation(line: 1744, column: 17, scope: !3362)
!3397 = !DILocation(line: 1744, column: 46, scope: !3392)
!3398 = !DILocation(line: 1745, column: 13, scope: !3362)
!3399 = !DILocation(line: 1745, column: 23, scope: !3362)
!3400 = !DILocation(line: 1747, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1747, column: 13)
!3402 = !DILocation(line: 1747, column: 16, scope: !3401)
!3403 = !DILocation(line: 1747, column: 13, scope: !3323)
!3404 = !DILocation(line: 1747, column: 28, scope: !3401)
!3405 = !DILocation(line: 1747, column: 23, scope: !3401)
!3406 = distinct !{!3406, !3315, !3407, !300}
!3407 = !DILocation(line: 1748, column: 5, scope: !3272)
!3408 = !DILocation(line: 1749, column: 16, scope: !3272)
!3409 = !DILocation(line: 1749, column: 5, scope: !3272)
!3410 = !DILocation(line: 1749, column: 9, scope: !3272)
!3411 = !DILocation(line: 1749, column: 14, scope: !3272)
!3412 = !DILocation(line: 1750, column: 27, scope: !3272)
!3413 = !DILocation(line: 1750, column: 31, scope: !3272)
!3414 = !DILocation(line: 1750, column: 16, scope: !3272)
!3415 = !DILocation(line: 1750, column: 5, scope: !3272)
!3416 = !DILocation(line: 1750, column: 9, scope: !3272)
!3417 = !DILocation(line: 1750, column: 14, scope: !3272)
!3418 = !DILocation(line: 1751, column: 5, scope: !3272)
!3419 = !DILocation(line: 1752, column: 1, scope: !3272)
!3420 = distinct !DISubprogram(name: "raxCompare", scope: !3, file: !3, line: 1757, type: !2843, scopeLine: 1757, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3421 = !DILocalVariable(name: "iter", arg: 1, scope: !3420, file: !3, line: 1757, type: !2065)
!3422 = !DILocation(line: 1757, column: 29, scope: !3420)
!3423 = !DILocalVariable(name: "op", arg: 2, scope: !3420, file: !3, line: 1757, type: !2845)
!3424 = !DILocation(line: 1757, column: 47, scope: !3420)
!3425 = !DILocalVariable(name: "key", arg: 3, scope: !3420, file: !3, line: 1757, type: !10)
!3426 = !DILocation(line: 1757, column: 66, scope: !3420)
!3427 = !DILocalVariable(name: "key_len", arg: 4, scope: !3420, file: !3, line: 1757, type: !54)
!3428 = !DILocation(line: 1757, column: 78, scope: !3420)
!3429 = !DILocalVariable(name: "eq", scope: !3420, file: !3, line: 1758, type: !31)
!3430 = !DILocation(line: 1758, column: 9, scope: !3420)
!3431 = !DILocalVariable(name: "lt", scope: !3420, file: !3, line: 1758, type: !31)
!3432 = !DILocation(line: 1758, column: 17, scope: !3420)
!3433 = !DILocalVariable(name: "gt", scope: !3420, file: !3, line: 1758, type: !31)
!3434 = !DILocation(line: 1758, column: 25, scope: !3420)
!3435 = !DILocation(line: 1760, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1760, column: 9)
!3437 = !DILocation(line: 1760, column: 15, scope: !3436)
!3438 = !DILocation(line: 1760, column: 22, scope: !3436)
!3439 = !DILocation(line: 1760, column: 25, scope: !3436)
!3440 = !DILocation(line: 1760, column: 31, scope: !3436)
!3441 = !DILocation(line: 1760, column: 9, scope: !3420)
!3442 = !DILocation(line: 1760, column: 42, scope: !3436)
!3443 = !DILocation(line: 1760, column: 39, scope: !3436)
!3444 = !DILocation(line: 1761, column: 9, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1761, column: 9)
!3446 = !DILocation(line: 1761, column: 15, scope: !3445)
!3447 = !DILocation(line: 1761, column: 9, scope: !3420)
!3448 = !DILocation(line: 1761, column: 26, scope: !3445)
!3449 = !DILocation(line: 1761, column: 23, scope: !3445)
!3450 = !DILocation(line: 1762, column: 14, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 1762, column: 14)
!3452 = !DILocation(line: 1762, column: 20, scope: !3451)
!3453 = !DILocation(line: 1762, column: 14, scope: !3445)
!3454 = !DILocation(line: 1762, column: 31, scope: !3451)
!3455 = !DILocation(line: 1762, column: 28, scope: !3451)
!3456 = !DILocation(line: 1763, column: 14, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 1763, column: 14)
!3458 = !DILocation(line: 1763, column: 20, scope: !3457)
!3459 = !DILocation(line: 1763, column: 14, scope: !3451)
!3460 = !DILocation(line: 1763, column: 28, scope: !3457)
!3461 = !DILocalVariable(name: "minlen", scope: !3420, file: !3, line: 1765, type: !54)
!3462 = !DILocation(line: 1765, column: 12, scope: !3420)
!3463 = !DILocation(line: 1765, column: 21, scope: !3420)
!3464 = !DILocation(line: 1765, column: 31, scope: !3420)
!3465 = !DILocation(line: 1765, column: 37, scope: !3420)
!3466 = !DILocation(line: 1765, column: 29, scope: !3420)
!3467 = !DILocation(line: 1765, column: 47, scope: !3420)
!3468 = !DILocation(line: 1765, column: 57, scope: !3420)
!3469 = !DILocation(line: 1765, column: 63, scope: !3420)
!3470 = !DILocalVariable(name: "cmp", scope: !3420, file: !3, line: 1766, type: !31)
!3471 = !DILocation(line: 1766, column: 9, scope: !3420)
!3472 = !DILocation(line: 1766, column: 22, scope: !3420)
!3473 = !DILocation(line: 1766, column: 28, scope: !3420)
!3474 = !DILocation(line: 1766, column: 32, scope: !3420)
!3475 = !DILocation(line: 1766, column: 36, scope: !3420)
!3476 = !DILocation(line: 1766, column: 15, scope: !3420)
!3477 = !DILocation(line: 1769, column: 9, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1769, column: 9)
!3479 = !DILocation(line: 1769, column: 12, scope: !3478)
!3480 = !DILocation(line: 1769, column: 17, scope: !3478)
!3481 = !DILocation(line: 1769, column: 20, scope: !3478)
!3482 = !DILocation(line: 1769, column: 23, scope: !3478)
!3483 = !DILocation(line: 1769, column: 9, scope: !3420)
!3484 = !DILocation(line: 1769, column: 36, scope: !3478)
!3485 = !DILocation(line: 1769, column: 40, scope: !3478)
!3486 = !DILocation(line: 1769, column: 45, scope: !3478)
!3487 = !DILocation(line: 1769, column: 48, scope: !3478)
!3488 = !DILocation(line: 1769, column: 59, scope: !3478)
!3489 = !DILocation(line: 1769, column: 65, scope: !3478)
!3490 = !DILocation(line: 1769, column: 56, scope: !3478)
!3491 = !DILocation(line: 0, scope: !3478)
!3492 = !DILocation(line: 1769, column: 29, scope: !3478)
!3493 = !DILocation(line: 1772, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1772, column: 9)
!3495 = !DILocation(line: 1772, column: 13, scope: !3494)
!3496 = !DILocation(line: 1772, column: 9, scope: !3420)
!3497 = !DILocation(line: 1774, column: 13, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 1774, column: 13)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1772, column: 19)
!3500 = !DILocation(line: 1774, column: 16, scope: !3498)
!3501 = !DILocation(line: 1774, column: 19, scope: !3498)
!3502 = !DILocation(line: 1774, column: 30, scope: !3498)
!3503 = !DILocation(line: 1774, column: 36, scope: !3498)
!3504 = !DILocation(line: 1774, column: 27, scope: !3498)
!3505 = !DILocation(line: 1774, column: 13, scope: !3499)
!3506 = !DILocation(line: 1774, column: 45, scope: !3498)
!3507 = !DILocation(line: 1775, column: 18, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 1775, column: 18)
!3509 = !DILocation(line: 1775, column: 18, scope: !3498)
!3510 = !DILocation(line: 1775, column: 29, scope: !3508)
!3511 = !DILocation(line: 1775, column: 35, scope: !3508)
!3512 = !DILocation(line: 1775, column: 45, scope: !3508)
!3513 = !DILocation(line: 1775, column: 43, scope: !3508)
!3514 = !DILocation(line: 1775, column: 22, scope: !3508)
!3515 = !DILocation(line: 1776, column: 18, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 1776, column: 18)
!3517 = !DILocation(line: 1776, column: 18, scope: !3508)
!3518 = !DILocation(line: 1776, column: 29, scope: !3516)
!3519 = !DILocation(line: 1776, column: 35, scope: !3516)
!3520 = !DILocation(line: 1776, column: 45, scope: !3516)
!3521 = !DILocation(line: 1776, column: 43, scope: !3516)
!3522 = !DILocation(line: 1776, column: 22, scope: !3516)
!3523 = !DILocation(line: 1777, column: 14, scope: !3516)
!3524 = !DILocation(line: 1778, column: 16, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 1778, column: 16)
!3526 = !DILocation(line: 1778, column: 20, scope: !3525)
!3527 = !DILocation(line: 1778, column: 16, scope: !3494)
!3528 = !DILocation(line: 1779, column: 16, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1778, column: 25)
!3530 = !DILocation(line: 1779, column: 9, scope: !3529)
!3531 = !DILocation(line: 1781, column: 16, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1780, column: 28)
!3533 = !DILocation(line: 1781, column: 9, scope: !3532)
!3534 = !DILocation(line: 1783, column: 1, scope: !3420)
!3535 = distinct !DISubprogram(name: "raxStop", scope: !3, file: !3, line: 1786, type: !3536, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{null, !2065}
!3538 = !DILocalVariable(name: "it", arg: 1, scope: !3535, file: !3, line: 1786, type: !2065)
!3539 = !DILocation(line: 1786, column: 27, scope: !3535)
!3540 = !DILocation(line: 1787, column: 9, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1787, column: 9)
!3542 = !DILocation(line: 1787, column: 13, scope: !3541)
!3543 = !DILocation(line: 1787, column: 20, scope: !3541)
!3544 = !DILocation(line: 1787, column: 24, scope: !3541)
!3545 = !DILocation(line: 1787, column: 17, scope: !3541)
!3546 = !DILocation(line: 1787, column: 9, scope: !3535)
!3547 = !DILocation(line: 1787, column: 52, scope: !3541)
!3548 = !DILocation(line: 1787, column: 56, scope: !3541)
!3549 = !DILocation(line: 1787, column: 43, scope: !3541)
!3550 = !DILocation(line: 1788, column: 19, scope: !3535)
!3551 = !DILocation(line: 1788, column: 23, scope: !3535)
!3552 = !DILocation(line: 1788, column: 5, scope: !3535)
!3553 = !DILocation(line: 1789, column: 1, scope: !3535)
!3554 = distinct !DISubprogram(name: "raxEOF", scope: !3, file: !3, line: 1795, type: !2593, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3555 = !DILocalVariable(name: "it", arg: 1, scope: !3554, file: !3, line: 1795, type: !2065)
!3556 = !DILocation(line: 1795, column: 25, scope: !3554)
!3557 = !DILocation(line: 1796, column: 12, scope: !3554)
!3558 = !DILocation(line: 1796, column: 16, scope: !3554)
!3559 = !DILocation(line: 1796, column: 22, scope: !3554)
!3560 = !DILocation(line: 1796, column: 5, scope: !3554)
!3561 = distinct !DISubprogram(name: "raxSize", scope: !3, file: !3, line: 1800, type: !3562, scopeLine: 1800, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!108, !102}
!3564 = !DILocalVariable(name: "rax", arg: 1, scope: !3561, file: !3, line: 1800, type: !102)
!3565 = !DILocation(line: 1800, column: 23, scope: !3561)
!3566 = !DILocation(line: 1801, column: 12, scope: !3561)
!3567 = !DILocation(line: 1801, column: 17, scope: !3561)
!3568 = !DILocation(line: 1801, column: 5, scope: !3561)
!3569 = distinct !DISubprogram(name: "raxRecursiveShow", scope: !3, file: !3, line: 1832, type: !3570, scopeLine: 1832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !31, !31, !13}
!3572 = !DILocalVariable(name: "level", arg: 1, scope: !3569, file: !3, line: 1832, type: !31)
!3573 = !DILocation(line: 1832, column: 27, scope: !3569)
!3574 = !DILocalVariable(name: "lpad", arg: 2, scope: !3569, file: !3, line: 1832, type: !31)
!3575 = !DILocation(line: 1832, column: 38, scope: !3569)
!3576 = !DILocalVariable(name: "n", arg: 3, scope: !3569, file: !3, line: 1832, type: !13)
!3577 = !DILocation(line: 1832, column: 53, scope: !3569)
!3578 = !DILocalVariable(name: "s", scope: !3569, file: !3, line: 1833, type: !9)
!3579 = !DILocation(line: 1833, column: 10, scope: !3569)
!3580 = !DILocation(line: 1833, column: 14, scope: !3569)
!3581 = !DILocation(line: 1833, column: 17, scope: !3569)
!3582 = !DILocalVariable(name: "e", scope: !3569, file: !3, line: 1834, type: !9)
!3583 = !DILocation(line: 1834, column: 10, scope: !3569)
!3584 = !DILocation(line: 1834, column: 14, scope: !3569)
!3585 = !DILocation(line: 1834, column: 17, scope: !3569)
!3586 = !DILocalVariable(name: "numchars", scope: !3569, file: !3, line: 1836, type: !31)
!3587 = !DILocation(line: 1836, column: 9, scope: !3569)
!3588 = !DILocation(line: 1836, column: 39, scope: !3569)
!3589 = !DILocation(line: 1836, column: 42, scope: !3569)
!3590 = !DILocation(line: 1836, column: 45, scope: !3569)
!3591 = !DILocation(line: 1836, column: 51, scope: !3569)
!3592 = !DILocation(line: 1836, column: 54, scope: !3569)
!3593 = !DILocation(line: 1836, column: 60, scope: !3569)
!3594 = !DILocation(line: 1836, column: 20, scope: !3569)
!3595 = !DILocation(line: 1837, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1837, column: 9)
!3597 = !DILocation(line: 1837, column: 12, scope: !3596)
!3598 = !DILocation(line: 1837, column: 9, scope: !3569)
!3599 = !DILocation(line: 1838, column: 45, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 1837, column: 19)
!3601 = !DILocation(line: 1838, column: 34, scope: !3600)
!3602 = !DILocation(line: 1838, column: 21, scope: !3600)
!3603 = !DILocation(line: 1838, column: 18, scope: !3600)
!3604 = !DILocation(line: 1839, column: 5, scope: !3600)
!3605 = !DILocalVariable(name: "numchildren", scope: !3569, file: !3, line: 1841, type: !31)
!3606 = !DILocation(line: 1841, column: 9, scope: !3569)
!3607 = !DILocation(line: 1841, column: 23, scope: !3569)
!3608 = !DILocation(line: 1841, column: 26, scope: !3569)
!3609 = !DILocation(line: 1841, column: 40, scope: !3569)
!3610 = !DILocation(line: 1841, column: 43, scope: !3569)
!3611 = !DILocation(line: 1844, column: 9, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1844, column: 9)
!3613 = !DILocation(line: 1844, column: 9, scope: !3569)
!3614 = !DILocation(line: 1845, column: 18, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 1844, column: 16)
!3616 = !DILocation(line: 1845, column: 30, scope: !3615)
!3617 = !DILocation(line: 1845, column: 17, scope: !3615)
!3618 = !DILocation(line: 1845, column: 14, scope: !3615)
!3619 = !DILocation(line: 1846, column: 13, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1846, column: 13)
!3621 = !DILocation(line: 1846, column: 25, scope: !3620)
!3622 = !DILocation(line: 1846, column: 13, scope: !3615)
!3623 = !DILocation(line: 1846, column: 39, scope: !3620)
!3624 = !DILocation(line: 1846, column: 36, scope: !3620)
!3625 = !DILocation(line: 1846, column: 31, scope: !3620)
!3626 = !DILocation(line: 1847, column: 5, scope: !3615)
!3627 = !DILocalVariable(name: "cp", scope: !3569, file: !3, line: 1848, type: !12)
!3628 = !DILocation(line: 1848, column: 15, scope: !3569)
!3629 = !DILocation(line: 1848, column: 20, scope: !3569)
!3630 = !DILocalVariable(name: "i", scope: !3631, file: !3, line: 1849, type: !31)
!3631 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1849, column: 5)
!3632 = !DILocation(line: 1849, column: 14, scope: !3631)
!3633 = !DILocation(line: 1849, column: 10, scope: !3631)
!3634 = !DILocation(line: 1849, column: 21, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3631, file: !3, line: 1849, column: 5)
!3636 = !DILocation(line: 1849, column: 25, scope: !3635)
!3637 = !DILocation(line: 1849, column: 23, scope: !3635)
!3638 = !DILocation(line: 1849, column: 5, scope: !3631)
!3639 = !DILocalVariable(name: "branch", scope: !3640, file: !3, line: 1850, type: !8)
!3640 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 1849, column: 43)
!3641 = !DILocation(line: 1850, column: 15, scope: !3640)
!3642 = !DILocation(line: 1851, column: 13, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1851, column: 13)
!3644 = !DILocation(line: 1851, column: 25, scope: !3643)
!3645 = !DILocation(line: 1851, column: 13, scope: !3640)
!3646 = !DILocation(line: 1852, column: 13, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1851, column: 30)
!3648 = !DILocalVariable(name: "j", scope: !3649, file: !3, line: 1853, type: !31)
!3649 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 1853, column: 13)
!3650 = !DILocation(line: 1853, column: 22, scope: !3649)
!3651 = !DILocation(line: 1853, column: 18, scope: !3649)
!3652 = !DILocation(line: 1853, column: 29, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1853, column: 13)
!3654 = !DILocation(line: 1853, column: 33, scope: !3653)
!3655 = !DILocation(line: 1853, column: 31, scope: !3653)
!3656 = !DILocation(line: 1853, column: 13, scope: !3649)
!3657 = !DILocation(line: 1853, column: 44, scope: !3653)
!3658 = !DILocation(line: 1853, column: 40, scope: !3653)
!3659 = !DILocation(line: 1853, column: 13, scope: !3653)
!3660 = distinct !{!3660, !3656, !3661, !300}
!3661 = !DILocation(line: 1853, column: 55, scope: !3649)
!3662 = !DILocation(line: 1854, column: 20, scope: !3647)
!3663 = !DILocation(line: 1854, column: 27, scope: !3647)
!3664 = !DILocation(line: 1854, column: 30, scope: !3647)
!3665 = !DILocation(line: 1854, column: 35, scope: !3647)
!3666 = !DILocation(line: 1854, column: 13, scope: !3647)
!3667 = !DILocation(line: 1855, column: 9, scope: !3647)
!3668 = !DILocation(line: 1856, column: 13, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1855, column: 16)
!3670 = !DILocalVariable(name: "child", scope: !3640, file: !3, line: 1858, type: !13)
!3671 = !DILocation(line: 1858, column: 18, scope: !3640)
!3672 = !DILocation(line: 1859, column: 9, scope: !3640)
!3673 = !DILocation(line: 1859, column: 23, scope: !3640)
!3674 = !DILocation(line: 1860, column: 26, scope: !3640)
!3675 = !DILocation(line: 1860, column: 31, scope: !3640)
!3676 = !DILocation(line: 1860, column: 34, scope: !3640)
!3677 = !DILocation(line: 1860, column: 39, scope: !3640)
!3678 = !DILocation(line: 1860, column: 9, scope: !3640)
!3679 = !DILocation(line: 1861, column: 11, scope: !3640)
!3680 = !DILocation(line: 1862, column: 5, scope: !3640)
!3681 = !DILocation(line: 1849, column: 39, scope: !3635)
!3682 = !DILocation(line: 1849, column: 5, scope: !3635)
!3683 = distinct !{!3683, !3638, !3684, !300}
!3684 = !DILocation(line: 1862, column: 5, scope: !3631)
!3685 = !DILocation(line: 1863, column: 1, scope: !3569)
!3686 = distinct !DISubprogram(name: "raxShow", scope: !3, file: !3, line: 1866, type: !2055, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3687 = !DILocalVariable(name: "rax", arg: 1, scope: !3686, file: !3, line: 1866, type: !102)
!3688 = !DILocation(line: 1866, column: 19, scope: !3686)
!3689 = !DILocation(line: 1867, column: 26, scope: !3686)
!3690 = !DILocation(line: 1867, column: 31, scope: !3686)
!3691 = !DILocation(line: 1867, column: 5, scope: !3686)
!3692 = !DILocation(line: 1868, column: 5, scope: !3686)
!3693 = !DILocation(line: 1869, column: 1, scope: !3686)
!3694 = distinct !DISubprogram(name: "raxDebugShowNode", scope: !3, file: !3, line: 1872, type: !3695, scopeLine: 1872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !2845, !13}
!3697 = !DILocalVariable(name: "msg", arg: 1, scope: !3694, file: !3, line: 1872, type: !2845)
!3698 = !DILocation(line: 1872, column: 35, scope: !3694)
!3699 = !DILocalVariable(name: "n", arg: 2, scope: !3694, file: !3, line: 1872, type: !13)
!3700 = !DILocation(line: 1872, column: 49, scope: !3694)
!3701 = !DILocation(line: 1873, column: 9, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 1873, column: 9)
!3703 = !DILocation(line: 1873, column: 21, scope: !3702)
!3704 = !DILocation(line: 1873, column: 9, scope: !3694)
!3705 = !DILocation(line: 1873, column: 27, scope: !3702)
!3706 = !DILocation(line: 1875, column: 9, scope: !3694)
!3707 = !DILocation(line: 1875, column: 21, scope: !3694)
!3708 = !DILocation(line: 1875, column: 14, scope: !3694)
!3709 = !DILocation(line: 1875, column: 29, scope: !3694)
!3710 = !DILocation(line: 1875, column: 32, scope: !3694)
!3711 = !DILocation(line: 1875, column: 45, scope: !3694)
!3712 = !DILocation(line: 1875, column: 48, scope: !3694)
!3713 = !DILocation(line: 1875, column: 54, scope: !3694)
!3714 = !DILocation(line: 1875, column: 57, scope: !3694)
!3715 = !DILocation(line: 1875, column: 64, scope: !3694)
!3716 = !DILocation(line: 1875, column: 67, scope: !3694)
!3717 = !DILocation(line: 1874, column: 5, scope: !3694)
!3718 = !DILocalVariable(name: "numcld", scope: !3694, file: !3, line: 1876, type: !31)
!3719 = !DILocation(line: 1876, column: 9, scope: !3694)
!3720 = !DILocation(line: 1876, column: 18, scope: !3694)
!3721 = !DILocation(line: 1876, column: 21, scope: !3694)
!3722 = !DILocation(line: 1876, column: 35, scope: !3694)
!3723 = !DILocation(line: 1876, column: 38, scope: !3694)
!3724 = !DILocalVariable(name: "cldptr", scope: !3694, file: !3, line: 1877, type: !12)
!3725 = !DILocation(line: 1877, column: 15, scope: !3694)
!3726 = !DILocation(line: 1877, column: 24, scope: !3694)
!3727 = !DILocation(line: 0, scope: !3694)
!3728 = !DILocation(line: 1877, column: 50, scope: !3694)
!3729 = !DILocation(line: 1877, column: 56, scope: !3694)
!3730 = !DILocation(line: 1877, column: 47, scope: !3694)
!3731 = !DILocation(line: 1878, column: 5, scope: !3694)
!3732 = !DILocation(line: 1878, column: 17, scope: !3694)
!3733 = !DILocalVariable(name: "child", scope: !3734, file: !3, line: 1879, type: !13)
!3734 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 1878, column: 21)
!3735 = !DILocation(line: 1879, column: 18, scope: !3734)
!3736 = !DILocation(line: 1880, column: 9, scope: !3734)
!3737 = !DILocation(line: 1880, column: 23, scope: !3734)
!3738 = !DILocation(line: 1881, column: 15, scope: !3734)
!3739 = !DILocation(line: 1882, column: 30, scope: !3734)
!3740 = !DILocation(line: 1882, column: 23, scope: !3734)
!3741 = !DILocation(line: 1882, column: 9, scope: !3734)
!3742 = distinct !{!3742, !3731, !3743, !300}
!3743 = !DILocation(line: 1883, column: 5, scope: !3694)
!3744 = !DILocation(line: 1884, column: 5, scope: !3694)
!3745 = !DILocation(line: 1885, column: 12, scope: !3694)
!3746 = !DILocation(line: 1885, column: 5, scope: !3694)
!3747 = !DILocation(line: 1886, column: 1, scope: !3694)
!3748 = distinct !DISubprogram(name: "raxTouch", scope: !3, file: !3, line: 1905, type: !3749, scopeLine: 1905, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!32, !13}
!3751 = !DILocalVariable(name: "n", arg: 1, scope: !3748, file: !3, line: 1905, type: !13)
!3752 = !DILocation(line: 1905, column: 33, scope: !3748)
!3753 = !DILocalVariable(name: "sum", scope: !3748, file: !3, line: 1907, type: !32)
!3754 = !DILocation(line: 1907, column: 19, scope: !3748)
!3755 = !DILocation(line: 1908, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1908, column: 9)
!3757 = !DILocation(line: 1908, column: 12, scope: !3756)
!3758 = !DILocation(line: 1908, column: 9, scope: !3748)
!3759 = !DILocation(line: 1909, column: 42, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 1908, column: 19)
!3761 = !DILocation(line: 1909, column: 31, scope: !3760)
!3762 = !DILocation(line: 1909, column: 16, scope: !3760)
!3763 = !DILocation(line: 1909, column: 13, scope: !3760)
!3764 = !DILocation(line: 1910, column: 5, scope: !3760)
!3765 = !DILocalVariable(name: "numchildren", scope: !3748, file: !3, line: 1912, type: !31)
!3766 = !DILocation(line: 1912, column: 9, scope: !3748)
!3767 = !DILocation(line: 1912, column: 23, scope: !3748)
!3768 = !DILocation(line: 1912, column: 26, scope: !3748)
!3769 = !DILocation(line: 1912, column: 40, scope: !3748)
!3770 = !DILocation(line: 1912, column: 43, scope: !3748)
!3771 = !DILocalVariable(name: "cp", scope: !3748, file: !3, line: 1913, type: !12)
!3772 = !DILocation(line: 1913, column: 15, scope: !3748)
!3773 = !DILocation(line: 1913, column: 20, scope: !3748)
!3774 = !DILocalVariable(name: "count", scope: !3748, file: !3, line: 1914, type: !31)
!3775 = !DILocation(line: 1914, column: 9, scope: !3748)
!3776 = !DILocalVariable(name: "i", scope: !3777, file: !3, line: 1915, type: !31)
!3777 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 1915, column: 5)
!3778 = !DILocation(line: 1915, column: 14, scope: !3777)
!3779 = !DILocation(line: 1915, column: 10, scope: !3777)
!3780 = !DILocation(line: 1915, column: 21, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 1915, column: 5)
!3782 = !DILocation(line: 1915, column: 25, scope: !3781)
!3783 = !DILocation(line: 1915, column: 23, scope: !3781)
!3784 = !DILocation(line: 1915, column: 5, scope: !3777)
!3785 = !DILocation(line: 1916, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1916, column: 13)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 1915, column: 43)
!3788 = !DILocation(line: 1916, column: 25, scope: !3786)
!3789 = !DILocation(line: 1916, column: 13, scope: !3787)
!3790 = !DILocation(line: 1917, column: 26, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 1916, column: 30)
!3792 = !DILocation(line: 1917, column: 29, scope: !3791)
!3793 = !DILocation(line: 1917, column: 34, scope: !3791)
!3794 = !DILocation(line: 1917, column: 20, scope: !3791)
!3795 = !DILocation(line: 1917, column: 17, scope: !3791)
!3796 = !DILocation(line: 1918, column: 9, scope: !3791)
!3797 = !DILocalVariable(name: "child", scope: !3787, file: !3, line: 1919, type: !13)
!3798 = !DILocation(line: 1919, column: 18, scope: !3787)
!3799 = !DILocation(line: 1920, column: 9, scope: !3787)
!3800 = !DILocation(line: 1920, column: 23, scope: !3787)
!3801 = !DILocation(line: 1921, column: 13, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1921, column: 13)
!3803 = !DILocation(line: 1921, column: 19, scope: !3802)
!3804 = !DILocation(line: 1921, column: 13, scope: !3787)
!3805 = !DILocation(line: 1921, column: 45, scope: !3802)
!3806 = !DILocation(line: 1921, column: 40, scope: !3802)
!3807 = !DILocation(line: 1922, column: 13, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 1922, column: 13)
!3809 = !DILocation(line: 1922, column: 19, scope: !3808)
!3810 = !DILocation(line: 1922, column: 13, scope: !3787)
!3811 = !DILocation(line: 1922, column: 24, scope: !3808)
!3812 = !DILocation(line: 1923, column: 25, scope: !3787)
!3813 = !DILocation(line: 1923, column: 16, scope: !3787)
!3814 = !DILocation(line: 1923, column: 13, scope: !3787)
!3815 = !DILocation(line: 1924, column: 11, scope: !3787)
!3816 = !DILocation(line: 1925, column: 5, scope: !3787)
!3817 = !DILocation(line: 1915, column: 39, scope: !3781)
!3818 = !DILocation(line: 1915, column: 5, scope: !3781)
!3819 = distinct !{!3819, !3784, !3820, !300}
!3820 = !DILocation(line: 1925, column: 5, scope: !3777)
!3821 = !DILocation(line: 1926, column: 12, scope: !3748)
!3822 = !DILocation(line: 1926, column: 5, scope: !3748)
