.class public final Lorg/jf/util/Utf8Utils;
.super Ljava/lang/Object;


# static fields
.field private static final localBuffer:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/util/Utf8Utils$1;

    invoke-direct {v0}, Lorg/jf/util/Utf8Utils$1;-><init>()V

    sput-object v0, Lorg/jf/util/Utf8Utils;->localBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_0

    if-ge v5, v6, :cond_0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v7, 0x800

    if-ge v5, v7, :cond_1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    add-int/lit8 v7, v4, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    add-int/lit8 v4, v4, 0x3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v4, [B

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad utf-8 byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/jf/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jf/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static utf8BytesToString([BII)Ljava/lang/String;
    .registers 12

    sget-object v0, Lorg/jf/util/Utf8Utils;->localBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p2, :cond_1

    :cond_0
    new-array v0, p2, [C

    sget-object v1, Lorg/jf/util/Utf8Utils;->localBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez p2, :cond_a

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v3, 0x4

    packed-switch v4, :pswitch_data_0

    const/16 v5, 0x80

    packed-switch v4, :pswitch_data_1

    invoke-static {v3, p1}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    add-int/lit8 p2, p2, -0x3

    if-gez p2, :cond_2

    invoke-static {v3, p1}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v4, p1, 0x1

    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v5, :cond_3

    invoke-static {v6, v4}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v4, p1, 0x2

    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v5, :cond_4

    invoke-static {v7, v4}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v5, v6, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    and-int/lit8 v5, v7, 0x3f

    or-int/2addr v3, v5

    const/16 v5, 0x800

    if-ge v3, v5, :cond_5

    invoke-static {v7, v4}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    int-to-char v3, v3

    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :pswitch_1
    add-int/lit8 p2, p2, -0x2

    if-gez p2, :cond_6

    invoke-static {v3, p1}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    add-int/lit8 v4, p1, 0x1

    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v5, :cond_7

    invoke-static {v6, v4}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v3, v7

    if-eqz v3, :cond_8

    if-ge v3, v5, :cond_8

    invoke-static {v6, v4}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    int-to-char v3, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :pswitch_2
    add-int/lit8 p2, p2, -0x1

    if-nez v3, :cond_9

    invoke-static {v3, p1}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    int-to-char v3, v3

    add-int/lit8 p1, p1, 0x1

    :goto_1
    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static utf8BytesWithUtf16LengthToString([BII)Ljava/lang/String;
    .registers 4
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jf/util/Utf8Utils;->utf8BytesWithUtf16LengthToString([BII[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8BytesWithUtf16LengthToString([BII[I)Ljava/lang/String;
    .registers 14
    .param p0    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lorg/jf/util/Utf8Utils;->localBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p2, :cond_1

    :cond_0
    new-array v0, p2, [C

    sget-object v1, Lorg/jf/util/Utf8Utils;->localBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lez p2, :cond_8

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v4, 0x4

    packed-switch v5, :pswitch_data_0

    const/16 v6, 0x80

    packed-switch v5, :pswitch_data_1

    invoke-static {v4, v2}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    add-int/lit8 v5, v2, 0x1

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v6, :cond_2

    invoke-static {v7, v5}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v2, 0x2

    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v8, 0xc0

    if-eq v9, v6, :cond_3

    invoke-static {v8, v5}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v6, v7, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v4, v6

    const/16 v6, 0x800

    if-ge v4, v6, :cond_4

    invoke-static {v8, v5}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    int-to-char v4, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :pswitch_1
    add-int/lit8 v5, v2, 0x1

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v6, :cond_5

    invoke-static {v7, v5}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v8, v7, 0x3f

    or-int/2addr v4, v8

    if-eqz v4, :cond_6

    if-ge v4, v6, :cond_6

    invoke-static {v7, v5}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    int-to-char v4, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :pswitch_2
    if-nez v4, :cond_7

    invoke-static {v4, v2}, Lorg/jf/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    int-to-char v4, v4

    add-int/lit8 v2, v2, 0x1

    :goto_1
    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    array-length p0, p3

    if-lez p0, :cond_9

    sub-int/2addr v2, p1

    aput v2, p3, v1

    aput v2, p3, v1

    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
