.class public final Lb/b/c/b/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/gmail/heagoo/b/a/a;

.field private final b:Lcom/gmail/heagoo/pngeditor/j;

.field private final c:I

.field private final d:Lb/b/f/b/o;

.field private final e:Lcom/gmail/heagoo/neweditor/w;

.field private final f:Lcom/gmail/heagoo/neweditor/y;

.field private final g:Lb/b/c/b/af;

.field private final h:I

.field private i:[I

.field private final j:I

.field private final k:Z


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lb/b/c/b/ac;->a:Lcom/gmail/heagoo/b/a/a;

    iput-object p1, p0, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    iput p2, p0, Lb/b/c/b/ac;->c:I

    iput-object p3, p0, Lb/b/c/b/ac;->d:Lb/b/f/b/o;

    new-instance p2, Lcom/gmail/heagoo/neweditor/w;

    invoke-direct {p2, p1}, Lcom/gmail/heagoo/neweditor/w;-><init>(Lcom/gmail/heagoo/pngeditor/j;)V

    iput-object p2, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    iput p4, p0, Lb/b/c/b/ac;->j:I

    const/4 p2, 0x0

    iput-object p2, p0, Lb/b/c/b/ac;->i:[I

    const/4 p2, 0x1

    new-array v0, p2, [Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/c;->f()I

    move-result p2

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v2

    new-instance v3, Lb/b/c/b/ad;

    invoke-direct {v3, v0, p2, p4}, Lb/b/c/b/ad;-><init>([ZII)V

    invoke-virtual {v2, v3}, Lb/b/f/b/c;->a(Lb/b/f/b/k;)V

    aget-boolean p2, v0, v1

    iput-boolean p2, p0, Lb/b/c/b/ac;->k:Z

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->a_()I

    move-result p2

    mul-int/lit8 v5, p2, 0x3

    invoke-virtual {p1}, Lb/b/f/b/c;->g()I

    move-result v0

    add-int/2addr v0, v5

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lb/b/f/b/o;->f()I

    move-result v2

    add-int/2addr p2, v2

    add-int/2addr v0, p2

    :cond_0
    move v4, v0

    invoke-virtual {p1}, Lb/b/f/b/c;->f()I

    move-result p1

    iget-boolean p2, p0, Lb/b/c/b/ac;->k:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lb/b/c/b/ac;->j:I

    :goto_0
    add-int/2addr p1, v1

    iput p1, p0, Lb/b/c/b/ac;->h:I

    new-instance p1, Lcom/gmail/heagoo/neweditor/y;

    iget v6, p0, Lb/b/c/b/ac;->h:I

    move-object v2, p1

    move-object v3, p5

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/gmail/heagoo/neweditor/y;-><init>(Lcom/gmail/heagoo/b/a/a;IIII)V

    iput-object p1, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    if-eqz p3, :cond_2

    new-instance p1, Lb/b/c/b/ae;

    iget-object p2, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    invoke-direct {p1, p0, p2, p3}, Lb/b/c/b/ae;-><init>(Lb/b/c/b/ac;Lcom/gmail/heagoo/neweditor/y;Lb/b/f/b/o;)V

    :goto_1
    iput-object p1, p0, Lb/b/c/b/ac;->g:Lb/b/c/b/af;

    return-void

    :cond_2
    new-instance p1, Lb/b/c/b/af;

    iget-object p2, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    invoke-direct {p1, p0, p2}, Lb/b/c/b/af;-><init>(Lb/b/c/b/ac;Lcom/gmail/heagoo/neweditor/y;)V

    goto :goto_1
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)Lb/b/c/b/i;
    .registers 15

    new-instance v6, Lb/b/c/b/ac;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb/b/c/b/ac;-><init>(Lcom/gmail/heagoo/pngeditor/j;ILb/b/f/b/o;ILcom/gmail/heagoo/b/a/a;)V

    iget-object p0, v6, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/c;->a_()I

    move-result p1

    invoke-virtual {p0}, Lb/b/f/b/c;->l()I

    move-result p2

    invoke-static {p2}, La/a/a;->n(I)[I

    move-result-object p3

    invoke-static {p2}, La/a/a;->n(I)[I

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/a;->a()I

    move-result v1

    invoke-static {p3, v1}, La/a/a;->b([II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [I

    iget-object v1, v6, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v1}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    :goto_2
    iget-object v4, v6, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v4, v1}, Lcom/gmail/heagoo/pngeditor/j;->a(I)Lb/b/h/k;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Lb/b/h/k;->b(I)I

    move-result v8

    invoke-static {p2, v8}, La/a/a;->a([II)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {p3, v8}, La/a/a;->a([II)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v8}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/f/b/a;->d()I

    move-result v9

    if-ne v9, v1, :cond_1

    invoke-static {p2, v8}, La/a/a;->b([II)V

    move v1, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    if-eq v1, v3, :cond_8

    invoke-static {p3, v1}, La/a/a;->c([II)V

    invoke-static {p2, v1}, La/a/a;->c([II)V

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/a;->d()I

    move-result v4

    invoke-virtual {v1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/h/k;->f()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    if-eq v4, v3, :cond_3

    goto :goto_5

    :cond_3
    :pswitch_0
    invoke-virtual {v5, p4}, Lb/b/h/k;->b(I)I

    move-result v4

    :goto_5
    invoke-virtual {p0, v4}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v4

    goto :goto_6

    :pswitch_1
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lb/b/f/b/a;->a()I

    move-result v4

    invoke-virtual {v1}, Lb/b/f/b/a;->d()I

    move-result v5

    invoke-static {p3, v4}, La/a/a;->a([II)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    if-eq v5, v4, :cond_5

    if-ltz v5, :cond_5

    invoke-static {p3, v5}, La/a/a;->a([II)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_7

    invoke-virtual {v1, v5}, Lb/b/h/k;->b(I)I

    move-result v7

    invoke-static {p3, v7}, La/a/a;->a([II)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v7

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, -0x1

    goto :goto_4

    :cond_8
    invoke-static {p3, p4}, La/a/a;->d([II)I

    move-result v1

    goto/16 :goto_1

    :cond_9
    if-ne v2, p1, :cond_a

    iput-object v0, v6, Lb/b/c/b/ac;->i:[I

    invoke-direct {v6}, Lb/b/c/b/ac;->a()V

    new-instance p0, Lb/b/c/b/ah;

    iget-object p1, v6, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    iget-object p2, v6, Lb/b/c/b/ac;->i:[I

    iget-object p3, v6, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/ah;-><init>(Lcom/gmail/heagoo/pngeditor/j;[ILcom/gmail/heagoo/neweditor/w;)V

    new-instance p1, Lb/b/c/b/i;

    iget p2, v6, Lb/b/c/b/ac;->c:I

    iget-object p3, v6, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    invoke-virtual {p3}, Lcom/gmail/heagoo/neweditor/y;->a()Lb/b/c/b/y;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lb/b/c/b/i;-><init>(ILb/b/c/b/y;Lb/b/c/b/b;)V

    return-object p1

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lb/b/f/b/i;)Lb/b/f/b/u;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v0

    invoke-static {p0, v0}, Lb/b/c/b/ac;->b(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;
    .registers 2

    invoke-static {p0, p1}, Lb/b/c/b/ac;->b(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/c/b/ac;)Lcom/gmail/heagoo/neweditor/w;
    .registers 1

    iget-object p0, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    return-object p0
.end method

.method private a()V
    .registers 7

    iget-object v0, p0, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/ac;->i:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    :goto_1
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lb/b/c/b/ac;->a(Lb/b/f/b/a;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lb/b/f/b/a;I)V
    .registers 7

    iget-object v0, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/neweditor/w;->a(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/neweditor/y;->a(Lb/b/c/b/k;)V

    iget-object v1, p0, Lb/b/c/b/ac;->d:Lb/b/f/b/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/c/b/ac;->d:Lb/b/f/b/o;

    invoke-virtual {v1, p1}, Lb/b/f/b/o;->a(Lb/b/f/b/a;)Lb/b/f/b/w;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    new-instance v3, Lb/b/c/b/u;

    invoke-virtual {v0}, Lb/b/c/b/g;->j()Lb/b/f/b/z;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lb/b/c/b/u;-><init>(Lb/b/f/b/z;Lb/b/f/b/w;)V

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/neweditor/y;->a(Lb/b/c/b/k;)V

    :cond_0
    iget-object v0, p0, Lb/b/c/b/ac;->g:Lb/b/c/b/af;

    iget-object v1, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/neweditor/w;->b(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb/b/c/b/af;->a(Lb/b/f/b/a;Lb/b/c/b/g;)V

    invoke-virtual {p1}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v0

    iget-object v1, p0, Lb/b/c/b/ac;->g:Lb/b/c/b/af;

    invoke-virtual {v0, v1}, Lb/b/f/b/l;->a(Lb/b/f/b/k;)V

    iget-object v0, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    iget-object v1, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/neweditor/w;->c(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/y;->a(Lb/b/c/b/k;)V

    invoke-virtual {p1}, Lb/b/f/b/a;->d()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/a;->g()Lb/b/f/b/i;

    move-result-object v1

    if-ltz v0, :cond_2

    if-eq v0, p2, :cond_2

    invoke-virtual {v1}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/a;->e()I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    const/4 p2, 0x1

    iget-object v1, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/neweditor/w;->a(I)Lb/b/c/b/g;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/gmail/heagoo/neweditor/y;->a(ILb/b/c/b/g;)V

    return-void

    :cond_1
    new-instance p1, Lb/b/c/b/aj;

    sget-object p2, Lb/b/c/b/m;->H:Lcom/gmail/heagoo/neweditor/x;

    invoke-virtual {v1}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v1

    sget-object v2, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    iget-object v3, p0, Lb/b/c/b/ac;->e:Lcom/gmail/heagoo/neweditor/w;

    invoke-virtual {v3, v0}, Lcom/gmail/heagoo/neweditor/w;->a(I)Lb/b/c/b/g;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    iget-object p2, p0, Lb/b/c/b/ac;->f:Lcom/gmail/heagoo/neweditor/y;

    invoke-virtual {p2, p1}, Lcom/gmail/heagoo/neweditor/y;->a(Lb/b/c/b/k;)V

    :cond_2
    return-void
.end method

.method private static b(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;
    .registers 5

    invoke-virtual {p0}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/x;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-static {p0, v0}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lb/b/f/b/u;->b(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lb/b/c/b/ac;)Z
    .registers 1

    iget-boolean p0, p0, Lb/b/c/b/ac;->k:Z

    return p0
.end method

.method static synthetic c(Lb/b/c/b/ac;)I
    .registers 1

    iget p0, p0, Lb/b/c/b/ac;->h:I

    return p0
.end method

.method static synthetic d(Lb/b/c/b/ac;)I
    .registers 1

    iget p0, p0, Lb/b/c/b/ac;->j:I

    return p0
.end method

.method static synthetic e(Lb/b/c/b/ac;)Lcom/gmail/heagoo/pngeditor/j;
    .registers 1

    iget-object p0, p0, Lb/b/c/b/ac;->b:Lcom/gmail/heagoo/pngeditor/j;

    return-object p0
.end method
