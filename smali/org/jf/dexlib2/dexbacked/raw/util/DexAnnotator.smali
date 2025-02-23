.class public Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
.super Lorg/jf/dexlib2/util/AnnotatedBytes;


# static fields
.field private static final sectionAnnotationOrder:Ljava/util/Map;


# instance fields
.field private final annotators:Ljava/util/Map;

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    const/16 v0, 0x12

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1000
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x2000
        0x2001
        0x2003
        0x1001
        0x1002
        0x1003
        0x2002
        0x2004
        0x2005
        0x2006
    .end array-data
.end method

.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;I)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;-><init>(I)V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getMapItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Ljava/lang/RuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Unrecognized item type: 0x%x"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/EncodedArrayItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/DebugInfoItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/StringDataItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/CodeItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/ClassDataItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationSetRefList;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/TypeListItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/ClassDefItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/MethodIdItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_d
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/FieldIdItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/ProtoIdItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_f
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/TypeIdItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_10
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/StringIdItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    goto :goto_1

    :pswitch_11
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/jf/dexlib2/dexbacked/raw/HeaderItem;->makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    move-result-object p2

    :goto_1
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->sectionAnnotationOrder:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getAnnotator(I)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    return-object p1
.end method

.method public writeAnnotations(Ljava/io/Writer;)V
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->getMapItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator$1;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;)V

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/raw/MapItem;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->annotators:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;

    invoke-virtual {v1, p0}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {v0, p1, p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->writeAnnotations(Ljava/io/Writer;Lorg/jf/dexlib2/util/AnnotatedBytes;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {v1, p1, p0}, Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;->writeAnnotations(Ljava/io/Writer;Lorg/jf/dexlib2/util/AnnotatedBytes;)V

    throw v0
.end method
