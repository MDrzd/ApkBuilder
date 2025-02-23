.class public Lb/b/g/al;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:I

.field private final i:Z

.field private j:[Lb/b/g/aj;

.field private k:[Ljava/util/ArrayList;

.field private l:[Ljava/util/List;

.field private m:Z


# direct methods
.method private constructor <init>(Lcom/gmail/heagoo/pngeditor/j;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb/b/g/al;->h:I

    iput-boolean p3, p0, Lb/b/g/al;->i:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/g/al;->m:Z

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/c;->l()I

    move-result p2

    iput p2, p0, Lb/b/g/al;->g:I

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->f()I

    move-result p1

    iput p1, p0, Lb/b/g/al;->d:I

    iget p1, p0, Lb/b/g/al;->d:I

    iput p1, p0, Lb/b/g/al;->e:I

    return-void
.end method

.method public static a(Lcom/gmail/heagoo/pngeditor/j;IZ)Lb/b/g/al;
    .registers 6

    new-instance v0, Lb/b/g/al;

    invoke-direct {v0, p0, p1, p2}, Lb/b/g/al;-><init>(Lcom/gmail/heagoo/pngeditor/j;IZ)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->a_()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, v0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-static {p0, p2, v0}, Lb/b/g/af;->a(Lcom/gmail/heagoo/pngeditor/j;ILb/b/g/al;)Lb/b/g/af;

    move-result-object v1

    iget-object v2, v0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lb/b/f/b/c;->c(I)I

    move-result p0

    iget-object p1, v0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/b/g/af;

    invoke-virtual {p0}, Lb/b/g/af;->o()Lb/b/g/af;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/g/af;->e()I

    move-result p0

    iput p0, v0, Lb/b/g/al;->b:I

    const/4 p0, -0x1

    iput p0, v0, Lb/b/g/al;->c:I

    return-object v0
.end method

.method static a(Lb/b/f/b/c;Lb/b/h/k;)Ljava/util/BitSet;
    .registers 6

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p0}, Lb/b/f/b/c;->a_()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p1}, Lb/b/h/k;->f()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lb/b/f/b/c;->c(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lb/b/g/al;)[Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Lb/b/g/aj;Lb/b/f/b/u;)V
    .registers 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "use not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private p()V
    .registers 5

    iget-boolean v0, p0, Lb/b/g/al;->m:Z

    if-nez v0, :cond_2

    iget v0, p0, Lb/b/g/al;->d:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/g/al;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lb/b/g/am;

    invoke-direct {v1, p0}, Lb/b/g/am;-><init>(Lb/b/g/al;)V

    invoke-virtual {p0, v1}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    iget v1, p0, Lb/b/g/al;->d:I

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lb/b/g/al;->l:[Ljava/util/List;

    :goto_1
    iget v1, p0, Lb/b/g/al;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/b/g/al;->l:[Ljava/util/List;

    iget-object v2, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No use list in back mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/g/af;

    invoke-virtual {p1}, Lb/b/g/af;->f()I

    move-result p1

    return p1
.end method

.method final a()V
    .registers 5

    iget v0, p0, Lb/b/g/al;->c:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lb/b/g/al;->c:I

    new-instance v0, Lb/b/g/af;

    iget v1, p0, Lb/b/g/al;->c:I

    iget v2, p0, Lb/b/g/al;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lb/b/g/al;->g:I

    invoke-direct {v0, v1, v2, p0}, Lb/b/g/af;-><init>(IILb/b/g/al;)V

    iget-object v1, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v2, v0}, Lb/b/g/af;->c(Lb/b/g/af;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    iget v1, p0, Lb/b/g/al;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lb/b/g/al;->c:I

    iget v0, p0, Lb/b/g/al;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/g/al;->g:I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must be called at most once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/b/g/aa;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(Lb/b/g/ad;)V
    .registers 5

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-virtual {v1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/aj;

    invoke-virtual {v2, p1}, Lb/b/g/aj;->b(Lb/b/g/ad;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/b/g/ad;->a()I

    move-result p1

    iput p1, p0, Lb/b/g/al;->d:I

    iget p1, p0, Lb/b/g/al;->d:I

    iput p1, p0, Lb/b/g/al;->e:I

    return-void
.end method

.method public final a(Lb/b/g/ah;)V
    .registers 8

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v2}, Lb/b/g/af;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/af;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lb/b/g/ah;->a(Lb/b/g/af;Lb/b/g/af;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final a(Lb/b/g/aj;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/u;)V

    invoke-virtual {p0, p1, v0}, Lb/b/g/al;->a(Lb/b/g/aj;Lb/b/f/b/r;)V

    return-void
.end method

.method final a(Lb/b/g/aj;Lb/b/f/b/r;)V
    .registers 5

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result p2

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    :cond_1
    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    aget-object v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result p2

    aput-object p1, v0, p2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Duplicate add of insn"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method final a(Lb/b/g/aj;Lb/b/f/b/r;Lb/b/f/b/r;)V
    .registers 5

    iget-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lb/b/f/b/r;->f()I

    move-result p2

    iget-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p3}, Lb/b/f/b/r;->f()I

    move-result p2

    iget-object p3, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    array-length p3, p3

    if-gt p3, p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    return-void

    :cond_2
    iget-object p3, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    aget-object p2, p3, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Lb/b/g/aj;Lb/b/f/b/u;)V
    .registers 7

    iget-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lb/b/g/al;->b(Lb/b/g/aj;Lb/b/f/b/u;)V

    :cond_1
    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    iget-object v3, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    aget-object v2, v3, v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lb/b/g/ak;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/g/af;

    invoke-virtual {v1, p1}, Lb/b/g/af;->a(Lb/b/g/ak;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lb/b/g/x;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .registers 9

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-virtual {v0}, Lb/b/g/aj;->o()Lb/b/g/af;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/aj;

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v5}, Lb/b/g/al;->b(Lb/b/g/aj;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/g/aj;

    :goto_2
    invoke-virtual {p0}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object v6

    if-eq v1, v6, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->d()I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_4
    new-instance v0, Lb/b/f/b/q;

    sget-object v4, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v5, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    invoke-direct {v0, v4, v5, v3, v6}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-static {v0, v1}, Lb/b/g/aj;->a(Lb/b/f/b/i;Lb/b/g/af;)Lb/b/g/aj;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lb/b/g/af;->j()I

    move-result v3

    if-eq v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lb/b/g/af;->b(I)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final a(ZLb/b/g/ah;)V
    .registers 10

    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/b/g/al;->f()Lb/b/g/af;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/g/af;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/af;

    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v4

    :goto_2
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lb/b/g/af;->e()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    invoke-interface {p2, v2, v3}, Lb/b/g/ah;->a(Lb/b/g/af;Lb/b/g/af;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final a(Lb/b/f/b/r;)Z
    .registers 6

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/g/al;->c(I)Lb/b/g/aj;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lb/b/g/aj;->e()Lb/b/f/b/r;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/g/al;->d(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/aj;

    invoke-virtual {v0}, Lb/b/g/aj;->d()Lb/b/f/b/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/b/f/b/i;->e()Lb/b/f/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/x;->a()I

    move-result v0

    const/16 v3, 0x36

    if-ne v0, v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public final b(I)I
    .registers 4

    iget v0, p0, Lb/b/g/al;->e:I

    iget v1, p0, Lb/b/g/al;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/g/al;->f:I

    add-int/2addr v1, p1

    iput v1, p0, Lb/b/g/al;->f:I

    iget v1, p0, Lb/b/g/al;->d:I

    add-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lb/b/g/al;->d:I

    return v0
.end method

.method public final b()Lb/b/g/af;
    .registers 9

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lb/b/g/af;

    iget v2, p0, Lb/b/g/al;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lb/b/g/al;->g:I

    invoke-direct {v1, v0, v2, p0}, Lb/b/g/af;-><init>(IILb/b/g/al;)V

    invoke-virtual {v1}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lb/b/g/x;

    new-instance v3, Lb/b/f/b/q;

    sget-object v4, Lb/b/f/b/y;->s:Lb/b/f/b/x;

    sget-object v5, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    sget-object v6, Lb/b/f/b/u;->a:Lb/b/f/b/u;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v7, v6}, Lb/b/f/b/q;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    invoke-direct {v2, v3, v1}, Lb/b/g/x;-><init>(Lb/b/f/b/i;Lb/b/g/af;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method final b(Lb/b/g/aj;)V
    .registers 4

    iget-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/g/aj;->a()Lb/b/f/b/u;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/b/g/al;->b(Lb/b/g/aj;Lb/b/f/b/u;)V

    :cond_0
    invoke-virtual {p1}, Lb/b/g/aj;->n()Lb/b/f/b/r;

    move-result-object p1

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    return-void
.end method

.method public b(Lb/b/g/x;)V
    .registers 4

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/b/g/al;->b:I

    return v0
.end method

.method public final c(I)Lb/b/g/aj;
    .registers 3

    iget-boolean v0, p0, Lb/b/g/al;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    iget v0, p0, Lb/b/g/al;->d:I

    new-array v0, v0, [Lb/b/g/aj;

    iput-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    invoke-virtual {p0, p0}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    iget-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No def list in back mode"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lb/b/g/af;
    .registers 3

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    iget v1, p0, Lb/b/g/al;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    return-object v0
.end method

.method public final d(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lb/b/g/al;->l:[Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/b/g/al;->p()V

    :cond_0
    iget-object v0, p0, Lb/b/g/al;->l:[Ljava/util/List;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lb/b/g/al;->c:I

    return v0
.end method

.method final e(I)V
    .registers 2

    iput p1, p0, Lb/b/g/al;->d:I

    iget p1, p0, Lb/b/g/al;->d:I

    iput p1, p0, Lb/b/g/al;->e:I

    invoke-virtual {p0}, Lb/b/g/al;->l()V

    return-void
.end method

.method public final f()Lb/b/g/af;
    .registers 3

    iget v0, p0, Lb/b/g/al;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    iget v1, p0, Lb/b/g/al;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lb/b/g/al;->d:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lb/b/g/al;->h:I

    return v0
.end method

.method public final i()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb/b/g/al;->f:I

    return-void
.end method

.method public final j()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final k()Ljava/util/BitSet;
    .registers 5

    iget-object v0, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v0}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {p0}, Lb/b/g/al;->d()Lb/b/g/af;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/af;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lb/b/g/al;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/g/af;

    invoke-virtual {v0}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final l()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    iput-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    iput-object v0, p0, Lb/b/g/al;->l:[Ljava/util/List;

    return-void
.end method

.method public final m()[Ljava/util/ArrayList;
    .registers 5

    iget-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/b/g/al;->p()V

    :cond_0
    iget v0, p0, Lb/b/g/al;->d:I

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/g/al;->d:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final n()I
    .registers 3

    iget v0, p0, Lb/b/g/al;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lb/b/g/al;->d:I

    iget v1, p0, Lb/b/g/al;->d:I

    iput v1, p0, Lb/b/g/al;->e:I

    invoke-virtual {p0}, Lb/b/g/al;->l()V

    return v0
.end method

.method public final o()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/g/al;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/g/al;->k:[Ljava/util/ArrayList;

    iput-object v0, p0, Lb/b/g/al;->j:[Lb/b/g/aj;

    return-void
.end method
