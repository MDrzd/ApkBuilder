.class Lb/b/c/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/b/k;


# instance fields
.field private final a:Lcom/gmail/heagoo/neweditor/y;

.field private b:Lb/b/f/b/a;

.field private c:Lb/b/c/b/g;

.field private synthetic d:Lb/b/c/b/ac;


# direct methods
.method public constructor <init>(Lb/b/c/b/ac;Lcom/gmail/heagoo/neweditor/y;)V
    .registers 3

    iput-object p1, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/c/b/af;->a:Lcom/gmail/heagoo/neweditor/y;

    return-void
.end method

.method private a()Lb/b/f/b/r;
    .registers 5

    iget-object v0, p0, Lb/b/c/b/af;->b:Lb/b/f/b/a;

    invoke-virtual {v0}, Lb/b/f/b/a;->d()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v2}, Lb/b/c/b/ac;->e(Lb/b/c/b/ac;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->a()I

    move-result v2

    const/16 v3, 0x38

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v0

    return-object v0
.end method

.method private b(Lb/b/c/b/k;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/b/af;->a:Lcom/gmail/heagoo/neweditor/y;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/neweditor/y;->b(Lb/b/c/b/k;)V

    return-void
.end method


# virtual methods
.method protected final a(Lb/b/c/b/k;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/b/af;->a:Lcom/gmail/heagoo/neweditor/y;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/neweditor/y;->a(Lb/b/c/b/k;)V

    return-void
.end method

.method public final a(Lb/b/f/b/a;Lb/b/c/b/g;)V
    .registers 3

    iput-object p1, p0, Lb/b/c/b/af;->b:Lb/b/f/b/a;

    iput-object p2, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    return-void
.end method

.method public a(Lb/b/f/b/aa;)V
    .registers 11

    invoke-virtual {p1}, Lb/b/f/b/aa;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/f/b/aa;->c()Lb/b/h/k;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/b/af;->b:Lb/b/f/b/a;

    invoke-virtual {v2}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v2

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v3

    invoke-virtual {v2}, Lb/b/h/k;->f()I

    move-result v4

    iget-object v5, p0, Lb/b/c/b/af;->b:Lb/b/f/b/a;

    invoke-virtual {v5}, Lb/b/f/b/a;->d()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lb/b/h/k;->b(I)I

    move-result v4

    if-ne v5, v4, :cond_2

    new-array v4, v3, [Lb/b/c/b/g;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Lb/b/h/k;->b(I)I

    move-result v7

    iget-object v8, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v8}, Lb/b/c/b/ac;->a(Lb/b/c/b/ac;)Lcom/gmail/heagoo/neweditor/w;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/gmail/heagoo/neweditor/w;->a(I)Lb/b/c/b/g;

    move-result-object v7

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lb/b/c/b/g;

    invoke-direct {v2, v0}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    new-instance v3, Lb/b/c/b/g;

    iget-object v5, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-virtual {v5}, Lb/b/c/b/g;->j()Lb/b/f/b/z;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;Z)V

    new-instance v5, Lb/b/c/b/ai;

    invoke-direct {v5, v0, v3, v1, v4}, Lb/b/c/b/ai;-><init>(Lb/b/f/b/z;Lb/b/c/b/g;Lb/b/h/k;[Lb/b/c/b/g;)V

    invoke-virtual {v5}, Lb/b/c/b/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lb/b/c/b/m;->I:Lcom/gmail/heagoo/neweditor/x;

    goto :goto_1

    :cond_1
    sget-object v1, Lb/b/c/b/m;->J:Lcom/gmail/heagoo/neweditor/x;

    :goto_1
    new-instance v4, Lb/b/c/b/aj;

    invoke-static {p1}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v4, v1, v0, p1, v2}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    invoke-virtual {p0, v4}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    new-instance p1, Lb/b/c/b/x;

    invoke-direct {p1, v0}, Lb/b/c/b/x;-><init>(Lb/b/f/b/z;)V

    invoke-direct {p0, p1}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    invoke-direct {p0, v2}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    invoke-direct {p0, v5}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/b/f/b/ab;)V
    .registers 12

    invoke-virtual {p1}, Lb/b/f/b/ab;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-static {p1}, Lb/b/c/b/ab;->a(Lb/b/f/b/i;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/b/ab;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {p1}, Lb/b/f/b/ab;->e_()Lb/b/f/c/a;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-virtual {p0, v4}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    invoke-virtual {v2}, Lb/b/f/b/x;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/ab;->j()Lb/b/f/b/u;

    move-result-object p1

    new-instance v2, Lb/b/c/b/h;

    invoke-direct {v2, v1, v0, p1, v3}, Lb/b/c/b/h;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V

    invoke-virtual {p0, v2}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lb/b/c/b/af;->a()Lb/b/f/b/r;

    move-result-object v4

    invoke-static {p1, v4}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v5

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lb/b/f/b/x;->a()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-ne v6, v7, :cond_5

    invoke-virtual {v2}, Lb/b/f/b/x;->a()I

    move-result p1

    const/16 v2, 0x29

    if-ne p1, v2, :cond_4

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->a()I

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    new-instance p1, Lb/b/c/b/ag;

    invoke-direct {p1, v1, v0, v5}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    goto :goto_2

    :cond_4
    new-instance p1, Lb/b/c/b/h;

    invoke-direct {p1, v1, v0, v5, v3}, Lb/b/c/b/h;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V

    :goto_2
    invoke-virtual {p0, p1}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected BRANCH_THROW got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/b/f/b/ac;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/f/b/ac;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-static {p1}, Lb/b/c/b/ab;->a(Lb/b/f/b/i;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/b/ac;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lb/b/c/b/af;->a()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/x;->d()Z

    move-result v3

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    new-instance v3, Lb/b/c/b/ag;

    invoke-static {p1, v2}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/b/h;)V
    .registers 8

    invoke-virtual {p1}, Lb/b/f/b/h;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/f/b/h;->d()Lb/b/f/c/a;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/b/h;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lb/b/f/b/h;->e()Lb/b/f/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/x;->d()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lb/b/c/b/g;

    invoke-direct {v3, v0}, Lb/b/c/b/g;-><init>(Lb/b/f/b/z;)V

    new-instance v4, Lb/b/c/b/a;

    iget-object v5, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-direct {v4, v0, v5, v2, v1}, Lb/b/c/b/a;-><init>(Lb/b/f/b/z;Lb/b/c/b/g;Ljava/util/ArrayList;Lb/b/f/c/a;)V

    new-instance v1, Lb/b/c/b/aj;

    sget-object v2, Lb/b/c/b/m;->F:Lcom/gmail/heagoo/neweditor/x;

    invoke-static {p1}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1, v3}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    iget-object p1, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-virtual {p0, p1}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    invoke-virtual {p0, v1}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    new-instance p1, Lb/b/c/b/x;

    invoke-direct {p1, v0}, Lb/b/c/b/x;-><init>(Lb/b/f/b/z;)V

    invoke-direct {p0, p1}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    invoke-direct {p0, v3}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    invoke-direct {p0, v4}, Lb/b/c/b/af;->b(Lb/b/c/b/k;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/f/b/m;)V
    .registers 8

    invoke-virtual {p1}, Lb/b/f/b/m;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-static {p1}, Lb/b/c/b/ab;->a(Lb/b/f/b/i;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/b/m;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lb/b/f/b/x;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/b/c/b/af;->c:Lb/b/c/b/g;

    invoke-virtual {p0, v2}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    invoke-virtual {p1}, Lb/b/f/b/m;->j()Lb/b/f/b/u;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lb/b/f/c/a;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lb/b/f/b/m;->c()Lb/b/f/c/z;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lb/b/f/b/m;->d()Lb/b/f/c/ab;

    move-result-object p1

    aput-object p1, v3, v4

    new-instance p1, Lb/b/c/b/w;

    invoke-direct {p1, v1, v0, v2, v3}, Lb/b/c/b/w;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;[Lb/b/f/c/a;)V

    invoke-virtual {p0, p1}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected call-like operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected BRANCH_THROW got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/b/f/b/p;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/f/b/p;->f()Lb/b/f/b/z;

    move-result-object v0

    invoke-static {p1}, Lb/b/c/b/ab;->a(Lb/b/f/b/i;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p1}, Lb/b/f/b/p;->e()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->a()I

    move-result v3

    invoke-virtual {v2}, Lb/b/f/b/x;->d()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v2}, Lb/b/c/b/ac;->b(Lb/b/c/b/ac;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lb/b/f/b/p;->g()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {p1}, Lb/b/f/b/p;->e_()Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/p;

    invoke-virtual {p1}, Lb/b/f/c/p;->j()I

    move-result p1

    iget-object v3, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v3}, Lb/b/c/b/ac;->c(Lb/b/c/b/ac;)I

    move-result v3

    iget-object v4, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v4}, Lb/b/c/b/ac;->d(Lb/b/c/b/ac;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p1

    invoke-static {v3, p1}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p1

    new-instance v3, Lb/b/c/b/ag;

    invoke-static {v2, p1}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    :cond_0
    invoke-static {p1}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;)Lb/b/f/b/u;

    move-result-object v2

    new-instance v3, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/f/b/p;->e_()Lb/b/f/c/a;

    move-result-object p1

    invoke-direct {v3, v1, v0, v2, p1}, Lb/b/c/b/h;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/c/a;)V

    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/b/f/b/q;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/f/b/q;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lb/b/f/b/q;->f()Lb/b/f/b/z;

    move-result-object v1

    invoke-static {p1}, Lb/b/c/b/ab;->a(Lb/b/f/b/i;)Lcom/gmail/heagoo/neweditor/x;

    move-result-object v2

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lb/b/c/b/af;->b:Lb/b/f/b/a;

    invoke-virtual {v0}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lb/b/h/k;->b(I)I

    move-result v0

    new-instance v3, Lb/b/c/b/aj;

    invoke-static {p1}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;)Lb/b/f/b/u;

    move-result-object p1

    iget-object v4, p0, Lb/b/c/b/af;->d:Lb/b/c/b/ac;

    invoke-static {v4}, Lb/b/c/b/ac;->a(Lb/b/c/b/ac;)Lcom/gmail/heagoo/neweditor/w;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/gmail/heagoo/neweditor/w;->a(I)Lb/b/c/b/g;

    move-result-object v0

    invoke-direct {v3, v2, v1, p1, v0}, Lb/b/c/b/aj;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/c/b/g;)V

    goto :goto_0

    :pswitch_1
    return-void

    :cond_2
    :pswitch_2
    new-instance v3, Lb/b/c/b/ag;

    invoke-static {p1}, Lb/b/c/b/ac;->a(Lb/b/f/b/i;)Lb/b/f/b/u;

    move-result-object p1

    invoke-direct {v3, v2, v1, p1}, Lb/b/c/b/ag;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    :goto_0
    invoke-virtual {p0, v3}, Lb/b/c/b/af;->a(Lb/b/c/b/k;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
