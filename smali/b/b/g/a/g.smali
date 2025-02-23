.class public final Lb/b/g/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/BitSet;

.field private final b:Ljava/util/BitSet;

.field private final c:I

.field private final d:Lb/b/g/al;

.field private final e:Lcom/gmail/heagoo/pngeditor/m;

.field private f:Lb/b/g/af;

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>(Lb/b/g/al;ILcom/gmail/heagoo/pngeditor/m;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object p1, p0, Lb/b/g/a/g;->d:Lb/b/g/al;

    iput p2, p0, Lb/b/g/a/g;->c:I

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/a/g;->a:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/a/g;->b:Ljava/util/BitSet;

    iput-object p3, p0, Lb/b/g/a/g;->e:Lcom/gmail/heagoo/pngeditor/m;

    return-void
.end method

.method public static a(Lb/b/g/al;)Lcom/gmail/heagoo/pngeditor/m;
    .registers 10

    invoke-virtual {p0}, Lb/b/g/al;->g()I

    move-result v0

    new-instance v1, Lcom/gmail/heagoo/pngeditor/m;

    invoke-direct {v1, v0}, Lcom/gmail/heagoo/pngeditor/m;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    new-instance v4, Lb/b/g/a/g;

    invoke-direct {v4, p0, v3, v1}, Lb/b/g/a/g;-><init>(Lb/b/g/al;ILcom/gmail/heagoo/pngeditor/m;)V

    iget-object v5, v4, Lb/b/g/a/g;->d:Lb/b/g/al;

    iget v6, v4, Lb/b/g/a/g;->c:I

    invoke-virtual {v5, v6}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/aj;

    sget v7, Lb/b/g/a/i;->d:I

    iput v7, v4, Lb/b/g/a/g;->h:I

    instance-of v7, v6, Lb/b/g/aa;

    if-eqz v7, :cond_1

    check-cast v6, Lb/b/g/aa;

    iget v7, v4, Lb/b/g/a/g;->c:I

    iget-object v8, v4, Lb/b/g/a/g;->d:Lb/b/g/al;

    invoke-virtual {v6, v7, v8}, Lb/b/g/aa;->a(ILb/b/g/al;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/af;

    iput-object v7, v4, Lb/b/g/a/g;->f:Lb/b/g/af;

    sget v7, Lb/b/g/a/i;->c:I

    iput v7, v4, Lb/b/g/a/g;->h:I

    invoke-direct {v4}, Lb/b/g/a/g;->a()V

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v7

    iput-object v7, v4, Lb/b/g/a/g;->f:Lb/b/g/af;

    iget-object v7, v4, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v7}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, v4, Lb/b/g/a/g;->g:I

    iget v6, v4, Lb/b/g/a/g;->g:I

    if-ltz v6, :cond_2

    sget v6, Lb/b/g/a/i;->a:I

    iput v6, v4, Lb/b/g/a/g;->h:I

    invoke-direct {v4}, Lb/b/g/a/g;->a()V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "insn not found in it\'s own block"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    iget-object v5, v4, Lb/b/g/a/g;->b:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    if-ltz v5, :cond_4

    iget-object v6, v4, Lb/b/g/a/g;->d:Lb/b/g/al;

    invoke-virtual {v6}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/af;

    iput-object v6, v4, Lb/b/g/a/g;->f:Lb/b/g/af;

    iget-object v6, v4, Lb/b/g/a/g;->b:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->clear(I)V

    sget v5, Lb/b/g/a/i;->c:I

    iput v5, v4, Lb/b/g/a/g;->h:I

    invoke-direct {v4}, Lb/b/g/a/g;->a()V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {p0, v1}, Lb/b/g/a/g;->a(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;)V

    return-object v1
.end method

.method private a()V
    .registers 3

    :goto_0
    iget v0, p0, Lb/b/g/a/g;->h:I

    sget v1, Lb/b/g/a/i;->d:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lb/b/g/a/h;->a:[I

    iget v1, p0, Lb/b/g/a/g;->h:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v0, Lb/b/g/a/i;->d:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    invoke-direct {p0}, Lb/b/g/a/g;->b()V

    goto :goto_0

    :pswitch_1
    sget v0, Lb/b/g/a/i;->d:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    invoke-direct {p0}, Lb/b/g/a/g;->d()V

    goto :goto_0

    :pswitch_2
    sget v0, Lb/b/g/a/i;->d:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    invoke-direct {p0}, Lb/b/g/a/g;->c()V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;)V
    .registers 11

    invoke-virtual {p0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    if-eq v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/aj;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/aj;

    invoke-virtual {v5}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v6}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lb/b/g/a/g;->a(Lcom/gmail/heagoo/pngeditor/m;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v6}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v7

    invoke-virtual {v5}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v8

    invoke-static {p1, v7, v8}, Lb/b/g/a/g;->a(Lcom/gmail/heagoo/pngeditor/m;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v5}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v5

    invoke-virtual {v6}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/f/b/r;->f()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lcom/gmail/heagoo/pngeditor/m;->a(II)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Lcom/gmail/heagoo/pngeditor/m;Lb/b/f/b/r;Lb/b/f/b/u;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lb/b/f/b/u;->a_()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/gmail/heagoo/pngeditor/m;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lb/b/g/a/g;->a:Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/a/g;->a:Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    iget v1, p0, Lb/b/g/a/g;->c:I

    invoke-virtual {v0, v1}, Lb/b/g/af;->c(I)V

    iget-object v0, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/g/a/g;->g:I

    sget v0, Lb/b/g/a/i;->b:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    :cond_0
    return-void
.end method

.method private c()V
    .registers 3

    iget v0, p0, Lb/b/g/a/g;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    iget v1, p0, Lb/b/g/a/g;->c:I

    invoke-virtual {v0, v1}, Lb/b/g/af;->d(I)V

    iget-object v0, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lb/b/g/a/g;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void

    :cond_0
    iget v0, p0, Lb/b/g/a/g;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/g/a/g;->g:I

    sget v0, Lb/b/g/a/i;->b:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    return-void
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lb/b/g/a/g;->f:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lb/b/g/a/g;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-virtual {v0}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v1

    iget v2, p0, Lb/b/g/a/g;->c:I

    invoke-virtual {v0, v2}, Lb/b/g/aj;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/b/g/a/g;->e:Lcom/gmail/heagoo/pngeditor/m;

    iget v2, p0, Lb/b/g/a/g;->c:I

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/gmail/heagoo/pngeditor/m;->a(II)V

    :cond_0
    sget v0, Lb/b/g/a/i;->a:I

    iput v0, p0, Lb/b/g/a/g;->h:I

    :cond_1
    return-void
.end method
