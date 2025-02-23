.class public Lorg/jf/dexlib2/util/AnnotatedBytes;
.super Ljava/lang/Object;


# instance fields
.field private annotatations:Ljava/util/TreeMap;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private cursor:I

.field private endLimit:I

.field private hexCols:I

.field private indentLevel:I

.field private outputWidth:I

.field private startLimit:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    const/16 v0, 0x8

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->startLimit:I

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->endLimit:I

    iput p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->outputWidth:I

    return-void
.end method

.method private formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v3, "[0x%x, 0x%x) \"%s\""

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "[0x%x, ) \"%s\""

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatAnnotation(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, p1, v0, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs annotate(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->startLimit:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->endLimit:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->startLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->endLimit:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Annotating outside the parent bounds"

    invoke-direct {p1, p3, p2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget p3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p3, p1

    iget-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_4

    iget-object v4, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v5, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    iget-object v5, v5, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v6, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v3, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, v5, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Cannot add annotation %s, due to existing annotation %s"

    invoke-direct {p3, p1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_4
    if-lez p1, :cond_6

    iget-object v4, v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p3, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v5, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v3, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget-object p2, v4, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Cannot add annotation %s, due to existing annotation %s"

    invoke-direct {p3, p1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_6
    :goto_1
    const/4 v4, 0x0

    if-lez p1, :cond_a

    iget-object v5, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v6, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, p3, :cond_9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    iget-object v0, p3, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v0, :cond_8

    iget-object v0, p3, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v5, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v4, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p3, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget-object p2, p2, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-direct {p0, v6, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Cannot add annotation %s, due to existing annotation %s"

    invoke-direct {v0, p1, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    new-instance p3, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v4, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v3, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Cannot add annotation %s, due to existing annotation endpoint at %d"

    invoke-direct {p3, p1, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_8
    new-instance p3, Lorg/jf/util/ExceptionWithContext;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    iget v5, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v4, p1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    iget-object p1, v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->formatAnnotation(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Cannot add annotation %s, due to existing annotation %s"

    invoke-direct {p3, p1, v3}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3

    :cond_9
    if-ne v6, p3, :cond_a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    goto :goto_2

    :cond_a
    move-object v1, v4

    :goto_2
    if-nez v0, :cond_b

    new-instance v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    invoke-direct {v0, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>(Lorg/jf/dexlib2/util/AnnotatedBytes$1;)V

    iget-object v2, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    iget v3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-nez p1, :cond_c

    iget-object p3, v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    new-instance v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    invoke-direct {v0, v1, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    new-instance v2, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget v3, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    invoke-direct {v2, v3, p2}, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;-><init>(ILjava/lang/String;)V

    iput-object v2, v0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-nez v1, :cond_d

    new-instance p2, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    invoke-direct {p2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>(Lorg/jf/dexlib2/util/AnnotatedBytes$1;)V

    iget-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_3
    iget p2, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public varargs annotateTo(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clearLimit()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->startLimit:I

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->endLimit:I

    return-void
.end method

.method public deindent()V
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    :cond_0
    return-void
.end method

.method public getAnnotationWidth()I
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->hexCols:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->hexCols:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->outputWidth:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getCursor()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    return v0
.end method

.method public indent()V
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->indentLevel:I

    return-void
.end method

.method public moveBy(I)V
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public moveTo(I)V
    .registers 2

    iput p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->cursor:I

    return-void
.end method

.method public setLimit(II)V
    .registers 3

    iput p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->startLimit:I

    iput p2, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->endLimit:I

    return-void
.end method

.method public writeAnnotations(Ljava/io/Writer;[B)V
    .registers 16

    invoke-virtual {p0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getAnnotationWidth()I

    move-result v0

    iget v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->outputWidth:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string v2, " "

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/jf/util/TwoColumnOutput;

    const-string v4, "|"

    invoke-direct {v3, p1, v1, v0, v4}, Lorg/jf/util/TwoColumnOutput;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    iget-object p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    iget-object v1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotatations:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v5, v4, 0x1

    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v0, v4

    iget-object v7, v4, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    iget v10, v8, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->indentLevel:I

    shl-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v11, v8}, Lorg/jf/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    if-eqz v4, :cond_1

    iget v7, v4, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->indentLevel:I

    shl-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const-string v4, ""

    :goto_2
    sub-int v8, v6, v9

    iget v10, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v11, 0x6

    move-object v6, p2

    move v7, v9

    invoke-static/range {v6 .. v11}, Lorg/jf/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lorg/jf/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    array-length p1, p2

    if-ge v7, p1, :cond_3

    array-length p1, p2

    sub-int v6, p1, v7

    iget v8, p0, Lorg/jf/dexlib2/util/AnnotatedBytes;->hexCols:I

    const/4 v9, 0x6

    move-object v4, p2

    move v5, v7

    invoke-static/range {v4 .. v9}, Lorg/jf/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {v3, p1, p2}, Lorg/jf/util/TwoColumnOutput;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
