.class public Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/MethodImplementation;


# instance fields
.field protected methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;Lorg/jf/dexlib2/iface/MethodImplementation;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    return-void
.end method


# virtual methods
.method public getDebugItems()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getDebugItemRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getDebugItems()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getInstructionRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getRegisterCount()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodImplementation;->getRegisterCount()I

    move-result v0

    return v0
.end method

.method public getTryBlocks()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->this$0:Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTryBlockRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;->methodImplementation:Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodImplementation;->getTryBlocks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteList(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
