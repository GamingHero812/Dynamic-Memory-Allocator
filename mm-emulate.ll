; ModuleID = 'mm.c'
source_filename = "mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.block = type { i64, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.block*, %struct.block* }

@heap_start = internal unnamed_addr global %struct.block* null, align 8, !dbg !0
@seglist = internal unnamed_addr global [15 x %struct.block*] zeroinitializer, align 16, !dbg !52
@.str.1 = private unnamed_addr constant [5 x i8] c"mm.c\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"block != NULL\00", align 1
@__PRETTY_FUNCTION__.remove_node = private unnamed_addr constant [28 x i8] c"void remove_node(block_t *)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"prev != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"next != NULL\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @mm_checkheap(i32 noundef %0) local_unnamed_addr #0 !dbg !66 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !71, metadata !DIExpression()), !dbg !73
  %2 = load %struct.block*, %struct.block** @heap_start, align 8, !dbg !74, !tbaa !76
  call void @llvm.dbg.value(metadata %struct.block* %2, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = getelementptr %struct.block, %struct.block* %2, i64 0, i32 0, !dbg !80
  %4 = load i64, i64* %3, align 8, !dbg !80, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %4, metadata !92, metadata !DIExpression()), !dbg !97
  %5 = icmp ult i64 %4, 16, !dbg !99
  br i1 %5, label %71, label %6, !dbg !100

6:                                                ; preds = %1, %68
  %7 = phi %struct.block* [ %70, %68 ], [ %2, %1 ], !dbg !101
  %8 = phi i64* [ %65, %68 ], [ %3, %1 ]
  %9 = phi %struct.block* [ %69, %68 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata %struct.block* %9, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !107, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 undef, metadata !108, metadata !DIExpression()), !dbg !114
  %10 = icmp eq %struct.block* %7, null, !dbg !115
  br i1 %10, label %49, label %11, !dbg !116

11:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %struct.block* %7, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata %struct.block* %7, metadata !117, metadata !DIExpression()), !dbg !122
  %12 = bitcast %struct.block* %7 to i8*, !dbg !124
  %13 = getelementptr %struct.block, %struct.block* %7, i64 0, i32 0, !dbg !125
  %14 = load i64, i64* %13, align 8, !dbg !125, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %14, metadata !92, metadata !DIExpression()), !dbg !128
  %15 = and i64 %14, -16, !dbg !130
  %16 = getelementptr inbounds i8, i8* %12, i64 %15, !dbg !131
  call void @llvm.dbg.value(metadata i8* %16, metadata !110, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata %struct.block* %7, metadata !109, metadata !DIExpression()), !dbg !114
  %17 = bitcast i8* %16 to i64*, !dbg !132
  %18 = load i64, i64* %17, align 8, !dbg !132, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %18, metadata !92, metadata !DIExpression()), !dbg !135
  %19 = and i64 %18, -16, !dbg !137
  %20 = icmp eq i64 %19, 0, !dbg !138
  br i1 %20, label %49, label %21, !dbg !139

21:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* %16, metadata !110, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata %struct.block* %7, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64 %14, metadata !149, metadata !DIExpression()), !dbg !154
  %22 = and i64 %14, 1, !dbg !156
  %23 = icmp ne i64 %22, 0, !dbg !157
  %24 = and i64 %18, 1
  %25 = icmp ne i64 %24, 0
  %26 = select i1 %23, i1 true, i1 %25, !dbg !158
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i64 %18, metadata !149, metadata !DIExpression()), !dbg !161
  br i1 %26, label %27, label %71, !dbg !158

27:                                               ; preds = %21, %40
  %28 = phi %struct.block* [ %41, %40 ], [ %7, %21 ]
  %29 = phi i8* [ %35, %40 ], [ %16, %21 ]
  %30 = phi i64 [ %38, %40 ], [ %19, %21 ]
  %31 = phi i64 [ %43, %40 ], [ %14, %21 ]
  call void @llvm.dbg.value(metadata %struct.block* %28, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %29, metadata !110, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i64 %31, metadata !149, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.block* %28, metadata !117, metadata !DIExpression()), !dbg !163
  %32 = bitcast %struct.block* %28 to i8*, !dbg !165
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i64 %31, metadata !92, metadata !DIExpression()), !dbg !168
  %33 = and i64 %31, -16, !dbg !170
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !171
  call void @llvm.dbg.value(metadata i8* %34, metadata !109, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %29, metadata !117, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 undef, metadata !92, metadata !DIExpression()), !dbg !176
  %35 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !178
  call void @llvm.dbg.value(metadata i8* %35, metadata !110, metadata !DIExpression()), !dbg !114
  %36 = bitcast i8* %35 to i64*, !dbg !132
  %37 = load i64, i64* %36, align 8, !dbg !132, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %37, metadata !92, metadata !DIExpression()), !dbg !135
  %38 = and i64 %37, -16, !dbg !137
  %39 = icmp eq i64 %38, 0, !dbg !138
  br i1 %39, label %49, label %40, !dbg !139, !llvm.loop !179

40:                                               ; preds = %27
  %41 = bitcast i8* %34 to %struct.block*, !dbg !182
  call void @llvm.dbg.value(metadata %struct.block* %41, metadata !109, metadata !DIExpression()), !dbg !114
  %42 = bitcast i8* %34 to i64*
  %43 = load i64, i64* %42, align 8, !dbg !183, !tbaa !82
  call void @llvm.dbg.value(metadata i8* %35, metadata !110, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i64 %43, metadata !149, metadata !DIExpression()), !dbg !154
  %44 = and i64 %43, 1, !dbg !156
  %45 = icmp ne i64 %44, 0, !dbg !157
  %46 = and i64 %37, 1
  %47 = icmp ne i64 %46, 0
  %48 = select i1 %45, i1 true, i1 %47, !dbg !158
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i64 %37, metadata !149, metadata !DIExpression()), !dbg !161
  br i1 %48, label %27, label %71, !dbg !158

49:                                               ; preds = %27, %6, %11
  call void @llvm.dbg.value(metadata %struct.block* %9, metadata !184, metadata !DIExpression()) #5, !dbg !189
  call void @llvm.dbg.value(metadata i32 undef, metadata !187, metadata !DIExpression()) #5, !dbg !189
  call void @llvm.dbg.value(metadata %struct.block* %9, metadata !192, metadata !DIExpression()) #5, !dbg !197
  %50 = getelementptr inbounds %struct.block, %struct.block* %9, i64 0, i32 1, !dbg !199
  %51 = ptrtoint %union.anon* %50 to i64, !dbg !200
  call void @llvm.dbg.value(metadata i64 %51, metadata !188, metadata !DIExpression()) #5, !dbg !189
  %52 = and i64 %51, 15, !dbg !201
  %53 = icmp eq i64 %52, 0, !dbg !203
  br i1 %53, label %54, label %71, !dbg !204

54:                                               ; preds = %49
  %55 = bitcast %struct.block* %9 to i8*, !dbg !205
  %56 = tail call i8* @mem_heap_lo() #5, !dbg !207
  %57 = icmp ugt i8* %56, %55, !dbg !208
  br i1 %57, label %71, label %58, !dbg !209

58:                                               ; preds = %54
  %59 = tail call i8* @mem_heap_hi() #5, !dbg !210
  %60 = icmp ult i8* %59, %55, !dbg !211
  br i1 %60, label %71, label %61, !dbg !212

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %struct.block* %9, metadata !117, metadata !DIExpression()), !dbg !213
  %62 = load i64, i64* %8, align 8, !dbg !215, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i64 %62, metadata !92, metadata !DIExpression()), !dbg !218
  %63 = and i64 %62, -16, !dbg !220
  %64 = getelementptr inbounds i8, i8* %55, i64 %63, !dbg !221
  call void @llvm.dbg.value(metadata i8* %64, metadata !72, metadata !DIExpression()), !dbg !73
  %65 = bitcast i8* %64 to i64*, !dbg !80
  %66 = load i64, i64* %65, align 8, !dbg !80, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i64 %66, metadata !92, metadata !DIExpression()), !dbg !97
  %67 = icmp ult i64 %66, 16, !dbg !99
  br i1 %67, label %71, label %68, !dbg !100, !llvm.loop !222

68:                                               ; preds = %61
  %69 = bitcast i8* %64 to %struct.block*, !dbg !224
  call void @llvm.dbg.value(metadata %struct.block* %69, metadata !72, metadata !DIExpression()), !dbg !73
  %70 = load %struct.block*, %struct.block** @heap_start, align 8, !dbg !101, !tbaa !76
  br label %6, !dbg !100

71:                                               ; preds = %58, %61, %49, %54, %21, %40, %1
  %72 = phi i1 [ true, %1 ], [ false, %40 ], [ false, %21 ], [ false, %58 ], [ true, %61 ], [ false, %49 ], [ false, %54 ], !dbg !73
  ret i1 %72, !dbg !225
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @mm_init() local_unnamed_addr #0 !dbg !226 {
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !233
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) bitcast ([15 x %struct.block*]* @seglist to i8*), i8 0, i64 120, i1 false), !dbg !234, !tbaa !76
  call void @llvm.dbg.value(metadata i32 undef, metadata !230, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32 undef, metadata !230, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !233
  %1 = tail call i8* @mem_sbrk(i64 noundef 16) #5, !dbg !237
  call void @llvm.dbg.value(metadata i8* %1, metadata !232, metadata !DIExpression()), !dbg !238
  %2 = icmp eq i8* %1, inttoptr (i64 -1 to i8*), !dbg !239
  br i1 %2, label %21, label %3, !dbg !241

3:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i8* %1, metadata !232, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !250
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !250
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 1, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 3, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !252
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !252
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 1, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 3, metadata !249, metadata !DIExpression()), !dbg !252
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !254
  %5 = bitcast i8* %1 to <2 x i64>*, !dbg !255
  store <2 x i64> <i64 3, i64 3>, <2 x i64>* %5, align 8, !dbg !255, !tbaa !256
  store i8* %4, i8** bitcast (%struct.block** @heap_start to i8**), align 8, !dbg !257, !tbaa !76
  call void @llvm.dbg.value(metadata i64 4096, metadata !258, metadata !DIExpression()) #5, !dbg !268
  call void @llvm.dbg.value(metadata i64 4096, metadata !258, metadata !DIExpression()) #5, !dbg !268
  %6 = tail call i8* @mem_sbrk(i64 noundef 4096) #5, !dbg !271
  call void @llvm.dbg.value(metadata i8* %6, metadata !263, metadata !DIExpression()) #5, !dbg !268
  %7 = icmp eq i8* %6, inttoptr (i64 -1 to i8*), !dbg !273
  br i1 %7, label %21, label %8, !dbg !274

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i8* %6, metadata !275, metadata !DIExpression()) #5, !dbg !280
  %9 = getelementptr inbounds i8, i8* %6, i64 -8, !dbg !282
  %10 = bitcast i8* %9 to %struct.block*, !dbg !283
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !264, metadata !DIExpression()) #5, !dbg !268
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !284, metadata !DIExpression()) #5, !dbg !295
  call void @llvm.dbg.value(metadata i64 4096, metadata !289, metadata !DIExpression()) #5, !dbg !295
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !295
  call void @llvm.dbg.value(metadata i1 false, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !295
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !297
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !297
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !297
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !297
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !297
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !297
  %11 = bitcast i8* %9 to i64*, !dbg !299
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !300, metadata !DIExpression()) #5, !dbg !305
  %12 = getelementptr inbounds i8, i8* %6, i64 4080, !dbg !307
  %13 = bitcast i8* %12 to i64*, !dbg !308
  call void @llvm.dbg.value(metadata i64* %13, metadata !292, metadata !DIExpression()) #5, !dbg !309
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !310
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !310
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !310
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !310
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !310
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !310
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !117, metadata !DIExpression()) #5, !dbg !312
  %14 = getelementptr inbounds i8, i8* %6, i64 4088, !dbg !314
  call void @llvm.dbg.value(metadata i8* %14, metadata !265, metadata !DIExpression()) #5, !dbg !268
  %15 = bitcast i8* %14 to i64*, !dbg !315
  %16 = load i64, i64* %15, align 8, !dbg !315, !tbaa !82
  %17 = and i64 %16, 2, !dbg !316
  call void @llvm.dbg.value(metadata i1 undef, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !268
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !284, metadata !DIExpression()) #5, !dbg !317
  call void @llvm.dbg.value(metadata i64 4096, metadata !289, metadata !DIExpression()) #5, !dbg !317
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !317
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !317
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !319
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !319
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !319
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !319
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !319
  %18 = or i64 %17, 4096, !dbg !321
  call void @llvm.dbg.value(metadata i64 %18, metadata !249, metadata !DIExpression()) #5, !dbg !319
  store i64 %18, i64* %11, align 8, !dbg !322, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !300, metadata !DIExpression()) #5, !dbg !323
  call void @llvm.dbg.value(metadata i64* %13, metadata !292, metadata !DIExpression()) #5, !dbg !325
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !326
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !326
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !326
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !326
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !326
  call void @llvm.dbg.value(metadata i64 %18, metadata !249, metadata !DIExpression()) #5, !dbg !326
  store i64 %18, i64* %13, align 8, !dbg !328, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %10, metadata !117, metadata !DIExpression()) #5, !dbg !329
  call void @llvm.dbg.value(metadata i8* %14, metadata !267, metadata !DIExpression()) #5, !dbg !268
  call void @llvm.dbg.value(metadata i8* %14, metadata !331, metadata !DIExpression()) #5, !dbg !337
  call void @llvm.dbg.value(metadata i8 0, metadata !336, metadata !DIExpression()) #5, !dbg !337
  store i64 1, i64* %15, align 8, !dbg !339, !tbaa !82
  %19 = tail call fastcc %struct.block* @coalesce_block(%struct.block* noundef nonnull %10) #5, !dbg !340
  call void @llvm.dbg.value(metadata %struct.block* %19, metadata !264, metadata !DIExpression()) #5, !dbg !268
  %20 = icmp ne %struct.block* %19, null
  br label %21

21:                                               ; preds = %8, %3, %0
  %22 = phi i1 [ false, %0 ], [ %20, %8 ], [ false, %3 ], !dbg !238
  ret i1 %22, !dbg !341
}

declare !dbg !342 i8* @mem_sbrk(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @mm_malloc(i64 noundef %0) local_unnamed_addr #0 !dbg !347 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !351, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i8* null, metadata !355, metadata !DIExpression()), !dbg !358
  %2 = load %struct.block*, %struct.block** @heap_start, align 8, !dbg !359, !tbaa !76
  %3 = icmp eq %struct.block* %2, null, !dbg !361
  br i1 %3, label %4, label %27, !dbg !362

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()) #5, !dbg !363
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) bitcast ([15 x %struct.block*]* @seglist to i8*), i8 0, i64 120, i1 false) #5, !dbg !367, !tbaa !76
  call void @llvm.dbg.value(metadata i32 undef, metadata !230, metadata !DIExpression()) #5, !dbg !363
  call void @llvm.dbg.value(metadata i32 undef, metadata !230, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #5, !dbg !363
  %5 = tail call i8* @mem_sbrk(i64 noundef 16) #5, !dbg !368
  call void @llvm.dbg.value(metadata i8* %5, metadata !232, metadata !DIExpression()) #5, !dbg !369
  %6 = icmp eq i8* %5, inttoptr (i64 -1 to i8*), !dbg !370
  br i1 %6, label %197, label %7, !dbg !371

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8* %5, metadata !232, metadata !DIExpression()) #5, !dbg !369
  call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()) #5, !dbg !372
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !372
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !372
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()) #5, !dbg !372
  call void @llvm.dbg.value(metadata i64 1, metadata !249, metadata !DIExpression()) #5, !dbg !372
  call void @llvm.dbg.value(metadata i64 3, metadata !249, metadata !DIExpression()) #5, !dbg !372
  call void @llvm.dbg.value(metadata i64 0, metadata !242, metadata !DIExpression()) #5, !dbg !374
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !374
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !374
  call void @llvm.dbg.value(metadata i64 0, metadata !249, metadata !DIExpression()) #5, !dbg !374
  call void @llvm.dbg.value(metadata i64 1, metadata !249, metadata !DIExpression()) #5, !dbg !374
  call void @llvm.dbg.value(metadata i64 3, metadata !249, metadata !DIExpression()) #5, !dbg !374
  %8 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !376
  %9 = bitcast i8* %5 to <2 x i64>*, !dbg !377
  store <2 x i64> <i64 3, i64 3>, <2 x i64>* %9, align 8, !dbg !377, !tbaa !256
  store i8* %8, i8** bitcast (%struct.block** @heap_start to i8**), align 8, !dbg !378, !tbaa !76
  call void @llvm.dbg.value(metadata i64 4096, metadata !258, metadata !DIExpression()) #5, !dbg !379
  call void @llvm.dbg.value(metadata i64 4096, metadata !258, metadata !DIExpression()) #5, !dbg !379
  %10 = tail call i8* @mem_sbrk(i64 noundef 4096) #5, !dbg !381
  call void @llvm.dbg.value(metadata i8* %10, metadata !263, metadata !DIExpression()) #5, !dbg !379
  %11 = icmp eq i8* %10, inttoptr (i64 -1 to i8*), !dbg !382
  br i1 %11, label %197, label %12, !dbg !383

12:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %10, metadata !275, metadata !DIExpression()) #5, !dbg !384
  %13 = getelementptr inbounds i8, i8* %10, i64 -8, !dbg !386
  %14 = bitcast i8* %13 to %struct.block*, !dbg !387
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !264, metadata !DIExpression()) #5, !dbg !379
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !284, metadata !DIExpression()) #5, !dbg !388
  call void @llvm.dbg.value(metadata i64 4096, metadata !289, metadata !DIExpression()) #5, !dbg !388
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !388
  call void @llvm.dbg.value(metadata i1 false, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !388
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !390
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !390
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !390
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !390
  %15 = bitcast i8* %13 to i64*, !dbg !392
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !300, metadata !DIExpression()) #5, !dbg !393
  %16 = getelementptr inbounds i8, i8* %10, i64 4080, !dbg !395
  %17 = bitcast i8* %16 to i64*, !dbg !396
  call void @llvm.dbg.value(metadata i64* %17, metadata !292, metadata !DIExpression()) #5, !dbg !397
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !398
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !398
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !398
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !398
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !117, metadata !DIExpression()) #5, !dbg !400
  %18 = getelementptr inbounds i8, i8* %10, i64 4088, !dbg !402
  call void @llvm.dbg.value(metadata i8* %18, metadata !265, metadata !DIExpression()) #5, !dbg !379
  %19 = bitcast i8* %18 to i64*, !dbg !403
  %20 = load i64, i64* %19, align 8, !dbg !403, !tbaa !82
  %21 = and i64 %20, 2, !dbg !404
  call void @llvm.dbg.value(metadata i1 undef, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !379
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !284, metadata !DIExpression()) #5, !dbg !405
  call void @llvm.dbg.value(metadata i64 4096, metadata !289, metadata !DIExpression()) #5, !dbg !405
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !405
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !405
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !407
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !407
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !407
  call void @llvm.dbg.value(metadata i64 4096, metadata !249, metadata !DIExpression()) #5, !dbg !407
  %22 = or i64 %21, 4096, !dbg !409
  call void @llvm.dbg.value(metadata i64 %22, metadata !249, metadata !DIExpression()) #5, !dbg !407
  store i64 %22, i64* %15, align 8, !dbg !410, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !300, metadata !DIExpression()) #5, !dbg !411
  call void @llvm.dbg.value(metadata i64* %17, metadata !292, metadata !DIExpression()) #5, !dbg !413
  call void @llvm.dbg.value(metadata i64 4096, metadata !242, metadata !DIExpression()) #5, !dbg !414
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !414
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !414
  call void @llvm.dbg.value(metadata i64 %22, metadata !249, metadata !DIExpression()) #5, !dbg !414
  store i64 %22, i64* %17, align 8, !dbg !416, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %14, metadata !117, metadata !DIExpression()) #5, !dbg !417
  call void @llvm.dbg.value(metadata i8* %18, metadata !267, metadata !DIExpression()) #5, !dbg !379
  call void @llvm.dbg.value(metadata i8* %18, metadata !331, metadata !DIExpression()) #5, !dbg !419
  call void @llvm.dbg.value(metadata i8 0, metadata !336, metadata !DIExpression()) #5, !dbg !419
  store i64 1, i64* %19, align 8, !dbg !421, !tbaa !82
  %23 = tail call fastcc %struct.block* @coalesce_block(%struct.block* noundef nonnull %14) #5, !dbg !422
  call void @llvm.dbg.value(metadata %struct.block* %23, metadata !264, metadata !DIExpression()) #5, !dbg !379
  %24 = icmp eq %struct.block* %23, null
  %25 = icmp eq i64 %0, 0
  %26 = or i1 %25, %24, !dbg !423
  br i1 %26, label %197, label %29, !dbg !423

27:                                               ; preds = %1
  %28 = icmp eq i64 %0, 0, !dbg !424
  br i1 %28, label %197, label %29, !dbg !426

29:                                               ; preds = %12, %27
  call void @llvm.dbg.value(metadata i64 %0, metadata !427, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !433
  call void @llvm.dbg.value(metadata i64 16, metadata !432, metadata !DIExpression()), !dbg !433
  %30 = add i64 %0, 23, !dbg !435
  %31 = and i64 %30, -16, !dbg !436
  call void @llvm.dbg.value(metadata i64 32, metadata !437, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.value(metadata i64 %30, metadata !440, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)), !dbg !441
  %32 = icmp ugt i64 %31, 32, !dbg !443
  %33 = select i1 %32, i64 %31, i64 32, !dbg !443
  call void @llvm.dbg.value(metadata i64 %33, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %33, metadata !444, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 14, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata i32 1, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 64, metadata !448, metadata !DIExpression()), !dbg !453
  %34 = icmp ult i64 %33, 64, !dbg !456
  br i1 %34, label %60, label %35, !dbg !460

35:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 2, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 128, metadata !448, metadata !DIExpression()), !dbg !453
  %36 = icmp ult i64 %33, 128, !dbg !456
  br i1 %36, label %60, label %37, !dbg !460

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 3, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 256, metadata !448, metadata !DIExpression()), !dbg !453
  %38 = icmp ult i64 %33, 256, !dbg !456
  br i1 %38, label %60, label %39, !dbg !460

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 4, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 512, metadata !448, metadata !DIExpression()), !dbg !453
  %40 = icmp ult i64 %33, 512, !dbg !456
  br i1 %40, label %60, label %41, !dbg !460

41:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 5, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 1024, metadata !448, metadata !DIExpression()), !dbg !453
  %42 = icmp ult i64 %33, 1024, !dbg !456
  br i1 %42, label %60, label %43, !dbg !460

43:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i32 6, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 2048, metadata !448, metadata !DIExpression()), !dbg !453
  %44 = icmp ult i64 %33, 2048, !dbg !456
  br i1 %44, label %60, label %45, !dbg !460

45:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 7, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 4096, metadata !448, metadata !DIExpression()), !dbg !453
  %46 = icmp ult i64 %33, 4096, !dbg !456
  br i1 %46, label %60, label %47, !dbg !460

47:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i32 8, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 8192, metadata !448, metadata !DIExpression()), !dbg !453
  %48 = icmp ult i64 %33, 8192, !dbg !456
  br i1 %48, label %60, label %49, !dbg !460

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 9, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 16384, metadata !448, metadata !DIExpression()), !dbg !453
  %50 = icmp ult i64 %33, 16384, !dbg !456
  br i1 %50, label %60, label %51, !dbg !460

51:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 10, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 32768, metadata !448, metadata !DIExpression()), !dbg !453
  %52 = icmp ult i64 %33, 32768, !dbg !456
  br i1 %52, label %60, label %53, !dbg !460

53:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 11, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 65536, metadata !448, metadata !DIExpression()), !dbg !453
  %54 = icmp ult i64 %33, 65536, !dbg !456
  br i1 %54, label %60, label %55, !dbg !460

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 12, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 131072, metadata !448, metadata !DIExpression()), !dbg !453
  %56 = icmp ult i64 %33, 131072, !dbg !456
  br i1 %56, label %60, label %57, !dbg !460

57:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 13, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i32 262144, metadata !448, metadata !DIExpression()), !dbg !453
  %58 = icmp ult i64 %33, 262144, !dbg !456
  %59 = select i1 %58, i64 13, i64 14, !dbg !460
  br label %60, !dbg !460

60:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %29
  %61 = phi i64 [ %59, %57 ], [ 12, %55 ], [ 11, %53 ], [ 10, %51 ], [ 9, %49 ], [ 8, %47 ], [ 7, %45 ], [ 6, %43 ], [ 5, %41 ], [ 4, %39 ], [ 3, %37 ], [ 2, %35 ], [ 1, %29 ]
  br label %62, !dbg !461

62:                                               ; preds = %60, %77
  %63 = phi i64 [ %78, %77 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !447, metadata !DIExpression()), !dbg !453
  %64 = getelementptr inbounds [15 x %struct.block*], [15 x %struct.block*]* @seglist, i64 0, i64 %63, !dbg !462
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !451, metadata !DIExpression()), !dbg !463
  %65 = load %struct.block*, %struct.block** %64, align 8, !dbg !463, !tbaa !464
  call void @llvm.dbg.value(metadata %struct.block* %65, metadata !451, metadata !DIExpression()), !dbg !463
  %66 = icmp eq %struct.block* %65, null, !dbg !465
  br i1 %66, label %77, label %67, !dbg !461

67:                                               ; preds = %62, %73
  %68 = phi %struct.block* [ %75, %73 ], [ %65, %62 ]
  %69 = getelementptr %struct.block, %struct.block* %68, i64 0, i32 0, !dbg !466
  %70 = load i64, i64* %69, align 8, !dbg !466, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata i64 %70, metadata !92, metadata !DIExpression()), !dbg !471
  %71 = and i64 %70, -16, !dbg !473
  %72 = icmp ult i64 %71, %33, !dbg !474
  br i1 %72, label %73, label %109, !dbg !475

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.block, %struct.block* %68, i64 0, i32 1, i32 0, i32 1, !dbg !476
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !451, metadata !DIExpression()), !dbg !463
  %75 = load %struct.block*, %struct.block** %74, align 8, !dbg !463, !tbaa !464
  call void @llvm.dbg.value(metadata %struct.block* %75, metadata !451, metadata !DIExpression()), !dbg !463
  %76 = icmp eq %struct.block* %75, null, !dbg !465
  br i1 %76, label %77, label %67, !dbg !461, !llvm.loop !477

77:                                               ; preds = %73, %62
  %78 = add nuw nsw i64 %63, 1, !dbg !479
  call void @llvm.dbg.value(metadata i64 %78, metadata !447, metadata !DIExpression()), !dbg !453
  %79 = icmp eq i64 %78, 15, !dbg !480
  br i1 %79, label %80, label %62, !dbg !481

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !354, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 %33, metadata !437, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.value(metadata i64 4096, metadata !440, metadata !DIExpression()), !dbg !482
  %81 = icmp ugt i64 %33, 4096, !dbg !486
  call void @llvm.dbg.value(metadata i64 undef, metadata !353, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i64 undef, metadata !258, metadata !DIExpression()) #5, !dbg !487
  call void @llvm.dbg.value(metadata i64 undef, metadata !427, metadata !DIExpression()) #5, !dbg !489
  call void @llvm.dbg.value(metadata i64 16, metadata !432, metadata !DIExpression()) #5, !dbg !489
  %82 = select i1 %81, i64 %31, i64 4096, !dbg !491
  call void @llvm.dbg.value(metadata i64 %82, metadata !258, metadata !DIExpression()) #5, !dbg !487
  %83 = tail call i8* @mem_sbrk(i64 noundef %82) #5, !dbg !492
  call void @llvm.dbg.value(metadata i8* %83, metadata !263, metadata !DIExpression()) #5, !dbg !487
  %84 = icmp eq i8* %83, inttoptr (i64 -1 to i8*), !dbg !493
  br i1 %84, label %197, label %85, !dbg !494

85:                                               ; preds = %80
  call void @llvm.dbg.value(metadata i8* %83, metadata !275, metadata !DIExpression()) #5, !dbg !495
  %86 = getelementptr inbounds i8, i8* %83, i64 -8, !dbg !497
  %87 = bitcast i8* %86 to %struct.block*, !dbg !498
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !264, metadata !DIExpression()) #5, !dbg !487
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !284, metadata !DIExpression()) #5, !dbg !499
  call void @llvm.dbg.value(metadata i64 %82, metadata !289, metadata !DIExpression()) #5, !dbg !499
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !499
  call void @llvm.dbg.value(metadata i1 false, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !499
  call void @llvm.dbg.value(metadata i64 %82, metadata !242, metadata !DIExpression()) #5, !dbg !501
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !501
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !501
  call void @llvm.dbg.value(metadata i64 %82, metadata !249, metadata !DIExpression()) #5, !dbg !501
  %88 = bitcast i8* %86 to i64*, !dbg !503
  store i64 %82, i64* %88, align 8, !dbg !504, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !300, metadata !DIExpression()) #5, !dbg !505
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !507
  call void @llvm.dbg.value(metadata i64 %82, metadata !92, metadata !DIExpression()) #5, !dbg !509
  %89 = getelementptr inbounds i8, i8* %83, i64 %82, !dbg !511
  %90 = getelementptr inbounds i8, i8* %89, i64 -16, !dbg !512
  %91 = bitcast i8* %90 to i64*, !dbg !513
  call void @llvm.dbg.value(metadata i64* %91, metadata !292, metadata !DIExpression()) #5, !dbg !514
  call void @llvm.dbg.value(metadata i64 %82, metadata !242, metadata !DIExpression()) #5, !dbg !515
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !515
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !515
  call void @llvm.dbg.value(metadata i64 %82, metadata !249, metadata !DIExpression()) #5, !dbg !515
  store i64 %82, i64* %91, align 8, !dbg !517, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !117, metadata !DIExpression()) #5, !dbg !518
  %92 = load i64, i64* %88, align 8, !dbg !520, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !521
  call void @llvm.dbg.value(metadata i64 %92, metadata !92, metadata !DIExpression()) #5, !dbg !523
  %93 = and i64 %92, -16, !dbg !525
  %94 = getelementptr inbounds i8, i8* %86, i64 %93, !dbg !526
  call void @llvm.dbg.value(metadata i8* %94, metadata !265, metadata !DIExpression()) #5, !dbg !487
  %95 = bitcast i8* %94 to i64*, !dbg !527
  %96 = load i64, i64* %95, align 8, !dbg !527, !tbaa !82
  %97 = and i64 %96, 2, !dbg !528
  call void @llvm.dbg.value(metadata i1 undef, metadata !266, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !487
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !284, metadata !DIExpression()) #5, !dbg !529
  call void @llvm.dbg.value(metadata i64 %82, metadata !289, metadata !DIExpression()) #5, !dbg !529
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !529
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !529
  call void @llvm.dbg.value(metadata i64 %82, metadata !242, metadata !DIExpression()) #5, !dbg !531
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !531
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !531
  call void @llvm.dbg.value(metadata i64 %82, metadata !249, metadata !DIExpression()) #5, !dbg !531
  %98 = or i64 %97, %82, !dbg !533
  call void @llvm.dbg.value(metadata i64 %98, metadata !249, metadata !DIExpression()) #5, !dbg !531
  store i64 %98, i64* %88, align 8, !dbg !534, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !300, metadata !DIExpression()) #5, !dbg !535
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !537
  call void @llvm.dbg.value(metadata i64 %98, metadata !92, metadata !DIExpression()) #5, !dbg !539
  call void @llvm.dbg.value(metadata i64* %91, metadata !292, metadata !DIExpression()) #5, !dbg !541
  call void @llvm.dbg.value(metadata i64 %82, metadata !242, metadata !DIExpression()) #5, !dbg !542
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !542
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !542
  call void @llvm.dbg.value(metadata i64 %98, metadata !249, metadata !DIExpression()) #5, !dbg !542
  store i64 %98, i64* %91, align 8, !dbg !544, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %87, metadata !117, metadata !DIExpression()) #5, !dbg !545
  %99 = load i64, i64* %88, align 8, !dbg !547, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !548
  call void @llvm.dbg.value(metadata i64 %99, metadata !92, metadata !DIExpression()) #5, !dbg !550
  %100 = and i64 %99, -16, !dbg !552
  %101 = getelementptr inbounds i8, i8* %86, i64 %100, !dbg !553
  call void @llvm.dbg.value(metadata i8* %101, metadata !267, metadata !DIExpression()) #5, !dbg !487
  call void @llvm.dbg.value(metadata i8* %101, metadata !331, metadata !DIExpression()) #5, !dbg !554
  call void @llvm.dbg.value(metadata i8 0, metadata !336, metadata !DIExpression()) #5, !dbg !554
  %102 = bitcast i8* %101 to i64*, !dbg !556
  store i64 1, i64* %102, align 8, !dbg !557, !tbaa !82
  %103 = tail call fastcc %struct.block* @coalesce_block(%struct.block* noundef nonnull %87) #5, !dbg !558
  call void @llvm.dbg.value(metadata %struct.block* %103, metadata !264, metadata !DIExpression()) #5, !dbg !487
  call void @llvm.dbg.value(metadata %struct.block* %103, metadata !354, metadata !DIExpression()), !dbg !358
  %104 = icmp eq %struct.block* %103, null, !dbg !559
  br i1 %104, label %197, label %105, !dbg !561

105:                                              ; preds = %85
  %106 = getelementptr %struct.block, %struct.block* %103, i64 0, i32 0
  %107 = load i64, i64* %106, align 8, !dbg !562, !tbaa !82
  %108 = and i64 %107, -16, !dbg !563
  br label %109, !dbg !561

109:                                              ; preds = %67, %105
  %110 = phi i64 [ %108, %105 ], [ %71, %67 ], !dbg !563
  %111 = phi i64 [ %107, %105 ], [ %70, %67 ], !dbg !562
  %112 = phi %struct.block* [ %103, %105 ], [ %68, %67 ], !dbg !358
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !354, metadata !DIExpression()), !dbg !358
  %113 = getelementptr %struct.block, %struct.block* %112, i64 0, i32 0, !dbg !562
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i64 %111, metadata !92, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.value(metadata i64 %110, metadata !356, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i1 undef, metadata !357, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !358
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !284, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i64 %110, metadata !289, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i1 true, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !568
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !568
  call void @llvm.dbg.value(metadata i64 %110, metadata !242, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !570
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !570
  call void @llvm.dbg.value(metadata i64 %110, metadata !249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !570
  %114 = and i64 %111, -14, !dbg !572
  %115 = or i64 %114, 1, !dbg !572
  call void @llvm.dbg.value(metadata i64 %115, metadata !249, metadata !DIExpression()), !dbg !570
  store i64 %115, i64* %113, align 8, !dbg !573, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !574, metadata !DIExpression()) #5, !dbg !585
  call void @llvm.dbg.value(metadata i64 %33, metadata !579, metadata !DIExpression()) #5, !dbg !585
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !587
  call void @llvm.dbg.value(metadata i64 %115, metadata !92, metadata !DIExpression()) #5, !dbg !589
  call void @llvm.dbg.value(metadata i64 %110, metadata !580, metadata !DIExpression()) #5, !dbg !585
  tail call fastcc void @remove_node(%struct.block* noundef nonnull %112) #5, !dbg !591
  %116 = sub i64 %110, %33, !dbg !592
  %117 = icmp ugt i64 %116, 31, !dbg !593
  br i1 %117, label %118, label %176, !dbg !594

118:                                              ; preds = %109
  %119 = load i64, i64* %113, align 8, !dbg !595, !tbaa !82
  %120 = and i64 %119, 2, !dbg !596
  call void @llvm.dbg.value(metadata i1 undef, metadata !584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !597
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !284, metadata !DIExpression()) #5, !dbg !598
  call void @llvm.dbg.value(metadata i64 %33, metadata !289, metadata !DIExpression()) #5, !dbg !598
  call void @llvm.dbg.value(metadata i1 true, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !598
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !598
  call void @llvm.dbg.value(metadata i64 %33, metadata !242, metadata !DIExpression()) #5, !dbg !600
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !600
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !600
  call void @llvm.dbg.value(metadata i64 %33, metadata !249, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)) #5, !dbg !600
  %121 = or i64 %33, %120, !dbg !602
  %122 = or i64 %121, 1, !dbg !602
  call void @llvm.dbg.value(metadata !DIArgList(i64 %120, i64 %33), metadata !249, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)) #5, !dbg !600
  store i64 %122, i64* %113, align 8, !dbg !603, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !117, metadata !DIExpression()) #5, !dbg !604
  %123 = bitcast %struct.block* %112 to i8*, !dbg !606
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !607
  call void @llvm.dbg.value(metadata !DIArgList(i64 %120, i64 %33), metadata !92, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)) #5, !dbg !609
  %124 = getelementptr inbounds i8, i8* %123, i64 %33, !dbg !611
  call void @llvm.dbg.value(metadata i8* %124, metadata !581, metadata !DIExpression()) #5, !dbg !597
  call void @llvm.dbg.value(metadata i8* %124, metadata !284, metadata !DIExpression()) #5, !dbg !612
  call void @llvm.dbg.value(metadata i64 %116, metadata !289, metadata !DIExpression()) #5, !dbg !612
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !612
  call void @llvm.dbg.value(metadata i1 true, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !612
  call void @llvm.dbg.value(metadata i64 %116, metadata !242, metadata !DIExpression()) #5, !dbg !614
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !614
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !614
  call void @llvm.dbg.value(metadata i64 %116, metadata !249, metadata !DIExpression()) #5, !dbg !614
  %125 = or i64 %116, 2, !dbg !616
  call void @llvm.dbg.value(metadata i64 %116, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)) #5, !dbg !614
  %126 = bitcast i8* %124 to i64*, !dbg !617
  store i64 %125, i64* %126, align 8, !dbg !618, !tbaa !82
  call void @llvm.dbg.value(metadata i8* %124, metadata !300, metadata !DIExpression()) #5, !dbg !619
  %127 = getelementptr inbounds i8, i8* %124, i64 8, !dbg !621
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !622
  call void @llvm.dbg.value(metadata i64 %116, metadata !92, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)) #5, !dbg !624
  %128 = getelementptr inbounds i8, i8* %127, i64 %116, !dbg !626
  %129 = getelementptr inbounds i8, i8* %128, i64 -16, !dbg !627
  %130 = bitcast i8* %129 to i64*, !dbg !628
  call void @llvm.dbg.value(metadata i64* %130, metadata !292, metadata !DIExpression()) #5, !dbg !629
  call void @llvm.dbg.value(metadata i64 %116, metadata !242, metadata !DIExpression()) #5, !dbg !630
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !630
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !630
  call void @llvm.dbg.value(metadata i64 %116, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)) #5, !dbg !630
  store i64 %125, i64* %130, align 8, !dbg !632, !tbaa !256
  call void @llvm.dbg.value(metadata i8* %124, metadata !633, metadata !DIExpression()) #5, !dbg !643
  %131 = load i64, i64* %126, align 8, !dbg !645, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !646
  call void @llvm.dbg.value(metadata i64 %131, metadata !92, metadata !DIExpression()) #5, !dbg !648
  %132 = and i64 %131, -16, !dbg !650
  call void @llvm.dbg.value(metadata i64 %132, metadata !638, metadata !DIExpression()) #5, !dbg !643
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #5, !dbg !643
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %133 = icmp ult i64 %132, 32, !dbg !652
  br i1 %133, label %161, label %134, !dbg !656

134:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %135 = icmp ult i64 %132, 64, !dbg !652
  br i1 %135, label %161, label %136, !dbg !656

136:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %137 = icmp ult i64 %132, 128, !dbg !652
  br i1 %137, label %161, label %138, !dbg !656

138:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %139 = icmp ult i64 %132, 256, !dbg !652
  br i1 %139, label %161, label %140, !dbg !656

140:                                              ; preds = %138
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %141 = icmp ult i64 %132, 512, !dbg !652
  br i1 %141, label %161, label %142, !dbg !656

142:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %143 = icmp ult i64 %132, 1024, !dbg !652
  br i1 %143, label %161, label %144, !dbg !656

144:                                              ; preds = %142
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %145 = icmp ult i64 %132, 2048, !dbg !652
  br i1 %145, label %161, label %146, !dbg !656

146:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %147 = icmp ult i64 %132, 4096, !dbg !652
  br i1 %147, label %161, label %148, !dbg !656

148:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %149 = icmp ult i64 %132, 8192, !dbg !652
  br i1 %149, label %161, label %150, !dbg !656

150:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %151 = icmp ult i64 %132, 16384, !dbg !652
  br i1 %151, label %161, label %152, !dbg !656

152:                                              ; preds = %150
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %153 = icmp ult i64 %132, 32768, !dbg !652
  br i1 %153, label %161, label %154, !dbg !656

154:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %155 = icmp ult i64 %132, 65536, !dbg !652
  br i1 %155, label %161, label %156, !dbg !656

156:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %157 = icmp ult i64 %132, 131072, !dbg !652
  br i1 %157, label %161, label %158, !dbg !656

158:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !651
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !643
  %159 = icmp ult i64 %132, 262144, !dbg !652
  %160 = select i1 %159, i64 13, i64 14, !dbg !656
  br label %161, !dbg !656

161:                                              ; preds = %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %118
  %162 = phi i64 [ 0, %118 ], [ 1, %134 ], [ 2, %136 ], [ 3, %138 ], [ 4, %140 ], [ 5, %142 ], [ 6, %144 ], [ 7, %146 ], [ 8, %148 ], [ 9, %150 ], [ 10, %152 ], [ 11, %154 ], [ 12, %156 ], [ %160, %158 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !639, metadata !DIExpression()) #5, !dbg !643
  %163 = getelementptr inbounds [15 x %struct.block*], [15 x %struct.block*]* @seglist, i64 0, i64 %162, !dbg !657
  %164 = load %struct.block*, %struct.block** %163, align 8, !dbg !657, !tbaa !76
  %165 = icmp eq %struct.block* %164, null, !dbg !657
  br i1 %165, label %166, label %168, !dbg !659

166:                                              ; preds = %161
  %167 = bitcast %struct.block** %163 to i8**, !dbg !660
  store i8* %124, i8** %167, align 8, !dbg !660, !tbaa !76
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false) #5, !dbg !662
  br label %194, !dbg !663

168:                                              ; preds = %161
  %169 = getelementptr inbounds i8, i8* %124, i64 16, !dbg !664
  %170 = bitcast i8* %169 to %struct.block**, !dbg !664
  store %struct.block* %164, %struct.block** %170, align 8, !dbg !666, !tbaa !464
  %171 = load %struct.block*, %struct.block** %163, align 8, !dbg !667, !tbaa !76
  %172 = getelementptr inbounds %struct.block, %struct.block* %171, i64 0, i32 1, i32 0, i32 0, !dbg !668
  %173 = bitcast %struct.block** %172 to i8**, !dbg !669
  store i8* %124, i8** %173, align 8, !dbg !669, !tbaa !464
  %174 = bitcast i8* %127 to %struct.block**, !dbg !670
  store %struct.block* null, %struct.block** %174, align 8, !dbg !671, !tbaa !464
  %175 = bitcast %struct.block** %163 to i8**, !dbg !672
  store i8* %124, i8** %175, align 8, !dbg !672, !tbaa !76
  br label %194

176:                                              ; preds = %109
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !117, metadata !DIExpression()) #5, !dbg !673
  %177 = bitcast %struct.block* %112 to i8*, !dbg !676
  %178 = load i64, i64* %113, align 8, !dbg !677, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !678
  call void @llvm.dbg.value(metadata i64 %178, metadata !92, metadata !DIExpression()) #5, !dbg !680
  %179 = and i64 %178, -16, !dbg !682
  %180 = getelementptr inbounds i8, i8* %177, i64 %179, !dbg !683
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !117, metadata !DIExpression()) #5, !dbg !684
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !686
  call void @llvm.dbg.value(metadata i64 %178, metadata !92, metadata !DIExpression()) #5, !dbg !688
  %181 = bitcast i8* %180 to i64*, !dbg !690
  %182 = load i64, i64* %181, align 8, !dbg !690, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !691
  call void @llvm.dbg.value(metadata i64 %182, metadata !92, metadata !DIExpression()) #5, !dbg !693
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !117, metadata !DIExpression()) #5, !dbg !695
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !697
  call void @llvm.dbg.value(metadata i64 %178, metadata !92, metadata !DIExpression()) #5, !dbg !699
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()) #5, !dbg !701
  call void @llvm.dbg.value(metadata i64 %182, metadata !149, metadata !DIExpression()) #5, !dbg !703
  %183 = and i64 %182, 1, !dbg !705
  %184 = icmp eq i64 %183, 0, !dbg !706
  call void @llvm.dbg.value(metadata i8* %180, metadata !284, metadata !DIExpression()) #5, !dbg !707
  call void @llvm.dbg.value(metadata i64 %182, metadata !289, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)) #5, !dbg !707
  call void @llvm.dbg.value(metadata i1 %184, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !707
  call void @llvm.dbg.value(metadata i1 true, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !707
  call void @llvm.dbg.value(metadata i64 %182, metadata !242, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)) #5, !dbg !709
  call void @llvm.dbg.value(metadata i1 %184, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !709
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !709
  call void @llvm.dbg.value(metadata i64 %182, metadata !249, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)) #5, !dbg !709
  %185 = and i64 %182, -15, !dbg !711
  call void @llvm.dbg.value(metadata i64 %185, metadata !249, metadata !DIExpression()) #5, !dbg !709
  %186 = or i64 %185, 2, !dbg !712
  call void @llvm.dbg.value(metadata i64 %185, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)) #5, !dbg !709
  store i64 %186, i64* %181, align 8, !dbg !713, !tbaa !82
  br i1 %184, label %187, label %194, !dbg !714

187:                                              ; preds = %176
  %188 = and i64 %182, -16, !dbg !715
  call void @llvm.dbg.value(metadata i64 %188, metadata !289, metadata !DIExpression()) #5, !dbg !707
  call void @llvm.dbg.value(metadata i64 %188, metadata !242, metadata !DIExpression()) #5, !dbg !709
  call void @llvm.dbg.value(metadata i64 %188, metadata !249, metadata !DIExpression()) #5, !dbg !709
  call void @llvm.dbg.value(metadata i8* %180, metadata !284, metadata !DIExpression()) #5, !dbg !707
  call void @llvm.dbg.value(metadata i8* %180, metadata !300, metadata !DIExpression()) #5, !dbg !716
  %189 = getelementptr inbounds i8, i8* %180, i64 8, !dbg !718
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !719
  call void @llvm.dbg.value(metadata i64 %185, metadata !92, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)) #5, !dbg !721
  %190 = getelementptr inbounds i8, i8* %189, i64 %188, !dbg !723
  %191 = getelementptr inbounds i8, i8* %190, i64 -16, !dbg !724
  %192 = bitcast i8* %191 to i64*, !dbg !725
  call void @llvm.dbg.value(metadata i64* %192, metadata !292, metadata !DIExpression()) #5, !dbg !726
  call void @llvm.dbg.value(metadata i64 %182, metadata !242, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)) #5, !dbg !727
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !727
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !727
  call void @llvm.dbg.value(metadata i64 %182, metadata !249, metadata !DIExpression(DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_stack_value)) #5, !dbg !727
  %193 = or i64 %188, 2, !dbg !729
  call void @llvm.dbg.value(metadata i64 %193, metadata !249, metadata !DIExpression()) #5, !dbg !727
  store i64 %193, i64* %192, align 8, !dbg !730, !tbaa !256
  br label %194, !dbg !731

194:                                              ; preds = %166, %168, %176, %187
  call void @llvm.dbg.value(metadata %struct.block* %112, metadata !192, metadata !DIExpression()), !dbg !732
  %195 = getelementptr inbounds %struct.block, %struct.block* %112, i64 0, i32 1, !dbg !734
  %196 = bitcast %union.anon* %195 to i8*, !dbg !735
  call void @llvm.dbg.value(metadata i8* %196, metadata !355, metadata !DIExpression()), !dbg !358
  br label %197

197:                                              ; preds = %80, %7, %4, %85, %27, %12, %194
  %198 = phi i8* [ %196, %194 ], [ null, %12 ], [ null, %27 ], [ null, %85 ], [ null, %4 ], [ null, %7 ], [ null, %80 ], !dbg !358
  ret i8* %198, !dbg !736
}

; Function Attrs: nounwind uwtable
define dso_local void @mm_free(i8* noundef %0) local_unnamed_addr #0 !dbg !737 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !741, metadata !DIExpression()), !dbg !745
  %2 = icmp eq i8* %0, null, !dbg !746
  br i1 %2, label %14, label %3, !dbg !748

3:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %0, metadata !275, metadata !DIExpression()), !dbg !749
  %4 = getelementptr inbounds i8, i8* %0, i64 -8, !dbg !751
  %5 = bitcast i8* %4 to %struct.block*, !dbg !752
  call void @llvm.dbg.value(metadata %struct.block* %5, metadata !742, metadata !DIExpression()), !dbg !745
  %6 = bitcast i8* %4 to i64*, !dbg !753
  %7 = load i64, i64* %6, align 8, !dbg !753, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata i64 %7, metadata !92, metadata !DIExpression()), !dbg !756
  %8 = and i64 %7, -16, !dbg !758
  call void @llvm.dbg.value(metadata i64 %8, metadata !743, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i1 undef, metadata !744, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !745
  call void @llvm.dbg.value(metadata %struct.block* %5, metadata !284, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i64 %8, metadata !289, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !759
  call void @llvm.dbg.value(metadata i1 undef, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !759
  call void @llvm.dbg.value(metadata i64 %8, metadata !242, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !761
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !761
  call void @llvm.dbg.value(metadata i64 %8, metadata !249, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i64 %8, metadata !249, metadata !DIExpression()), !dbg !761
  %9 = and i64 %7, -14, !dbg !763
  call void @llvm.dbg.value(metadata i64 %9, metadata !249, metadata !DIExpression()), !dbg !761
  store i64 %9, i64* %6, align 8, !dbg !764, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %5, metadata !300, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.value(metadata i64 %9, metadata !92, metadata !DIExpression()), !dbg !769
  %10 = getelementptr inbounds i8, i8* %0, i64 %8, !dbg !771
  %11 = getelementptr inbounds i8, i8* %10, i64 -16, !dbg !772
  %12 = bitcast i8* %11 to i64*, !dbg !773
  call void @llvm.dbg.value(metadata i64* %12, metadata !292, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i64 %8, metadata !242, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !775
  call void @llvm.dbg.value(metadata i1 undef, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !775
  call void @llvm.dbg.value(metadata i64 %8, metadata !249, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i64 %8, metadata !249, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i64 %9, metadata !249, metadata !DIExpression()), !dbg !775
  store i64 %9, i64* %12, align 8, !dbg !777, !tbaa !256
  %13 = tail call fastcc %struct.block* @coalesce_block(%struct.block* noundef nonnull %5), !dbg !778
  br label %14

14:                                               ; preds = %1, %3
  ret void, !dbg !779
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.block* @coalesce_block(%struct.block* noundef %0) unnamed_addr #0 !dbg !780 {
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !782, metadata !DIExpression()), !dbg !798
  %2 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 0, !dbg !799
  %3 = load i64, i64* %2, align 8, !dbg !799, !tbaa !82
  %4 = and i64 %3, 2, !dbg !800
  call void @llvm.dbg.value(metadata i64 %4, metadata !783, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !801
  %5 = bitcast %struct.block* %0 to i8*, !dbg !803
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i64 %3, metadata !92, metadata !DIExpression()), !dbg !806
  %6 = and i64 %3, -16, !dbg !808
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !809
  %8 = bitcast i8* %7 to %struct.block*, !dbg !810
  %9 = bitcast i8* %7 to i64*, !dbg !811
  %10 = load i64, i64* %9, align 8, !dbg !811, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !140, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i64 %10, metadata !149, metadata !DIExpression()), !dbg !814
  %11 = and i64 %10, 1, !dbg !816
  %12 = icmp ne i64 %11, 0, !dbg !817
  call void @llvm.dbg.value(metadata i1 %12, metadata !784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64 %3, metadata !92, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %6, metadata !785, metadata !DIExpression()), !dbg !798
  %13 = icmp ne i64 %4, 0, !dbg !822
  %14 = select i1 %13, i1 %12, i1 false, !dbg !823
  br i1 %14, label %15, label %74, !dbg !823

15:                                               ; preds = %1
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !633, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !826
  call void @llvm.dbg.value(metadata i64 %3, metadata !92, metadata !DIExpression()) #5, !dbg !828
  call void @llvm.dbg.value(metadata i64 %6, metadata !638, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %16 = icmp ult i64 %6, 32, !dbg !831
  br i1 %16, label %44, label %17, !dbg !832

17:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %18 = icmp ult i64 %6, 64, !dbg !831
  br i1 %18, label %44, label %19, !dbg !832

19:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %20 = icmp ult i64 %6, 128, !dbg !831
  br i1 %20, label %44, label %21, !dbg !832

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %22 = icmp ult i64 %6, 256, !dbg !831
  br i1 %22, label %44, label %23, !dbg !832

23:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %24 = icmp ult i64 %6, 512, !dbg !831
  br i1 %24, label %44, label %25, !dbg !832

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %26 = icmp ult i64 %6, 1024, !dbg !831
  br i1 %26, label %44, label %27, !dbg !832

27:                                               ; preds = %25
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %28 = icmp ult i64 %6, 2048, !dbg !831
  br i1 %28, label %44, label %29, !dbg !832

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %30 = icmp ult i64 %6, 4096, !dbg !831
  br i1 %30, label %44, label %31, !dbg !832

31:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %32 = icmp ult i64 %6, 8192, !dbg !831
  br i1 %32, label %44, label %33, !dbg !832

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %34 = icmp ult i64 %6, 16384, !dbg !831
  br i1 %34, label %44, label %35, !dbg !832

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %36 = icmp ult i64 %6, 32768, !dbg !831
  br i1 %36, label %44, label %37, !dbg !832

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %38 = icmp ult i64 %6, 65536, !dbg !831
  br i1 %38, label %44, label %39, !dbg !832

39:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %40 = icmp ult i64 %6, 131072, !dbg !831
  br i1 %40, label %44, label %41, !dbg !832

41:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !824
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !830
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !824
  %42 = icmp ult i64 %6, 262144, !dbg !831
  %43 = select i1 %42, i64 13, i64 14, !dbg !832
  br label %44, !dbg !832

44:                                               ; preds = %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15
  %45 = phi i64 [ 0, %15 ], [ 1, %17 ], [ 2, %19 ], [ 3, %21 ], [ 4, %23 ], [ 5, %25 ], [ 6, %27 ], [ 7, %29 ], [ 8, %31 ], [ 9, %33 ], [ 10, %35 ], [ 11, %37 ], [ 12, %39 ], [ %43, %41 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !639, metadata !DIExpression()) #5, !dbg !824
  %46 = getelementptr inbounds [15 x %struct.block*], [15 x %struct.block*]* @seglist, i64 0, i64 %45, !dbg !833
  %47 = load %struct.block*, %struct.block** %46, align 8, !dbg !833, !tbaa !76
  %48 = icmp eq %struct.block* %47, null, !dbg !833
  br i1 %48, label %49, label %52, !dbg !834

49:                                               ; preds = %44
  store %struct.block* %0, %struct.block** %46, align 8, !dbg !835, !tbaa !76
  %50 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 0, !dbg !836
  %51 = bitcast %struct.block** %50 to i8*, !dbg !837
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false) #5, !dbg !838
  br label %57, !dbg !837

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 1, !dbg !839
  store %struct.block* %47, %struct.block** %53, align 8, !dbg !840, !tbaa !464
  %54 = load %struct.block*, %struct.block** %46, align 8, !dbg !841, !tbaa !76
  %55 = getelementptr inbounds %struct.block, %struct.block* %54, i64 0, i32 1, i32 0, i32 0, !dbg !842
  store %struct.block* %0, %struct.block** %55, align 8, !dbg !843, !tbaa !464
  %56 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 0, !dbg !844
  store %struct.block* null, %struct.block** %56, align 8, !dbg !845, !tbaa !464
  store %struct.block* %0, %struct.block** %46, align 8, !dbg !846, !tbaa !76
  br label %57

57:                                               ; preds = %49, %52
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !284, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %6, metadata !289, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !847
  call void @llvm.dbg.value(metadata i1 true, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !847
  call void @llvm.dbg.value(metadata i64 %6, metadata !242, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !849
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !849
  call void @llvm.dbg.value(metadata i64 %6, metadata !249, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i64 %6, metadata !249, metadata !DIExpression()), !dbg !849
  %58 = or i64 %6, 2, !dbg !851
  call void @llvm.dbg.value(metadata i64 %58, metadata !249, metadata !DIExpression()), !dbg !849
  store i64 %58, i64* %2, align 8, !dbg !852, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !300, metadata !DIExpression()), !dbg !853
  %59 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, !dbg !855
  %60 = bitcast %union.anon* %59 to i8*, !dbg !856
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64 %58, metadata !92, metadata !DIExpression()), !dbg !859
  %61 = getelementptr inbounds i8, i8* %60, i64 %6, !dbg !861
  %62 = getelementptr inbounds i8, i8* %61, i64 -16, !dbg !862
  %63 = bitcast i8* %62 to i64*, !dbg !863
  call void @llvm.dbg.value(metadata i64* %63, metadata !292, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i64 %6, metadata !242, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !865
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !865
  call void @llvm.dbg.value(metadata i64 %6, metadata !249, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i64 %6, metadata !249, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i64 %58, metadata !249, metadata !DIExpression()), !dbg !865
  store i64 %58, i64* %63, align 8, !dbg !867, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !868
  %64 = load i64, i64* %2, align 8, !dbg !870, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %64, metadata !92, metadata !DIExpression()), !dbg !873
  %65 = and i64 %64, -16, !dbg !875
  %66 = getelementptr inbounds i8, i8* %5, i64 %65, !dbg !876
  %67 = bitcast i8* %66 to i64*, !dbg !877
  %68 = load i64, i64* %67, align 8, !dbg !877, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i64 %68, metadata !92, metadata !DIExpression()), !dbg !880
  %69 = and i64 %68, -16, !dbg !882
  call void @llvm.dbg.value(metadata i64 %69, metadata !786, metadata !DIExpression()), !dbg !883
  %70 = icmp eq i64 %69, 0, !dbg !884
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 %64, metadata !92, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 %64, metadata !92, metadata !DIExpression()), !dbg !898
  br i1 %70, label %71, label %72, !dbg !900

71:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %66, metadata !331, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i8 0, metadata !336, metadata !DIExpression()), !dbg !901
  store i64 1, i64* %67, align 8, !dbg !903, !tbaa !82
  br label %284, !dbg !904

72:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %64, metadata !92, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %68, metadata !92, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i8* %66, metadata !284, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i64 %69, metadata !289, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata i1 true, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !915
  call void @llvm.dbg.value(metadata i1 false, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !915
  call void @llvm.dbg.value(metadata i64 %69, metadata !242, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i1 true, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !917
  call void @llvm.dbg.value(metadata i1 false, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !917
  call void @llvm.dbg.value(metadata i64 %69, metadata !249, metadata !DIExpression()), !dbg !917
  %73 = or i64 %69, 1, !dbg !919
  call void @llvm.dbg.value(metadata i64 %73, metadata !249, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i64 %73, metadata !249, metadata !DIExpression()), !dbg !917
  store i64 %73, i64* %67, align 8, !dbg !920, !tbaa !82
  br label %284

74:                                               ; preds = %1
  %75 = icmp eq i64 %4, 0, !dbg !921
  %76 = select i1 %75, i1 true, i1 %12, !dbg !922
  br i1 %76, label %141, label %77, !dbg !922

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %3, metadata !92, metadata !DIExpression()), !dbg !927
  tail call fastcc void @remove_node(%struct.block* noundef nonnull %8), !dbg !929
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !930
  %78 = load i64, i64* %2, align 8, !dbg !932, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %78, metadata !92, metadata !DIExpression()), !dbg !935
  %79 = and i64 %78, -16, !dbg !937
  %80 = getelementptr inbounds i8, i8* %5, i64 %79, !dbg !938
  %81 = bitcast i8* %80 to i64*, !dbg !939
  %82 = load i64, i64* %81, align 8, !dbg !939, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i64 %82, metadata !92, metadata !DIExpression()), !dbg !942
  %83 = and i64 %82, -16, !dbg !944
  %84 = add i64 %83, %6, !dbg !945
  call void @llvm.dbg.value(metadata i64 %84, metadata !785, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !284, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %84, metadata !289, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata i1 true, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata i64 %84, metadata !242, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !948
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !948
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression()), !dbg !948
  %85 = or i64 %84, 2, !dbg !950
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !948
  store i64 %85, i64* %2, align 8, !dbg !951, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !300, metadata !DIExpression()), !dbg !952
  %86 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, !dbg !954
  %87 = bitcast %union.anon* %86 to i8*, !dbg !955
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 %84, metadata !92, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !958
  %88 = getelementptr inbounds i8, i8* %87, i64 %84, !dbg !960
  %89 = getelementptr inbounds i8, i8* %88, i64 -16, !dbg !961
  %90 = bitcast i8* %89 to i64*, !dbg !962
  call void @llvm.dbg.value(metadata i64* %90, metadata !292, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i64 %84, metadata !242, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !964
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !964
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %84, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !964
  store i64 %85, i64* %90, align 8, !dbg !966, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !967
  %91 = load i64, i64* %2, align 8, !dbg !969, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 %91, metadata !92, metadata !DIExpression()), !dbg !972
  %92 = and i64 %91, -16, !dbg !974
  %93 = getelementptr inbounds i8, i8* %5, i64 %92, !dbg !975
  %94 = bitcast i8* %93 to i64*, !dbg !976
  %95 = load i64, i64* %94, align 8, !dbg !976, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i64 %95, metadata !92, metadata !DIExpression()), !dbg !979
  %96 = and i64 %95, -16, !dbg !981
  call void @llvm.dbg.value(metadata i64 %96, metadata !789, metadata !DIExpression()), !dbg !982
  %97 = or i64 %96, 1, !dbg !983
  store i64 %97, i64* %94, align 8, !dbg !984, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !633, metadata !DIExpression()) #5, !dbg !986
  %98 = load i64, i64* %2, align 8, !dbg !988, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !989
  call void @llvm.dbg.value(metadata i64 %98, metadata !92, metadata !DIExpression()) #5, !dbg !991
  %99 = and i64 %98, -16, !dbg !993
  call void @llvm.dbg.value(metadata i64 %99, metadata !638, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %100 = icmp ult i64 %99, 32, !dbg !995
  br i1 %100, label %128, label %101, !dbg !996

101:                                              ; preds = %77
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %102 = icmp ult i64 %99, 64, !dbg !995
  br i1 %102, label %128, label %103, !dbg !996

103:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %104 = icmp ult i64 %99, 128, !dbg !995
  br i1 %104, label %128, label %105, !dbg !996

105:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %106 = icmp ult i64 %99, 256, !dbg !995
  br i1 %106, label %128, label %107, !dbg !996

107:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %108 = icmp ult i64 %99, 512, !dbg !995
  br i1 %108, label %128, label %109, !dbg !996

109:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %110 = icmp ult i64 %99, 1024, !dbg !995
  br i1 %110, label %128, label %111, !dbg !996

111:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %112 = icmp ult i64 %99, 2048, !dbg !995
  br i1 %112, label %128, label %113, !dbg !996

113:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %114 = icmp ult i64 %99, 4096, !dbg !995
  br i1 %114, label %128, label %115, !dbg !996

115:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %116 = icmp ult i64 %99, 8192, !dbg !995
  br i1 %116, label %128, label %117, !dbg !996

117:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %118 = icmp ult i64 %99, 16384, !dbg !995
  br i1 %118, label %128, label %119, !dbg !996

119:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %120 = icmp ult i64 %99, 32768, !dbg !995
  br i1 %120, label %128, label %121, !dbg !996

121:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %122 = icmp ult i64 %99, 65536, !dbg !995
  br i1 %122, label %128, label %123, !dbg !996

123:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %124 = icmp ult i64 %99, 131072, !dbg !995
  br i1 %124, label %128, label %125, !dbg !996

125:                                              ; preds = %123
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !986
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !994
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !986
  %126 = icmp ult i64 %99, 262144, !dbg !995
  %127 = select i1 %126, i64 13, i64 14, !dbg !996
  br label %128, !dbg !996

128:                                              ; preds = %125, %123, %121, %119, %117, %115, %113, %111, %109, %107, %105, %103, %101, %77
  %129 = phi i64 [ 0, %77 ], [ 1, %101 ], [ 2, %103 ], [ 3, %105 ], [ 4, %107 ], [ 5, %109 ], [ 6, %111 ], [ 7, %113 ], [ 8, %115 ], [ 9, %117 ], [ 10, %119 ], [ 11, %121 ], [ 12, %123 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !639, metadata !DIExpression()) #5, !dbg !986
  %130 = getelementptr inbounds [15 x %struct.block*], [15 x %struct.block*]* @seglist, i64 0, i64 %129, !dbg !997
  %131 = load %struct.block*, %struct.block** %130, align 8, !dbg !997, !tbaa !76
  %132 = icmp eq %struct.block* %131, null, !dbg !997
  br i1 %132, label %133, label %136, !dbg !998

133:                                              ; preds = %128
  store %struct.block* %0, %struct.block** %130, align 8, !dbg !999, !tbaa !76
  %134 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 0, !dbg !1000
  %135 = bitcast %struct.block** %134 to i8*, !dbg !1001
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %135, i8 0, i64 16, i1 false) #5, !dbg !1002
  br label %284, !dbg !1001

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 1, !dbg !1003
  store %struct.block* %131, %struct.block** %137, align 8, !dbg !1004, !tbaa !464
  %138 = load %struct.block*, %struct.block** %130, align 8, !dbg !1005, !tbaa !76
  %139 = getelementptr inbounds %struct.block, %struct.block* %138, i64 0, i32 1, i32 0, i32 0, !dbg !1006
  store %struct.block* %0, %struct.block** %139, align 8, !dbg !1007, !tbaa !464
  %140 = getelementptr inbounds %struct.block, %struct.block* %0, i64 0, i32 1, i32 0, i32 0, !dbg !1008
  store %struct.block* null, %struct.block** %140, align 8, !dbg !1009, !tbaa !464
  store %struct.block* %0, %struct.block** %130, align 8, !dbg !1010, !tbaa !76
  br label %284

141:                                              ; preds = %74
  %142 = select i1 %75, i1 %12, i1 false, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !1012, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !1012, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !1020, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !1020, metadata !DIExpression()), !dbg !1025
  %143 = getelementptr inbounds i64, i64* %2, i64 -1, !dbg !1027
  call void @llvm.dbg.value(metadata i64* %143, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i64* %143, metadata !1015, metadata !DIExpression()), !dbg !1018
  %144 = load i64, i64* %143, align 8, !dbg !1027, !tbaa !256
  call void @llvm.dbg.value(metadata i64 %144, metadata !92, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %144, metadata !92, metadata !DIExpression()), !dbg !1031
  %145 = and i64 %144, -16, !dbg !1027
  %146 = icmp eq i64 %145, 0, !dbg !1027
  %147 = sub i64 0, %145, !dbg !1027
  %148 = getelementptr inbounds i8, i8* %5, i64 %147, !dbg !1027
  %149 = bitcast i8* %148 to %struct.block*, !dbg !1027
  %150 = select i1 %146, %struct.block* null, %struct.block* %149, !dbg !1027
  tail call fastcc void @remove_node(%struct.block* noundef %150), !dbg !1027
  br i1 %142, label %151, label %212, !dbg !1011

151:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !792, metadata !DIExpression()), !dbg !1033
  %152 = getelementptr %struct.block, %struct.block* %150, i64 0, i32 0, !dbg !1034
  %153 = load i64, i64* %152, align 8, !dbg !1034, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 %153, metadata !92, metadata !DIExpression()), !dbg !1037
  %154 = and i64 %153, -16, !dbg !1039
  %155 = add i64 %154, %6, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %155, metadata !785, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !284, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %155, metadata !289, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i1 false, metadata !290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1041
  call void @llvm.dbg.value(metadata i1 true, metadata !291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %155, metadata !242, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1043
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %155, metadata !249, metadata !DIExpression()), !dbg !1043
  %156 = or i64 %155, 2, !dbg !1045
  call void @llvm.dbg.value(metadata i64 %155, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !1043
  store i64 %156, i64* %152, align 8, !dbg !1046, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !300, metadata !DIExpression()), !dbg !1047
  %157 = getelementptr inbounds %struct.block, %struct.block* %150, i64 0, i32 1, !dbg !1049
  %158 = bitcast %union.anon* %157 to i8*, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i64 %155, metadata !92, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !1053
  %159 = getelementptr inbounds i8, i8* %158, i64 %155, !dbg !1055
  %160 = getelementptr inbounds i8, i8* %159, i64 -16, !dbg !1056
  %161 = bitcast i8* %160 to i64*, !dbg !1057
  call void @llvm.dbg.value(metadata i64* %161, metadata !292, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %155, metadata !242, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i1 false, metadata !247, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1059
  call void @llvm.dbg.value(metadata i1 true, metadata !248, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %155, metadata !249, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !1059
  store i64 %156, i64* %161, align 8, !dbg !1061, !tbaa !256
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !1062
  %162 = load i64, i64* %2, align 8, !dbg !1064, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i64 %162, metadata !92, metadata !DIExpression()), !dbg !1067
  %163 = and i64 %162, -16, !dbg !1069
  %164 = getelementptr inbounds i8, i8* %5, i64 %163, !dbg !1070
  %165 = bitcast i8* %164 to i64*, !dbg !1071
  %166 = load i64, i64* %165, align 8, !dbg !1071, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %166, metadata !92, metadata !DIExpression()), !dbg !1074
  %167 = and i64 %166, -16, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %167, metadata !795, metadata !DIExpression()), !dbg !1033
  %168 = or i64 %167, 1, !dbg !1077
  store i64 %168, i64* %165, align 8, !dbg !1078, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !782, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !633, metadata !DIExpression()) #5, !dbg !1080
  %169 = load i64, i64* %152, align 8, !dbg !1082, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()) #5, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %169, metadata !92, metadata !DIExpression()) #5, !dbg !1085
  %170 = and i64 %169, -16, !dbg !1087
  call void @llvm.dbg.value(metadata i64 %170, metadata !638, metadata !DIExpression()) #5, !dbg !1080
  call void @llvm.dbg.value(metadata i32 14, metadata !639, metadata !DIExpression()) #5, !dbg !1080
  call void @llvm.dbg.value(metadata i32 0, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 32, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %171 = icmp ult i64 %170, 32, !dbg !1089
  br i1 %171, label %199, label %172, !dbg !1090

172:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i32 1, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 64, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %173 = icmp ult i64 %170, 64, !dbg !1089
  br i1 %173, label %199, label %174, !dbg !1090

174:                                              ; preds = %172
  call void @llvm.dbg.value(metadata i32 2, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 128, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %175 = icmp ult i64 %170, 128, !dbg !1089
  br i1 %175, label %199, label %176, !dbg !1090

176:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i32 3, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 256, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %177 = icmp ult i64 %170, 256, !dbg !1089
  br i1 %177, label %199, label %178, !dbg !1090

178:                                              ; preds = %176
  call void @llvm.dbg.value(metadata i32 4, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 512, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %179 = icmp ult i64 %170, 512, !dbg !1089
  br i1 %179, label %199, label %180, !dbg !1090

180:                                              ; preds = %178
  call void @llvm.dbg.value(metadata i32 5, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 1024, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %181 = icmp ult i64 %170, 1024, !dbg !1089
  br i1 %181, label %199, label %182, !dbg !1090

182:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i32 6, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 2048, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %183 = icmp ult i64 %170, 2048, !dbg !1089
  br i1 %183, label %199, label %184, !dbg !1090

184:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i32 7, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 4096, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %185 = icmp ult i64 %170, 4096, !dbg !1089
  br i1 %185, label %199, label %186, !dbg !1090

186:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i32 8, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 8192, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %187 = icmp ult i64 %170, 8192, !dbg !1089
  br i1 %187, label %199, label %188, !dbg !1090

188:                                              ; preds = %186
  call void @llvm.dbg.value(metadata i32 9, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 16384, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %189 = icmp ult i64 %170, 16384, !dbg !1089
  br i1 %189, label %199, label %190, !dbg !1090

190:                                              ; preds = %188
  call void @llvm.dbg.value(metadata i32 10, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 32768, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %191 = icmp ult i64 %170, 32768, !dbg !1089
  br i1 %191, label %199, label %192, !dbg !1090

192:                                              ; preds = %190
  call void @llvm.dbg.value(metadata i32 11, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 65536, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %193 = icmp ult i64 %170, 65536, !dbg !1089
  br i1 %193, label %199, label %194, !dbg !1090

194:                                              ; preds = %192
  call void @llvm.dbg.value(metadata i32 12, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 131072, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %195 = icmp ult i64 %170, 131072, !dbg !1089
  br i1 %195, label %199, label %196, !dbg !1090

196:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 13, metadata !641, metadata !DIExpression()) #5, !dbg !1088
  call void @llvm.dbg.value(metadata i32 262144, metadata !640, metadata !DIExpression()) #5, !dbg !1080
  %197 = icmp ult i64 %170, 262144, !dbg !1089
  %198 = select i1 %197, i64 13, i64 14, !dbg !1090
  br label %199, !dbg !1090

199:                                              ; preds = %196, %194, %192, %190, %188, %186, %184, %182, %180, %178, %176, %174, %172, %151
  %200 = phi i64 [ 0, %151 ], [ 1, %172 ], [ 2, %174 ], [ 3, %176 ], [ 4, %178 ], [ 5, %180 ], [ 6, %182 ], [ 7, %184 ], [ 8, %186 ], [ 9, %188 ], [ 10, %190 ], [ 11, %192 ], [ 12, %194 ], [ %198, %196 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !639, metadata !DIExpression()) #5, !dbg !1080
  %201 = getelementptr inbounds [15 x %struct.block*], [15 x %struct.block*]* @seglist, i64 0, i64 %200, !dbg !1091
  %202 = load %struct.block*, %struct.block** %201, align 8, !dbg !1091, !tbaa !76
  %203 = icmp eq %struct.block* %202, null, !dbg !1091
  br i1 %203, label %204, label %207, !dbg !1092

204:                                              ; preds = %199
  store %struct.block* %150, %struct.block** %201, align 8, !dbg !1093, !tbaa !76
  %205 = getelementptr inbounds %struct.block, %struct.block* %150, i64 0, i32 1, i32 0, i32 0, !dbg !1094
  %206 = bitcast %struct.block** %205 to i8*, !dbg !1095
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %206, i8 0, i64 16, i1 false) #5, !dbg !1096
  br label %284, !dbg !1095

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.block, %struct.block* %150, i64 0, i32 1, i32 0, i32 1, !dbg !1097
  store %struct.block* %202, %struct.block** %208, align 8, !dbg !1098, !tbaa !464
  %209 = load %struct.block*, %struct.block** %201, align 8, !dbg !1099, !tbaa !76
  %210 = getelementptr inbounds %struct.block, %struct.block* %209, i64 0, i32 1, i32 0, i32 0, !dbg !1100
  store %struct.block* %150, %struct.block** %210, align 8, !dbg !1101, !tbaa !464
  %211 = getelementptr inbounds %struct.block, %struct.block* %150, i64 0, i32 1, i32 0, i32 0, !dbg !1102
  store %struct.block* null, %struct.block** %211, align 8, !dbg !1103, !tbaa !464
  store %struct.block* %150, %struct.block** %201, align 8, !dbg !1104, !tbaa !76
  br label %284

212:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %struct.block* %150, metadata !796, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !1106
  %213 = load i64, i64* %2, align 8, !dbg !1108, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %213, metadata !92, metadata !DIExpression()), !dbg !1111
  %214 = and i64 %213, -16, !dbg !1113
  %215 = getelementptr inbounds i8, i8* %5, i64 %214, !dbg !1114
  %216 = bitcast i8* %215 to %struct.block*, !dbg !1115
  tail call fastcc void @remove_node(%struct.block* noundef %216), !dbg !1116
  %217 = getelementptr %struct.block, %struct.block* %150, i64 0, i32 0, !dbg !1117
  %218 = load i64, i64* %217, align 8, !dbg !1117, !tbaa !82
  call void @llvm.dbg.value(metadata %struct.block* undef, metadata !85, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %218, metadata !92, metadata !DIExpression()), !dbg !1120
  %219 = and i64 %218, -16, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.block* %0, metadata !117, metadata !DIExpression()), !dbg !1123
  %220 = load i64, i64* %2, align 8, !dbg 