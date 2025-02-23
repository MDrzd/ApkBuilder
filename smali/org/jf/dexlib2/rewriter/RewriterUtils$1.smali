.class final Lorg/jf/dexlib2/rewriter/RewriterUtils$1;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic val$rewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field final synthetic val$set:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/jf/dexlib2/rewriter/Rewriter;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;->val$rewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;-><init>(Lorg/jf/dexlib2/rewriter/RewriterUtils$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;->val$set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
