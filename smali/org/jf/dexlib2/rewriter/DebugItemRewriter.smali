.class public Lorg/jf/dexlib2/rewriter/DebugItemRewriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/rewriter/Rewriter;


# instance fields
.field protected final rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    return-void
.end method


# virtual methods
.method public bridge synthetic rewrite(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/debug/DebugItem;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter;->rewrite(Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/dexlib2/iface/debug/DebugItem;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Lorg/jf/dexlib2/iface/debug/DebugItem;)Lorg/jf/dexlib2/iface/debug/DebugItem;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/debug/DebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/debug/DebugItem;->getDebugItemType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    new-instance v0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenRestartLocal;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/RestartLocal;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenRestartLocal;-><init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/RestartLocal;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/EndLocal;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;-><init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/EndLocal;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;

    check-cast p1, Lorg/jf/dexlib2/iface/debug/StartLocal;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenStartLocal;-><init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/StartLocal;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
