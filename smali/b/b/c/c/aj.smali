.class public final Lb/b/c/c/aj;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/c/c/ai;

.field private final b:Lb/b/c/c/az;

.field private final c:Lb/b/c/c/ah;

.field private final d:Lb/b/c/c/ah;

.field private final e:I


# direct methods
.method private constructor <init>(Lb/b/c/c/ai;Lb/b/c/c/az;Lb/b/c/c/ah;Lb/b/c/c/ah;I)V
    .registers 8

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-lez p5, :cond_0

    iput-object p1, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    iput-object p2, p0, Lb/b/c/c/aj;->b:Lb/b/c/c/az;

    iput-object p3, p0, Lb/b/c/c/aj;->c:Lb/b/c/c/ah;

    iput-object p4, p0, Lb/b/c/c/aj;->d:Lb/b/c/c/ah;

    iput p5, p0, Lb/b/c/c/aj;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "itemCount <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "lastItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "firstItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "section == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lb/b/c/c/az;)V
    .registers 4

    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_0

    sget-object v0, Lb/b/c/c/ai;->j:Lb/b/c/c/ai;

    iput-object v0, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    iput-object p1, p0, Lb/b/c/c/aj;->b:Lb/b/c/c/az;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/aj;->c:Lb/b/c/c/ah;

    iput-object p1, p0, Lb/b/c/c/aj;->d:Lb/b/c/c/ah;

    const/4 p1, 0x1

    iput p1, p0, Lb/b/c/c/aj;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "section == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a([Lb/b/c/c/az;Lb/b/c/c/ar;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lb/b/c/c/ar;->b()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v12, v0, v5

    invoke-virtual {v12}, Lb/b/c/c/az;->b()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v6, 0x0

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lb/b/c/c/ah;

    invoke-virtual {v14}, Lb/b/c/c/ah;->a()Lb/b/c/c/ai;

    move-result-object v15

    if-eq v15, v7, :cond_1

    if-eqz v11, :cond_0

    new-instance v8, Lb/b/c/c/aj;

    move-object v6, v8

    move-object v4, v8

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lb/b/c/c/aj;-><init>(Lb/b/c/c/ai;Lb/b/c/c/az;Lb/b/c/c/ah;Lb/b/c/c/ah;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v9, v14

    move-object v7, v15

    const/4 v11, 0x0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object v10, v14

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_3

    new-instance v4, Lb/b/c/c/aj;

    move-object v6, v4

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lb/b/c/c/aj;-><init>(Lb/b/c/c/ai;Lb/b/c/c/az;Lb/b/c/c/ah;Lb/b/c/c/ah;I)V

    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-ne v12, v1, :cond_4

    new-instance v4, Lb/b/c/c/aj;

    invoke-direct {v4, v1}, Lb/b/c/c/aj;-><init>(Lb/b/c/c/az;)V

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Lb/b/c/c/bj;

    sget-object v3, Lb/b/c/c/ai;->j:Lb/b/c/c/ai;

    invoke-direct {v0, v3, v2}, Lb/b/c/c/bj;-><init>(Lb/b/c/c/ai;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->u:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 2

    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 8

    iget-object p1, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    invoke-virtual {p1}, Lb/b/c/c/ai;->a()I

    move-result p1

    iget-object v0, p0, Lb/b/c/c/aj;->c:Lb/b/c/c/ah;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/aj;->b:Lb/b/c/c/az;

    invoke-virtual {v0}, Lb/b/c/c/az;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/c/c/aj;->b:Lb/b/c/c/az;

    iget-object v1, p0, Lb/b/c/c/aj;->c:Lb/b/c/c/ah;

    invoke-virtual {v0, v1}, Lb/b/c/c/az;->a(Lb/b/c/c/ah;)I

    move-result v0

    :goto_0
    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/aj;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    invoke-virtual {v3}, Lb/b/c/c/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " map"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  type:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    invoke-virtual {v3}, Lb/b/c/c/ai;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {p2, v3, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const-string v1, "  unused: 0"

    invoke-interface {p2, v3, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  size:   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lb/b/c/c/aj;->e:I

    invoke-static {v3}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  offset: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, p1}, Lb/b/h/r;->b(I)V

    invoke-interface {p2, v2}, Lb/b/h/r;->b(I)V

    iget p1, p0, Lb/b/c/c/aj;->e:I

    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    invoke-interface {p2, v0}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/c/c/aj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/aj;->b:Lb/b/c/c/az;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/c/c/aj;->a:Lb/b/c/c/ai;

    invoke-virtual {v1}, Lb/b/c/c/ai;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
