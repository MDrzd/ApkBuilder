.class final Lb/b/a/b/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/BitSet;

.field private c:I

.field private d:I

.field private final e:Lb/b/a/b/af;

.field private final f:Ljava/util/ArrayList;

.field private synthetic g:Lb/b/a/b/z;


# direct methods
.method constructor <init>(Lb/b/a/b/z;Lb/b/a/b/af;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/b/a/b/ah;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lb/b/a/b/z;->b(Lb/b/a/b/z;)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lb/b/a/b/ah;->b:Ljava/util/BitSet;

    iput-object p2, p0, Lb/b/a/b/ah;->e:Lb/b/a/b/af;

    iput-object p3, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private a(I)I
    .registers 6

    iget-object v0, p0, Lb/b/a/b/ah;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lb/b/a/b/ah;->c:I

    invoke-direct {p0, p1, v0}, Lb/b/a/b/ah;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/a/b/ah;->e:Lb/b/a/b/af;

    invoke-virtual {v0}, Lb/b/a/b/af;->a()I

    move-result v0

    iget-object v1, p0, Lb/b/a/b/ah;->b:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Lb/b/a/b/ah;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    :goto_1
    return p1
.end method

.method private a(II)Z
    .registers 4

    iget-object v0, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/h/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lb/b/h/k;->g()I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a(Lb/b/f/b/a;)V
    .registers 16

    invoke-virtual {p1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/h/k;->b(I)I

    move-result v0

    iput v0, p0, Lb/b/a/b/ah;->d:I

    invoke-virtual {p1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lb/b/h/k;->b(I)I

    move-result v0

    iput v0, p0, Lb/b/a/b/ah;->c:I

    iget v0, p0, Lb/b/a/b/ah;->c:I

    invoke-direct {p0, v0}, Lb/b/a/b/ah;->a(I)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v3, p0, Lb/b/a/b/ah;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v4, p0, Lb/b/a/b/ah;->b:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->clear(I)V

    iget-object v4, p0, Lb/b/a/b/ah;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-static {v5, v3}, Lb/b/a/b/z;->a(Lb/b/a/b/z;I)Lb/b/f/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v6

    const/4 v7, -0x1

    iget-object v8, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-static {v8, v5}, Lb/b/a/b/z;->a(Lb/b/a/b/z;Lb/b/f/b/a;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v1}, Lb/b/h/k;->b(I)I

    move-result v8

    invoke-direct {p0, v8}, Lb/b/a/b/ah;->a(I)I

    move-result v8

    invoke-virtual {v6, v2}, Lb/b/h/k;->b(I)I

    move-result v6

    invoke-static {v8, v6}, Lb/b/h/k;->a(II)Lb/b/h/k;

    move-result-object v6

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-static {v8, v3}, Lb/b/a/b/z;->b(Lb/b/a/b/z;I)Lb/b/a/b/ag;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v8}, Lb/b/a/b/ag;->a(Lb/b/a/b/ag;)I

    move-result v6

    iget v7, p0, Lb/b/a/b/ah;->c:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lb/b/a/b/ah;->d:I

    invoke-static {v6}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v6

    iget v7, p0, Lb/b/a/b/ah;->d:I

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ret instruction returns to label "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lb/b/a/b/ag;->a(Lb/b/a/b/ag;)I

    move-result v1

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/a/b/ah;->c:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v5}, Lb/b/f/b/a;->d()I

    move-result v8

    invoke-virtual {v6}, Lb/b/h/k;->f()I

    move-result v9

    new-instance v10, Lb/b/h/k;

    invoke-direct {v10, v9}, Lb/b/h/k;-><init>(I)V

    const/4 v7, 0x0

    const/4 v11, -0x1

    :goto_1
    if-ge v7, v9, :cond_5

    invoke-virtual {v6, v7}, Lb/b/h/k;->b(I)I

    move-result v12

    invoke-direct {p0, v12}, Lb/b/a/b/ah;->a(I)I

    move-result v13

    invoke-virtual {v10, v13}, Lb/b/h/k;->c(I)V

    if-ne v8, v12, :cond_4

    move v11, v13

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Lb/b/h/k;->b_()V

    move-object v6, v10

    move v7, v11

    :goto_2
    iget-object v8, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    new-instance v9, Lb/b/f/b/a;

    iget-object v10, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-virtual {v5}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v5

    invoke-static {v10, v5}, Lb/b/a/b/z;->a(Lb/b/a/b/z;Lb/b/f/b/l;)Lb/b/f/b/l;

    move-result-object v5

    invoke-direct {v9, v4, v5, v6, v7}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    iget-object v5, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/h/k;

    invoke-static {v8, v9, v5}, Lb/b/a/b/z;->b(Lb/b/a/b/z;Lb/b/f/b/a;Lb/b/h/k;)V

    iget-object v5, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    iget-object v6, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-static {v6, v3}, Lb/b/a/b/z;->a(Lb/b/a/b/z;I)Lb/b/f/b/a;

    move-result-object v3

    invoke-static {v5, v3}, Lb/b/a/b/z;->a(Lb/b/a/b/z;Lb/b/f/b/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lb/b/a/b/ah;

    iget-object v5, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    iget-object v6, p0, Lb/b/a/b/ah;->e:Lb/b/a/b/af;

    iget-object v7, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-direct {v3, v5, v6, v7}, Lb/b/a/b/ah;-><init>(Lb/b/a/b/z;Lb/b/a/b/af;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    invoke-static {v5, v4}, Lb/b/a/b/z;->a(Lb/b/a/b/z;I)Lb/b/f/b/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/b/a/b/ah;->a(Lb/b/f/b/a;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lb/b/a/b/ah;->g:Lb/b/a/b/z;

    new-instance v2, Lb/b/f/b/a;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result v3

    invoke-virtual {p1}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object v4

    invoke-static {v0}, Lb/b/h/k;->a(I)Lb/b/h/k;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lb/b/f/b/a;-><init>(ILb/b/f/b/l;Lb/b/h/k;I)V

    iget-object v0, p0, Lb/b/a/b/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/h/k;

    invoke-static {v1, v2, p1}, Lb/b/a/b/z;->a(Lb/b/a/b/z;Lb/b/f/b/a;Lb/b/h/k;)Z

    return-void
.end method
