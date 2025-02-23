.class public Lcom/gmail/heagoo/pngeditor/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/f/b/c;

.field private final b:I

.field private c:[Lb/b/h/k;

.field private d:Lb/b/h/k;


# direct methods
.method public constructor <init>(Lb/b/f/b/c;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/j;->a:Lb/b/f/b/c;

    iput p2, p0, Lcom/gmail/heagoo/pngeditor/j;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/j;->c:[Lb/b/h/k;

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/j;->d:Lb/b/h/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "blocks == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lb/b/f/b/c;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/j;->a:Lb/b/f/b/c;

    return-object v0
.end method

.method public a(I)Lb/b/h/k;
    .registers 15

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/j;->d:Lb/b/h/k;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/j;->a:Lb/b/f/b/c;

    invoke-virtual {v0}, Lb/b/f/b/c;->l()I

    move-result v0

    new-array v1, v0, [Lb/b/h/k;

    new-instance v2, Lb/b/h/k;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lb/b/h/k;-><init>(I)V

    iget-object v4, p0, Lcom/gmail/heagoo/pngeditor/j;->a:Lb/b/f/b/c;

    invoke-virtual {v4}, Lb/b/f/b/c;->a_()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, p0, Lcom/gmail/heagoo/pngeditor/j;->a:Lb/b/f/b/c;

    invoke-virtual {v7, v6}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/f/b/a;->a()I

    move-result v8

    invoke-virtual {v7}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/h/k;->f()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v8}, Lb/b/h/k;->c(I)V

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-virtual {v7, v10}, Lb/b/h/k;->b(I)I

    move-result v11

    aget-object v12, v1, v11

    if-nez v12, :cond_1

    new-instance v12, Lb/b/h/k;

    invoke-direct {v12, v3}, Lb/b/h/k;-><init>(I)V

    aput-object v12, v1, v11

    :cond_1
    invoke-virtual {v12, v8}, Lb/b/h/k;->c(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v5, v0, :cond_5

    aget-object v3, v1, v5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lb/b/h/k;->j()V

    invoke-virtual {v3}, Lb/b/h/k;->b_()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lb/b/h/k;->j()V

    invoke-virtual {v2}, Lb/b/h/k;->b_()V

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/j;->b:I

    aget-object v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/j;->b:I

    sget-object v3, Lb/b/h/k;->a:Lb/b/h/k;

    aput-object v3, v1, v0

    :cond_6
    iput-object v1, p0, Lcom/gmail/heagoo/pngeditor/j;->c:[Lb/b/h/k;

    iput-object v2, p0, Lcom/gmail/heagoo/pngeditor/j;->d:Lb/b/h/k;

    :cond_7
    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/j;->c:[Lb/b/h/k;

    aget-object v0, v0, p1

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such block: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/pngeditor/j;->b:I

    return v0
.end method
