.class public Lcom/gmail/heagoo/pngeditor/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:Ljava/util/ArrayList;

.field private final c:Lb/b/g/t;

.field private final d:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/k;->a:Lb/b/g/al;

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/k;->b:Ljava/util/ArrayList;

    new-instance v1, Lb/b/g/t;

    invoke-direct {v1, p1}, Lb/b/g/t;-><init>(Lb/b/g/al;)V

    iput-object v1, p0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/k;->d:Ljava/util/BitSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lb/b/g/al;)Lb/b/g/t;
    .registers 15

    new-instance v0, Lcom/gmail/heagoo/pngeditor/k;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/pngeditor/k;-><init>(Lb/b/g/al;)V

    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/k;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->g()I

    move-result p0

    if-lez p0, :cond_a

    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/k;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->c()I

    move-result p0

    :goto_0
    if-ltz p0, :cond_a

    iget-object v1, v0, Lcom/gmail/heagoo/pngeditor/k;->d:Ljava/util/BitSet;

    invoke-virtual {v1, p0}, Ljava/util/BitSet;->clear(I)V

    iget-object v1, v0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    invoke-virtual {v1, p0}, Lb/b/g/t;->b(I)Lb/b/f/b/w;

    move-result-object v1

    iget-object v2, v0, Lcom/gmail/heagoo/pngeditor/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v2}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Lcom/gmail/heagoo/pngeditor/k;->a:Lb/b/g/al;

    invoke-virtual {v5}, Lb/b/g/al;->e()I

    move-result v5

    const/4 v6, 0x0

    if-eq p0, v5, :cond_9

    add-int/lit8 p0, v4, -0x1

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/aj;

    invoke-virtual {v5}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v7

    invoke-interface {v7}, Lb/b/f/d/e;->a_()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    move-object v7, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    if-eqz v8, :cond_2

    if-ne v5, p0, :cond_2

    invoke-virtual {v7}, Lb/b/f/b/w;->b_()V

    invoke-virtual {v7}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object v7

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/g/aj;

    invoke-virtual {v9}, Lb/b/g/aj;->e()Lb/b/f/b/r;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lb/b/f/b/r;->f()I

    move-result v10

    invoke-virtual {v7, v10}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lb/b/f/b/r;->f()I

    move-result v9

    invoke-virtual {v7, v9}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v9

    invoke-virtual {v7, v9}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Lb/b/f/b/r;->n()Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v7, v10}, Lb/b/f/b/w;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v11

    invoke-virtual {v10, v11}, Lb/b/f/b/r;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v11

    invoke-virtual {v7, v11}, Lb/b/f/b/w;->a(Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lb/b/f/b/r;->f()I

    move-result v12

    invoke-virtual {v10}, Lb/b/f/b/r;->f()I

    move-result v13

    if-eq v12, v13, :cond_4

    invoke-virtual {v7, v11}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    :cond_4
    iget-object v11, v0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    invoke-virtual {v11, v9, v10}, Lb/b/g/t;->a(Lb/b/g/aj;Lb/b/f/b/r;)V

    invoke-virtual {v7, v10}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lb/b/f/b/w;->b_()V

    invoke-virtual {v2}, Lb/b/g/af;->i()Lb/b/h/k;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result v3

    invoke-virtual {v2}, Lb/b/g/af;->j()I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    invoke-virtual {p0, v4}, Lb/b/h/k;->b(I)I

    move-result v5

    if-ne v5, v2, :cond_7

    move-object v8, v7

    goto :goto_6

    :cond_7
    move-object v8, v1

    :goto_6
    iget-object v9, v0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    invoke-virtual {v9, v5, v8}, Lb/b/g/t;->a(ILb/b/f/b/w;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v0, Lcom/gmail/heagoo/pngeditor/k;->d:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->set(I)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/k;->d:Ljava/util/BitSet;

    invoke-virtual {p0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    goto/16 :goto_0

    :cond_a
    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    invoke-virtual {p0}, Lb/b/g/t;->b_()V

    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/k;->c:Lb/b/g/t;

    return-object p0
.end method
