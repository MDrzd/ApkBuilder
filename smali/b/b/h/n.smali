.class public Lb/b/h/n;
.super Lb/b/h/h;


# instance fields
.field private final a:Lb/b/h/k;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    new-instance v0, Lb/b/h/k;

    invoke-direct {v0, p1}, Lb/b/h/k;-><init>(I)V

    iput-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    return-void
.end method

.method public constructor <init>(Lb/b/h/n;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/h/n;->a_()I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/h/h;-><init>(I)V

    iget-object v0, p1, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object v0

    iput-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {p1}, Lb/b/h/n;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/h/n;->e(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lb/b/h/n;->a(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a(ILb/b/h/m;)V
    .registers 7

    invoke-virtual {p0, p1}, Lb/b/h/n;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/h/m;

    invoke-virtual {p0, p1, p2}, Lb/b/h/n;->a(ILjava/lang/Object;)V

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/h/m;->a()I

    move-result v0

    iget-object v2, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v2, v0, v1}, Lb/b/h/k;->b(II)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lb/b/h/m;->a()I

    move-result p2

    iget-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p2, v0

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v3, v1}, Lb/b/h/k;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0, p2, p1}, Lb/b/h/k;->b(II)V

    :cond_2
    return-void
.end method

.method public final c(I)I
    .registers 3

    iget-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0, p1}, Lb/b/h/k;->b(I)I

    move-result p1

    return p1
.end method

.method public final k()V
    .registers 5

    invoke-super {p0}, Lb/b/h/h;->k()V

    invoke-virtual {p0}, Lb/b/h/n;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb/b/h/n;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/h/m;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-interface {v2}, Lb/b/h/m;->a()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lb/b/h/k;->b(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()I
    .registers 3

    iget-object v0, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v1, v0}, Lb/b/h/k;->b(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/b/h/n;->a:Lb/b/h/k;

    invoke-virtual {v1, v0}, Lb/b/h/k;->e(I)V

    return v0
.end method

.method public final m()[I
    .registers 5

    invoke-virtual {p0}, Lb/b/h/n;->a_()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lb/b/h/n;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/h/m;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lb/b/h/m;->a()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "null at index "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    return-object v1
.end method
