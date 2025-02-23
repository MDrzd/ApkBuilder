.class public Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;
.super Lorg/jf/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/StartLocal;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/DebugItemRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/StartLocal;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/debug/StartLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->this$0:Lorg/jf/dexlib2/rewriter/DebugItemRewriter;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;-><init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/DebugItem;)V

    return-void
.end method


# virtual methods
.method public getNameReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lorg/jf/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getNameReference()Lorg/jf/dexlib2/iface/reference/StringReference;

    move-result-object v0

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lorg/jf/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getRegister()I

    move-result v0

    return v0
.end method

.method public getSignatureReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lorg/jf/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getSignatureReference()Lorg/jf/dexlib2/iface/reference/StringReference;

    move-result-object v0

    return-object v0
.end method

.method public getTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->debugItem:Lorg/jf/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/StartLocal;->getTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;->this$0:Lorg/jf/dexlib2/rewriter/DebugItemRewriter;

    iget-object v1, v1, Lorg/jf/dexlib2/rewriter/DebugItemRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v1}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteTypeReference(Lorg/jf/dexlib2/rewriter/Rewriter;Lorg/jf/dexlib2/iface/reference/TypeReference;)Lorg/jf/dexlib2/iface/reference/TypeReference;

    move-result-object v0

    return-object v0
.end method
