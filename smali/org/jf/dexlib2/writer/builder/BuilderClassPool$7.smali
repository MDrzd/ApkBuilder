.class Lorg/jf/dexlib2/writer/builder/BuilderClassPool$7;
.super Lorg/jf/util/AbstractForwardSequentialList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

.field final synthetic val$parameters:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassPool;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$7;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$7;->val$parameters:Ljava/util/List;

    invoke-direct {p0}, Lorg/jf/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$7;->val$parameters:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;->access$100()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->transform(Lcom/google/common/base/Function;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$7;->val$parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
