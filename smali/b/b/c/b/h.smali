.class public final Lb/b/c/b/h;
.super Lb/b/c/b/n;


# instance fields
.field private final a:Lb/b/f/c/a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/n;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    const/4 p1, -0x1

    iput p1, p0, Lb/b/c/b/h;->b:I

    iput p1, p0, Lb/b/c/b/h;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 6

    new-instance v0, Lb/b/c/b/h;

    invoke-virtual {p0}, Lb/b/c/b/h;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/h;->j()Lb/b/f/b/z;

    move-result-object v2

    iget-object v3, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-direct {v0, v1, v2, p1, v3}, Lb/b/c/b/h;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V

    iget p1, p0, Lb/b/c/b/h;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lb/b/c/b/h;->b:I

    invoke-virtual {v0, p1}, Lb/b/c/b/h;->a(I)V

    :cond_0
    iget p1, p0, Lb/b/c/b/h;->c:I

    if-ltz p1, :cond_1

    iget p1, p0, Lb/b/c/b/h;->c:I

    invoke-virtual {v0, p1}, Lb/b/c/b/h;->b(I)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
    .registers 6

    new-instance v0, Lb/b/c/b/h;

    invoke-virtual {p0}, Lb/b/c/b/h;->j()Lb/b/f/b/z;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/h;->k()Lb/b/f/b/u;

    move-result-object v2

    iget-object v3, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-direct {v0, p1, v1, v2, v3}, Lb/b/c/b/h;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V

    iget p1, p0, Lb/b/c/b/h;->b:I

    if-ltz p1, :cond_0

    iget p1, p0, Lb/b/c/b/h;->b:I

    invoke-virtual {v0, p1}, Lb/b/c/b/h;->a(I)V

    :cond_0
    iget p1, p0, Lb/b/c/b/h;->c:I

    if-ltz p1, :cond_1

    iget p1, p0, Lb/b/c/b/h;->c:I

    invoke-virtual {v0, p1}, Lb/b/c/b/h;->b(I)V

    :cond_1
    return-object v0
.end method

.method public final a(I)V
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/c/b/h;->b:I

    if-gez v0, :cond_0

    iput p1, p0, Lb/b/c/b/h;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-virtual {v0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 3

    if-ltz p1, :cond_1

    iget v0, p0, Lb/b/c/b/h;->c:I

    if-gez v0, :cond_0

    iput p1, p0, Lb/b/c/b/h;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    return-object v0
.end method

.method public final d()I
    .registers 4

    iget v0, p0, Lb/b/c/b/h;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/b/h;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    instance-of v0, v0, Lb/b/f/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    check-cast v0, Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-virtual {v0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lb/b/c/b/h;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/h;->a:Lb/b/f/c/a;

    invoke-virtual {v1}, Lb/b/f/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/c/b/h;->b:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_2

    iget v1, p0, Lb/b/c/b/h;->b:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget v1, p0, Lb/b/c/b/h;->b:I

    invoke-static {v1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
