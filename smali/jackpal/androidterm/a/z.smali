.class final Ljackpal/androidterm/a/z;
.super Ljava/lang/Object;


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    const/16 v1, 0x101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljackpal/androidterm/a/z;->a(III)I

    move-result v0

    sput v0, Ljackpal/androidterm/a/z;->a:I

    return-void
.end method

.method static a(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x9

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method static a(III)I
    .registers 3

    and-int/lit8 p2, p2, 0x3f

    shl-int/lit8 p2, p2, 0x12

    and-int/lit16 p0, p0, 0x1ff

    shl-int/lit8 p0, p0, 0x9

    or-int/2addr p0, p2

    and-int/lit16 p1, p1, 0x1ff

    or-int/2addr p0, p1

    return p0
.end method

.method static b(I)I
    .registers 1

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method static c(I)I
    .registers 1

    shr-int/lit8 p0, p0, 0x12

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method
