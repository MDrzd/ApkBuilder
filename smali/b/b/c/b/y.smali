.class public final Lb/b/c/b/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/gmail/heagoo/b/a/a;

.field private final b:I

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/b/a/a;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/c/b/y;->a:Lcom/gmail/heagoo/b/a/a;

    iput p3, p0, Lb/b/c/b/y;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lb/b/c/b/y;->f:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/c/b/y;->d:Z

    iput-boolean p1, p0, Lb/b/c/b/y;->e:Z

    iput p4, p0, Lb/b/c/b/y;->h:I

    return-void
.end method

.method private a(Lb/b/c/b/k;Lcom/gmail/heagoo/neweditor/x;)Lcom/gmail/heagoo/neweditor/x;
    .registers 5

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/c/b/p;->b(Lb/b/c/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/y;->a:Lcom/gmail/heagoo/b/a/a;

    iget-boolean v0, v0, Lcom/gmail/heagoo/b/a/a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/gmail/heagoo/neweditor/x;->a()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p2}, Lb/b/c/b/m;->a(Lcom/gmail/heagoo/neweditor/x;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private a(I)V
    .registers 3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lb/b/c/b/y;->d(I)V

    iget v0, p0, Lb/b/c/b/y;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/c/b/y;->g:I

    return-void
.end method

.method private static a(Ljava/util/HashSet;Lb/b/c/b/k;)V
    .registers 5

    instance-of v0, p1, Lb/b/c/b/h;

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of v0, p1, Lb/b/c/b/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lb/b/c/b/w;

    :goto_0
    invoke-virtual {p1}, Lb/b/c/b/w;->c()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    instance-of v0, p1, Lb/b/c/b/u;

    if-eqz v0, :cond_4

    check-cast p1, Lb/b/c/b/u;

    invoke-virtual {p1}, Lb/b/c/b/u;->c()Lb/b/f/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/w;->g()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-static {p0, v2}, Lb/b/c/b/y;->a(Ljava/util/HashSet;Lb/b/f/b/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    instance-of v0, p1, Lb/b/c/b/v;

    if-eqz v0, :cond_5

    check-cast p1, Lb/b/c/b/v;

    invoke-virtual {p1}, Lb/b/c/b/v;->c()Lb/b/f/b/r;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/c/b/y;->a(Ljava/util/HashSet;Lb/b/f/b/r;)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/util/HashSet;Lb/b/f/b/r;)V
    .registers 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/n;->a()Lb/b/f/c/ad;

    move-result-object v1

    invoke-virtual {v0}, Lb/b/f/b/n;->b()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p1

    sget-object v2, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-eq p1, v2, :cond_1

    :goto_0
    invoke-static {p1}, Lb/b/f/c/ae;->b(Lb/b/f/d/c;)Lb/b/f/c/ae;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object p1, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static a(Lb/b/f/b/r;)Z
    .registers 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/n;->a()Lb/b/f/c/ad;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a([Lcom/gmail/heagoo/neweditor/x;)Z
    .registers 11

    iget v0, p0, Lb/b/c/b/y;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    iget v0, p0, Lb/b/c/b/y;->f:I

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lb/b/c/b/y;->f:I

    move v5, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    iget-object v6, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/c/b/k;

    aget-object v7, p1, v4

    invoke-direct {p0, v6, v7}, Lb/b/c/b/y;->a(Lb/b/c/b/k;Lcom/gmail/heagoo/neweditor/x;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-direct {p0, v6}, Lb/b/c/b/y;->b(Lb/b/c/b/k;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v7

    invoke-virtual {v7, v6}, Lb/b/c/b/p;->c(Lb/b/c/b/k;)Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lb/b/c/b/k;->a(Ljava/util/BitSet;)I

    move-result v6

    if-le v6, v5, :cond_2

    move v5, v6

    goto :goto_3

    :cond_1
    if-eq v7, v8, :cond_3

    :cond_2
    :goto_3
    aput-object v8, p1, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ge v0, v5, :cond_7

    sub-int v0, v5, v0

    iget-object v2, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/b/k;

    instance-of v6, v4, Lb/b/c/b/g;

    if-nez v6, :cond_5

    iget-object v6, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lb/b/c/b/k;->d(I)Lb/b/c/b/k;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    move v0, v5

    goto :goto_1

    :cond_7
    iput v0, p0, Lb/b/c/b/y;->f:I

    return v2
.end method

.method private b(Lb/b/c/b/k;)Lcom/gmail/heagoo/neweditor/x;
    .registers 5

    invoke-virtual {p1}, Lb/b/c/b/k;->l()Lb/b/c/b/k;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lb/b/c/b/y;->a(Lb/b/c/b/k;Lcom/gmail/heagoo/neweditor/x;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No expanded opcode for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)V
    .registers 3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lb/b/c/b/y;->c(I)V

    iget v0, p0, Lb/b/c/b/y;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/c/b/y;->f:I

    return-void
.end method

.method private b([Lcom/gmail/heagoo/neweditor/x;)V
    .registers 13

    iget v0, p0, Lb/b/c/b/y;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    invoke-virtual {v2}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lb/b/c/b/k;->a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    shl-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_a

    iget-object v4, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/b/k;

    invoke-virtual {v4}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v5

    aget-object v6, p1, v1

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v9, v7

    goto :goto_2

    :cond_3
    invoke-direct {p0, v4}, Lb/b/c/b/y;->b(Lb/b/c/b/k;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v7

    invoke-virtual {v7, v4}, Lb/b/c/b/p;->c(Lb/b/c/b/k;)Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v4, v7}, Lb/b/c/b/k;->b(Ljava/util/BitSet;)Lb/b/c/b/k;

    move-result-object v8

    invoke-virtual {v4, v7}, Lb/b/c/b/k;->c(Ljava/util/BitSet;)Lb/b/c/b/k;

    move-result-object v9

    invoke-virtual {v4, v7}, Lb/b/c/b/k;->d(Ljava/util/BitSet;)Lb/b/c/b/k;

    move-result-object v4

    move-object v7, v8

    :goto_2
    instance-of v8, v4, Lb/b/c/b/g;

    if-eqz v8, :cond_4

    move-object v8, v4

    check-cast v8, Lb/b/c/b/g;

    invoke-virtual {v8}, Lb/b/c/b/g;->c()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v7, v4, Lb/b/c/b/al;

    if-nez v7, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/c/b/g;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_7
    if-eq v6, v5, :cond_8

    invoke-virtual {v4, v6}, Lb/b/c/b/k;->a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;

    move-result-object v4

    :cond_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iput-object v2, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private c(I)V
    .registers 6

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    instance-of v3, v2, Lb/b/c/b/g;

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lb/b/c/b/k;->d(I)Lb/b/c/b/k;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c([Lcom/gmail/heagoo/neweditor/x;)V
    .registers 14

    :goto_0
    iget v0, p0, Lb/b/c/b/y;->b:I

    iget v1, p0, Lb/b/c/b/y;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/c/b/y;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/c/b/y;->h:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/c/b/k;

    invoke-virtual {v7}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v7

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Lb/b/f/b/u;->a_()I

    move-result v10

    if-ge v3, v10, :cond_6

    invoke-virtual {v7, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/r;->l()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lb/b/f/b/r;->f()I

    move-result v11

    if-lt v11, v0, :cond_0

    const/4 v11, 0x1

    goto :goto_3

    :cond_0
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v10}, Lb/b/f/b/r;->f()I

    move-result v10

    and-int/2addr v10, v8

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_4

    :cond_1
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_3

    if-eqz v11, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_3
    if-eqz v11, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    goto :goto_1

    :cond_7
    if-le v3, v4, :cond_8

    if-le v5, v6, :cond_8

    invoke-direct {p0, v8}, Lb/b/c/b/y;->b(I)V

    goto :goto_7

    :cond_8
    if-le v3, v4, :cond_9

    :goto_6
    invoke-direct {p0, v8}, Lb/b/c/b/y;->a(I)V

    goto :goto_7

    :cond_9
    if-le v5, v6, :cond_b

    invoke-direct {p0, v8}, Lb/b/c/b/y;->b(I)V

    iget v0, p0, Lb/b/c/b/y;->h:I

    if-eqz v0, :cond_a

    if-le v4, v3, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    invoke-direct {p0, p1}, Lb/b/c/b/y;->a([Lcom/gmail/heagoo/neweditor/x;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private d(I)V
    .registers 10

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lb/b/c/b/y;->b:I

    iget v2, p0, Lb/b/c/b/y;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lb/b/c/b/y;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lb/b/c/b/y;->h:I

    sub-int v2, v1, v2

    new-instance v3, Lb/b/g/a;

    invoke-direct {v3, v1}, Lb/b/g/a;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    const/4 v6, 0x1

    if-lt v5, v2, :cond_0

    add-int v7, v5, p1

    invoke-virtual {v3, v5, v7, v6}, Lb/b/g/a;->a(III)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5, v5, v6}, Lb/b/g/a;->a(III)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    iget-object p1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/k;

    instance-of v1, p1, Lb/b/c/b/g;

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lb/b/c/b/k;->a(Lb/b/g/ad;)Lb/b/c/b/k;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private e()[Lcom/gmail/heagoo/neweditor/x;
    .registers 5

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/gmail/heagoo/neweditor/x;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/b/k;

    invoke-virtual {v3}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private f()V
    .registers 5

    :cond_0
    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/b/k;

    invoke-virtual {v3, v2}, Lb/b/c/b/k;->c(I)V

    invoke-virtual {v3}, Lb/b/c/b/k;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lb/b/c/b/y;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private g()Z
    .registers 12

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/b/k;

    instance-of v4, v3, Lb/b/c/b/aj;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lb/b/c/b/k;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v4

    move-object v6, v3

    check-cast v6, Lb/b/c/b/aj;

    invoke-virtual {v4}, Lcom/gmail/heagoo/neweditor/x;->c()Lb/b/c/b/p;

    move-result-object v7

    invoke-virtual {v7, v6}, Lb/b/c/b/p;->a(Lb/b/c/b/aj;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/gmail/heagoo/neweditor/x;->b()I

    move-result v2

    const/16 v7, 0x28

    if-ne v2, v7, :cond_1

    invoke-direct {p0, v3, v4}, Lb/b/c/b/y;->a(Lb/b/c/b/k;Lcom/gmail/heagoo/neweditor/x;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lb/b/c/b/k;->a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/g;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lb/b/c/b/aj;

    sget-object v7, Lb/b/c/b/m;->H:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v6}, Lb/b/c/b/aj;->j()Lb/b/f/b/z;

    move-result-object v8

    sget-object v9, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-virtual {v6}, Lb/b/c/b/aj;->c()Lb/b/c/b/g;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    iget-object v7, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Lb/b/c/b/aj;->a(Lb/b/c/b/g;)Lb/b/c/b/aj;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    add-int/2addr v1, v5

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public final a(ILb/b/c/b/g;)V
    .registers 5

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :try_start_0
    iget-object p1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/c/b/aj;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lb/b/c/b/aj;->a(Lb/b/c/b/g;)Lb/b/c/b/aj;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-reversible instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too few instructions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/c/b/j;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/c/b/k;

    instance-of v2, v1, Lb/b/c/b/h;

    if-eqz v2, :cond_2

    check-cast v1, Lb/b/c/b/h;

    invoke-virtual {v1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object v2

    invoke-interface {p1, v2}, Lb/b/c/b/j;->a(Lb/b/f/c/a;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1, v3}, Lb/b/c/b/h;->a(I)V

    :cond_1
    instance-of v3, v2, Lb/b/f/c/x;

    if-eqz v3, :cond_0

    check-cast v2, Lb/b/f/c/x;

    invoke-virtual {v2}, Lb/b/f/c/x;->l()Lb/b/f/c/ae;

    move-result-object v2

    invoke-interface {p1, v2}, Lb/b/c/b/j;->a(Lb/b/f/c/a;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Lb/b/c/b/h;->b(I)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lb/b/c/b/w;

    if-eqz v2, :cond_0

    check-cast v1, Lb/b/c/b/w;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lb/b/c/b/w;->c()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lb/b/c/b/w;->a(I)Lb/b/f/c/a;

    move-result-object v3

    invoke-interface {p1, v3}, Lb/b/c/b/j;->a(Lb/b/f/c/a;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lb/b/c/b/w;->a(II)V

    instance-of v4, v3, Lb/b/f/c/x;

    if-eqz v4, :cond_3

    check-cast v3, Lb/b/f/c/x;

    invoke-virtual {v3}, Lb/b/f/c/x;->l()Lb/b/f/c/ae;

    move-result-object v3

    invoke-interface {p1, v3}, Lb/b/c/b/j;->a(Lb/b/f/c/a;)I

    move-result v3

    invoke-virtual {v1, v3}, Lb/b/c/b/w;->e(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lb/b/c/b/k;)V
    .registers 7

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lb/b/c/b/y;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lb/b/c/b/k;->j()Lb/b/f/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/z;->a()I

    move-result v0

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lb/b/c/b/y;->d:Z

    :cond_0
    iget-boolean v0, p0, Lb/b/c/b/y;->e:Z

    if-nez v0, :cond_4

    instance-of v0, p1, Lb/b/c/b/u;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lb/b/c/b/u;

    invoke-virtual {p1}, Lb/b/c/b/u;->c()Lb/b/f/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/w;->g()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-static {v4}, Lb/b/c/b/y;->a(Lb/b/f/b/r;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lb/b/c/b/v;

    if-eqz v0, :cond_3

    check-cast p1, Lb/b/c/b/v;

    invoke-virtual {p1}, Lb/b/c/b/v;->c()Lb/b/f/b/r;

    move-result-object p1

    invoke-static {p1}, Lb/b/c/b/y;->a(Lb/b/f/b/r;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lb/b/c/b/y;->e:Z

    :cond_4
    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/c/b/y;->d:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/c/b/y;->e:Z

    return v0
.end method

.method public final c()Ljava/util/HashSet;
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/k;

    invoke-static {v0, v2}, Lb/b/c/b/y;->a(Ljava/util/HashSet;Lb/b/c/b/k;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final d()Lb/b/c/b/l;
    .registers 4

    iget v0, p0, Lb/b/c/b/y;->f:I

    if-gez v0, :cond_1

    invoke-direct {p0}, Lb/b/c/b/y;->e()[Lcom/gmail/heagoo/neweditor/x;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/c/b/y;->a([Lcom/gmail/heagoo/neweditor/x;)Z

    iget-object v1, p0, Lb/b/c/b/y;->a:Lcom/gmail/heagoo/b/a/a;

    iget-boolean v1, v1, Lcom/gmail/heagoo/b/a/a;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lb/b/c/b/y;->c([Lcom/gmail/heagoo/neweditor/x;)V

    :cond_0
    invoke-direct {p0, v0}, Lb/b/c/b/y;->b([Lcom/gmail/heagoo/neweditor/x;)V

    invoke-direct {p0}, Lb/b/c/b/y;->f()V

    iget-object v0, p0, Lb/b/c/b/y;->c:Ljava/util/ArrayList;

    iget v1, p0, Lb/b/c/b/y;->f:I

    iget v2, p0, Lb/b/c/b/y;->b:I

    add-int/2addr v1, v2

    iget v2, p0, Lb/b/c/b/y;->g:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lb/b/c/b/l;->a(Ljava/util/ArrayList;I)Lb/b/c/b/l;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
