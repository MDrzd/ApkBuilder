.class Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;->this$1:Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;->this$1:Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;

    invoke-virtual {v0}, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;->this$1:Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;

    invoke-virtual {v1}, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
