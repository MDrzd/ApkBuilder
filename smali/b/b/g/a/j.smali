.class public abstract Lb/b/g/a/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lb/b/g/al;

.field private b:Lcom/gmail/heagoo/pngeditor/m;


# direct methods
.method public constructor <init>(Lb/b/g/al;Lcom/gmail/heagoo/pngeditor/m;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/a/j;->a:Lb/b/g/al;

    iput-object p2, p0, Lb/b/g/a/j;->b:Lcom/gmail/heagoo/pngeditor/m;

    return-void
.end method


# virtual methods
.method protected final a(Lb/b/g/aj;Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 10

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lb/b/g/a/j;->a:Lb/b/g/al;

    invoke-virtual {v3}, Lb/b/g/al;->n()I

    move-result v3

    invoke-virtual {p2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v4

    invoke-static {v3, v4}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v3

    new-instance v4, Lb/b/f/b/q;

    invoke-virtual {v3}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v5

    invoke-static {v5}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v5

    sget-object v6, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-static {p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p2

    invoke-direct {v4, v5, v6, v3, p2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-static {v4, v0}, Lb/b/g/aj;->a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result p2

    invoke-virtual {v0}, Lb/b/g/af;->q()Lb/b/h/l;

    move-result-object v0

    invoke-interface {v0}, Lb/b/h/l;->b()Lb/b/h/j;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lb/b/h/j;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/g/a/j;->b:Lcom/gmail/heagoo/pngeditor/m;

    invoke-interface {v0}, Lb/b/h/j;->b()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/gmail/heagoo/pngeditor/m;->a(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/g/a/j;->b:Lcom/gmail/heagoo/pngeditor/m;

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v4

    invoke-virtual {v2, p2, v4}, Lcom/gmail/heagoo/pngeditor/m;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lb/b/g/a/j;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->l()V

    return-object v3

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding move here not supported:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/b/g/aj;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "specified insn is not in this block"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a()Lb/b/g/ad;
.end method

.method protected final b(I)Lb/b/f/b/r;
    .registers 3

    iget-object v0, p0, Lb/b/g/a/j;->a:Lb/b/g/al;

    invoke-virtual {v0, p1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method
