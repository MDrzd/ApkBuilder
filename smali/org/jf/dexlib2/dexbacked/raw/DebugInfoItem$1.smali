.class final Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;
.super Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-void
.end method


# virtual methods
.method public final annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->readerAt(I)Lorg/jf/dexlib2/dexbacked/DexReader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result p3

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const-string v1, "line_start = %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v1, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "parameters_size = %d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    if-lez v0, :cond_1

    const-string v1, "parameters:"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v1, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v6, "%s"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v8, v3, v2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;IZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-virtual {p1, v4, v6, v7}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    :cond_1
    const-string v0, "debug opcodes:"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v0, v1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    move v0, p3

    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v1, v1, -0xa

    div-int/lit8 v4, v1, 0xf

    rem-int/lit8 v1, v1, 0xf

    const/4 v6, 0x4

    sub-int/2addr v1, v6

    add-int/2addr p3, v4

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v7

    const-string v8, "address_diff = +0x%x:0x%x, line_diff = +%d:%d, "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {p1, v7, v8, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_SET_FILE"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "name_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_SET_EPILOGUE_BEGIN"

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_SET_PROLOGUE_END"

    :goto_2
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_RESTART_LOCAL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "register_num = v%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_END_LOCAL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "register_num = v%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_START_LOCAL_EXTENDED"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "register_num = v%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "name_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1, v2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;IZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "type_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "sig_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1, v2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;IZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    goto :goto_3

    :pswitch_6
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v3, "DBG_START_LOCAL"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "register_num = v%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "name_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1, v2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;IZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v3

    const-string v4, "type_idx = %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem$1;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-static {v7, v1}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->getOptionalReferenceAnnotation(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    :goto_3
    invoke-virtual {p1, v3, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_7
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v4, "DBG_ADVANCE_LINE"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSleb128()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v6, "line_diff = +%d: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    goto :goto_4

    :pswitch_8
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v1

    const-string v4, "DBG_ADVANCE_PC"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v4, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSmallUleb128()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v4

    const-string v6, "addr_diff = +0x%x: 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    :goto_4
    invoke-virtual {p1, v4, v6, v3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p2

    const-string p3, "DBG_END_SEQUENCE"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "debug_info_item"

    return-object v0
.end method
