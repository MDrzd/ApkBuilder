.class public Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Field;


# instance fields
.field protected field:Lorg/jf/dexlib2/iface/Field;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/FieldRewriter;Lorg/jf/dexlib2/iface/Field;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/Field;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/Field;->getAccessFlags()I

    move-result v0

    return v0
.end method

.method public getAnnotations()Ljava/util/Set;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getAnnotationRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteSet(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getEncodedValueRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/Field;->getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/rewriter/RewriterUtils;->rewriteNullable(Lorg/jf/dexlib2/rewriter/Rewriter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/value/EncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->this$0:Lorg/jf/dexlib2/rewriter/FieldRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/FieldRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/FieldRewriter$RewrittenField;->field:Lorg/jf/dexlib2/iface/Field;

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
