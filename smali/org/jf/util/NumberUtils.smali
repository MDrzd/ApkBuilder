.class public Lorg/jf/util/NumberUtils;
.super Ljava/lang/Object;


# static fields
.field private static final canonicalDoubleNaN:J

.field private static final canonicalFloatNaN:I

.field private static final eDouble:J

.field private static final eFloat:I

.field private static final format:Ljava/text/DecimalFormat;

.field private static final maxDouble:J

.field private static final maxFloat:I

.field private static final piDouble:J

.field private static final piFloat:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/jf/util/NumberUtils;->canonicalFloatNaN:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/jf/util/NumberUtils;->maxFloat:I

    const v0, 0x40490fdb    # (float)Math.PI

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/jf/util/NumberUtils;->piFloat:I

    const v0, 0x402df854    # (float)Math.E

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/jf/util/NumberUtils;->eFloat:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/jf/util/NumberUtils;->canonicalDoubleNaN:J

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/jf/util/NumberUtils;->maxDouble:J

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/jf/util/NumberUtils;->piDouble:J

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lorg/jf/util/NumberUtils;->eDouble:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.####################E0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jf/util/NumberUtils;->format:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLikelyDouble(J)Z
    .registers 7

    sget-wide v0, Lorg/jf/util/NumberUtils;->canonicalDoubleNaN:J

    cmp-long v2, p0, v0

    const/4 v0, 0x1

    if-eqz v2, :cond_6

    sget-wide v1, Lorg/jf/util/NumberUtils;->maxDouble:J

    cmp-long v3, p0, v1

    if-eqz v3, :cond_6

    sget-wide v1, Lorg/jf/util/NumberUtils;->piDouble:J

    cmp-long v3, p0, v1

    if-eqz v3, :cond_6

    sget-wide v1, Lorg/jf/util/NumberUtils;->eDouble:J

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p0, v1

    const/4 v1, 0x0

    if-eqz v3, :cond_5

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    sget-object v4, Lorg/jf/util/NumberUtils;->format:Ljava/text/DecimalFormat;

    invoke-virtual {v4, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/jf/util/NumberUtils;->format:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "E"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "000"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_3

    if-ge v4, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v4, "999"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_4

    if-ge v4, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_5

    return v0

    :cond_5
    :goto_2
    return v1

    :cond_6
    :goto_3
    return v0
.end method

.method public static isLikelyFloat(I)Z
    .registers 7

    sget v0, Lorg/jf/util/NumberUtils;->canonicalFloatNaN:I

    const/4 v1, 0x1

    if-eq p0, v0, :cond_8

    sget v0, Lorg/jf/util/NumberUtils;->maxFloat:I

    if-eq p0, v0, :cond_8

    sget v0, Lorg/jf/util/NumberUtils;->piFloat:I

    if-eq p0, v0, :cond_8

    sget v0, Lorg/jf/util/NumberUtils;->eFloat:I

    if-ne p0, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const v0, 0x7fffffff

    const/4 v2, 0x0

    if-eq p0, v0, :cond_7

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    shr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    const v4, 0xffff

    and-int/2addr v4, p0

    const/16 v5, 0x7f

    if-eq v0, v5, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 v0, 0x1f

    if-ge v3, v0, :cond_3

    const/16 v0, 0xfff

    if-ge v4, v0, :cond_3

    return v2

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    sget-object v3, Lorg/jf/util/NumberUtils;->format:Ljava/text/DecimalFormat;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lorg/jf/util/NumberUtils;->format:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v4, "E"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_5

    if-ge v5, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v5, "999"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v3, :cond_6

    if-ge v5, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_7

    return v1

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v1
.end method
