.class public abstract Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;
.super Ljava/lang/Object;


# instance fields
.field public final annotator:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final itemCount:I

.field private itemIdentities:Ljava/util/Map;

.field public final itemType:I

.field public final sectionOffset:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotator:Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;

    iget-object p1, p1, Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->dexFile:Lorg/jf/dexlib2/dexbacked/raw/RawDexFile;

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getType()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemType:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getOffset()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->sectionOffset:I

    invoke-virtual {p2}, Lorg/jf/dexlib2/dexbacked/raw/MapItem;->getItemCount()I

    move-result p1

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemCount:I

    return-void
.end method

.method private getItemIdentity(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected abstract annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public annotateSection(Lorg/jf/dexlib2/util/AnnotatedBytes;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->sectionOffset:I

    invoke-virtual {p1, v0}, Lorg/jf/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemCount:I

    invoke-virtual {p0, p1, v0}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateSectionInner(Lorg/jf/dexlib2/util/AnnotatedBytes;I)V

    return-void
.end method

.method protected annotateSectionInner(Lorg/jf/dexlib2/util/AnnotatedBytes;I)V
    .registers 13
    .param p1    # Lorg/jf/dexlib2/util/AnnotatedBytes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->getItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->getItemAlignment()I

    move-result v1

    if-lez p2, :cond_1

    const-string v2, ""

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "-----------------------------"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v2, v4}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "%s section"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {p1, v3, v2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "-----------------------------"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v2, ""

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v2, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-static {v5, v1}, Lorg/jf/util/AlignmentUtils;->alignOffset(II)I

    move-result v5

    invoke-virtual {p1, v5}, Lorg/jf/dexlib2/util/AnnotatedBytes;->moveTo(I)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->getCursor()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->getItemIdentity(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    const-string v7, "[%d] %s: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v0, v8, v4

    aput-object v5, v8, v6

    invoke-virtual {p1, v3, v7, v8}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v7, "[%d] %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    aput-object v0, v6, v4

    invoke-virtual {p1, v3, v7, v6}, Lorg/jf/dexlib2/util/AnnotatedBytes;->annotate(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->indent()V

    invoke-virtual {p0, p1, v2, v5}, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->annotateItem(Lorg/jf/dexlib2/util/AnnotatedBytes;ILjava/lang/String;)V

    invoke-virtual {p1}, Lorg/jf/dexlib2/util/AnnotatedBytes;->deindent()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getItemAlignment()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getItemName()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public setItemIdentity(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;->itemIdentities:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
