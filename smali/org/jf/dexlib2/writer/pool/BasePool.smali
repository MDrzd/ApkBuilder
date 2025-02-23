.class public Lorg/jf/dexlib2/writer/pool/BasePool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/writer/pool/Markable;


# instance fields
.field protected final dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final internedItems:Ljava/util/Map;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private markedItemCount:I


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/pool/DexPool;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->markedItemCount:I

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->dexPool:Lorg/jf/dexlib2/writer/pool/DexPool;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public mark()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->markedItemCount:I

    return-void
.end method

.method public reset()V
    .registers 4

    iget v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->markedItemCount:I

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->markedItemCount:I

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->internedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/jf/dexlib2/writer/pool/BasePool;->markedItemCount:I

    if-ge v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark() must be called before calling reset()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
