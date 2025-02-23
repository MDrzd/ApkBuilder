.class abstract Lb/b/e/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/o;

.field private synthetic b:Lb/b/e/b;


# direct methods
.method protected constructor <init>(Lb/b/e/b;Lb/a/o;)V
    .registers 3

    iput-object p1, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/e/l;->a:Lb/a/o;

    return-void
.end method

.method private a(Lb/a/o;Lb/a/ad;Lb/b/e/o;ILjava/util/TreeMap;I)I
    .registers 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/o;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget p2, p2, Lb/a/ad;->b:I

    if-ge p4, p2, :cond_2

    invoke-virtual {p0, p1, p3, p4}, Lb/b/e/l;->a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return v0
.end method

.method private a(Lb/a/i;Lb/b/e/o;)Ljava/util/List;
    .registers 16

    invoke-virtual {p1}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lb/a/ad;->c:I

    invoke-virtual {p1, v2}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_0
    iget v4, v0, Lb/a/ad;->b:I

    if-ge v11, v4, :cond_1

    invoke-virtual {v2}, Lb/a/o;->b()I

    move-result v10

    invoke-virtual {p0, v2, p2, v3}, Lb/b/e/l;->a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;

    move-result-object v8

    new-instance v12, Lb/b/e/m;

    move-object v4, v12

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v9, v11

    invoke-direct/range {v4 .. v10}, Lb/b/e/m;-><init>(Lb/b/e/l;Lb/a/i;Lb/b/e/o;Ljava/lang/Comparable;II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method abstract a(Lb/a/ac;)Lb/a/ad;
.end method

.method abstract a(Lb/a/o;Lb/b/e/o;I)Ljava/lang/Comparable;
.end method

.method public final a()V
    .registers 18

    move-object/from16 v7, p0

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Lb/a/ad;

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    array-length v0, v0

    new-array v9, v0, [Lb/a/o;

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    array-length v0, v0

    new-array v10, v0, [I

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    array-length v0, v0

    new-array v11, v0, [I

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    array-length v0, v0

    if-ge v14, v0, :cond_1

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    aget-object v0, v0, v14

    invoke-virtual {v0}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v0

    invoke-virtual {v7, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    aput-object v0, v8, v14

    aget-object v0, v8, v14

    invoke-virtual {v0}, Lb/a/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v0

    aget-object v0, v0, v14

    aget-object v1, v8, v14

    iget v1, v1, Lb/a/ad;->c:I

    invoke-virtual {v0, v1}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-object v0, v9, v14

    aget-object v1, v9, v14

    aget-object v2, v8, v14

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->b(Lb/b/e/b;)[Lb/b/e/o;

    move-result-object v0

    aget-object v3, v0, v14

    aget v4, v11, v14

    move-object/from16 v0, p0

    move-object v5, v12

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lb/b/e/l;->a(Lb/a/o;Lb/a/ad;Lb/b/e/o;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {v7, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iput v13, v0, Lb/a/ad;->c:I

    :cond_2
    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {v7, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iput v13, v0, Lb/a/ad;->b:I

    return-void

    :cond_3
    iget-object v0, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {v7, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iget-object v1, v7, Lb/b/e/l;->a:Lb/a/o;

    invoke-virtual {v1}, Lb/a/o;->b()I

    move-result v1

    iput v1, v0, Lb/a/ad;->c:I

    :goto_2
    invoke-virtual {v12}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v10, v1

    iget-object v2, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v2}, Lb/b/e/b;->b(Lb/b/e/b;)[Lb/b/e/o;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v4, v11, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v11, v3

    invoke-virtual {v7, v1, v2, v4, v13}, Lb/b/e/l;->a(ILb/b/e/o;II)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v9, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v8, v2

    iget-object v3, v7, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v3}, Lb/b/e/b;->b(Lb/b/e/b;)[Lb/b/e/o;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, v11, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-direct/range {v0 .. v6}, Lb/b/e/l;->a(Lb/a/o;Lb/a/ad;Lb/b/e/o;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v10, v16

    goto :goto_3

    :cond_4
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-virtual {v7, v0}, Lb/b/e/l;->a(Ljava/lang/Comparable;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method abstract a(ILb/b/e/o;II)V
.end method

.method abstract a(Ljava/lang/Comparable;)V
.end method

.method public final b()V
    .registers 9

    iget-object v0, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iget-object v1, p0, Lb/b/e/l;->a:Lb/a/o;

    invoke-virtual {v1}, Lb/a/o;->b()I

    move-result v1

    iput v1, v0, Lb/a/ad;->c:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v3}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v3}, Lb/b/e/b;->a(Lb/b/e/b;)[Lb/a/i;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v4}, Lb/b/e/b;->b(Lb/b/e/b;)[Lb/b/e/o;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-direct {p0, v3, v4}, Lb/b/e/l;->a(Lb/a/i;Lb/b/e/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iput v1, v0, Lb/a/ad;->c:I

    iget-object v0, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iput v1, v0, Lb/a/ad;->b:I

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/e/m;

    iget v4, v1, Lb/b/e/m;->d:I

    iget-object v5, v1, Lb/b/e/m;->a:Lb/b/e/o;

    iget v6, v1, Lb/b/e/m;->c:I

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lb/b/e/l;->a(ILb/b/e/o;II)V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/e/m;

    invoke-virtual {v1, v4}, Lb/b/e/m;->a(Lb/b/e/m;)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/e/m;

    iget v5, v3, Lb/b/e/m;->d:I

    iget-object v6, v3, Lb/b/e/m;->a:Lb/b/e/o;

    iget v3, v3, Lb/b/e/m;->c:I

    invoke-virtual {p0, v5, v6, v3, v7}, Lb/b/e/l;->a(ILb/b/e/o;II)V

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lb/b/e/m;->b:Ljava/lang/Comparable;

    invoke-virtual {p0, v1}, Lb/b/e/l;->a(Ljava/lang/Comparable;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lb/b/e/l;->b:Lb/b/e/b;

    invoke-static {v0}, Lb/b/e/b;->c(Lb/b/e/b;)Lb/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/e/l;->a(Lb/a/ac;)Lb/a/ad;

    move-result-object v0

    iput v2, v0, Lb/a/ad;->b:I

    return-void
.end method
