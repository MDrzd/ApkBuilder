.class public final Lb/b/c/b/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/c/b/b;


# instance fields
.field private final a:Lcom/gmail/heagoo/pngeditor/j;

.field private final b:[I

.field private final c:Lcom/gmail/heagoo/neweditor/w;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/pngeditor/j;[ILcom/gmail/heagoo/neweditor/w;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lb/b/c/b/ah;->a:Lcom/gmail/heagoo/pngeditor/j;

    iput-object p2, p0, Lb/b/c/b/ah;->b:[I

    iput-object p3, p0, Lb/b/c/b/ah;->c:Lcom/gmail/heagoo/neweditor/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lb/b/f/b/a;Lcom/gmail/heagoo/neweditor/w;)Lb/b/c/b/c;
    .registers 8

    invoke-virtual {p0}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v1

    invoke-virtual {p0}, Lb/b/f/b/a;->d()I

    move-result v2

    invoke-virtual {p0}, Lb/b/f/b/a;->g()Lb/b/f/b/i;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object p0

    invoke-interface {p0}, Lb/b/f/d/e;->a_()I

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lb/b/c/b/c;->a:Lb/b/c/b/c;

    return-object p0

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lb/b/h/k;->b(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-interface {p0, v2}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v4

    sget-object v5, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    invoke-virtual {v4, v5}, Lb/b/f/d/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Lb/b/c/b/c;

    invoke-direct {v2, v3}, Lb/b/c/b/c;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_6

    new-instance v4, Lb/b/f/c/ae;

    invoke-interface {p0, v1}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/gmail/heagoo/neweditor/w;->a(I)Lb/b/c/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/c/b/g;->h()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lb/b/c/b/c;->a(ILb/b/f/c/ae;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lb/b/c/b/c;->b_()V

    return-object v2
.end method

.method private static a(Lb/b/f/b/a;Lb/b/f/b/a;Lb/b/c/b/c;Lcom/gmail/heagoo/neweditor/w;)Lb/b/c/b/f;
    .registers 4

    invoke-virtual {p3, p0}, Lcom/gmail/heagoo/neweditor/w;->b(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object p0

    invoke-virtual {p3, p1}, Lcom/gmail/heagoo/neweditor/w;->c(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object p1

    new-instance p3, Lb/b/c/b/f;

    invoke-virtual {p0}, Lb/b/c/b/g;->h()I

    move-result p0

    invoke-virtual {p1}, Lb/b/c/b/g;->h()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Lb/b/c/b/f;-><init>(IILb/b/c/b/c;)V

    return-object p3
.end method


# virtual methods
.method public final a()Lb/b/c/b/e;
    .registers 15

    iget-object v0, p0, Lb/b/c/b/ah;->a:Lcom/gmail/heagoo/pngeditor/j;

    iget-object v1, p0, Lb/b/c/b/ah;->b:[I

    iget-object v2, p0, Lb/b/c/b/ah;->c:Lcom/gmail/heagoo/neweditor/w;

    array-length v3, v1

    invoke-virtual {v0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lb/b/c/b/c;->a:Lb/b/c/b/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move-object v9, v8

    move-object v6, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget v10, v1, v5

    invoke-virtual {v0, v10}, Lb/b/f/b/c;->b(I)Lb/b/f/b/a;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/a;->h()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v10, v2}, Lb/b/c/b/ah;->a(Lb/b/f/b/a;Lcom/gmail/heagoo/neweditor/w;)Lb/b/c/b/c;

    move-result-object v11

    invoke-virtual {v6}, Lb/b/c/b/c;->a_()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v6, v11}, Lb/b/c/b/c;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v8, :cond_2

    if-eqz v10, :cond_1

    invoke-virtual {v2, v8}, Lcom/gmail/heagoo/neweditor/w;->b(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object v12

    invoke-virtual {v12}, Lb/b/c/b/g;->h()I

    move-result v12

    invoke-virtual {v2, v10}, Lcom/gmail/heagoo/neweditor/w;->c(Lb/b/f/b/a;)Lb/b/c/b/g;

    move-result-object v13

    invoke-virtual {v13}, Lb/b/c/b/g;->h()I

    move-result v13

    sub-int/2addr v13, v12

    const v12, 0xffff

    if-gt v13, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_3

    move-object v9, v10

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6}, Lb/b/c/b/c;->a_()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v8, v9, v6, v2}, Lb/b/c/b/ah;->a(Lb/b/f/b/a;Lb/b/f/b/a;Lb/b/c/b/c;Lcom/gmail/heagoo/neweditor/w;)Lb/b/c/b/f;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v8, v10

    move-object v9, v8

    move-object v6, v11

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Lb/b/c/b/c;->a_()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v8, v9, v6, v2}, Lb/b/c/b/ah;->a(Lb/b/f/b/a;Lb/b/f/b/a;Lb/b/c/b/c;Lcom/gmail/heagoo/neweditor/w;)Lb/b/c/b/f;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lb/b/c/b/e;->a:Lb/b/c/b/e;

    return-object v0

    :cond_8
    new-instance v1, Lb/b/c/b/e;

    invoke-direct {v1, v0}, Lb/b/c/b/e;-><init>(I)V

    :goto_3
    if-ge v7, v0, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/b/f;

    invoke-virtual {v1, v7, v2}, Lb/b/c/b/e;->a(ILb/b/c/b/f;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Lb/b/c/b/e;->b_()V

    return-object v1
.end method

.method public final b()Z
    .registers 6

    iget-object v0, p0, Lb/b/c/b/ah;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/c;->a_()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/a;->g()Lb/b/f/b/i;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v4

    invoke-interface {v4}, Lb/b/f/d/e;->a_()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final c()Ljava/util/HashSet;
    .registers 10

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lb/b/c/b/ah;->a:Lcom/gmail/heagoo/pngeditor/j;

    invoke-virtual {v1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/c;->a_()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/a;->g()Lb/b/f/b/i;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/i;->b()Lb/b/f/d/e;

    move-result-object v5

    invoke-interface {v5}, Lb/b/f/d/e;->a_()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-interface {v5, v7}, Lb/b/f/d/e;->a(I)Lb/b/f/d/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
