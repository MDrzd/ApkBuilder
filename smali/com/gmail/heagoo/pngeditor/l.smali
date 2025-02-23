.class public Lcom/gmail/heagoo/pngeditor/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/gmail/heagoo/pngeditor/j;

.field private final b:Lb/b/f/b/c;

.field private final c:Lb/b/f/b/c;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/l;->a:Lcom/gmail/heagoo/pngeditor/j;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/l;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {p1}, Lb/b/f/b/c;->j()Lb/b/f/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    return-void
.end method

.method private a(ILb/b/h/k;)V
    .registers 16

    invoke-virtual {p2}, Lb/b/h/k;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Lb/b/h/k;->b(I)I

    move-result v3

    iget-object v4, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v4, v3}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/gmail/heagoo/pngeditor/l;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v4}, Lb/b/f/b/a;->a()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/gmail/heagoo/pngeditor/j;->a(I)Lb/b/h/k;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v7, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    invoke-virtual {v4, v6}, Lb/b/h/k;->b(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/h/k;->i()Lb/b/h/k;

    move-result-object v8

    invoke-virtual {v8, v3}, Lb/b/h/k;->f(I)I

    move-result v9

    invoke-virtual {v8, v9, p1}, Lb/b/h/k;->b(II)V

    invoke-virtual {v7}, Lb/b/f/b/a;->d()I

    move-result v9

    if-ne v9, v3, :cond_0

    move v9, p1

    :cond_0
    invoke-virtual {v8}, Lb/b/h/k;->b_()V

    new-instance v10, Lb/b/f/b/a;

    invoke-virtual {v7}, Lb/b/f/b/a;->a()I

    move-result v11

    invoke-virtual {v7}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v12

    invoke-direct {v10, v11, v12, v8, v9}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    iget-object v8, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    iget-object v9, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    invoke-virtual {v7}, Lb/b/f/b/a;->a()I

    move-result v7

    invoke-virtual {v9, v7}, Lb/b/f/b/c;->c(I)I

    move-result v7

    invoke-virtual {v8, v7, v10}, Lb/b/f/b/c;->a(ILb/b/f/b/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/gmail/heagoo/pngeditor/j;
    .registers 16

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v0}, Lb/b/f/b/c;->a_()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v2}, Lb/b/f/b/c;->l()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v5, v3}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/a;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/gmail/heagoo/pngeditor/l;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v5}, Lb/b/f/b/a;->a()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/gmail/heagoo/pngeditor/j;->a(I)Lb/b/h/k;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/h/k;->f()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Lb/b/h/k;->b(I)I

    move-result v8

    iget-object v9, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v9, v8}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/h/k;->f()I

    move-result v10

    if-gt v10, v4, :cond_2

    invoke-virtual {v9}, Lb/b/f/b/a;->f()Lb/b/f/b/i;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/x;->a()I

    move-result v10

    const/16 v11, 0x37

    if-eq v10, v11, :cond_2

    new-instance v10, Lb/b/h/k;

    invoke-direct {v10}, Lb/b/h/k;-><init>()V

    add-int/lit8 v11, v7, 0x1

    :goto_2
    if-ge v11, v6, :cond_1

    invoke-virtual {v5, v11}, Lb/b/h/k;->b(I)I

    move-result v12

    iget-object v13, p0, Lcom/gmail/heagoo/pngeditor/l;->b:Lb/b/f/b/c;

    invoke-virtual {v13, v12}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v13

    invoke-virtual {v13}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v14

    invoke-virtual {v14}, Lb/b/h/k;->f()I

    move-result v14

    if-ne v14, v4, :cond_0

    invoke-virtual {v9}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v14

    invoke-virtual {v13}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v13

    invoke-virtual {v14, v13}, Lb/b/f/b/l;->a(Lb/b/f/b/l;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v10, v12}, Lb/b/h/k;->c(I)V

    invoke-virtual {v1, v12}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v8, v10}, Lcom/gmail/heagoo/pngeditor/l;->a(ILb/b/h/k;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    sub-int/2addr v0, v4

    :goto_3
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    invoke-virtual {v2, v0}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lb/b/f/b/c;->a(ILb/b/f/b/a;)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    invoke-virtual {v0}, Lb/b/f/b/c;->k()V

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    invoke-virtual {v0}, Lb/b/f/b/c;->b_()V

    new-instance v0, Lcom/gmail/heagoo/pngeditor/j;

    iget-object v1, p0, Lcom/gmail/heagoo/pngeditor/l;->c:Lb/b/f/b/c;

    iget-object v2, p0, Lcom/gmail/heagoo/pngeditor/l;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v2}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/gmail/heagoo/pngeditor/j;-><init>(Lb/b/f/b/c;I)V

    return-object v0
.end method
