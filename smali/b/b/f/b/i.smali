.class public abstract Lb/b/f/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;


# instance fields
.field private final a:Lb/b/f/b/x;

.field private final b:Lb/b/f/b/z;

.field private final c:Lb/b/f/b/r;

.field private final d:Lb/b/f/b/u;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    iput-object p2, p0, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    iput-object p3, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    iput-object p4, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

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

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract a(Lb/b/f/b/r;Lb/b/f/b/u;)Lb/b/f/b/i;
.end method

.method public abstract a(Lb/b/f/d/c;)Lb/b/f/b/i;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lb/b/f/b/k;)V
.end method

.method public a(Lb/b/f/b/i;)Z
    .registers 4

    iget-object v0, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    iget-object v1, p1, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    iget-object v1, p1, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    invoke-virtual {v0, v1}, Lb/b/f/b/z;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    iget-object v1, p1, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    invoke-static {v0, v1}, Lb/b/f/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    iget-object v1, p1, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    invoke-static {v0, v1}, Lb/b/f/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object p1

    invoke-static {v0, p1}, Lb/b/f/d/b;->a(Lb/b/f/d/e;Lb/b/f/d/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b()Lb/b/f/d/e;
.end method

.method public final e()Lb/b/f/b/x;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    return-object v0
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

.method public final f()Lb/b/f/b/z;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    return-object v0
.end method

.method public final g()Lb/b/f/b/r;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/i;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    invoke-virtual {v2}, Lb/b/f/b/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    if-nez v0, :cond_1

    const-string v0, " ."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    invoke-virtual {v0}, Lb/b/f/b/r;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, " <-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    invoke-virtual {v3, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lb/b/f/b/r;
    .registers 4

    iget-object v0, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final j()Lb/b/f/b/u;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    iget-object v0, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    invoke-virtual {v0}, Lb/b/f/b/x;->h()Z

    move-result v0

    return v0
.end method

.method public l()Lb/b/f/b/i;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/i;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Insn{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/f/b/i;->b:Lb/b/f/b/z;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/f/b/i;->a:Lb/b/f/b/x;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, " :: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/f/b/i;->c:Lb/b/f/b/r;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " <- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lb/b/f/b/i;->d:Lb/b/f/b/u;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
