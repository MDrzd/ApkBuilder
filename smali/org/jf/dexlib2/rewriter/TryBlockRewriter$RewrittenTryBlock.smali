.class public Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;
.super Lorg/jf/dexlib2/base/BaseTryBlock;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/TryBlockRewriter;

.field protected tryBlock:Lorg/jf/dexlib2/iface/TryBlock;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/TryBlockRewriter;Lorg/jf/dexlib2/iface/TryBlock;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/TryBlock;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->this$0:Lorg/jf/dexlib2/rewriter/TryBlockRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseTryBlock;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lorg/jf/dexlib2/iface/TryBlock;

    return-void
.end method


# virtual methods
.method public getCodeUnitCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/TryBlock;->getCodeUnitCount()I

    move-result v0

    return v0
.end method

.method public getExceptionHandlers()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->this$0:Lorg/jf/dexlib2/rewriter/TryBlockRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getExceptionHandlerRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/TryBlock;->getExceptionHandlers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteList(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartCodeAddress()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter$RewrittenTryBlock;->tryBlock:Lorg/jf/dexlib2/iface/TryBlock;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/TryBlock;->getStartCodeAddress()I

    move-result v0

    return v0
.end method
