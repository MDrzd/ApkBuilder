.class public final Lb/b/c/c/ar;
.super Lb/b/c/c/az;


# static fields
.field private static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/HashMap;

.field private final d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/c/as;

    invoke-direct {v0}, Lb/b/c/c/as;-><init>()V

    sput-object v0, Lb/b/c/c/ar;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lb/b/c/c/u;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/c/az;-><init>(Ljava/lang/String;Lb/b/c/c/u;I)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lb/b/c/c/ar;->c:Ljava/util/HashMap;

    iput p4, p0, Lb/b/c/c/ar;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lb/b/c/c/ar;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lb/b/c/c/ah;)I
    .registers 2

    check-cast p1, Lb/b/c/c/av;

    invoke-virtual {p1}, Lb/b/c/c/av;->f()I

    move-result p1

    return p1
.end method

.method public final a(Lb/b/c/c/av;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/c/c/ar;->j()V

    :try_start_0
    invoke-virtual {p1}, Lb/b/c/c/av;->g()I

    move-result v0

    invoke-virtual {p0}, Lb/b/c/c/ar;->f()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incompatible item alignment"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "item == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/c/ai;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lb/b/c/c/ar;->i()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/c/c/av;

    invoke-virtual {v2}, Lb/b/c/c/av;->a()Lb/b/c/c/ai;

    move-result-object v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lb/b/c/c/av;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p1, p2, p3}, Lb/b/h/r;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/av;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lb/b/c/c/av;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lb/b/h/r;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final a_(Lb/b/h/r;)V
    .registers 12

    invoke-interface {p1}, Lb/b/h/r;->d()Z

    move-result v0

    invoke-virtual {p0}, Lb/b/c/c/ar;->e()Lb/b/c/c/u;

    move-result-object v1

    iget-object v2, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/c/c/av;

    if-eqz v0, :cond_1

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const-string v8, "\n"

    invoke-interface {p1, v4, v8}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Lb/b/c/c/av;->g()I

    move-result v8

    sub-int/2addr v8, v3

    add-int v9, v5, v8

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v9

    if-eq v5, v8, :cond_2

    sub-int v5, v8, v5

    invoke-interface {p1, v5}, Lb/b/h/r;->g(I)V

    move v5, v8

    :cond_2
    invoke-virtual {v7, v1, p1}, Lb/b/c/c/av;->a(Lb/b/c/c/u;Lb/b/h/r;)V

    invoke-virtual {v7}, Lb/b/c/c/av;->c_()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_0

    :cond_3
    iget p1, p0, Lb/b/c/c/ar;->e:I

    if-ne v5, p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "output size mismatch"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized b(Lb/b/c/c/av;)Lb/b/c/c/av;
    .registers 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/b/c/c/ar;->j()V

    iget-object v0, p0, Lb/b/c/c/ar;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/c/c/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    iget-object v0, p0, Lb/b/c/c/ar;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final c()V
    .registers 5

    invoke-virtual {p0}, Lb/b/c/c/ar;->e()Lb/b/c/c/u;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/c/av;

    invoke-virtual {v3, v0}, Lb/b/c/c/av;->a(Lb/b/c/c/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()V
    .registers 6

    invoke-virtual {p0}, Lb/b/c/c/ar;->i()V

    sget-object v0, Lb/b/c/c/at;->a:[I

    iget v1, p0, Lb/b/c/c/ar;->d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    sget-object v1, Lb/b/c/c/ar;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lb/b/c/c/ar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/c/c/av;

    :try_start_0
    invoke-virtual {v3, p0, v2}, Lb/b/c/c/av;->b(Lb/b/c/c/az;I)I

    move-result v4

    if-lt v4, v2, :cond_0

    invoke-virtual {v3}, Lb/b/c/c/av;->c_()I

    move-result v2

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus place() result for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while placing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object v0

    throw v0

    :cond_1
    iput v2, p0, Lb/b/c/c/ar;->e:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d_()I
    .registers 2

    invoke-virtual {p0}, Lb/b/c/c/ar;->i()V

    iget v0, p0, Lb/b/c/c/ar;->e:I

    return v0
.end method
