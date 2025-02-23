.class public Lorg/jf/dexlib2/writer/builder/DexBuilder;
.super Lorg/jf/dexlib2/writer/DexWriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    return-void
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/dexlib2/iface/MethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internMethodParameter(Lorg/jf/dexlib2/iface/MethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internAnnotationElement(Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p0

    return-object p0
.end method

.method private internAnnotationElement(Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/AnnotationElement;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/AnnotationElement;->getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V

    return-object v0
.end method

.method private internAnnotationEncodedValue(Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;->getElements()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internAnnotationElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;Ljava/util/Set;)V

    return-object v0
.end method

.method private internArrayEncodedValue(Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lorg/jf/dexlib2/writer/builder/DexBuilder$3;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$3;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {p1, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unexpected encoded value type: %d"

    invoke-direct {v0, p1, v1}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    check-cast p1, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->TRUE_VALUE:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p1

    :cond_0
    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;->FALSE_VALUE:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderBooleanEncodedValue;

    return-object p1

    :pswitch_1
    sget-object p1, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderNullEncodedValue;

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internAnnotationEncodedValue(Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internArrayEncodedValue(Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internEnumEncodedValue(Lorg/jf/dexlib2/iface/value/EnumEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internMethodEncodedValue(Lorg/jf/dexlib2/iface/value/MethodEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_6
    check-cast p1, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internFieldEncodedValue(Lorg/jf/dexlib2/iface/value/FieldEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internTypeEncodedValue(Lorg/jf/dexlib2/iface/value/TypeEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Lorg/jf/dexlib2/iface/value/StringEncodedValue;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internStringEncodedValue(Lorg/jf/dexlib2/iface/value/StringEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    move-result-object p1

    return-object p1

    :pswitch_9
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderDoubleEncodedValue;-><init>(D)V

    return-object v0

    :pswitch_a
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFloatEncodedValue;-><init>(F)V

    return-object v0

    :pswitch_b
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderIntEncodedValue;-><init>(I)V

    return-object v0

    :pswitch_c
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderCharEncodedValue;-><init>(C)V

    return-object v0

    :pswitch_d
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderShortEncodedValue;-><init>(S)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderLongEncodedValue;-><init>(J)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;

    check-cast p1, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderByteEncodedValue;-><init>(B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internEnumEncodedValue(Lorg/jf/dexlib2/iface/value/EnumEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/EnumEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;->internField(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;)V

    return-object v0
.end method

.method private internFieldEncodedValue(Lorg/jf/dexlib2/iface/value/FieldEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/FieldEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/FieldReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;->internField(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;)V

    return-object v0
.end method

.method private internMethodEncodedValue(Lorg/jf/dexlib2/iface/value/MethodEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/MethodEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;->getValue()Lorg/jf/dexlib2/iface/reference/MethodReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;)V

    return-object v0
.end method

.method private internMethodParameter(Lorg/jf/dexlib2/iface/MethodParameter;)Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;
    .registers 6
    .param p1    # Lorg/jf/dexlib2/iface/MethodParameter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v2, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internNullableString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getAnnotations()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodParameter;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)V

    return-object v0
.end method

.method private internMethodParameters(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/jf/dexlib2/writer/builder/DexBuilder$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$1;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method private internStringEncodedValue(Lorg/jf/dexlib2/iface/value/StringEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/StringEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/StringEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)V

    return-object v0
.end method

.method private internTypeEncodedValue(Lorg/jf/dexlib2/iface/value/TypeEncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;
    .registers 4
    .param p1    # Lorg/jf/dexlib2/iface/value/TypeEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;)V

    return-object v0
.end method


# virtual methods
.method protected getSectionProvider()Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method internAnnotationElements(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .param p1    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/jf/dexlib2/writer/builder/DexBuilder$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$2;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public internClassDef(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/jf/dexlib2/writer/builder/BuilderClassDef;
    .registers 22
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    move-object v0, p0

    if-nez p4, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v1, p4

    :goto_1
    iget-object v2, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->classSection:Lorg/jf/dexlib2/writer/ClassSection;

    check-cast v2, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    new-instance v12, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget-object v3, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    move-object v4, p1

    invoke-virtual {v3, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v4

    iget-object v3, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internNullableType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object v6

    iget-object v3, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeListSection:Lorg/jf/dexlib2/writer/TypeListSection;

    check-cast v3, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;

    invoke-virtual {v3, v1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;->internTypeList(Ljava/util/List;)Lorg/jf/dexlib2/writer/builder/BuilderTypeList;

    move-result-object v7

    iget-object v1, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    move-object/from16 v3, p5

    invoke-virtual {v1, v3}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internNullableString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object v8

    iget-object v1, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    move-object/from16 v3, p6

    invoke-virtual {v1, v3}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v9

    move-object v3, v12

    move v5, p2

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;ILorg/jf/dexlib2/writer/builder/BuilderTypeReference;Lorg/jf/dexlib2/writer/builder/BuilderTypeList;Lorg/jf/dexlib2/writer/builder/BuilderStringReference;Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    invoke-virtual {v2, v12}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;->internClass(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    move-result-object v1

    return-object v1
.end method

.method public internField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jf/dexlib2/iface/value/EncodedValue;Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderField;
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderField;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v1, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;->internField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    invoke-virtual {p0, p5}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internNullableEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p2

    iget-object p3, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    check-cast p3, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    invoke-virtual {p3, p6}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object p3

    invoke-direct {v0, p1, p4, p2, p3}, Lorg/jf/dexlib2/writer/builder/BuilderField;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;ILorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;)V

    return-object v0
.end method

.method public internFieldReference(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->fieldSection:Lorg/jf/dexlib2/writer/FieldSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;->internField(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/util/Set;Lorg/jf/dexlib2/iface/MethodImplementation;)Lorg/jf/dexlib2/writer/builder/BuilderMethod;
    .registers 15
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    :cond_0
    new-instance v6, Lorg/jf/dexlib2/writer/builder/BuilderMethod;

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object v1

    invoke-direct {p0, p3}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internMethodParameters(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object p1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->annotationSetSection:Lorg/jf/dexlib2/writer/AnnotationSetSection;

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    invoke-virtual {p1, p6}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->internAnnotationSet(Ljava/util/Set;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;

    move-result-object v4

    move-object v0, v6

    move v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/writer/builder/BuilderMethod;-><init>(Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;Ljava/util/List;ILorg/jf/dexlib2/writer/builder/BuilderAnnotationSet;Lorg/jf/dexlib2/iface/MethodImplementation;)V

    return-object v6
.end method

.method public internMethodProtoReference(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodProtoReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->protoSection:Lorg/jf/dexlib2/writer/ProtoSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;->internMethodProto(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1
.end method

.method public internMethodReference(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->methodSection:Lorg/jf/dexlib2/writer/MethodSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;->internMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1
.end method

.method internNullableEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internEncodedValue(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    move-result-object p1

    return-object p1
.end method

.method public internNullableStringReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internStringReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public internNullableTypeReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internTypeReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public internReference(Lorg/jf/dexlib2/iface/reference/Reference;)Lorg/jf/dexlib2/writer/builder/BuilderReference;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/Reference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p1, Lorg/jf/dexlib2/iface/reference/StringReference;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internStringReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/jf/dexlib2/iface/reference/TypeReference;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internTypeReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/jf/dexlib2/iface/reference/MethodReference;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internMethodReference(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/jf/dexlib2/iface/reference/FieldReference;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internFieldReference(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/jf/dexlib2/iface/reference/MethodProtoReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->internMethodProtoReference(Lorg/jf/dexlib2/iface/reference/MethodProtoReference;)Lorg/jf/dexlib2/writer/builder/BuilderMethodProtoReference;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not determine type of reference"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public internStringReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->stringSection:Lorg/jf/dexlib2/writer/StringSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;->internString(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    move-result-object p1

    return-object p1
.end method

.method public internTypeReference(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->typeSection:Lorg/jf/dexlib2/writer/TypeSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;->internType(Ljava/lang/String;)Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V

    return-void
.end method

.method protected writeEncodedValue(Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p2}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p2}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEncodedValue;->getValueType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Unrecognized value type: %d"

    invoke-direct {p1, p2, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    check-cast p2, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;->getValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeBoolean(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeNull()V

    return-void

    :pswitch_2
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;

    iget-object v0, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;->typeReference:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderAnnotationEncodedValue;->elements:Ljava/util/Set;

    invoke-virtual {p1, v0, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeAnnotation(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    :pswitch_3
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderArrayEncodedValue;->elements:Ljava/util/List;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeArray(Ljava/util/Collection;)V

    return-void

    :pswitch_4
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;

    invoke-virtual {p2}, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderEnumEncodedValue;->getValue()Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeEnum(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_5
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderMethodEncodedValue;->methodReference:Lorg/jf/dexlib2/writer/builder/BuilderMethodReference;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeMethod(Lorg/jf/dexlib2/iface/reference/MethodReference;)V

    return-void

    :pswitch_6
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderFieldEncodedValue;->fieldReference:Lorg/jf/dexlib2/writer/builder/BuilderFieldReference;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeField(Lorg/jf/dexlib2/iface/reference/FieldReference;)V

    return-void

    :pswitch_7
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderTypeEncodedValue;->typeReference:Lorg/jf/dexlib2/writer/builder/BuilderTypeReference;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeType(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;

    iget-object p2, p2, Lorg/jf/dexlib2/writer/builder/BuilderEncodedValues$BuilderStringEncodedValue;->stringReference:Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeString(Ljava/lang/Object;)V

    return-void

    :pswitch_9
    check-cast p2, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeDouble(D)V

    return-void

    :pswitch_a
    check-cast p2, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;->getValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeFloat(F)V

    return-void

    :pswitch_b
    check-cast p2, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/IntEncodedValue;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeInt(I)V

    return-void

    :pswitch_c
    check-cast p2, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/CharEncodedValue;->getValue()C

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeChar(C)V

    return-void

    :pswitch_d
    check-cast p2, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;->getValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeShort(I)V

    return-void

    :cond_0
    check-cast p2, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/LongEncodedValue;->getValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeLong(J)V

    return-void

    :cond_1
    check-cast p2, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;->getValue()B

    move-result p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/writer/DexWriter$InternalEncodedValueWriter;->writeByte(B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
