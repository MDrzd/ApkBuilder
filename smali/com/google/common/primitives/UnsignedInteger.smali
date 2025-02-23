.class public final Lcom/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lcom/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ZERO:Lcom/google/common/primitives/UnsignedInteger;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->ONE:Lcom/google/common/primitives/UnsignedInteger;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lcom/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return-void
.end method

.method public static fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2

    new-instance v0, Lcom/google/common/primitives/UnsignedInteger;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedInteger;
    .registers 7

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v2, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    long-to-int p0, p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedInteger;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 5

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x20

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned integer value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bigIntegerValue()Ljava/math/BigInteger;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final compareTo(Lcom/google/common/primitives/UnsignedInteger;)I
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedInteger;->compareTo(Lcom/google/common/primitives/UnsignedInteger;)I

    move-result p1

    return p1
.end method

.method public final dividedBy(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->divide(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public final doubleValue()D
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/primitives/UnsignedInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final floatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public final intValue()I
    .registers 2

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public final longValue()J
    .registers 3

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final minus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public final mod(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->remainder(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public final times(Lcom/google/common/primitives/UnsignedInteger;)Lcom/google/common/primitives/UnsignedInteger;
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Does not truncate correctly"
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/UnsignedInteger;

    iget p1, p1, Lcom/google/common/primitives/UnsignedInteger;->value:I

    mul-int v0, v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lcom/google/common/primitives/UnsignedInteger;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(I)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
