.class public Lb/b/g/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/b;->a:Lb/b/g/al;

    return-void
.end method

.method static synthetic a(Lb/b/g/b;)Lb/b/g/al;
    .registers 1

    iget-object p0, p0, Lb/b/g/b;->a:Lb/b/g/al;

    return-object p0
.end method

.method public static a(I)Lb/b/h/l;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_0

    new-instance v0, Lb/b/h/a;

    invoke-direct {v0, p0}, Lb/b/h/a;-><init>(I)V

    return-object v0

    :cond_0
    new-instance p0, Lb/b/h/o;

    invoke-direct {p0}, Lb/b/h/o;-><init>()V

    return-object p0
.end method

.method public static a(Lb/b/g/al;)V
    .registers 20

    new-instance v0, Lb/b/g/b;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lb/b/g/b;-><init>(Lb/b/g/al;)V

    iget-object v1, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->g()I

    move-result v1

    iget-object v2, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->g()I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_4

    iget-object v7, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v7, v5}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v9

    invoke-interface {v9}, Lb/b/f/d/d;->e()Z

    move-result v10

    if-eqz v10, :cond_3

    check-cast v9, Lb/b/f/c/ag;

    invoke-virtual {v7}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/x;->a()I

    move-result v10

    const/16 v11, 0x38

    if-ne v10, v11, :cond_0

    invoke-virtual {v7}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v7

    iget-object v10, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v10}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/af;

    invoke-virtual {v7}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/aj;

    :cond_0
    invoke-virtual {v7}, Lb/b/g/aj;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v6, v9, Lb/b/f/c/ad;

    goto :goto_2

    :cond_1
    iget-object v7, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v7, v8}, Lb/b/g/al;->a(Lb/b/f/b/r;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v6, :cond_5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v5, Lb/b/g/c;

    invoke-direct {v5, v0, v3}, Lb/b/g/c;-><init>(Lb/b/g/b;Ljava/util/HashMap;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v5}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    :goto_4
    if-ge v4, v3, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/f/c/ag;

    iget-object v9, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v9}, Lb/b/g/al;->n()I

    move-result v9

    invoke-static {v9, v8}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v15

    invoke-static {v8}, Lb/b/f/b/y;->f(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/b/x;->d()I

    move-result v9

    if-ne v9, v6, :cond_7

    new-instance v14, Lb/b/f/b/p;

    invoke-static {v8}, Lb/b/f/b/y;->f(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v10

    sget-object v11, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    sget-object v13, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    move-object v9, v14

    move-object v12, v15

    move-object v6, v14

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    invoke-virtual {v5, v6}, Lb/b/g/af;->a(Lb/b/f/b/i;)V

    move-object/from16 v17, v2

    move/from16 v18, v3

    goto :goto_5

    :cond_7
    iget-object v6, v0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v6}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/g/af;->l()Lb/b/g/af;

    move-result-object v14

    invoke-virtual {v6, v14}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v6

    new-instance v13, Lb/b/f/b/ab;

    sget-object v11, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    sget-object v12, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    sget-object v16, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    move-object v9, v13

    move-object/from16 v17, v2

    move-object v2, v13

    move-object/from16 v13, v16

    move/from16 v18, v3

    move-object v3, v14

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    invoke-virtual {v6, v2}, Lb/b/g/af;->b(Lb/b/f/b/i;)V

    invoke-virtual {v6, v3}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v2

    new-instance v3, Lb/b/f/b/q;

    invoke-virtual {v15}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v6

    invoke-static {v6}, Lb/b/f/b/y;->e(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v6

    sget-object v9, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    sget-object v10, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v3, v6, v9, v15, v10}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-virtual {v2, v3}, Lb/b/g/af;->a(Lb/b/f/b/i;)V

    :goto_5
    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    invoke-direct {v0, v7, v1}, Lb/b/g/b;->a(Ljava/util/HashMap;I)V

    return-void
.end method

.method private a(Ljava/util/HashMap;I)V
    .registers 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->m()[Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v2, v1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    invoke-interface {v2}, Lb/b/f/d/d;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast v2, Lb/b/f/c/ag;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/b/r;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lb/b/g/b;->a:Lb/b/g/al;

    invoke-virtual {v4, v3}, Lb/b/g/al;->a(Lb/b/f/b/r;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lb/b/g/d;

    invoke-direct {v4, p0, v3, v2}, Lb/b/g/d;-><init>(Lb/b/g/b;Lb/b/f/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3}, Lb/b/g/aj;->j()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    :cond_1
    invoke-virtual {v3, v4}, Lb/b/g/aj;->a(Lb/b/g/ad;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static b(I)Lb/b/h/l;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_0

    new-instance v0, Lb/b/h/a;

    invoke-direct {v0, p0}, Lb/b/h/a;-><init>(I)V

    return-object v0

    :cond_0
    new-instance p0, Lb/b/h/o;

    invoke-direct {p0}, Lb/b/h/o;-><init>()V

    return-object p0
.end method
