.class public Lorg/jf/dexlib2/rewriter/RewriterModule;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotationElementRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/AnnotationElementRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/AnnotationElementRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getAnnotationRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/AnnotationRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/AnnotationRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getClassDefRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/ClassDefRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getDebugItemRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/DebugItemRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/DebugItemRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getEncodedValueRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getExceptionHandlerRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/ExceptionHandlerRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getFieldReferenceRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getFieldRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/FieldRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getInstructionRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/InstructionRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/InstructionRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodImplementationRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/MethodImplementationRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodParameterRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/MethodParameterRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodReferenceRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/MethodReferenceRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getMethodRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/MethodRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/MethodRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getTryBlockRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/TryBlockRewriter;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/rewriter/TryBlockRewriter;-><init>(Lorg/jf/dexlib2/rewriter/Rewriters;)V

    return-object v0
.end method

.method public getTypeRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/rewriter/Rewriters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance p1, Lorg/jf/dexlib2/rewriter/TypeRewriter;

    invoke-direct {p1}, Lorg/jf/dexlib2/rewriter/TypeRewriter;-><init>()V

    return-object p1
.end method
