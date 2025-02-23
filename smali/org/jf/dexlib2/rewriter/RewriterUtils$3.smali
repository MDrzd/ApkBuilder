.class final Lorg/jf/dexlib2/rewriter/RewriterUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$rewriter:Lorg/jf/dexlib2/rewriter/Rewriter;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lorg/jf/dexlib2/rewriter/Rewriter;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$3;->val$iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$3;->val$rewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$3;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/rewriter/RewriterUtils$3$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/rewriter/RewriterUtils$3$1;-><init>(Lorg/jf/dexlib2/rewriter/RewriterUtils$3;Ljava/util/Iterator;)V

    return-object v1
.end method
