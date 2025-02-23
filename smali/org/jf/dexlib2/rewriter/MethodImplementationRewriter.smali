.class public Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;
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

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

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

    check-cast p1, Lorg/jf/dexlib2/iface/MethodImplementation;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;->rewrite(Lorg/jf/dexlib2/iface/MethodImplementation;)Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Lorg/jf/dexlib2/iface/MethodImplementation;)Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter$RewrittenMethodImplementation;-><init>(Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;Lorg/jf/dexlib2/iface/MethodImplementation;)V

    return-object v0
.end method
