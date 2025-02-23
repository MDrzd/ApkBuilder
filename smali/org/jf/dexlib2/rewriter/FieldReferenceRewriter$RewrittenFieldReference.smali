.class public Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;


# instance fields
.field protected fieldReference:Lorg/jf/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;Lorg/jf/dexlib2/iface/reference/FieldReference;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lorg/jf/dexlib2/iface/reference/FieldReference;

    return-void
.end method


# virtual methods
.method public getDefiningClass()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->this$0:Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getTypeRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldReferenceRewriter$RewrittenFieldReference;->fieldReference:Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
