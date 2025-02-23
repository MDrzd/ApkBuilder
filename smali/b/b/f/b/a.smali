.class public Lb/b/f/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/m;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/b/l;

.field private final c:Lb/b/h/k;

.field private final d:I


# direct methods
.method public constructor <init>(ILb/b/f/b/l;Lb/b/h/k;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    :try_start_0
    invoke-virtual {p2}, Lb/b/f/b/l;->e()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p2}, Lb/b/f/b/l;->a_()I

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v1, v0, -0x2

    :goto_0
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/x;->d()I

    move-result v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "insns["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] is a branch or can throw"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v0

    if-eq v0, v2, :cond_5

    :try_start_1
    invoke-virtual {p3}, Lb/b/h/k;->e()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_4

    if-ltz p4, :cond_3

    invoke-virtual {p3, p4}, Lb/b/h/k;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "primarySuccessor "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not in successors "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lb/b/f/b/a;->a:I

    iput-object p2, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    iput-object p3, p0, Lb/b/f/b/a;->c:Lb/b/h/k;

    iput p4, p0, Lb/b/f/b/a;->d:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/f/b/a;->a:I

    return v0
.end method

.method public final b()Lb/b/f/b/l;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    return-object v0
.end method

.method public final c()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/a;->c:Lb/b/h/k;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/b/f/b/a;->d:I

    return v0
.end method

.method public final e()I
    .registers 3

    iget-object v0, p0, Lb/b/f/b/a;->c:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/b/f/b/a;->c:Lb/b/h/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    iget v1, p0, Lb/b/f/b/a;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/f/b/a;->c:Lb/b/h/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lb/b/f/b/i;
    .registers 3

    iget-object v0, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lb/b/f/b/i;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    invoke-virtual {v0}, Lb/b/f/b/l;->f()Lb/b/f/b/i;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .registers 2

    iget-object v0, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    invoke-virtual {v0}, Lb/b/f/b/l;->f()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->k()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-object v0, p0, Lb/b/f/b/a;->b:Lb/b/f/b/l;

    invoke-virtual {v0}, Lb/b/f/b/l;->f()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v0

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b/f/b/a;->a:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
