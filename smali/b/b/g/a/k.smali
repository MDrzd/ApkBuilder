.class public final Lb/b/g/a/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:Z

.field private final c:Lcom/gmail/heagoo/pngeditor/m;


# direct methods
.method private constructor <init>(Lb/b/g/al;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lb/b/g/a/k;->b:Z

    iput-object p1, p0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-static {p1}, Lb/b/g/a/g;->a(Lb/b/g/al;)Lcom/gmail/heagoo/pngeditor/m;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/a/k;->c:Lcom/gmail/heagoo/pngeditor/m;

    return-void
.end method

.method private a()Lb/b/f/b/c;
    .registers 13

    iget-object v0, p0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object v1

    iget-object v2, p0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->k()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Lb/b/f/b/c;

    invoke-direct {v4, v3}, Lb/b/f/b/c;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    invoke-virtual {v5}, Lb/b/g/af;->e()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v5, v1, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5}, Lb/b/g/af;->m()Lb/b/h/k;

    move-result-object v7

    invoke-virtual {v5}, Lb/b/g/af;->k()I

    move-result v8

    iget-object v9, p0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v9}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object v9

    const/4 v10, -0x1

    if-nez v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lb/b/g/af;->f()I

    move-result v9

    :goto_1
    invoke-virtual {v7, v9}, Lb/b/h/k;->h(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Lb/b/h/k;->f()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_5

    sget-object v7, Lb/b/h/k;->a:Lb/b/h/k;

    invoke-virtual {v5}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/g/aj;

    invoke-virtual {v8}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/x;->d()I

    move-result v9

    const/4 v11, 0x2

    if-eq v9, v11, :cond_4

    sget-object v9, Lb/b/f/b/y;->bi:Lb/b/f/b/x;

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit predecessor must end in valid exit statement."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    const/4 v8, -0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exit predecessor must have no other successors"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lb/b/g/af;->f()I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    invoke-virtual {v7}, Lb/b/h/k;->b_()V

    new-instance v9, Lb/b/f/b/a;

    invoke-virtual {v5}, Lb/b/g/af;->f()I

    move-result v10

    invoke-virtual {v5}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lb/b/g/a/k;->a(Ljava/util/ArrayList;)Lb/b/f/b/l;

    move-result-object v5

    invoke-direct {v9, v10, v5, v7, v8}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    invoke-virtual {v4, v3, v9}, Lb/b/f/b/c;->a(ILb/b/f/b/a;)V

    move v3, v6

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exit block must have no insns when leaving SSA form"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    return-object v4
.end method

.method private static a(Ljava/util/ArrayList;)Lb/b/f/b/l;
    .registers 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lb/b/f/b/l;

    invoke-direct {v1, v0}, Lb/b/f/b/l;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3}, Lb/b/g/aj;->b()Lb/b/f/b/i;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/b/f/b/l;->a(ILb/b/f/b/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/f/b/l;->b_()V

    return-object v1
.end method

.method public static a(Lb/b/g/al;Z)Lcom/gmail/heagoo/pngeditor/j;
    .registers 8

    new-instance v0, Lb/b/g/a/k;

    invoke-direct {v0, p0, p1}, Lb/b/g/a/k;-><init>(Lb/b/g/al;Z)V

    new-instance p0, Lb/b/g/a/a;

    iget-object p1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    iget-object v1, v0, Lb/b/g/a/k;->c:Lcom/gmail/heagoo/pngeditor/m;

    iget-boolean v2, v0, Lb/b/g/a/k;->b:Z

    invoke-direct {p0, p1, v1, v2}, Lb/b/g/a/a;-><init>(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;Z)V

    invoke-virtual {p0}, Lb/b/g/a/j;->a()Lb/b/g/ad;

    move-result-object p0

    iget-object p1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->o()V

    iget-object p1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p1, p0}, Lb/b/g/al;->a(Lb/b/g/ad;)V

    iget-object p0, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    new-instance v2, Lb/b/g/a/m;

    invoke-direct {v2, p0}, Lb/b/g/a/m;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lb/b/g/af;->a(Lb/b/g/ac;)V

    invoke-virtual {v1}, Lb/b/g/af;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->s()V

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->h()I

    move-result p0

    new-instance p1, Lb/b/g/a;

    iget-object v1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->g()I

    move-result v1

    invoke-direct {p1, v1}, Lb/b/g/a;-><init>(I)V

    iget-object v1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->g()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    const/4 v4, 0x1

    if-ge v3, p0, :cond_2

    sub-int v5, v1, p0

    add-int/2addr v5, v3

    :goto_3
    invoke-virtual {p1, v3, v5, v4}, Lb/b/g/a;->a(III)V

    goto :goto_4

    :cond_2
    sub-int v5, v3, p0

    goto :goto_3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p0, p1}, Lb/b/g/al;->a(Lb/b/g/ad;)V

    iget-object p0, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    iget-object p1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    new-instance v1, Lb/b/g/a/l;

    invoke-direct {v1, v0, p0}, Lb/b/g/a/l;-><init>(Lb/b/g/a/k;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2, v1}, Lb/b/g/al;->a(ZLb/b/g/ah;)V

    new-instance p0, Lcom/gmail/heagoo/pngeditor/j;

    invoke-direct {v0}, Lb/b/g/a/k;->a()Lb/b/f/b/c;

    move-result-object p1

    iget-object v1, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    iget-object v0, v0, Lb/b/g/a/k;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lb/b/g/al;->a(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/pngeditor/j;-><init>(Lb/b/f/b/c;I)V

    new-instance p1, Lcom/gmail/heagoo/pngeditor/l;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/pngeditor/l;-><init>(Lcom/gmail/heagoo/pngeditor/j;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/l;->a()Lcom/gmail/heagoo/pngeditor/j;

    move-result-object p0

    return-object p0
.end method
