.class Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;
.super Ljava/lang/Object;


# instance fields
.field elements:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v2, p1, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    iget-object p1, p1, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->elementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/DexWriter$EncodedArrayKey;->elements:Ljava/util/Collection;

    invoke-static {v0}, Lorg/jf/util/CollectionUtils;->listHashCode(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method
