.class Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/immutable/ImmutableClassDef;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;->this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;->this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;->this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;->this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;->this$0:Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
