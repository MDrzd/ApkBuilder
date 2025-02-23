.class public final Lb/b/a/b/x;
.super Lb/b/a/b/u;


# instance fields
.field private final a:[Lb/b/f/d/d;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lb/b/a/b/u;-><init>(Z)V

    new-array p1, p1, [Lb/b/f/d/d;

    iput-object p1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/a/b/u;)Lb/b/a/b/u;
    .registers 3

    instance-of v0, p1, Lb/b/a/b/x;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/a/b/x;

    invoke-virtual {p0, p1}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)Lb/b/a/b/x;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p0}, Lb/b/a/b/u;->a(Lb/b/a/b/u;)Lb/b/a/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/a/b/u;I)Lb/b/a/b/v;
    .registers 5

    new-instance v0, Lb/b/a/b/v;

    iget-object v1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Lb/b/a/b/v;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lb/b/a/b/v;->a(Lb/b/a/b/u;I)Lb/b/a/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/a/b/x;)Lb/b/a/b/x;
    .registers 8

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v0, v0

    iget-object v1, p1, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v1, v1

    if-ne v1, v0, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v4, v4, v1

    iget-object v5, p1, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, La/a/a;->a(Lb/b/f/d/d;Lb/b/f/d/d;)Lb/b/f/d/d;

    move-result-object v5

    if-eq v5, v4, :cond_3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lb/b/a/b/x;->i()Lb/b/a/b/x;

    move-result-object v3

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v3}, Lb/b/a/b/x;->d()V

    iget-object v4, v3, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aput-object v2, v4, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1, v5}, Lb/b/a/b/x;->a(ILb/b/f/d/d;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v3}, Lb/b/a/b/x;->b_()V

    return-object v3

    :cond_6
    new-instance v0, Lb/b/a/b/aj;

    const-string v1, "mismatched maxLocals values"

    invoke-direct {v0, v1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb/b/a/b/x;->a(Lb/a/a/c;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb/b/a/b/x;->a(Lb/a/a/c;)V

    throw v0
.end method

.method public final a(I)Lb/b/f/d/d;
    .registers 5

    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lb/b/a/b/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "invalid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILb/b/f/d/d;)V
    .registers 6

    invoke-virtual {p0}, Lb/b/a/b/x;->d()V

    :try_start_0
    invoke-interface {p2}, Lb/b/f/d/d;->b()Lb/b/f/d/d;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_2

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    add-int/lit8 v2, p1, 0x1

    aput-object v1, v0, v2

    :cond_0
    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aput-object p2, v0, p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    add-int/lit8 p1, p1, -0x1

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lb/b/f/d/d;->a()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aput-object v1, p2, p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "idx < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/a/a/c;)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const-string v1, "<invalid>"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locals["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/a/a/c;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/b/f/b/r;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lb/b/a/b/x;->a(ILb/b/f/d/d;)V

    return-void
.end method

.method public final a(Lb/b/f/d/c;)V
    .registers 6

    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/x;->d()V

    invoke-virtual {p1}, Lb/b/f/d/c;->q()Lb/b/f/d/c;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aput-object v1, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final synthetic f()Lb/b/a/b/u;
    .registers 2

    invoke-virtual {p0}, Lb/b/a/b/x;->i()Lb/b/a/b/x;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Lb/b/a/b/x;
    .registers 1

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const-string v2, "<invalid>"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locals["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lb/b/a/b/x;
    .registers 6

    new-instance v0, Lb/b/a/b/x;

    iget-object v1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Lb/b/a/b/x;-><init>(I)V

    iget-object v1, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    iget-object v2, v0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    iget-object v3, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget-object v0, p0, Lb/b/a/b/x;->a:[Lb/b/f/d/d;

    array-length v0, v0

    return v0
.end method
