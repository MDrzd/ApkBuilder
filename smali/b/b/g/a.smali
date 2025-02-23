.class public Lb/b/g/a;
.super Lb/b/g/ad;


# instance fields
.field private final a:Lb/b/h/k;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lb/b/g/ad;-><init>()V

    new-instance v0, Lb/b/h/k;

    invoke-direct {v0, p1}, Lb/b/h/k;-><init>(I)V

    iput-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/g/a;->b:I

    return v0
.end method

.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->b(I)I

    move-result p1

    return p1
.end method

.method public final a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no mapping specified for register"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(III)V
    .registers 7

    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lb/b/g/a;->a:Lb/b/h/k;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lb/b/h/k;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/a;->a:Lb/b/h/k;

    invoke-virtual {v0, p1, p2}, Lb/b/h/k;->b(II)V

    iget p1, p0, Lb/b/g/a;->b:I

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iput p2, p0, Lb/b/g/a;->b:I

    :cond_1
    return-void
.end method
