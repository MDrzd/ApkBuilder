.class Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/pool/PoolClassDef;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;->this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;->this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;->this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;->this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/PoolClassDef$2;->this$0:Lorg/jf/dexlib2/writer/pool/PoolClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/pool/PoolClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
