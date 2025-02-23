.class public final Lb/b/g/q;
.super Lb/b/g/a;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Lcom/gmail/heagoo/pngeditor/m;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/pngeditor/m;I)V
    .registers 3

    invoke-direct {p0, p2}, Lb/b/g/a;-><init>(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lb/b/g/q;->b:Lcom/gmail/heagoo/pngeditor/m;

    return-void
.end method

.method private a(II)V
    .registers 6

    iget-object v0, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v0, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    new-instance v2, Lb/b/h/a;

    invoke-direct {v2, v1}, Lb/b/h/a;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/q;->b:Lcom/gmail/heagoo/pngeditor/m;

    iget-object v1, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/h/l;

    invoke-virtual {v0, p2, p1}, Lcom/gmail/heagoo/pngeditor/m;->a(ILb/b/h/l;)V

    return-void
.end method

.method private b(III)Z
    .registers 7

    iget-object v0, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/b/g/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/h/l;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    invoke-interface {v0, p1}, Lb/b/h/l;->b(I)Z

    move-result p1

    return p1

    :cond_2
    invoke-interface {v0, p1}, Lb/b/h/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {p0, p1, p2, p3}, Lb/b/g/q;->b(III)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public final a(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lb/b/g/a;->a(III)V

    invoke-direct {p0, p2, p1}, Lb/b/g/q;->a(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2, p1}, Lb/b/g/q;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/f/b/r;I)Z
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result p1

    invoke-direct {p0, v0, p2, p1}, Lb/b/g/q;->b(III)Z

    move-result p1

    return p1
.end method

.method public final a(Lb/b/f/b/u;II)Z
    .registers 10

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v4

    invoke-virtual {p0, v4}, Lb/b/g/q;->a(I)I

    move-result v4

    if-eq v4, p2, :cond_2

    invoke-virtual {v3}, Lb/b/f/b/r;->k()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2

    :cond_0
    if-ne p3, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
