.class final Lb/b/a/b/ag;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/BitSet;

.field private b:Ljava/util/BitSet;

.field private c:I

.field private synthetic d:Lb/b/a/b/z;


# direct methods
.method constructor <init>(Lb/b/a/b/z;I)V
    .registers 4

    iput-object p1, p0, Lb/b/a/b/ag;->d:Lb/b/a/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb/b/a/b/ag;->c:I

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Lb/b/a/b/z;->b(Lb/b/a/b/z;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lb/b/a/b/ag;->b:Ljava/util/BitSet;

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Lb/b/a/b/z;->b(Lb/b/a/b/z;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lb/b/a/b/z;->a(Lb/b/a/b/z;Z)Z

    return-void
.end method

.method constructor <init>(Lb/b/a/b/z;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lb/b/a/b/ag;-><init>(Lb/b/a/b/z;I)V

    invoke-virtual {p0, p3}, Lb/b/a/b/ag;->a(I)V

    return-void
.end method

.method static synthetic a(Lb/b/a/b/ag;)I
    .registers 1

    iget p0, p0, Lb/b/a/b/ag;->c:I

    return p0
.end method

.method static synthetic b(Lb/b/a/b/ag;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/ag;->b:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lb/b/a/b/ag;->c:I

    return v0
.end method

.method final a(I)V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/ag;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method final a(Lb/b/a/b/p;[I)V
    .registers 12

    iget-object v0, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lb/b/a/b/ag;->d:Lb/b/a/b/z;

    invoke-static {v2, v0}, Lb/b/a/b/z;->a(Lb/b/a/b/z;I)Lb/b/f/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/b/h/k;->b(I)I

    move-result v4

    iget v2, p0, Lb/b/a/b/ag;->c:I

    invoke-virtual {p1, v2, v0}, Lb/b/a/b/p;->a(II)Lb/b/a/b/p;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v3, p0, Lb/b/a/b/ag;->d:Lb/b/a/b/z;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lb/b/a/b/z;->a(Lb/b/a/b/z;IILb/b/a/b/ag;Lb/b/a/b/p;[I)V

    goto :goto_1

    :cond_0
    invoke-static {p2, v0}, La/a/a;->b([II)V

    :goto_1
    iget-object v2, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b()Lb/b/h/k;
    .registers 5

    new-instance v0, Lb/b/h/k;

    iget-object v1, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    iget-object v1, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lb/b/a/b/ag;->d:Lb/b/a/b/z;

    invoke-static {v3, v1}, Lb/b/a/b/z;->a(Lb/b/a/b/z;I)Lb/b/f/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lb/b/h/k;->c(I)V

    iget-object v3, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/h/k;->b_()V

    return-object v0
.end method

.method final b(I)V
    .registers 3

    iget-object v0, p0, Lb/b/a/b/ag;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
