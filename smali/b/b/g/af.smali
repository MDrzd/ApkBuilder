.class public final Lb/b/g/af;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private c:Ljava/util/BitSet;

.field private d:Ljava/util/BitSet;

.field private e:Lb/b/h/k;

.field private f:I

.field private final g:I

.field private final h:Lb/b/g/al;

.field private final i:I

.field private final j:Ljava/util/ArrayList;

.field private k:I

.field private l:I

.field private m:Lb/b/h/l;

.field private n:Lb/b/h/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/g/ag;

    invoke-direct {v0}, Lb/b/g/ag;-><init>()V

    sput-object v0, Lb/b/g/af;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IILb/b/g/al;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/b/g/af;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lb/b/g/af;->k:I

    iput v0, p0, Lb/b/g/af;->l:I

    iput-object p3, p0, Lb/b/g/af;->h:Lb/b/g/al;

    iput p1, p0, Lb/b/g/af;->i:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iput p2, p0, Lb/b/g/af;->g:I

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/af;->c:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {p3}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    new-instance p1, Lb/b/h/k;

    invoke-direct {p1}, Lb/b/h/k;-><init>()V

    iput-object p1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/g/af;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/g/al;)Lb/b/g/af;
    .registers 11

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v1

    new-instance v2, Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/f/b/a;->a()I

    move-result v3

    invoke-direct {v2, p1, v3, p2}, Lb/b/g/af;-><init>(IILb/b/g/al;)V

    invoke-virtual {v1}, Lb/b/f/b/a;->b()Lb/b/f/b/l;

    move-result-object p1

    iget-object p2, v2, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lb/b/f/b/l;->a_()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p1}, Lb/b/f/b/l;->a_()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_0

    iget-object v5, v2, Lb/b/g/af;->b:Ljava/util/ArrayList;

    new-instance v6, Lb/b/g/x;

    invoke-virtual {p1, v4}, Lb/b/f/b/l;->a(I)Lb/b/f/b/i;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/f/b/a;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/pngeditor/j;->a(I)Lb/b/h/k;

    move-result-object p0

    invoke-static {v0, p0}, Lb/b/g/al;->a(Lb/b/f/b/c;Lb/b/h/k;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Lb/b/g/af;->c:Ljava/util/BitSet;

    invoke-virtual {v1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object p0

    invoke-static {v0, p0}, Lb/b/g/al;->a(Lb/b/f/b/c;Lb/b/h/k;)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, v2, Lb/b/g/af;->d:Ljava/util/BitSet;

    invoke-virtual {v1}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object p0

    new-instance p1, Lb/b/h/k;

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result p2

    invoke-direct {p1, p2}, Lb/b/h/k;-><init>(I)V

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result p2

    :goto_1
    if-ge v3, p2, :cond_1

    invoke-virtual {p0, v3}, Lb/b/h/k;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lb/b/f/b/c;->c(I)I

    move-result v4

    invoke-virtual {p1, v4}, Lb/b/h/k;->c(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, v2, Lb/b/g/af;->e:Lb/b/h/k;

    iget-object p0, v2, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {p0}, Lb/b/h/k;->f()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lb/b/f/b/a;->d()I

    move-result p0

    if-gez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Lb/b/f/b/c;->c(I)I

    move-result p0

    :goto_2
    iput p0, v2, Lb/b/g/af;->f:I

    :cond_3
    return-object v2
.end method

.method private static a(Ljava/util/BitSet;Lb/b/f/b/r;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 13

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->g()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/aj;

    invoke-virtual {v6}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v6

    invoke-virtual {v6, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v6

    invoke-static {v0, v6}, Lb/b/g/af;->a(Ljava/util/BitSet;Lb/b/f/b/r;)V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/aj;

    invoke-virtual {v6}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v6

    invoke-static {v1, v6}, Lb/b/g/af;->a(Ljava/util/BitSet;Lb/b/f/b/r;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/aj;

    invoke-virtual {v7}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v7

    invoke-static {v0, v7}, Lb/b/g/af;->b(Ljava/util/BitSet;Lb/b/f/b/r;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-static {p1, v5, v6}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    if-ne v2, v6, :cond_5

    const/4 v2, 0x0

    move v5, v6

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/g/aj;

    invoke-virtual {v7}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v8

    invoke-static {v0, v8}, Lb/b/g/af;->b(Ljava/util/BitSet;Lb/b/f/b/r;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v8

    invoke-virtual {v8, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v8

    invoke-static {v1, v8}, Lb/b/g/af;->b(Ljava/util/BitSet;Lb/b/f/b/r;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1, v6, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move-object v2, v7

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v2}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object v4

    iget-object v5, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v4}, Lb/b/f/b/r;->k()I

    move-result v7

    invoke-virtual {v5, v7}, Lb/b/g/al;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object v5

    new-instance v7, Lb/b/g/x;

    new-instance v8, Lb/b/f/b/q;

    invoke-virtual {v4}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v9

    invoke-static {v9}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v9

    sget-object v10, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-virtual {v2}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v2

    invoke-direct {v8, v9, v10, v5, v2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-direct {v7, v8, p0}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    add-int/lit8 v2, v6, 0x1

    invoke-interface {p1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v5}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v5

    new-instance v6, Lb/b/g/x;

    new-instance v7, Lb/b/f/b/q;

    invoke-virtual {v4}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v8

    invoke-static {v8}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v8

    sget-object v9, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-direct {v7, v8, v9, v4, v5}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-direct {v6, v7, p0}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_5

    :cond_5
    move v2, v6

    :goto_5
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private static b(Ljava/util/BitSet;Lb/b/f/b/r;)Z
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/r;->k()I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic d(Lb/b/g/af;)I
    .registers 1

    iget p0, p0, Lb/b/g/af;->g:I

    return p0
.end method

.method private t()I
    .registers 4

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    instance-of v2, v2, Lb/b/g/aa;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private u()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lb/b/g/af;->g:I

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    new-instance v1, Lb/b/g/aa;

    invoke-direct {v1, p1, p0}, Lb/b/g/aa;-><init>(ILb/b/g/af;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(II)V
    .registers 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    iget v0, p0, Lb/b/g/af;->f:I

    if-ne v0, p1, :cond_1

    iput p2, p0, Lb/b/g/af;->f:I

    :cond_1
    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v1, v0}, Lb/b/h/k;->b(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v1, v0, p2}, Lb/b/h/k;->b(II)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/b/g/af;

    iget-object p2, p2, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v0, p0, Lb/b/g/af;->i:I

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object p2, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {p2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    iget-object p1, p1, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget p2, p0, Lb/b/g/af;->i:I

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public final a(Lb/b/f/b/i;)V
    .registers 4

    invoke-static {p1, p0}, Lb/b/g/aj;->a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;

    move-result-object p1

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lb/b/g/af;->t()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0, p1}, Lb/b/g/al;->a(Lb/b/g/aj;)V

    return-void
.end method

.method public final a(Lb/b/f/b/r;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    new-instance v1, Lb/b/g/aa;

    invoke-direct {v1, p1, p0}, Lb/b/g/aa;-><init>(Lb/b/f/b/r;Lb/b/g/af;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lb/b/f/b/r;Lb/b/f/b/r;)V
    .registers 11

    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/x;

    invoke-virtual {v0}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lb/b/g/x;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object p2

    new-instance v0, Lb/b/g/x;

    new-instance v2, Lb/b/f/b/q;

    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v3

    invoke-static {v3}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v3

    sget-object v4, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-direct {v2, v3, v4, p1, p2}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-direct {v0, v2, p0}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    iget-object p1, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget-object p2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lb/b/g/af;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/b/g/af;->k:I

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_4

    iget-object v2, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v3

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v4

    if-eq v3, v4, :cond_3

    invoke-static {p2}, Lb/b/f/b/u;->a(Lb/b/f/b/r;)Lb/b/f/b/u;

    move-result-object v3

    new-instance v4, Lb/b/g/x;

    new-instance v5, Lb/b/f/b/q;

    invoke-virtual {p1}, Lb/b/f/b/r;->a()Lb/b/f/d/c;

    move-result-object v6

    invoke-static {v6}, Lb/b/f/b/y;->a(Lb/b/f/d/d;)Lb/b/f/b/x;

    move-result-object v6

    sget-object v7, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    invoke-direct {v5, v6, v7, p1, v3}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-direct {v4, v5, v2}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    iget-object v3, v2, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-direct {v2}, Lb/b/g/af;->t()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v3, v2, Lb/b/g/af;->l:I

    add-int/2addr v3, v1

    iput v3, v2, Lb/b/g/af;->l:I

    :cond_3
    iget-object v2, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Inserting a move to a block with multiple successors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/g/ac;)V
    .registers 6

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    instance-of v3, v2, Lb/b/g/aa;

    if-eqz v3, :cond_0

    check-cast v2, Lb/b/g/aa;

    invoke-interface {p1, v2}, Lb/b/g/ac;->a(Lb/b/g/aa;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lb/b/g/af;)V
    .registers 3

    iget-object v0, p0, Lb/b/g/af;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lb/b/g/ak;)V
    .registers 5

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-virtual {v2, p1}, Lb/b/g/aj;->a(Lb/b/g/ak;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lb/b/g/af;)Lb/b/g/af;
    .registers 6

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->b()Lb/b/g/af;

    move-result-object v0

    iget-object v1, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v2, p1, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v2, p0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v2, p1, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lb/b/g/af;->e:Lb/b/h/k;

    iget v2, p1, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Lb/b/h/k;->c(I)V

    iget v1, p1, Lb/b/g/af;->i:I

    iput v1, v0, Lb/b/g/af;->f:I

    iget-object v1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v2, v1}, Lb/b/h/k;->b(I)I

    move-result v2

    iget v3, p1, Lb/b/g/af;->i:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lb/b/g/af;->e:Lb/b/h/k;

    iget v3, v0, Lb/b/g/af;->i:I

    invoke-virtual {v2, v1, v3}, Lb/b/h/k;->b(II)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lb/b/g/af;->f:I

    iget v2, p1, Lb/b/g/af;->i:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Lb/b/g/af;->i:I

    iput v1, p0, Lb/b/g/af;->f:I

    :cond_2
    iget-object v1, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v2, p1, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v1, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v2, v0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v2, v0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p1, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v2, p0, Lb/b/g/af;->i:I

    iget-object v3, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget p1, p1, Lb/b/g/af;->i:I

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p1}, Lb/b/g/af;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not successor of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/b/g/af;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lb/b/g/af;->t()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(I)V
    .registers 5

    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v2, v0}, Lb/b/h/k;->b(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v2, v0}, Lb/b/h/k;->b(I)I

    move-result v2

    iput v2, p0, Lb/b/g/af;->f:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v0, v1}, Lb/b/h/k;->d(I)V

    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    iget-object p1, p1, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v0, p0, Lb/b/g/af;->i:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public final b(Lb/b/f/b/i;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-static {p1, p0}, Lb/b/g/aj;->a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;

    move-result-object p1

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v1, v0}, Lb/b/g/al;->b(Lb/b/g/aj;)V

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0, p1}, Lb/b/g/al;->a(Lb/b/g/aj;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "last insn must branch"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    invoke-static {v0}, Lb/b/g/b;->b(I)Lb/b/h/l;

    move-result-object v0

    iput-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    invoke-interface {v0, p1}, Lb/b/h/l;->a(I)V

    return-void
.end method

.method public final c(Lb/b/g/af;)V
    .registers 4

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v0}, Lb/b/h/k;->f()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v1, p1, Lb/b/g/af;->i:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    iget v1, p1, Lb/b/g/af;->i:I

    invoke-virtual {v0, v1}, Lb/b/h/k;->c(I)V

    iget v0, p1, Lb/b/g/af;->i:I

    iput v0, p0, Lb/b/g/af;->f:I

    iget-object p1, p1, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v0, p0, Lb/b/g/af;->i:I

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lb/b/g/af;->t()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .registers 3

    iget-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    invoke-static {v0}, Lb/b/g/b;->b(I)Lb/b/h/l;

    move-result-object v0

    iput-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    invoke-interface {v0, p1}, Lb/b/h/l;->a(I)V

    return-void
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lb/b/g/af;->i:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lb/b/g/af;->g:I

    return v0
.end method

.method public final g()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->c:Ljava/util/BitSet;

    return-object v0
.end method

.method public final h()Ljava/util/BitSet;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->d:Ljava/util/BitSet;

    return-object v0
.end method

.method public final i()Lb/b/h/k;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->e:Lb/b/h/k;

    return-object v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lb/b/g/af;->f:I

    return v0
.end method

.method public final k()I
    .registers 3

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    iget v1, p0, Lb/b/g/af;->f:I

    invoke-virtual {v0, v1}, Lb/b/g/al;->a(I)I

    move-result v0

    return v0
.end method

.method public final l()Lb/b/g/af;
    .registers 3

    iget v0, p0, Lb/b/g/af;->f:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lb/b/g/af;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    return-object v0
.end method

.method public final m()Lb/b/h/k;
    .registers 6

    new-instance v0, Lb/b/h/k;

    iget-object v1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v1

    invoke-direct {v0, v1}, Lb/b/h/k;-><init>(I)V

    iget-object v1, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v1}, Lb/b/h/k;->f()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lb/b/g/af;->h:Lb/b/g/al;

    iget-object v4, p0, Lb/b/g/af;->e:Lb/b/h/k;

    invoke-virtual {v4, v2}, Lb/b/h/k;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lb/b/g/al;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lb/b/h/k;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final n()Lb/b/g/al;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    return-object v0
.end method

.method public final o()Lb/b/g/af;
    .registers 6

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->b()Lb/b/g/af;

    move-result-object v0

    iget-object v1, p0, Lb/b/g/af;->c:Ljava/util/BitSet;

    iput-object v1, v0, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget-object v1, v0, Lb/b/g/af;->d:Ljava/util/BitSet;

    iget v2, p0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lb/b/g/af;->e:Lb/b/h/k;

    iget v2, p0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Lb/b/h/k;->c(I)V

    iget v1, p0, Lb/b/g/af;->i:I

    iput v1, v0, Lb/b/g/af;->f:I

    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/af;->c:Ljava/util/BitSet;

    iget v2, v0, Lb/b/g/af;->i:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    iget-object v1, v0, Lb/b/g/af;->c:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v2}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    iget v3, p0, Lb/b/g/af;->i:I

    iget v4, v0, Lb/b/g/af;->i:I

    invoke-virtual {v2, v3, v4}, Lb/b/g/af;->a(II)V

    iget-object v2, v0, Lb/b/g/af;->c:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final p()Lb/b/h/l;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    invoke-static {v0}, Lb/b/g/b;->b(I)Lb/b/h/l;

    move-result-object v0

    iput-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->m:Lb/b/h/l;

    return-object v0
.end method

.method public final q()Lb/b/h/l;
    .registers 2

    iget-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    invoke-static {v0}, Lb/b/g/b;->b(I)Lb/b/h/l;

    move-result-object v0

    iput-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    :cond_0
    iget-object v0, p0, Lb/b/g/af;->n:Lb/b/h/l;

    return-object v0
.end method

.method public final r()Z
    .registers 3

    iget v0, p0, Lb/b/g/af;->i:I

    iget-object v1, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v1}, Lb/b/g/al;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()V
    .registers 5

    iget v0, p0, Lb/b/g/af;->l:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget v3, p0, Lb/b/g/af;->l:I

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/g/af;->a(Ljava/util/List;)V

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget v2, p0, Lb/b/g/af;->l:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-virtual {v0}, Lb/b/g/aj;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected: moves from phis before move-exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lb/b/g/af;->k:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lb/b/g/af;->k:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lb/b/g/af;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/b/g/af;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lb/b/g/af;->h:Lb/b/g/al;

    invoke-virtual {v0}, Lb/b/g/al;->i()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb/b/g/af;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/g/af;->g:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
