.class public Lorg/jf/dexlib2/rewriter/DexRewriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/rewriter/Rewriters;


# instance fields
.field private final annotationElementRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final annotationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final classDefRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final debugItemRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final encodedValueRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final exceptionHandlerRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final fieldReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final fieldRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final instructionRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final methodImplementationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final methodParameterRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final methodReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final methodRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final tryBlockRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

.field private final typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/RewriterModule;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getClassDefRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->classDefRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getFieldRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->fieldRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getMethodRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getMethodParameterRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodParameterRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getMethodImplementationRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodImplementationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getInstructionRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->instructionRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getTryBlockRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->tryBlockRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getExceptionHandlerRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->exceptionHandlerRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getDebugItemRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->debugItemRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getTypeRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getFieldReferenceRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->fieldReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getMethodReferenceRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getAnnotationRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->annotationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getAnnotationElementRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->annotationElementRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    invoke-virtual {p1, p0}, Lorg/jf/dexlib2/rewriter/RewriterModule;->getEncodedValueRewriter(Lorg/jf/dexlib2/rewriter/Rewriters;)Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->encodedValueRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-void
.end method


# virtual methods
.method public getAnnotationElementRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->annotationElementRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getAnnotationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->annotationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getClassDefRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->classDefRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getDebugItemRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->debugItemRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getEncodedValueRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->encodedValueRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getExceptionHandlerRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->exceptionHandlerRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->fieldReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getFieldRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->fieldRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getInstructionRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->instructionRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodImplementationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodImplementationRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodParameterRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodParameterRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodReferenceRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getMethodRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->methodRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getTryBlockRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->tryBlockRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/DexRewriter;->typeRewriter:Lorg/jf/dexlib2/rewriter/Rewriter;

    return-object v0
.end method

.method public rewriteDexFile(Lorg/jf/dexlib2/iface/DexFile;)Lorg/jf/dexlib2/iface/DexFile;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/DexFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/DexRewriter$RewrittenDexFile;-><init>(Lorg/jf/dexlib2/rewriter/DexRewriter;Lorg/jf/dexlib2/iface/DexFile;)V

    return-object v0
.end method
