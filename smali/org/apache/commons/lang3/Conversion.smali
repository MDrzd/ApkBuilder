.class public Lorg/apache/commons/lang3/Conversion;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FFFF:[Z

.field private static final FFFT:[Z

.field private static final FFTF:[Z

.field private static final FFTT:[Z

.field private static final FTFF:[Z

.field private static final FTFT:[Z

.field private static final FTTF:[Z

.field private static final FTTT:[Z

.field private static final TFFF:[Z

.field private static final TFFT:[Z

.field private static final TFTF:[Z

.field private static final TFTT:[Z

.field private static final TTFF:[Z

.field private static final TTFT:[Z

.field private static final TTTF:[Z

.field private static final TTTT:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_4

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_5

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_6

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_7

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_8

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_9

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_a

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_b

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_c

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_d

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    new-array v1, v0, [Z

    fill-array-data v1, :array_e

    sput-object v1, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_f

    sput-object v0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryBeMsb0ToHexDigit([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryBeMsb0ToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryBeMsb0ToHexDigit([ZI)C
    .registers 6

    array-length v0, p0

    if-eqz v0, :cond_f

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    const/4 p1, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, p1, [Z

    sub-int/2addr v0, v2

    sub-int/2addr p1, v2

    invoke-static {p0, v0, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x0

    aget-boolean p0, v3, p0

    const/4 p1, 0x2

    const/4 v0, 0x3

    if-eqz p0, :cond_7

    aget-boolean p0, v3, v1

    if-eqz p0, :cond_3

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_1

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x65

    return p0

    :cond_1
    aget-boolean p0, v3, v0

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    return p0

    :cond_2
    const/16 p0, 0x63

    return p0

    :cond_3
    aget-boolean p0, v3, p1

    if-eqz p0, :cond_5

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_4

    const/16 p0, 0x62

    return p0

    :cond_4
    const/16 p0, 0x61

    return p0

    :cond_5
    aget-boolean p0, v3, v0

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x38

    return p0

    :cond_7
    aget-boolean p0, v3, v1

    if-eqz p0, :cond_b

    aget-boolean p0, v3, p1

    if-eqz p0, :cond_9

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_8

    const/16 p0, 0x37

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    :cond_9
    aget-boolean p0, v3, v0

    if-eqz p0, :cond_a

    const/16 p0, 0x35

    return p0

    :cond_a
    const/16 p0, 0x34

    return p0

    :cond_b
    aget-boolean p0, v3, p1

    if-eqz p0, :cond_d

    aget-boolean p0, v3, v0

    if-eqz p0, :cond_c

    const/16 p0, 0x33

    return p0

    :cond_c
    const/16 p0, 0x32

    return p0

    :cond_d
    aget-boolean p0, v3, v0

    if-eqz p0, :cond_e

    const/16 p0, 0x31

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToByte([ZIBII)B
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigit([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigit([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigit([ZI)C
    .registers 4

    array-length v0, p0

    if-eqz v0, :cond_f

    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_7

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_7

    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_3

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_3

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_1

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x65

    return p0

    :cond_1
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    return p0

    :cond_2
    const/16 p0, 0x63

    return p0

    :cond_3
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_5

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_5

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    const/16 p0, 0x62

    return p0

    :cond_4
    const/16 p0, 0x61

    return p0

    :cond_5
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x38

    return p0

    :cond_7
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_b

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_b

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_9

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_9

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_8

    const/16 p0, 0x37

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    :cond_9
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_a

    const/16 p0, 0x35

    return p0

    :cond_a
    const/16 p0, 0x34

    return p0

    :cond_b
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_d

    aget-boolean v0, p0, v1

    if-eqz v0, :cond_d

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0x33

    return p0

    :cond_c
    const/16 p0, 0x32

    return p0

    :cond_d
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x31

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot convert an empty array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToHexDigitMsb0_4bits([Z)C
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/Conversion;->binaryToHexDigitMsb0_4bits([ZI)C

    move-result p0

    return p0
.end method

.method public static binaryToHexDigitMsb0_4bits([ZI)C
    .registers 5

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_10

    array-length v0, p0

    sub-int/2addr v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    add-int/lit8 v0, p1, 0x3

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/16 p0, 0x66

    return p0

    :cond_0
    const/16 p0, 0x37

    return p0

    :cond_1
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2

    const/16 p0, 0x62

    return p0

    :cond_2
    const/16 p0, 0x33

    return p0

    :cond_3
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_5

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_4

    const/16 p0, 0x64

    return p0

    :cond_4
    const/16 p0, 0x35

    return p0

    :cond_5
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_6

    const/16 p0, 0x39

    return p0

    :cond_6
    const/16 p0, 0x31

    return p0

    :cond_7
    add-int/lit8 v0, p1, 0x2

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_9

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_8

    const/16 p0, 0x65

    return p0

    :cond_8
    const/16 p0, 0x36

    return p0

    :cond_9
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_a

    const/16 p0, 0x61

    return p0

    :cond_a
    const/16 p0, 0x32

    return p0

    :cond_b
    add-int/lit8 v0, p1, 0x1

    aget-boolean v0, p0, v0

    if-eqz v0, :cond_d

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_c

    const/16 p0, 0x63

    return p0

    :cond_c
    const/16 p0, 0x34

    return p0

    :cond_d
    aget-boolean p0, p0, p1

    if-eqz p0, :cond_e

    const/16 p0, 0x38

    return p0

    :cond_e
    const/16 p0, 0x30

    return p0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "src.length-srcPos<4: src.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", srcPos="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "src.length>8: src.length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static binaryToInt([ZIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToLong([ZIJII)J
    .registers 13

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_4

    add-int v1, v0, p4

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_3

    move-wide v5, v3

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    :goto_1
    shl-long/2addr v5, v1

    shl-long v1, v3, v1

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    and-long/2addr p2, v1

    or-long/2addr p2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-wide p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static binaryToShort([ZISII)S
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-boolean v2, p0, v2

    shl-int/2addr v2, v1

    const/4 v3, 0x1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToInt([BIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToLong([BIJII)J
    .registers 14

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToShort([BISII)S
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteArrayToUuid([BI)Ljava/util/UUID;
    .registers 11

    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide v1

    add-int/lit8 v4, p1, 0x8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/Conversion;->byteArrayToLong([BIJII)J

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need at least 16 bytes for UUID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToBinary(BI[ZII)[Z
    .registers 10

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static byteToHex(BILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexDigitMsb0ToBinary(C)[Z
    .registers 4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    :goto_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    goto :goto_0

    :pswitch_2
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    goto :goto_0

    :pswitch_4
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    goto :goto_0

    :pswitch_7
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    goto :goto_0

    :pswitch_8
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    goto :goto_0

    :pswitch_9
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    goto :goto_0

    :pswitch_a
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    goto :goto_0

    :pswitch_b
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    goto :goto_0

    :pswitch_c
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    goto :goto_0

    :pswitch_d
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    goto :goto_0

    :pswitch_e
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    goto :goto_0

    :pswitch_f
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hexDigitMsb0ToInt(C)I
    .registers 4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0xf

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0xb

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/16 p0, 0xd

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/4 p0, 0x6

    return p0

    :pswitch_a
    const/16 p0, 0xa

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/4 p0, 0x4

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_f
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hexDigitToBinary(C)[Z
    .registers 4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTT:[Z

    :goto_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTT:[Z

    goto :goto_0

    :pswitch_2
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTT:[Z

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTT:[Z

    goto :goto_0

    :pswitch_4
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFT:[Z

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFT:[Z

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFT:[Z

    goto :goto_0

    :pswitch_7
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFT:[Z

    goto :goto_0

    :pswitch_8
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTTF:[Z

    goto :goto_0

    :pswitch_9
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTTF:[Z

    goto :goto_0

    :pswitch_a
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFTF:[Z

    goto :goto_0

    :pswitch_b
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFTF:[Z

    goto :goto_0

    :pswitch_c
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TTFF:[Z

    goto :goto_0

    :pswitch_d
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FTFF:[Z

    goto :goto_0

    :pswitch_e
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->TFFF:[Z

    goto :goto_0

    :pswitch_f
    sget-object p0, Lorg/apache/commons/lang3/Conversion;->FFFF:[Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hexDigitToInt(C)I
    .registers 4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot interpret \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' as a hexadecimal digit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexToByte(Ljava/lang/String;IBII)B
    .registers 9

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-byte p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToInt(Ljava/lang/String;IIII)I
    .registers 9

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToLong(Ljava/lang/String;IJII)J
    .registers 14

    if-nez p5, :cond_0

    return-wide p2

    :cond_0
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p4

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexToShort(Ljava/lang/String;ISII)S
    .registers 9

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    add-int v2, v0, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->hexDigitToInt(C)I

    move-result v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    int-to-short p2, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+dstPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intArrayToLong([IIJII)J
    .registers 14

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    shl-int/lit8 v1, v0, 0x5

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToBinary(II[ZII)[Z
    .registers 10

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToByteArray(II[BII)[B
    .registers 8

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHex(IILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToHexDigit(I)C
    .registers 4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nibble value not between 0 and 15: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static intToHexDigitMsb0(I)C
    .registers 4

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nibble value not between 0 and 15: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x66

    return p0

    :pswitch_1
    const/16 p0, 0x37

    return p0

    :pswitch_2
    const/16 p0, 0x62

    return p0

    :pswitch_3
    const/16 p0, 0x33

    return p0

    :pswitch_4
    const/16 p0, 0x64

    return p0

    :pswitch_5
    const/16 p0, 0x35

    return p0

    :pswitch_6
    const/16 p0, 0x39

    return p0

    :pswitch_7
    const/16 p0, 0x31

    return p0

    :pswitch_8
    const/16 p0, 0x65

    return p0

    :pswitch_9
    const/16 p0, 0x36

    return p0

    :pswitch_a
    const/16 p0, 0x61

    return p0

    :pswitch_b
    const/16 p0, 0x32

    return p0

    :pswitch_c
    const/16 p0, 0x63

    return p0

    :pswitch_d
    const/16 p0, 0x34

    return p0

    :pswitch_e
    const/16 p0, 0x38

    return p0

    :pswitch_f
    const/16 p0, 0x30

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public static intToShortArray(II[SII)[S
    .registers 9

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p1

    add-int v2, p3, v0

    const v3, 0xffff

    shr-int v1, p0, v1

    and-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToBinary(JI[ZII)[Z
    .registers 14

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    add-int v2, v1, p2

    add-int v3, p4, v1

    const-wide/16 v4, 0x1

    shr-long v6, p0, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToByteArray(JI[BII)[B
    .registers 13

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, 0xff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToHex(JILjava/lang/String;II)Ljava/lang/String;
    .registers 13

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    const-wide/16 v3, 0xf

    shr-long v5, p0, v2

    and-long/2addr v3, v5

    long-to-int v2, v3

    add-int v3, p4, v1

    if-ne v3, p3, :cond_1

    add-int/lit8 p3, p3, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToIntArray(JI[III)[I
    .registers 13

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    shl-int/lit8 v1, v0, 0x5

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/16 v3, -0x1

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    aput v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nInts-1)*32+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static longToShortArray(JI[SII)[S
    .registers 13

    if-nez p5, :cond_0

    return-object p3

    :cond_0
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p2

    add-int v2, p4, v0

    const-wide/32 v3, 0xffff

    shr-long v5, p0, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+srcPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToInt([SIIII)I
    .registers 9

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p4, :cond_2

    :cond_1
    return p2

    :cond_2
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    aget-short v2, p0, v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    shl-int v1, v3, v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greater or equal to than 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortArrayToLong([SIJII)J
    .registers 14

    array-length v0, p0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p5, :cond_2

    :cond_1
    return-wide p2

    :cond_2
    add-int/lit8 v0, p5, -0x1

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p4

    const/16 v1, 0x40

    if-ge v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_3

    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p4

    add-int v2, v0, p1

    aget-short v2, p0, v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    shl-long/2addr v2, v1

    shl-long/2addr v4, v1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr p2, v4

    or-long/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nShorts-1)*16+dstPos is greater or equal to than 64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToBinary(SI[ZII)[Z
    .registers 10

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, v1, p1

    add-int v3, p3, v1

    shr-int v2, p0, v2

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nBools-1+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToByteArray(SI[BII)[B
    .registers 8

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p1

    add-int v2, p3, v0

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nBytes-1)*8+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static shortToHex(SILjava/lang/String;II)Ljava/lang/String;
    .registers 9

    if-nez p4, :cond_0

    return-object p2

    :cond_0
    add-int/lit8 v0, p4, -0x1

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    shr-int v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, p3, v1

    if-ne v3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang3/Conversion;->intToHexDigit(I)C

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "(nHexs-1)*4+srcPos is greater or equal to than 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static uuidToByteArray(Ljava/util/UUID;[BII)[B
    .registers 11

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    const/16 v0, 0x10

    if-gt p3, v0, :cond_3

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    const/16 v6, 0x8

    if-le p3, v6, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    if-lt p3, v6, :cond_2

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const/4 v2, 0x0

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v5, p3, -0x8

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/Conversion;->longToByteArray(JI[BII)[B

    :cond_2
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nBytes is greater than 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
