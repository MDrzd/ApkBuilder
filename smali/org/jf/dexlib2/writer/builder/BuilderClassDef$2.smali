.class Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

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

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->directMethods:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef$2;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget-object v1, v1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->virtualMethods:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
