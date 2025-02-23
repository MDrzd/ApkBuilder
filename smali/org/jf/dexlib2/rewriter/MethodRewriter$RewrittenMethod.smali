.class public Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Method;


# instance fields
.field protected method:Lorg/jf/dexlib2/iface/Method;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/MethodRewriter;Lorg/jf/dexlib2/iface/Method;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodImplementationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/MethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterTypes()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodParameterRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteList(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->this$0:Lorg/jf/dexlib2/rewriter/MethodRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/MethodRewriter$RewrittenMethod;->method:Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
