.class public abstract Lorg/jf/dexlib2/dexbacked/value/DexBackedEncodedValue;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 8
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v3

    and-int/lit8 v4, v3, 0x1f

    ushr-int/lit8 v3, v3, 0x5

    if-eqz v4, :cond_2

    const/4 v5, 0x6

    const/4 v6, 0x7

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    new-instance p0, Lorg/jf/util/ExceptionWithContext;

    const-string v3, "Invalid encoded_value type: 0x%x"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-direct {p0, v3, v5}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    invoke-static {v3, v2}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;->forBoolean(Z)Lorg/jf/dexlib2/immutable/value/ImmutableBooleanEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v3, v1}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    sget-object p0, Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;->INSTANCE:Lorg/jf/dexlib2/immutable/value/ImmutableNullEncodedValue;

    return-object p0

    :pswitch_2
    invoke-static {v3, v1}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v3, Lorg/jf/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    return-object v3

    :pswitch_3
    invoke-static {v3, v1}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v3, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    return-object v3

    :pswitch_4
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/dexbacked/value/DexBackedEnumEncodedValue;

    invoke-direct {v4, p0, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedEnumEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    :pswitch_5
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;

    invoke-direct {v4, p0, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedMethodEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    :pswitch_6
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;

    invoke-direct {v4, p0, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedFieldEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    :pswitch_7
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;

    invoke-direct {v4, p0, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedTypeEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    :pswitch_8
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/dexbacked/value/DexBackedStringEncodedValue;

    invoke-direct {v4, p0, v3}, Lorg/jf/dexlib2/dexbacked/value/DexBackedStringEncodedValue;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;I)V

    return-object v4

    :pswitch_9
    invoke-static {v3, v6}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedRightExtendedLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/jf/dexlib2/immutable/value/ImmutableDoubleEncodedValue;-><init>(D)V

    return-object v4

    :pswitch_a
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedRightExtendedInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-direct {v4, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableFloatEncodedValue;-><init>(F)V

    return-object v4

    :pswitch_b
    invoke-static {v3, v5}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p0

    invoke-direct {v4, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableIntEncodedValue;-><init>(I)V

    return-object v4

    :pswitch_c
    invoke-static {v3, v2}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedSmallUint(I)I

    move-result p0

    int-to-char p0, p0

    invoke-direct {v4, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableCharEncodedValue;-><init>(C)V

    return-object v4

    :pswitch_d
    invoke-static {v3, v2}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedInt(I)I

    move-result p0

    int-to-short p0, p0

    invoke-direct {v4, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableShortEncodedValue;-><init>(S)V

    return-object v4

    :cond_1
    invoke-static {v3, v6}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v4, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->readSizedLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lorg/jf/dexlib2/immutable/value/ImmutableLongEncodedValue;-><init>(J)V

    return-object v4

    :cond_2
    invoke-static {v3, v1}, Lorg/jf/dexlib2/util/Preconditions;->checkValueArg(II)V

    new-instance v3, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readByte()I

    move-result p0

    int-to-byte p0, p0

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/immutable/value/ImmutableByteEncodedValue;-><init>(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Error while reading encoded value at offset 0x%x"

    invoke-static {p0, v0, v2}, Lorg/jf/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jf/util/ExceptionWithContext;

    move-result-object p0

    throw p0

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

.method public static skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V
    .registers 7
    .param p0    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->readUbyte()I

    move-result v3

    and-int/lit8 v4, v3, 0x1f

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    new-instance p0, Lorg/jf/util/ExceptionWithContext;

    const-string v3, "Invalid encoded_value type: 0x%x"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-direct {p0, v3, v5}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedAnnotationEncodedValue;->skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lorg/jf/dexlib2/dexbacked/value/DexBackedArrayEncodedValue;->skipFrom(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    goto :goto_0

    :cond_0
    :pswitch_2
    ushr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/jf/dexlib2/dexbacked/DexReader;->moveRelative(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexReader;->skipByte()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :pswitch_3
    return-void

    :catch_0
    move-exception p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Error while skipping encoded value at offset 0x%x"

    invoke-static {p0, v0, v2}, Lorg/jf/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/jf/util/ExceptionWithContext;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
