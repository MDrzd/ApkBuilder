.class public Ljackpal/androidterm/a/m;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Ljackpal/androidterm/a/m;->a:[I

    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/a/m;->b:I

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 6

    iget v0, p0, Ljackpal/androidterm/a/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljackpal/androidterm/a/m;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/m;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Ljackpal/androidterm/a/m;->a:[I

    iget v2, p0, Ljackpal/androidterm/a/m;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljackpal/androidterm/a/m;->a:[I

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/m;->a:[I

    iget v1, p0, Ljackpal/androidterm/a/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljackpal/androidterm/a/m;->b:I

    aput p1, v0, v1

    return-void
.end method

.method b(I)I
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/m;->a:[I

    aget p1, v0, p1

    return p1
.end method
