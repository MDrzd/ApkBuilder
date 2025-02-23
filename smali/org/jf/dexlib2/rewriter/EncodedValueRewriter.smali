.class public Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;
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

    iput-object p1, p0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;->rewriters:Lorg/jf/dexlib2/rewriter/Rewriters;

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

    check-cast p1, Lorg/jf/dexlib2/iface/value/EncodedValue;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;->rewrite(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenAnnotationEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenArrayEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenEnumEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/EnumEncodedValue;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenMethodEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/MethodEncodedValue;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenFieldEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/FieldEncodedValue;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/rewriter/EncodedValueRewriter$RewrittenTypeEncodedValue;-><init>(Lorg/jf/dexlib2/rewriter/EncodedValueRewriter;Lorg/jf/dexlib2/iface/value/TypeEncodedValue;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
