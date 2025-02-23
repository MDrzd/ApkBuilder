.class Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

.field final synthetic val$lastIndex:I

.field final synthetic val$sortedStaticFields:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassPool;Ljava/util/SortedSet;I)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->val$sortedStaticFields:Ljava/util/SortedSet;

    iput p3, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->val$lastIndex:I

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->val$sortedStaticFields:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->val$lastIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->limit(I)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;->access$000()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$4;->val$lastIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
