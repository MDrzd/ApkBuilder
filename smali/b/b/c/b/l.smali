.class public final Lb/b/c/b/l;
.super Lb/b/h/h;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    iput p2, p0, Lb/b/c/b/l;->a:I

    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)Lb/b/c/b/l;
    .registers 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lb/b/c/b/l;

    invoke-direct {v1, v0, p1}, Lb/b/c/b/l;-><init>(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    invoke-virtual {v1, p1, v2}, Lb/b/c/b/l;->a(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/c/b/l;->b_()V

    return-object v1
.end method


# virtual methods
.method public final a(I)Lb/b/c/b/k;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/c/b/l;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/k;

    return-object p1
.end method

.method public final a(Lb/b/h/r;)V
    .registers 12

    invoke-interface {p1}, Lb/b/h/r;->c()I

    move-result v0

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result v1

    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {p1}, Lb/b/h/r;->e()Z

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Lb/b/c/b/l;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/c/b/k;

    invoke-virtual {v5}, Lb/b/c/b/k;->a()I

    move-result v6

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v8, "  "

    invoke-interface {p1}, Lb/b/h/r;->g()I

    move-result v9

    invoke-virtual {v5, v8, v9, v7}, Lb/b/c/b/k;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_2

    :goto_3
    invoke-interface {p1, v6, v5}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_3

    const-string v5, ""

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_5
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Lb/b/c/b/l;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    :try_start_0
    invoke-virtual {v2, p1}, Lb/b/c/b/k;->a(Lb/b/h/r;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...while writing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p1

    throw p1

    :cond_5
    invoke-interface {p1}, Lb/b/h/r;->c()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lb/b/c/b/l;->f()I

    move-result v0

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write length mismatch; expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/c/b/l;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Lb/b/h/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lb/b/h/i;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    :try_start_0
    invoke-virtual {p0, p2}, Lb/b/c/b/l;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    invoke-virtual {v2}, Lb/b/c/b/k;->a()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, ""

    invoke-virtual {v2, v3, v1, p3}, Lb/b/c/b/k;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lb/b/h/i;->write(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lb/b/h/i;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final f()I
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/c/b/l;->a(I)Lb/b/c/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/k;->n()I

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/c/b/l;->a:I

    return v0
.end method

.method public final i()I
    .registers 9

    invoke-virtual {p0}, Lb/b/c/b/l;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Lb/b/c/b/l;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/b/k;

    instance-of v5, v4, Lb/b/c/b/h;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lb/b/c/b/h;

    invoke-virtual {v5}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object v5

    instance-of v7, v5, Lb/b/f/c/f;

    if-eqz v7, :cond_1

    check-cast v5, Lb/b/f/c/f;

    invoke-virtual {v4}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gmail/heagoo/neweditor/x;->b()I

    move-result v4

    const/16 v7, 0x71

    if-ne v4, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lb/b/f/c/f;->b(Z)I

    move-result v4

    goto :goto_2

    :cond_1
    instance-of v4, v5, Lb/b/f/c/j;

    if-eqz v4, :cond_2

    check-cast v5, Lb/b/f/c/j;

    invoke-virtual {v5}, Lb/b/f/c/j;->a()Lb/b/f/d/a;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/b;->f()I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lb/b/c/b/w;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gmail/heagoo/neweditor/x;->b()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_4

    check-cast v4, Lb/b/c/b/w;

    invoke-virtual {v4, v6}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v4

    check-cast v4, Lb/b/f/c/ab;

    invoke-virtual {v4}, Lb/b/f/c/ab;->i()Lb/b/f/d/a;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/d/b;->f()I

    move-result v4

    add-int/2addr v4, v6

    :goto_2
    if-le v4, v3, :cond_5

    move v3, v4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting invoke-polymorphic"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method
