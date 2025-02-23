.class public Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;
.super Lorg/jf/dexlib2/base/BaseMethodParameter;


# instance fields
.field protected methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;Lorg/jf/dexlib2/iface/MethodParameter;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/MethodParameter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/MethodParameter;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->this$0:Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter$RewrittenMethodParameter;->methodParameter:Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
