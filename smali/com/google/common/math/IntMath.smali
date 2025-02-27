.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .registers 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    shr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_1

    sub-int p1, p0, p1

    :cond_1
    sget-object v2, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v2, v2

    if-ge p1, v2, :cond_4

    sget-object v2, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v2, v2, p1

    if-le p0, v2, :cond_2

    goto :goto_2

    :cond_2
    packed-switch p1, :pswitch_data_0

    const-wide/16 v1, 0x1

    goto :goto_1

    :pswitch_0
    return p0

    :pswitch_1
    return v1

    :goto_1
    if-ge v0, p1, :cond_3

    sub-int v3, p0, v0

    int-to-long v3, v3

    mul-long v1, v1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    return p0

    :cond_4
    :goto_2
    const p0, 0x7fffffff

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return p0
.end method

.method public static checkedMultiply(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return p0
.end method

.method public static checkedPow(II)I
    .registers 7

    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, p0

    const/4 p0, 0x1

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x1f

    if-ge p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    shl-int p0, v2, p1

    return p0

    :pswitch_1
    return v2

    :pswitch_2
    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_3
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0

    :pswitch_4
    const/16 p0, 0x20

    if-ge p1, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_4

    shl-int p0, v2, p1

    return p0

    :cond_4
    shl-int p0, v0, p1

    return p0

    :cond_5
    :goto_0
    packed-switch p1, :pswitch_data_1

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6

    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result p0

    goto :goto_1

    :pswitch_5
    invoke-static {p0, v0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result p0

    :pswitch_6
    return p0

    :cond_6
    :goto_1
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_5

    const v3, -0xb504

    if-gt v3, v0, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    const v4, 0xb504

    if-gt v0, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    mul-int v0, v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .registers 6

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long v2, p0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    return p0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .registers 8

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_3

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_6

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_3
    if-lez v1, :cond_5

    goto :goto_3

    :pswitch_1
    if-lez p0, :cond_5

    goto :goto_3

    :pswitch_2
    if-gez p0, :cond_5

    goto :goto_3

    :pswitch_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_5
    :pswitch_4
    const/4 v2, 0x0

    :cond_6
    :goto_3
    :pswitch_5
    if-eqz v2, :cond_7

    add-int/2addr v0, p0

    :cond_7
    return v0

    :cond_8
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)I
    .registers 2

    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget p0, v0, p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public static gcd(II)I
    .registers 5

    const-string v0, "a"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    :goto_0
    if-eq p0, p1, :cond_2

    sub-int/2addr p0, p1

    shr-int/lit8 v2, p0, 0x1f

    and-int/2addr v2, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v2

    add-int/2addr p1, v2

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shr-int/2addr p0, v2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr p0, v3

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int p0, v2, v0

    return p0
.end method

.method static lessThanBranchFree(II)I
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sub-int/2addr p0, p1

    xor-int/lit8 p0, p0, -0x1

    xor-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    sget-object p1, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget p1, p1, v0

    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    :pswitch_1
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    goto :goto_0

    :pswitch_2
    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .registers 3

    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .registers 3

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static mean(II)I
    .registers 3

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static mod(II)I
    .registers 4

    if-lez p1, :cond_1

    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    return p0

    :cond_0
    add-int/2addr p0, p1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Modulus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pow(II)I
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    const-string v0, "exponent"

    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    move v0, p0

    const/4 p0, 0x1

    goto :goto_0

    :pswitch_0
    if-ge p1, v0, :cond_0

    shl-int p0, v2, p1

    return p0

    :cond_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_3
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, -0x1

    return p0

    :pswitch_4
    if-ge p1, v0, :cond_4

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_3

    shl-int p0, v2, p1

    return p0

    :cond_3
    shl-int p0, v2, p1

    neg-int p0, p0

    return p0

    :cond_4
    return v1

    :goto_0
    packed-switch p1, :pswitch_data_1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_5
    mul-int v0, v0, p0

    return v0

    :pswitch_6
    return p0

    :cond_5
    move v1, v0

    :goto_1
    mul-int p0, p0, v1

    mul-int v0, v0, v0

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .registers 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    mul-int p1, v0, v0

    add-int/2addr p1, v0

    :goto_0
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :pswitch_1
    mul-int p1, v0, v0

    goto :goto_0

    :pswitch_2
    mul-int p1, v0, v0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .registers 3

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method
