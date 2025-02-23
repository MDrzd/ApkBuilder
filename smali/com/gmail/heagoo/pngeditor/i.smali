.class public Lcom/gmail/heagoo/pngeditor/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/gmail/heagoo/pngeditor/j;

.field private final b:Lb/b/f/b/c;

.field private final c:Lb/b/f/b/o;

.field private final d:[I


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/c;->l()I

    move-result v1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/i;->a:Lcom/gmail/heagoo/pngeditor/j;

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/i;->b:Lb/b/f/b/c;

    new-instance v0, Lb/b/f/b/o;

    invoke-direct {v0, p1}, Lb/b/f/b/o;-><init>(Lcom/gmail/heagoo/pngeditor/j;)V

    iput-object v0, p0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    invoke-static {v1}, La/a/a;->n(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/i;->d:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;)Lb/b/f/b/o;
    .registers 15

    new-instance v0, Lcom/gmail/heagoo/pngeditor/i;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/pngeditor/i;-><init>(Lcom/gmail/heagoo/pngeditor/j;)V

    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/i;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result p0

    :goto_0
    if-ltz p0, :cond_9

    iget-object v1, v0, Lcom/gmail/heagoo/pngeditor/i;->d:[I

    invoke-static {v1, p0}, La/a/a;->c([II)V

    iget-object v1, v0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    invoke-virtual {v1, p0}, Lb/b/f/b/o;->a(I)Lb/b/f/b/w;

    move-result-object v1

    iget-object v2, v0, Lcom/gmail/heagoo/pngeditor/i;->b:Lb/b/f/b/c;

    invoke-virtual {v2, p0}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/l;->a_()I

    move-result v3

    invoke-virtual {p0}, Lb/b/f/b/a;->i()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lb/b/f/b/l;->f()Lb/b/f/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v6, v3, -0x1

    move-object v8, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_5

    if-eqz v4, :cond_1

    if-ne v7, v6, :cond_1

    invoke-virtual {v8}, Lb/b/f/b/w;->b_()V

    invoke-virtual {v8}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object v8

    :cond_1
    invoke-virtual {v2, v7}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/f/b/i;->i()Lb/b/f/b/r;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lb/b/f/b/r;->f()I

    move-result v10

    invoke-virtual {v8, v10}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lb/b/f/b/r;->f()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/b/f/b/w;->a(I)Lb/b/f/b/r;

    move-result-object v9

    invoke-virtual {v8, v9}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Lb/b/f/b/r;->n()Lb/b/f/b/r;

    move-result-object v10

    invoke-virtual {v8, v10}, Lb/b/f/b/w;->a(Lb/b/f/b/r;)Lb/b/f/b/r;

    move-result-object v11

    invoke-virtual {v10, v11}, Lb/b/f/b/r;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v10}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object v11

    invoke-virtual {v8, v11}, Lb/b/f/b/w;->a(Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lb/b/f/b/r;->f()I

    move-result v12

    invoke-virtual {v10}, Lb/b/f/b/r;->f()I

    move-result v13

    if-eq v12, v13, :cond_3

    invoke-virtual {v8, v11}, Lb/b/f/b/w;->c(Lb/b/f/b/r;)V

    :cond_3
    iget-object v11, v0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    invoke-virtual {v11, v9, v10}, Lb/b/f/b/o;->a(Lb/b/f/b/i;Lb/b/f/b/r;)V

    invoke-virtual {v8, v10}, Lb/b/f/b/w;->d(Lb/b/f/b/r;)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lb/b/f/b/w;->b_()V

    invoke-virtual {p0}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/h/k;->f()I

    move-result v3

    invoke-virtual {p0}, Lb/b/f/b/a;->d()I

    move-result p0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Lb/b/h/k;->b(I)I

    move-result v6

    if-ne v6, p0, :cond_6

    move-object v7, v8

    goto :goto_5

    :cond_6
    move-object v7, v1

    :goto_5
    iget-object v9, v0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    invoke-virtual {v9, v6, v7}, Lb/b/f/b/o;->a(ILb/b/f/b/w;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/gmail/heagoo/pngeditor/i;->d:[I

    invoke-static {v7, v6}, La/a/a;->b([II)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/i;->d:[I

    invoke-static {p0, v5}, La/a/a;->d([II)I

    move-result p0

    goto/16 :goto_0

    :cond_9
    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    invoke-virtual {p0}, Lb/b/f/b/o;->b_()V

    iget-object p0, v0, Lcom/gmail/heagoo/pngeditor/i;->c:Lb/b/f/b/o;

    return-object p0
.end method
