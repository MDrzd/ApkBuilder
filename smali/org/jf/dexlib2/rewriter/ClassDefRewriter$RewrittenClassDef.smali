.class public Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# instance fields
.field protected classDef:Lorg/jf/dexlib2/iface/ClassDef;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/ClassDefRewriter;Lorg/jf/dexlib2/iface/ClassDef;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$1;-><init>(Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;)V

    return-object v0
.end method

.method public getInstanceFields()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteList(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef$2;-><init>(Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticFields()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualMethods()Ljava/lang/Iterable;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->this$0:Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getMethodRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter$RewrittenClassDef;->classDef:Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteIterable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
