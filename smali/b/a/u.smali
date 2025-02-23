.class public final Lb/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/u;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lb/a/u;)I
    .registers 6

    iget-object v0, p0, Lb/a/u;->a:[B

    array-length v0, v0

    iget-object v1, p1, Lb/a/u;->a:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/a/u;->a:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lb/a/u;->a:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lb/a/u;->a:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object p1, p1, Lb/a/u;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    :goto_1
    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/u;->a:[B

    array-length v0, v0

    iget-object p1, p1, Lb/a/u;->a:[B

    array-length p1, p1

    goto :goto_1
.end method

.method public final a()Lb/a/a/a;
    .registers 3

    new-instance v0, Lcom/gmail/heagoo/common/ac;

    iget-object v1, p0, Lb/a/u;->a:[B

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/common/ac;-><init>([B)V

    return-object v0
.end method

.method public final a(Lb/a/o;)V
    .registers 3

    iget-object v0, p0, Lb/a/u;->a:[B

    invoke-virtual {p1, v0}, Lb/a/o;->a([B)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/a/u;

    invoke-virtual {p0, p1}, Lb/a/u;->a(Lb/a/u;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/u;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "...("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/u;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
