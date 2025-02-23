.class public Lorg/jf/dexlib2/immutable/util/ParamUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)I
    .registers 2

    invoke-static {p0, p1}, Lorg/jf/dexlib2/immutable/util/ParamUtil;->findTypeEnd(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static findTypeEnd(Ljava/lang/String;I)I
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "Param string \"%s\" contains invalid type prefix: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x5b

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :goto_2
    :sswitch_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    move p1, v0

    goto :goto_2

    :sswitch_2
    add-int/2addr p1, v1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x46 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x53 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseParamString(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/util/ParamUtil$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
