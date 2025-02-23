.class public final Lb/b/g/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;

.field private final b:Ljava/util/ArrayList;

.field private final c:[Lb/b/g/h;


# direct methods
.method public constructor <init>(Lb/b/g/al;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/g;->a:Lb/b/g/al;

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Lb/b/g/h;

    iput-object v0, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    new-instance v2, Lb/b/g/h;

    invoke-direct {v2}, Lb/b/g/h;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()[Lb/b/g/h;
    .registers 10

    iget-object v0, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lb/b/g/g;->a:Lb/b/g/al;

    iget-object v2, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lb/b/g/i;->a(Lb/b/g/al;[Lb/b/g/h;Z)Lb/b/g/i;

    iget-object v1, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v1, :cond_1

    iget-object v5, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    aget-object v5, v5, v2

    iget v6, v5, Lb/b/g/h;->b:I

    if-eq v6, v4, :cond_0

    iget-object v4, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    iget v5, v5, Lb/b/g/h;->b:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/g/af;

    iget-object v5, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    invoke-virtual {v4, v5}, Lb/b/g/af;->a(Lb/b/g/af;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    aget-object v2, v2, v1

    const/16 v5, 0xc00

    if-gt v0, v5, :cond_2

    new-instance v5, Lb/b/h/a;

    invoke-direct {v5, v0}, Lb/b/h/a;-><init>(I)V

    goto :goto_2

    :cond_2
    new-instance v5, Lb/b/h/o;

    invoke-direct {v5}, Lb/b/h/o;-><init>()V

    :goto_2
    iput-object v5, v2, Lb/b/g/h;->a:Lb/b/h/l;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lb/b/g/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    iget-object v5, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    aget-object v5, v5, v1

    invoke-virtual {v2}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    :goto_4
    if-ltz v6, :cond_5

    move v7, v6

    :goto_5
    iget v8, v5, Lb/b/g/h;->b:I

    if-eq v7, v8, :cond_4

    if-eq v7, v4, :cond_4

    iget-object v8, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    aget-object v7, v8, v7

    iget-object v8, v7, Lb/b/g/h;->a:Lb/b/h/l;

    invoke-interface {v8, v1}, Lb/b/h/l;->b(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v7, Lb/b/g/h;->a:Lb/b/h/l;

    invoke-interface {v8, v1}, Lb/b/h/l;->a(I)V

    iget v7, v7, Lb/b/g/h;->b:I

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lb/b/g/g;->c:[Lb/b/g/h;

    return-object v0
.end method
