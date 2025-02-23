.class public Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;
.super Lorg/jf/dexlib2/base/value/BaseEnumEncodedValue;


# instance fields
.field protected enumEncodedValue:Lorg/jf/dexlib2/iface/value/EnumEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field final synthetic this$0:Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/EnumEncodedValue;)V
    .registers 3
    .param p2    # Lorg/jf/dexlib2/iface/value/EnumEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;->this$0:Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/value/BaseEnumEncodedValue;-><init>()V

    iput-object p2, p0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;->enumEncodedValue:Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;->this$0:Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;

    iget-object v0, v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

    invoke-interface {v0}, Lorg/jf/dexlib2/rewriter/Rewriters;->getFieldReferenceRewriter()Lorg/jf/dexlib2/rewriter/Rewriter;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;->enumEncodedValue:Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-interface {v1}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/rewriter/Rewriter;->rewrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    return-object v0
.end method
