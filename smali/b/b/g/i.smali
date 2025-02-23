.class public final Lb/b/g/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Lb/b/g/al;

.field private final c:Ljava/util/ArrayList;

.field private final d:[Lb/b/g/j;

.field private final e:Ljava/util/ArrayList;

.field private final f:[Lb/b/g/h;


# direct methods
.method private constructor <init>(Lb/b/g/al;[Lb/b/g/h;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/i;->b:Lb/b/g/al;

    iput-object p2, p0, Lb/b/g/i;->f:[Lb/b/g/h;

    iput-boolean p3, p0, Lb/b/g/i;->a:Z

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/i;->c:Ljava/util/ArrayList;

    iget-object p1, p0, Lb/b/g/i;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lb/b/g/j;

    iput-object p1, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/i;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lb/b/g/al;[Lb/b/g/h;Z)Lb/b/g/i;
    .registers 11

    new-instance p2, Lb/b/g/i;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lb/b/g/i;-><init>(Lb/b/g/al;[Lb/b/g/h;Z)V

    iget-boolean p0, p2, Lb/b/g/i;->a:Z

    if-eqz p0, :cond_0

    iget-object p0, p2, Lb/b/g/i;->b:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lb/b/g/i;->b:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p1, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {p0}, Lb/b/g/af;->e()I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p0}, Lb/b/g/af;->e()I

    move-result p0

    iput p0, p1, Lb/b/g/h;->b:I

    :cond_1
    new-instance p0, Lb/b/g/k;

    invoke-direct {p0, p2, v0}, Lb/b/g/k;-><init>(Lb/b/g/i;B)V

    iget-object p1, p2, Lb/b/g/i;->b:Lb/b/g/al;

    iget-boolean v1, p2, Lb/b/g/i;->a:Z

    invoke-virtual {p1, v1, p0}, Lb/b/g/al;->a(ZLb/b/g/ah;)V

    iget-object p0, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    move p1, p0

    :goto_1
    const/4 v1, 0x2

    if-lt p1, v1, :cond_7

    iget-object v1, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    iget-object v2, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v1}, Lb/b/g/af;->e()I

    move-result v3

    aget-object v2, v2, v3

    iget-boolean v3, p2, Lb/b/g/i;->a:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v3

    :goto_2
    invoke-virtual {v3, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    :goto_3
    if-ltz v4, :cond_4

    iget-object v5, p2, Lb/b/g/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    iget-object v6, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v5}, Lb/b/g/af;->e()I

    move-result v7

    aget-object v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-direct {p2, v5}, Lb/b/g/i;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/g/af;->e()I

    move-result v5

    aget-object v5, v6, v5

    iget v5, v5, Lb/b/g/j;->a:I

    iget v6, v2, Lb/b/g/j;->a:I

    if-ge v5, v6, :cond_3

    iput v5, v2, Lb/b/g/j;->a:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_3

    :cond_4
    iget-object v3, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    iget-object v4, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    iget v5, v2, Lb/b/g/j;->a:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/af;

    invoke-virtual {v4}, Lb/b/g/af;->e()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v3, v3, Lb/b/g/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lb/b/g/j;->b:Lb/b/g/af;

    iput-object v1, v2, Lb/b/g/j;->d:Lb/b/g/af;

    iget-object v1, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    iget-object v3, v2, Lb/b/g/j;->b:Lb/b/g/af;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    aget-object v1, v1, v3

    iget-object v1, v1, Lb/b/g/j;->e:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/af;

    invoke-direct {p2, v3}, Lb/b/g/i;->b(Lb/b/g/af;)Lb/b/g/af;

    move-result-object v4

    iget-object v5, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v4}, Lb/b/g/af;->e()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lb/b/g/j;->a:I

    iget-object v6, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Lb/b/g/j;->a:I

    if-ge v5, v6, :cond_5

    iget-object v5, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    aget-object v3, v5, v3

    :goto_5
    invoke-virtual {v4}, Lb/b/g/af;->e()I

    move-result v4

    iput v4, v3, Lb/b/g/h;->b:I

    goto :goto_4

    :cond_5
    iget-object v4, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    aget-object v3, v4, v3

    iget-object v4, v2, Lb/b/g/j;->b:Lb/b/g/af;

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_1

    :cond_7
    :goto_6
    if-gt v1, p0, :cond_9

    iget-object p1, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    iget-object v0, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Lb/b/g/h;->b:I

    iget-object v2, p2, Lb/b/g/i;->e:Ljava/util/ArrayList;

    iget-object v3, p2, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lb/b/g/j;->a:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v2

    if-eq v0, v2, :cond_8

    iget-object v0, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    iget-object v3, p2, Lb/b/g/i;->f:[Lb/b/g/h;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result p1

    aget-object p1, v3, p1

    iget p1, p1, Lb/b/g/h;->b:I

    aget-object p1, v2, p1

    iget p1, p1, Lb/b/g/h;->b:I

    iput p1, v0, Lb/b/g/h;->b:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    return-object p2
.end method

.method static synthetic a(Lb/b/g/i;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lb/b/g/i;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Lb/b/g/af;)V
    .registers 9

    iget-object v0, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    iget-object v0, v0, Lb/b/g/j;->d:Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->e()I

    move-result v0

    aget-object v0, v1, v0

    iget-object v0, v0, Lb/b/g/j;->d:Lb/b/g/af;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    iget-object v3, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v2

    aget-object v2, v3, v2

    iget-object v3, v2, Lb/b/g/j;->d:Lb/b/g/af;

    iget-object v4, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lb/b/g/j;->d:Lb/b/g/af;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, v4, Lb/b/g/j;->d:Lb/b/g/af;

    if-eqz p1, :cond_0

    iget-object p1, v4, Lb/b/g/j;->c:Lb/b/g/af;

    iget-object v3, v2, Lb/b/g/j;->c:Lb/b/g/af;

    iget-object v5, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v6

    aget-object v5, v5, v6

    iget v5, v5, Lb/b/g/j;->a:I

    iget-object v6, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {v3}, Lb/b/g/af;->e()I

    move-result v3

    aget-object v3, v6, v3

    iget v3, v3, Lb/b/g/j;->a:I

    if-ge v5, v3, :cond_2

    iput-object p1, v2, Lb/b/g/j;->c:Lb/b/g/af;

    :cond_2
    iget-object p1, v4, Lb/b/g/j;->d:Lb/b/g/af;

    iput-object p1, v2, Lb/b/g/j;->d:Lb/b/g/af;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Lb/b/g/af;)Lb/b/g/af;
    .registers 4

    iget-object v0, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    invoke-virtual {p1}, Lb/b/g/af;->e()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lb/b/g/j;->d:Lb/b/g/af;

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lb/b/g/i;->a(Lb/b/g/af;)V

    iget-object p1, v0, Lb/b/g/j;->c:Lb/b/g/af;

    return-object p1
.end method

.method static synthetic b(Lb/b/g/i;)[Lb/b/g/j;
    .registers 1

    iget-object p0, p0, Lb/b/g/i;->d:[Lb/b/g/j;

    return-object p0
.end method
