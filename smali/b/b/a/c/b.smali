.class public Lb/b/a/c/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 17

    move v0, p2

    move v8, p3

    move-object/from16 v7, p4

    if-eqz p1, :cond_3

    if-ltz v0, :cond_2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v4

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v5

    invoke-virtual {v4, p3}, Lb/b/h/c;->g(I)I

    move-result v6

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v4, v9}, Lb/b/h/c;->d(I)I

    move-result v10

    invoke-interface {v5, v6}, Lb/b/f/c/b;->a(I)Lb/b/f/c/a;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lb/b/f/c/ad;
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "name: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v7, v4, p3, v5, v3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "length: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v9, v1, v3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v11}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v8, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, v10

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lb/b/a/c/b;->a(Lb/b/a/c/k;ILjava/lang/String;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object v0
    :try_end_1
    .catch Lb/b/a/d/i; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    move-object v11, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lb/b/a/c/k;ILjava/lang/String;IILb/b/a/d/j;)Lb/b/a/d/a;
    .registers 13

    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object p2

    invoke-virtual {p1}, Lb/b/a/c/k;->g()Lb/b/f/c/b;

    move-result-object v5

    new-instance p1, Lb/b/a/a/z;

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lb/b/a/a/z;-><init>(Ljava/lang/String;Lb/b/h/c;IILb/b/f/c/b;)V

    if-eqz p6, :cond_0

    const-string p3, "attribute data"

    invoke-interface {p6, p2, p4, p5, p3}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    return-object p1
.end method
