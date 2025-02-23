.class public Lb/b/g/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ah;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:I

.field private final c:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result p1

    iput p1, p0, Lb/b/g/l;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lb/b/f/b/r;)I
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/o;

    iget-object v1, v1, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private a(Lb/b/g/aj;)Lb/b/g/aj;
    .registers 3

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v0, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/aj;

    return-object p1
.end method

.method static synthetic a(Lb/b/g/l;)Lb/b/g/al;
    .registers 1

    iget-object p0, p0, Lb/b/g/l;->a:Lb/b/g/al;

    return-object p0
.end method

.method private a()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->g()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v2, v1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/x;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v3}, Lb/b/g/al;->m()[Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v4

    invoke-virtual {v2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v4}, Lb/b/f/b/r;->f()I

    move-result v5

    iget v6, p0, Lb/b/g/l;->b:I

    if-ge v5, v6, :cond_0

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v5

    iget v6, p0, Lb/b/g/l;->b:I

    if-lt v5, v6, :cond_1

    :cond_0
    new-instance v5, Lb/b/g/m;

    invoke-direct {v5, p0, v2, v4}, Lb/b/g/m;-><init>(Lb/b/g/l;Lb/b/f/b/r;Lb/b/f/b/r;)V

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/aj;

    invoke-virtual {v3, v5}, Lb/b/g/aj;->a(Lb/b/g/ad;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lb/b/f/b/r;Lb/b/g/aj;Lb/b/g/o;Ljava/util/ArrayList;)V
    .registers 8

    invoke-virtual {p2}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/16 p4, 0x21

    if-eq v0, p4, :cond_5

    const/16 p4, 0x23

    if-eq v0, p4, :cond_5

    const/16 p4, 0x2b

    if-eq v0, p4, :cond_4

    packed-switch v0, :pswitch_data_0

    const/4 p4, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    sget-object p1, Lb/b/g/p;->d:Lb/b/g/p;

    iput-object p1, p3, Lb/b/g/o;->b:Lb/b/g/p;

    return-void

    :pswitch_1
    invoke-virtual {p2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v0

    invoke-interface {v0}, Lb/b/f/d/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p3, Lb/b/g/o;->e:Z

    :cond_0
    :pswitch_2
    invoke-virtual {p2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v0

    invoke-interface {v0}, Lb/b/f/d/d;->c()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    iput-boolean v2, p3, Lb/b/g/o;->e:Z

    invoke-virtual {p2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p2

    invoke-virtual {p2, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    if-ne v0, p1, :cond_2

    invoke-virtual {p2, p4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;)I

    move-result p1

    iget-object p2, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/o;

    invoke-static {p1, p3}, Lb/b/g/l;->a(Lb/b/g/o;Lb/b/g/o;)V

    iget-object p2, p3, Lb/b/g/o;->b:Lb/b/g/p;

    iget-object p4, p1, Lb/b/g/o;->b:Lb/b/g/p;

    invoke-virtual {p2, p4}, Lb/b/g/p;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_1

    iget-object p1, p1, Lb/b/g/o;->b:Lb/b/g/p;

    iput-object p1, p3, Lb/b/g/o;->b:Lb/b/g/p;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;)I

    move-result p1

    iget-object p2, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/o;

    invoke-static {p3, p1}, Lb/b/g/l;->a(Lb/b/g/o;Lb/b/g/o;)V

    iget-object p2, p1, Lb/b/g/o;->b:Lb/b/g/p;

    iget-object p4, p3, Lb/b/g/o;->b:Lb/b/g/p;

    invoke-virtual {p2, p4}, Lb/b/g/p;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_3

    iget-object p2, p3, Lb/b/g/o;->b:Lb/b/g/p;

    iput-object p2, p1, Lb/b/g/o;->b:Lb/b/g/p;

    :cond_3
    return-void

    :pswitch_3
    invoke-virtual {p2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1, p4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->e()Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v2, p3, Lb/b/g/o;->e:Z

    return-void

    :cond_4
    :pswitch_4
    iget-object p1, p3, Lb/b/g/o;->b:Lb/b/g/p;

    sget-object p2, Lb/b/g/p;->b:Lb/b/g/p;

    invoke-virtual {p1, p2}, Lb/b/g/p;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_6

    sget-object p1, Lb/b/g/p;->b:Lb/b/g/p;

    iput-object p1, p3, Lb/b/g/o;->b:Lb/b/g/p;

    return-void

    :cond_5
    :pswitch_5
    sget-object p1, Lb/b/g/p;->c:Lb/b/g/p;

    iput-object p1, p3, Lb/b/g/o;->b:Lb/b/g/p;

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object p1, p3, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {p2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/f/b/r;->f()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lb/b/f/b/r;Lb/b/g/o;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/r;

    iget-object v1, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-virtual {v2}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2, p2, v0}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/g/o;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2, p2, v0}, Lb/b/g/l;->a(Lb/b/f/b/r;Lb/b/g/aj;Lb/b/g/o;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lb/b/g/aj;ILjava/util/ArrayList;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object v2

    invoke-static {v2}, La/a/a;->a(Lb/b/f/d/c;)Lb/b/f/c/a;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Lb/b/f/c/ag;

    iget-object v3, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v3}, Lb/b/g/al;->n()I

    move-result v3

    invoke-static {v3, v2}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v7, 0x5

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lb/b/g/aj;Lb/b/f/b/r;Ljava/util/HashSet;)V
    .registers 17

    move-object v6, p0

    move-object/from16 v7, p3

    new-instance v8, Lb/b/f/c/ae;

    sget-object v0, Lb/b/f/b/g;->a:Lb/b/f/d/c;

    invoke-direct {v8, v0}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    sget-object v2, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->b(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/af;->l()Lb/b/g/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb/b/g/aj;

    iget-object v0, v6, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->n()I

    move-result v0

    invoke-static {v0, v8}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v11

    sget-object v2, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/16 v4, 0x38

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {v9}, Lb/b/g/af;->l()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lb/b/g/aj;

    new-instance v0, Lb/b/f/c/aa;

    new-instance v1, Lb/b/f/c/ad;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v2, Lb/b/f/c/ad;

    const-string v3, "(I)V"

    invoke-direct {v2, v3}, Lb/b/f/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lb/b/f/c/aa;-><init>(Lb/b/f/c/ad;Lb/b/f/c/ad;)V

    new-instance v5, Lb/b/f/c/z;

    invoke-direct {v5, v8, v0}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    move-object v0, p2

    invoke-static {v11, p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x34

    move-object v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->b(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lb/b/g/af;->l()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/b/g/af;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lb/b/g/aj;

    invoke-static {v11}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v2

    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->b(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {v8}, Lb/b/g/af;->j()I

    move-result v0

    iget-object v1, v6, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lb/b/g/af;->a(II)V

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    const/16 v1, 0x38

    if-ne p4, v1, :cond_0

    invoke-virtual {p3}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p4

    invoke-static {p4}, Lb/b/f/b/y;->e(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object p4

    :goto_0
    move-object v2, p4

    goto :goto_1

    :cond_0
    invoke-static {p4, p3, p2, p5}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object p4

    goto :goto_0

    :goto_1
    if-nez p5, :cond_1

    new-instance p4, Lb/b/f/b/q;

    invoke-virtual {v0}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object p5

    invoke-direct {p4, v2, p5, p3, p2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    goto :goto_2

    :cond_1
    new-instance p4, Lb/b/f/b/p;

    invoke-virtual {v0}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v3

    move-object v1, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lb/b/f/b/p;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V

    :goto_2
    new-instance p2, Lb/b/g/x;

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {p1, p2}, Lb/b/g/al;->a(Lb/b/g/aj;)V

    return-void
.end method

.method private a(Lb/b/g/aj;Lb/b/g/aj;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 15

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/x;->a()I

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/16 p2, 0x36

    if-eq v1, p2, :cond_3

    const/16 p2, 0x39

    if-eq v1, p2, :cond_2

    const/4 p2, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v1

    invoke-virtual {v1, p2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    check-cast v2, Lb/b/f/c/v;

    invoke-virtual {v2}, Lb/b/f/c/v;->j()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb/b/f/b/r;

    invoke-virtual {p4}, Lb/b/f/b/r;->f()I

    move-result p4

    invoke-virtual {p2, p4}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object p4

    invoke-static {p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v5

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {p4}, Lb/b/f/b/r;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v1, p2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/r;Ljava/util/HashSet;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lb/b/g/l;->b(Lb/b/g/aj;)Lb/b/g/aj;

    move-result-object v6

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    check-cast v2, Lb/b/f/c/v;

    invoke-virtual {v2}, Lb/b/f/c/v;->j()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/r;

    invoke-virtual {v6}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-static {p1}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {p0, v6, p1, p4}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/r;Ljava/util/HashSet;)V

    invoke-virtual {v6}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object p2

    check-cast p2, Lb/b/f/b/h;

    invoke-virtual {p2}, Lb/b/f/b/h;->c()Ljava/util/ArrayList;

    move-result-object p2

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb/b/f/b/r;

    invoke-virtual {p4}, Lb/b/f/b/r;->f()I

    move-result p4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/d/d;

    invoke-static {p4, v1}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object p4

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v8, 0x5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lb/b/f/c/a;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p4

    invoke-direct/range {v4 .. v9}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {p3, v3, p4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p2

    invoke-virtual {p2, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p2

    invoke-direct {p0, p1}, Lb/b/g/l;->b(Lb/b/g/aj;)Lb/b/g/aj;

    move-result-object p1

    sget-object v2, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v3

    const/4 v4, 0x5

    move-object v5, p2

    check-cast v5, Lb/b/f/c/a;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lb/b/g/aj;Lb/b/g/o;Ljava/util/ArrayList;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/g/l;->a(Lb/b/f/b/r;)I

    move-result v0

    iget-object v1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object p1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/o;

    if-eq p1, p2, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p2, Lb/b/g/o;->e:Z

    iget-object p3, p2, Lb/b/g/o;->a:Ljava/util/BitSet;

    iget-object v1, p1, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {p3, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object p3, p2, Lb/b/g/o;->b:Lb/b/g/p;

    iget-object v1, p1, Lb/b/g/o;->b:Lb/b/g/p;

    invoke-virtual {p3, v1}, Lb/b/g/p;->compareTo(Ljava/lang/Enum;)I

    move-result p3

    if-gez p3, :cond_0

    iget-object p3, p1, Lb/b/g/o;->b:Lb/b/g/p;

    iput-object p3, p2, Lb/b/g/o;->b:Lb/b/g/p;

    :cond_0
    invoke-static {p2, p1}, Lb/b/g/l;->b(Lb/b/g/o;Lb/b/g/o;)V

    iget-object p1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object p2, p2, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lb/b/g/al;)V
    .registers 8

    new-instance v0, Lb/b/g/l;

    invoke-direct {v0, p0}, Lb/b/g/l;-><init>(Lb/b/g/al;)V

    iget-object p0, v0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {p0, v0}, Lb/b/g/al;->a(Lb/b/g/ah;)V

    iget-object p0, v0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/o;

    iget-object v2, v1, Lb/b/g/o;->b:Lb/b/g/p;

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    if-eq v2, v3, :cond_0

    iget-object v2, v1, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/o;

    iget-object v4, v1, Lb/b/g/o;->b:Lb/b/g/p;

    iget-object v5, v3, Lb/b/g/o;->b:Lb/b/g/p;

    invoke-virtual {v4, v5}, Lb/b/g/p;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v1, Lb/b/g/o;->b:Lb/b/g/p;

    iput-object v4, v3, Lb/b/g/o;->b:Lb/b/g/p;

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/o;

    iget-boolean v2, v1, Lb/b/g/o;->e:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lb/b/g/o;->b:Lb/b/g/p;

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Lb/b/g/o;->a:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    iget-object v3, v0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v3, v1}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/b/g/l;->a(Lb/b/g/aj;)Lb/b/g/aj;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v5

    invoke-virtual {v5, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v2

    check-cast v2, Lb/b/f/c/v;

    invoke-virtual {v2}, Lb/b/f/c/v;->j()I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v3, v2, v5}, Lb/b/g/l;->a(Lb/b/g/aj;ILjava/util/ArrayList;)V

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v2, v1}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-direct {v0, v2, v4, v5, v6}, Lb/b/g/l;->a(Lb/b/g/aj;Lb/b/g/aj;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v1, v6}, Lb/b/g/al;->a(Ljava/util/Set;)V

    iget-object v1, v0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->l()V

    iget-object v1, v0, Lb/b/g/l;->a:Lb/b/g/al;

    iget v2, v0, Lb/b/g/l;->b:I

    invoke-static {v1, v2}, Lb/b/g/ai;->a(Lb/b/g/al;I)V

    invoke-direct {v0}, Lb/b/g/l;->a()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic a(Lb/b/g/l;Lb/b/g/aj;)V
    .registers 7

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x38

    if-ne v0, v3, :cond_5

    invoke-virtual {v1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object v3

    invoke-interface {v3}, Lb/b/f/d/d;->c()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-direct {p0, p1}, Lb/b/g/l;->a(Lb/b/g/aj;)Lb/b/g/aj;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/aj;->c()Lb/b/f/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/x;->a()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    const/16 v3, 0x26

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_0
    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->d:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/b/g/o;->e:Z

    goto :goto_0

    :cond_0
    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->d:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    goto :goto_0

    :cond_1
    :pswitch_2
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;)I

    move-result v2

    iget-object v3, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object p1, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/o;

    iget-object v2, p1, Lb/b/g/o;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object p1

    sget-object v2, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p1, v2, :cond_3

    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->d:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    goto :goto_0

    :cond_4
    :pswitch_3
    new-instance p1, Lb/b/g/o;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    :goto_0
    iget-object v0, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0, v1, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;Lb/b/g/o;)V

    return-void

    :cond_5
    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    invoke-virtual {v1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->c()I

    move-result p1

    if-ne p1, v2, :cond_6

    new-instance p1, Lb/b/g/o;

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    iget-object v0, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;Lb/b/g/o;)V

    return-void

    :cond_6
    const/16 p1, 0x37

    if-ne v0, p1, :cond_7

    invoke-virtual {v1}, Lb/b/f/b/r;->g()Lb/b/f/d/d;

    move-result-object p1

    invoke-interface {p1}, Lb/b/f/d/d;->c()I

    move-result p1

    if-ne p1, v2, :cond_7

    new-instance p1, Lb/b/g/o;

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget v2, p0, Lb/b/g/l;->b:I

    sget-object v3, Lb/b/g/p;->a:Lb/b/g/p;

    invoke-direct {p1, v0, v2, v3}, Lb/b/g/o;-><init>(IILb/b/g/p;)V

    iget-object v0, p0, Lb/b/g/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, p1}, Lb/b/g/l;->a(Lb/b/f/b/r;Lb/b/g/o;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lb/b/g/o;Lb/b/g/o;)V
    .registers 3

    iget-object v0, p1, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private b(Lb/b/g/aj;)Lb/b/g/aj;
    .registers 4

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p1

    iget-object v1, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/aj;

    return-object p1
.end method

.method private b(Lb/b/g/aj;Lb/b/f/b/u;Lb/b/f/b/r;ILb/b/f/c/a;)V
    .registers 13

    invoke-virtual {p1}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p4, v0, p2, p5}, Lb/b/f/b/y;->a(ILb/b/f/d/d;Lb/b/f/d/e;Lb/b/f/c/a;)Lb/b/f/b/x;

    move-result-object v2

    if-nez p5, :cond_0

    new-instance p4, Lb/b/f/b/ac;

    invoke-virtual {p3}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object p3

    sget-object p5, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    invoke-direct {p4, v2, p3, p2, p5}, Lb/b/f/b/ac;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lb/b/f/b/ab;

    invoke-virtual {p3}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object v3

    sget-object v5, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    move-object v1, p4

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lb/b/f/b/ab;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/u;Lb/b/f/d/e;Lb/b/f/c/a;)V

    :goto_0
    new-instance p2, Lb/b/g/x;

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p3

    invoke-direct {p2, p4, p3}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-virtual {p1}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lb/b/g/l;->a:Lb/b/g/al;

    invoke-virtual {p1, p2}, Lb/b/g/al;->a(Lb/b/g/aj;)V

    return-void
.end method

.method private static b(Lb/b/g/o;Lb/b/g/o;)V
    .registers 5

    iget-object v0, p1, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/o;

    iget-object v2, v1, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/o;

    iget-object v2, v1, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lb/b/g/o;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lb/b/g/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lb/b/g/af;Lb/b/g/af;)V
    .registers 3

    new-instance p2, Lb/b/g/n;

    invoke-direct {p2, p0}, Lb/b/g/n;-><init>(Lb/b/g/l;)V

    invoke-virtual {p1, p2}, Lb/b/g/af;->a(Lb/b/g/ak;)V

    return-void
.end method
