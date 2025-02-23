.class public final Lb/b/h/e;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lb/b/h/c;


# direct methods
.method public constructor <init>(Lb/b/h/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lb/b/h/e;->a:I

    iput p1, p0, Lb/b/h/e;->b:I

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    iget-object v0, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-static {v0}, Lb/b/h/c;->a(Lb/b/h/c;)I

    move-result v0

    iget v1, p0, Lb/b/h/e;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final mark(I)V
    .registers 2

    iget p1, p0, Lb/b/h/e;->a:I

    iput p1, p0, Lb/b/h/e;->b:I

    return-void
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .registers 3

    iget v0, p0, Lb/b/h/e;->a:I

    iget-object v1, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-static {v1}, Lb/b/h/c;->a(Lb/b/h/c;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/h/e;->c:Lb/b/h/c;

    iget v1, p0, Lb/b/h/e;->a:I

    invoke-static {v0, v1}, Lb/b/h/c;->a(Lb/b/h/c;I)I

    move-result v0

    iget v1, p0, Lb/b/h/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/b/h/e;->a:I

    return v0
.end method

.method public final read([BII)I
    .registers 7

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_0
    iget-object v0, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-static {v0}, Lb/b/h/c;->a(Lb/b/h/c;)I

    move-result v0

    iget v1, p0, Lb/b/h/e;->a:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-static {v0}, Lb/b/h/c;->b(Lb/b/h/c;)[B

    move-result-object v0

    iget v1, p0, Lb/b/h/e;->a:I

    iget-object v2, p0, Lb/b/h/e;->c:Lb/b/h/c;

    invoke-static {v2}, Lb/b/h/c;->c(Lb/b/h/c;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lb/b/h/e;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lb/b/h/e;->a:I

    return p3
.end method

.method public final reset()V
    .registers 2

    iget v0, p0, Lb/b/h/e;->b:I

    iput v0, p0, Lb/b/h/e;->a:I

    return-void
.end method
