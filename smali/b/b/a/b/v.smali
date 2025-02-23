.class public final Lb/b/a/b/v;
.super Lb/b/a/b/u;


# instance fields
.field private final a:Lb/b/a/b/x;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lb/b/a/b/u;-><init>(Z)V

    new-instance v0, Lb/b/a/b/x;

    invoke-direct {v0, p1}, Lb/b/a/b/x;-><init>(I)V

    iput-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lb/b/a/b/v;)V
    .registers 6

    iget-object v0, p1, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->j()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lb/b/a/b/u;-><init>(Z)V

    iget-object v0, p1, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->i()Lb/b/a/b/x;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    iget-object v0, p1, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/u;

    if-nez v2, :cond_1

    iget-object v2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lb/b/a/b/u;->f()Lb/b/a/b/u;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private constructor <init>(Lb/b/a/b/x;Ljava/util/ArrayList;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/a/b/x;->j()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lb/b/a/b/u;-><init>(Z)V

    iput-object p1, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    iput-object p2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lb/b/a/b/v;)Lb/b/a/b/v;
    .registers 15

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    iget-object v1, p1, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0, v1}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)Lb/b/a/b/x;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    const/4 v8, 0x0

    if-ge v6, v1, :cond_0

    iget-object v9, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/a/b/u;

    goto :goto_1

    :cond_0
    move-object v9, v8

    :goto_1
    if-ge v6, v2, :cond_1

    iget-object v10, p1, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/b/a/b/u;

    goto :goto_2

    :cond_1
    move-object v10, v8

    :goto_2
    if-ne v9, v10, :cond_2

    goto :goto_3

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    if-nez v10, :cond_4

    :goto_3
    move-object v10, v9

    goto :goto_4

    :cond_4
    :try_start_0
    invoke-virtual {v9, v10}, Lb/b/a/b/u;->a(Lb/b/a/b/u;)Lb/b/a/b/u;

    move-result-object v10
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Merging locals set for caller block "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    move-object v10, v8

    :goto_4
    if-nez v7, :cond_6

    if-eq v9, v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    if-ne p1, v0, :cond_8

    if-nez v7, :cond_8

    return-object p0

    :cond_8
    new-instance p1, Lb/b/a/b/v;

    invoke-direct {p1, v0, v4}, Lb/b/a/b/v;-><init>(Lb/b/a/b/x;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method private a(Lb/b/a/b/x;)Lb/b/a/b/v;
    .registers 13

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {p1}, Lb/b/a/b/x;->g()Lb/b/a/b/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)Lb/b/a/b/x;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v6, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/a/b/u;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {v6, p1}, Lb/b/a/b/u;->a(Lb/b/a/b/u;)Lb/b/a/b/u;

    move-result-object v8
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Merging one locals against caller block "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    if-nez v5, :cond_2

    if-eq v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    if-ne p1, v0, :cond_4

    if-nez v5, :cond_4

    return-object p0

    :cond_4
    new-instance p1, Lb/b/a/b/v;

    invoke-direct {p1, v0, v1}, Lb/b/a/b/v;-><init>(Lb/b/a/b/x;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method private b(Lb/b/a/b/u;)Lb/b/a/b/v;
    .registers 4

    :try_start_0
    instance-of v0, p1, Lb/b/a/b/v;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb/b/a/b/v;

    invoke-direct {p0, v0}, Lb/b/a/b/v;->a(Lb/b/a/b/v;)Lb/b/a/b/v;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lb/b/a/b/x;

    invoke-direct {p0, v0}, Lb/b/a/b/v;->a(Lb/b/a/b/x;)Lb/b/a/b/v;

    move-result-object v0
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lb/b/a/b/v;->b_()V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb/b/a/b/v;->a(Lb/a/a/c;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lb/b/a/b/aj;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lb/b/a/b/u;->a(Lb/a/a/c;)V

    throw v0
.end method

.method private c(I)Lb/b/a/b/u;
    .registers 3

    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/b/u;

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lb/b/a/b/u;)Lb/b/a/b/u;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/v;->b(Lb/b/a/b/u;)Lb/b/a/b/v;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/a/b/u;I)Lb/b/a/b/v;
    .registers 11

    invoke-direct {p0, p2}, Lb/b/a/b/v;->c(I)Lb/b/a/b/u;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {p1}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)Lb/b/a/b/x;

    move-result-object v1

    if-ne v0, p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lb/b/a/b/u;->a(Lb/b/a/b/u;)Lb/b/a/b/u;

    move-result-object p1

    :goto_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    if-ne v1, v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-ge v3, v1, :cond_7

    if-ne v3, p2, :cond_3

    move-object v6, p1

    goto :goto_2

    :cond_3
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/a/b/u;

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_6

    if-nez v5, :cond_5

    invoke-virtual {v6}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v5

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v7

    invoke-virtual {v5, v7}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)Lb/b/a/b/x;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    new-instance p1, Lb/b/a/b/v;

    invoke-direct {p1, v5, v2}, Lb/b/a/b/v;-><init>(Lb/b/a/b/x;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lb/b/a/b/v;->b_()V

    return-object p1
.end method

.method public final a(I)Lb/b/f/d/d;
    .registers 3

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0, p1}, Lb/b/a/b/x;->a(I)Lb/b/f/d/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILb/b/f/d/d;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/a/b/v;->d()V

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0, p1, p2}, Lb/b/a/b/x;->a(ILb/b/f/d/d;)V

    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/b/u;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lb/b/a/b/u;->a(ILb/b/f/d/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/a/a/c;)V
    .registers 7

    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Lb/a/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0, p1}, Lb/b/a/b/x;->a(Lb/a/a/c;)V

    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/u;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(locals array set: primary for caller "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lb/a/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb/b/a/b/x;->a(Lb/a/a/c;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/b/f/b/r;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lb/b/a/b/v;->a(ILb/b/f/d/d;)V

    return-void
.end method

.method public final a(Lb/b/f/d/c;)V
    .registers 4

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->j()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/v;->d()V

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0, p1}, Lb/b/a/b/x;->a(Lb/b/f/d/c;)V

    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/b/u;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lb/b/a/b/u;->a(Lb/b/f/d/c;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(I)Lb/b/a/b/u;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/v;->c(I)Lb/b/a/b/u;

    move-result-object p1

    return-object p1
.end method

.method public final b_()V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->b_()V

    iget-object v0, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/b/u;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/a/b/u;->b_()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lb/b/a/b/u;->b_()V

    return-void
.end method

.method public final f()Lb/b/a/b/u;
    .registers 2

    new-instance v0, Lb/b/a/b/v;

    invoke-direct {v0, p0}, Lb/b/a/b/v;-><init>(Lb/b/a/b/v;)V

    return-object v0
.end method

.method protected final g()Lb/b/a/b/x;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(locals array set; primary)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/a/b/v;->a:Lb/b/a/b/x;

    invoke-virtual {v1}, Lb/b/a/b/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lb/b/a/b/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/u;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(locals array set: primary for caller "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lb/b/a/b/u;->g()Lb/b/a/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/b/x;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
