.class public Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;
.super Lorg/jf/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/EndLocal;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/DebugItemRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/EndLocal;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/debug/EndLocal;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;->this$0:Lorg/jf/dexlib2/rewriter/DebugItemRewriter;

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$BaseRewrittenLocalInfoDebugItem;-><init>(Lorg/jf/dexlib2/rewriter/DebugItemRewriter;Lorg/jf/dexlib2/iface/debug/DebugItem;)V

    return-void
.end method


# virtual methods
.method public getRegister()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter$RewrittenEndLocal;->debugItem:Lorg/jf/dexlib2/iface/debug/DebugItem;

    check-cast v0, Lorg/jf/dexlib2/iface/debug/EndLocal;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/debug/EndLocal;->getRegister()I

    move-result v0

    return v0
.end method
