.class public Lb/b/b/c/c;
.super Lb/b/b/c/b;


# instance fields
.field protected c:Lb/b/a/c/k;

.field protected d:Z

.field private final e:Z

.field private f:Z

.field private final g:Z


# direct methods
.method constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lb/b/b/c/b;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V

    iput-boolean p4, p0, Lb/b/b/c/c;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/b/c/c;->d:Z

    iput-boolean p1, p0, Lb/b/b/c/c;->f:Z

    iget-boolean p1, p5, Lb/b/b/c/a;->g:Z

    iput-boolean p1, p0, Lb/b/b/c/c;->g:Z

    return-void
.end method

.method public static a([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V
    .registers 12

    new-instance v6, Lb/b/b/c/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb/b/b/c/c;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V

    invoke-virtual {v6}, Lb/b/b/c/c;->e()V

    return-void
.end method

.method private b(Lb/b/a/b/n;)V
    .registers 16

    invoke-virtual {p1}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/j;->a()Lb/b/h/c;

    move-result-object v1

    invoke-static {p1}, Lb/b/a/b/b;->a(Lb/b/a/b/n;)Lb/b/a/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/f;->a_()I

    move-result v2

    new-instance v3, Lb/b/a/c/j;

    invoke-direct {v3, v1, p0}, Lb/b/a/c/j;-><init>(Lb/b/h/c;Lb/b/a/d/j;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lb/b/b/c/c;->d:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_6

    invoke-virtual {p1, v5}, Lb/b/a/b/f;->a(I)Lcom/gmail/heagoo/common/ae;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gmail/heagoo/common/ae;->b()I

    move-result v9

    invoke-virtual {v8}, Lcom/gmail/heagoo/common/ae;->c()I

    move-result v10

    if-ge v6, v9, :cond_0

    sub-int v11, v9, v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "dead code "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v1, v6, v11, v12}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "block "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/gmail/heagoo/common/ae;->a()I

    move-result v11

    invoke-static {v11}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v9, v4, v6}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lb/b/b/c/c;->a(I)V

    :goto_1
    if-ge v9, v10, :cond_1

    invoke-virtual {v0, v9, v3}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    move-result v6

    invoke-virtual {v3, v9}, Lb/b/a/c/j;->a(I)V

    add-int/2addr v9, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/gmail/heagoo/common/ae;->d()Lb/b/h/k;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/h/k;->f()I

    move-result v7

    if-nez v7, :cond_2

    const-string v6, "returns"

    invoke-virtual {p0, v1, v10, v4, v6}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_3

    invoke-virtual {v6, v9}, Lb/b/h/k;->b(I)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "next "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v1, v10, v4, v11}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v8}, Lcom/gmail/heagoo/common/ae;->e()Lb/b/a/b/g;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/a/b/g;->a_()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_5

    invoke-virtual {v6, v8}, Lb/b/a/b/g;->a(I)Lb/b/a/b/h;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/a/b/h;->d()Lb/b/f/c/ae;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "catch "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lb/b/f/c/ae;->a:Lb/b/f/c/ae;

    if-ne v11, v13, :cond_4

    const-string v11, "<any>"

    goto :goto_5

    :cond_4
    invoke-virtual {v11}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lb/b/a/b/h;->c()I

    move-result v9

    invoke-static {v9}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v10, v4, v9}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lb/b/b/c/c;->a(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v10

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Lb/b/h/c;->a()I

    move-result p1

    if-ge v6, p1, :cond_7

    sub-int v0, p1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dead code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v6, v0, p1}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_7
    iput-boolean v7, p0, Lb/b/b/c/c;->d:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-boolean v0, p0, Lb/b/b/c/c;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lb/b/b/c/b;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/h/c;IILjava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lb/b/b/c/c;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lb/b/b/c/b;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/h/c;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lb/b/b/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/b/c/c;->d:Z

    iget-boolean v1, p0, Lb/b/b/c/c;->f:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lb/b/b/c/c;->f:Z

    goto :goto_0

    :cond_2
    const-string v1, "\n"

    invoke-virtual {p0, p1, p2, v0, v1}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/b/c/c;->d:Z

    return-void
.end method

.method public a(Lb/b/h/c;Ljava/lang/String;Lb/b/a/d/f;)V
    .registers 16

    instance-of p1, p3, Lb/b/a/d/g;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lb/b/b/c/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Lb/b/a/d/f;->f()I

    move-result p1

    and-int/lit16 p1, p1, 0x500

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lb/b/a/b/n;

    check-cast p3, Lb/b/a/d/g;

    iget-object p2, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0, v0}, Lb/b/a/b/n;-><init>(Lb/b/a/d/g;Lb/b/a/d/c;ZZ)V

    iget-boolean p2, p0, Lb/b/b/c/c;->e:Z

    if-eqz p2, :cond_a

    sget-object p2, Lb/b/f/b/f;->a:Lb/b/f/b/f;

    invoke-virtual {p1}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/a/b/j;->a()Lb/b/h/c;

    move-result-object p3

    iget-object v1, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    invoke-virtual {v1}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object v1

    iget-object v2, p0, Lb/b/b/c/c;->b:Lcom/gmail/heagoo/b/a/a;

    invoke-static {p1, p2, v1, v2}, Lb/b/a/b/z;->a(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v3, p0, Lb/b/b/c/c;->g:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lb/b/a/b/n;->f()I

    move-result v3

    invoke-static {v3}, La/a/a;->i(I)Z

    move-result v3

    invoke-static {p1}, Lb/b/b/c/c;->a(Lb/b/a/b/n;)I

    move-result p1

    invoke-static {v1, p1, v3, v0, p2}, Lb/b/g/y;->a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->m()[I

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "first "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result v4

    invoke-static {v4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    aget v6, p2, v5

    invoke-virtual {p1, v6}, Lb/b/f/b/c;->c(I)I

    move-result v7

    invoke-virtual {p1, v7}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v7

    const-string v8, "block "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/gmail/heagoo/pngeditor/j;->a(I)Lb/b/h/k;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/h/k;->f()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    const-string v10, "  pred "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Lb/b/h/k;->b(I)I

    move-result v10

    invoke-static {v10}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/b/l;->a_()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_5

    invoke-virtual {v6, v9}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    const-string v10, "  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/i;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/h/k;->f()I

    move-result v8

    if-nez v8, :cond_6

    const-string v6, "  returns\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Lb/b/f/b/a;->d()I

    move-result v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_8

    invoke-virtual {v6, v9}, Lb/b/h/k;->b(I)I

    move-result v10

    const-string v11, "  next "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v0, :cond_7

    if-ne v10, v7, :cond_7

    const-string v10, " *"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    iput-boolean v4, p0, Lb/b/b/c/c;->d:Z

    invoke-virtual {p3}, Lb/b/h/c;->a()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, v4, p1, p2}, Lb/b/b/c/c;->a(Lb/b/h/c;IILjava/lang/String;)V

    iput-boolean v0, p0, Lb/b/b/c/c;->d:Z

    return-void

    :cond_a
    invoke-direct {p0, p1}, Lb/b/b/c/c;->b(Lb/b/a/b/n;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lb/b/b/c/c;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/b/c/c;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e()V
    .registers 5

    invoke-virtual {p0}, Lb/b/b/c/c;->b()[B

    move-result-object v0

    new-instance v1, Lb/b/h/c;

    invoke-direct {v1, v0}, Lb/b/h/c;-><init>([B)V

    new-instance v0, Lb/b/a/c/k;

    invoke-virtual {p0}, Lb/b/b/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/b/c/c;->d()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    iput-object v0, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    iget-object v0, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    sget-object v2, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {v0, v2}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    iget-object v0, p0, Lb/b/b/c/c;->c:Lb/b/a/c/k;

    invoke-virtual {v0}, Lb/b/a/c/k;->c()I

    new-instance v0, Lb/b/a/c/k;

    invoke-virtual {p0}, Lb/b/b/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/b/c/c;->d()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    sget-object v1, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {v0, v1}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    invoke-virtual {v0, p0}, Lb/b/a/c/k;->a(Lb/b/a/d/j;)V

    invoke-virtual {v0}, Lb/b/a/c/k;->c()I

    return-void
.end method
