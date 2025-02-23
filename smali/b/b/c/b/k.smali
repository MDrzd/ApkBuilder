.class public abstract Lb/b/c/b/k;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Lcom/gmail/heagoo/neweditor/x;

.field private final c:Lb/b/f/b/z;

.field private final d:Lb/b/f/b/u;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lb/b/c/b/k;->a:I

    iput-object p1, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    iput-object p2, p0, Lb/b/c/b/k;->c:Lb/b/f/b/z;

    iput-object p3, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/c/b/ag;
    .registers 8

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->n()Z

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v0, :cond_1

    sget-object v0, Lb/b/c/b/m;->i:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lb/b/c/b/m;->c:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_2
    sget-object v0, Lb/b/c/b/m;->f:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Lb/b/c/b/m;->j:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    sget-object v0, Lb/b/c/b/m;->d:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_5
    sget-object v0, Lb/b/c/b/m;->g:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object v0, Lb/b/c/b/m;->k:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    sget-object v0, Lb/b/c/b/m;->e:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_8
    sget-object v0, Lb/b/c/b/m;->h:Lcom/gmail/heagoo/neweditor/x;

    :goto_1
    new-instance v1, Lb/b/c/b/ag;

    invoke-static {p1, p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-object v1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(Ljava/util/BitSet;)I
    .registers 7

    iget-object v0, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v0

    iget-object v1, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {v1}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {v3, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->k()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {v4, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public abstract a(Lb/b/f/b/u;)Lb/b/c/b/k;
.end method

.method public a(Lb/b/g/ad;)Lb/b/c/b/k;
    .registers 3

    iget-object v0, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {p1, v0}, Lb/b/g/ad;->a(Lb/b/f/b/u;)Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/b/k;->a(Lb/b/f/b/u;)Lb/b/c/b/k;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p3}, Lb/b/c/b/k;->a(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/b/c/b/k;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    :goto_0
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Lb/b/b/a/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Z)Ljava/lang/String;
.end method

.method public abstract a(Lb/b/h/r;)V
.end method

.method public final b(Ljava/util/BitSet;)Lb/b/c/b/k;
    .registers 6

    iget-object v0, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iget-object v3, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Lb/b/f/b/u;->a(Ljava/util/BitSet;)Lb/b/f/b/u;

    move-result-object v0

    iget-object v3, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v3}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lb/b/c/b/o;

    iget-object v1, p0, Lb/b/c/b/k;->c:Lb/b/f/b/z;

    invoke-direct {p1, v1, v0}, Lb/b/c/b/o;-><init>(Lb/b/f/b/z;Lb/b/f/b/u;)V

    return-object p1
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final c(Ljava/util/BitSet;)Lb/b/c/b/k;
    .registers 4

    iget-object v0, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {p1, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    iget-object v1, p0, Lb/b/c/b/k;->c:Lb/b/f/b/z;

    invoke-virtual {p1, v0}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lb/b/c/b/k;->a(Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/c/b/ag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(I)V
    .registers 3

    if-ltz p1, :cond_0

    iput p1, p0, Lb/b/c/b/k;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract d(I)Lb/b/c/b/k;
.end method

.method public final d(Ljava/util/BitSet;)Lb/b/c/b/k;
    .registers 5

    iget-object v0, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    iget-object v1, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lb/b/f/b/u;->a(IZLjava/util/BitSet;)Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/b/k;->a(Lb/b/f/b/u;)Lb/b/c/b/k;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Z
    .registers 2

    iget v0, p0, Lb/b/c/b/k;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .registers 3

    iget v0, p0, Lb/b/c/b/k;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/b/k;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lcom/gmail/heagoo/neweditor/x;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    return-object v0
.end method

.method public final j()Lb/b/f/b/z;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/k;->c:Lb/b/f/b/z;

    return-object v0
.end method

.method public final k()Lb/b/f/b/u;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    return-object v0
.end method

.method public final l()Lb/b/c/b/k;
    .registers 5

    iget-object v0, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    iget-object v1, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lb/b/f/b/u;->a(IZLjava/util/BitSet;)Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/c/b/k;->a(Lb/b/f/b/u;)Lb/b/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lb/b/c/b/k;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lb/b/c/b/k;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .registers 3

    invoke-virtual {p0}, Lb/b/c/b/k;->h()I

    move-result v0

    invoke-virtual {p0}, Lb/b/c/b/k;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lb/b/c/b/k;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/b/k;->c:Lb/b/f/b/z;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/b/k;->b:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v2}, Lcom/gmail/heagoo/neweditor/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    invoke-virtual {v2}, Lb/b/f/b/u;->a_()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/b/c/b/k;->d:Lb/b/f/b/u;

    const-string v3, " "

    const-string v4, ", "

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lb/b/f/b/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lb/b/c/b/k;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
