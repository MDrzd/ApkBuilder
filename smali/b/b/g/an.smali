.class public final Lb/b/g/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lb/b/g/al;

.field private b:I

.field private final c:I

.field private d:I

.field private final e:[[Lb/b/f/b/r;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lb/b/g/al;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result v0

    iput v0, p0, Lb/b/g/an;->c:I

    iput-object p1, p0, Lb/b/g/an;->a:Lb/b/g/al;

    iget v0, p0, Lb/b/g/an;->c:I

    iput v0, p0, Lb/b/g/an;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lb/b/g/an;->d:I

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Lb/b/f/b/r;

    iput-object v1, p0, Lb/b/g/an;->e:[[Lb/b/f/b/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    iget v1, p0, Lb/b/g/an;->c:I

    new-array v1, v1, [Lb/b/f/b/r;

    :goto_0
    iget v2, p0, Lb/b/g/an;->c:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lb/b/f/d/c;->i:Lb/b/f/d/c;

    invoke-static {v0, v2}, Lb/b/f/b/r;->a(ILb/b/f/d/d;)Lb/b/f/b/r;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/an;->e:[[Lb/b/f/b/r;

    invoke-virtual {p1}, Lb/b/g/al;->c()I

    move-result p1

    aput-object v1, v0, p1

    return-void
.end method

.method public constructor <init>(Lb/b/g/al;I)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/g/an;-><init>(Lb/b/g/al;)V

    iput p2, p0, Lb/b/g/an;->d:I

    return-void
.end method

.method static synthetic a(Lb/b/g/an;I)Lb/b/f/b/n;
    .registers 3

    iget-object v0, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/f/b/n;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lb/b/g/an;Lb/b/f/b/r;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object p1

    iget-object v1, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v1, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lb/b/g/an;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a([Lb/b/f/b/r;)[Lb/b/f/b/r;
    .registers 4

    array-length v0, p0

    new-array v0, v0, [Lb/b/f/b/r;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic a(Lb/b/g/an;)[[Lb/b/f/b/r;
    .registers 1

    iget-object p0, p0, Lb/b/g/an;->e:[[Lb/b/f/b/r;

    return-object p0
.end method

.method static synthetic b(Lb/b/g/an;)I
    .registers 1

    iget p0, p0, Lb/b/g/an;->b:I

    return p0
.end method

.method static synthetic b(Lb/b/g/an;I)Z
    .registers 2

    iget p0, p0, Lb/b/g/an;->d:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lb/b/g/an;)I
    .registers 1

    iget p0, p0, Lb/b/g/an;->d:I

    return p0
.end method

.method static synthetic c(Lb/b/g/an;I)Z
    .registers 2

    iget p0, p0, Lb/b/g/an;->c:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lb/b/g/an;)I
    .registers 3

    iget v0, p0, Lb/b/g/an;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/b/g/an;->b:I

    return v0
.end method

.method static synthetic e(Lb/b/g/an;)Lb/b/g/al;
    .registers 1

    iget-object p0, p0, Lb/b/g/an;->a:Lb/b/g/al;

    return-object p0
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lb/b/g/an;->a:Lb/b/g/al;

    new-instance v1, Lb/b/g/ao;

    invoke-direct {v1, p0}, Lb/b/g/ao;-><init>(Lb/b/g/an;)V

    invoke-virtual {v0, v1}, Lb/b/g/al;->a(Lb/b/g/ah;)V

    iget-object v0, p0, Lb/b/g/an;->a:Lb/b/g/al;

    iget v1, p0, Lb/b/g/an;->b:I

    invoke-virtual {v0, v1}, Lb/b/g/al;->e(I)V

    iget-object v0, p0, Lb/b/g/an;->a:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->l()V

    return-void
.end method
