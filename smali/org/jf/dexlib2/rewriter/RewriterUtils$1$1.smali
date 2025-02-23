.class Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/RewriterUtils$1;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/rewriter/RewriterUtils$1;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->this$0:Lorg/jf/dexlib2/rewriter/RewriterUtils$1;

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->this$0:Lorg/jf/dexlib2/rewriter/RewriterUtils$1;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1;->val$rewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/RewriterUtils$1$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
