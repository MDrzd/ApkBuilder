.class public Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;
.super Ljava/lang/Object;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultValueForType(Ljava/lang/String;)Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    const-string p0, "Unrecognized type: %s"

    invoke-direct {v1, p0, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_0
    sget-object p0, Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->FALSE_VALUE:Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    return-object p0

    :sswitch_1
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object p0

    :sswitch_2
    sget-object p0, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    :sswitch_3
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object p0

    :sswitch_4
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;-><init>(I)V

    return-object p0

    :sswitch_5
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object p0

    :sswitch_6
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object p0

    :sswitch_7
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object p0

    :sswitch_8
    new-instance p0, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method public static immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/value/EncodedValue;->getValueType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->of(Lorg/jf/dexlib2/iface/value/BooleanEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    :pswitch_2
    check-cast p0, Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;->of(Lorg/jf/dexlib2/iface/value/AnnotationEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableAnnotationEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;->of(Lorg/jf/dexlib2/iface/value/ArrayEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableArrayEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lorg/jf/dexlib2/iface/value/EnumEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableEnumEncodedValue;->of(Lorg/jf/dexlib2/iface/value/EnumEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEnumEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lorg/jf/dexlib2/iface/value/MethodEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;->of(Lorg/jf/dexlib2/iface/value/MethodEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableMethodEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lorg/jf/dexlib2/iface/value/FieldEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;->of(Lorg/jf/dexlib2/iface/value/FieldEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableFieldEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lorg/jf/dexlib2/iface/value/TypeEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableTypeEncodedValue;->of(Lorg/jf/dexlib2/iface/value/TypeEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableTypeEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Lorg/jf/dexlib2/iface/value/StringEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;->of(Lorg/jf/dexlib2/iface/value/StringEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableStringEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;->of(Lorg/jf/dexlib2/iface/value/DoubleEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p0, Lorg/jf/dexlib2/iface/value/FloatEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;->of(Lorg/jf/dexlib2/iface/value/FloatEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lorg/jf/dexlib2/iface/value/IntEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;->of(Lorg/jf/dexlib2/iface/value/IntEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lorg/jf/dexlib2/iface/value/CharEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;->of(Lorg/jf/dexlib2/iface/value/CharEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lorg/jf/dexlib2/iface/value/ShortEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;->of(Lorg/jf/dexlib2/iface/value/ShortEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/jf/dexlib2/iface/value/LongEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;->of(Lorg/jf/dexlib2/iface/value/LongEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lorg/jf/dexlib2/iface/value/ByteEncodedValue;

    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;->of(Lorg/jf/dexlib2/iface/value/ByteEncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    move-result-object p0

    return-object p0

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

.method public static ofNullable(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
    .registers 1
    .param p0    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->of(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p0

    return-object p0
.end method
