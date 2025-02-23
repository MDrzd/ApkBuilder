.class public Lb/b/e/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lb/a/i;

.field private final b:[Lb/b/e/o;

.field private final c:I

.field private final d:Lb/b/b/b/a;

.field private final e:Lb/b/e/n;

.field private final f:Lb/a/i;

.field private final g:Lb/a/o;

.field private final h:Lb/a/o;

.field private final i:Lb/a/o;

.field private final j:Lb/a/o;

.field private final k:Lb/a/o;

.field private final l:Lb/a/o;

.field private final m:Lb/a/o;

.field private final n:Lb/a/o;

.field private final o:Lb/a/o;

.field private final p:Lb/a/o;

.field private final q:Lb/a/o;

.field private final r:Lb/a/o;

.field private final s:Lb/a/o;

.field private final t:Lb/a/ac;

.field private final u:Lb/b/e/q;

.field private v:I


# direct methods
.method public constructor <init>([Lb/a/i;ILb/b/b/b/a;)V
    .registers 5

    new-instance v0, Lb/b/e/n;

    invoke-direct {v0, p1}, Lb/b/e/n;-><init>([Lb/a/i;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lb/b/e/b;-><init>([Lb/a/i;ILb/b/b/b/a;Lb/b/e/n;)V

    return-void
.end method

.method private constructor <init>([Lb/a/i;ILb/b/b/b/a;Lb/b/e/n;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lb/b/e/b;->v:I

    iput-object p1, p0, Lb/b/e/b;->a:[Lb/a/i;

    iput p2, p0, Lb/b/e/b;->c:I

    iput-object p3, p0, Lb/b/e/b;->d:Lb/b/b/b/a;

    iput-object p4, p0, Lb/b/e/b;->e:Lb/b/e/n;

    new-instance p2, Lb/a/i;

    invoke-virtual {p4}, Lb/b/e/n;->a()I

    move-result p3

    invoke-direct {p2, p3}, Lb/a/i;-><init>(I)V

    iput-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    array-length p2, p1

    new-array p2, p2, [Lb/b/e/o;

    iput-object p2, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    new-instance v0, Lb/b/e/o;

    iget-object v1, p0, Lb/b/e/b;->f:Lb/a/i;

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/b/e/o;-><init>(Lb/a/i;Lb/a/ac;)V

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lb/b/e/q;

    invoke-direct {p1}, Lb/b/e/q;-><init>()V

    iput-object p1, p0, Lb/b/e/b;->u:Lb/b/e/q;

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->a(Lb/b/e/n;)I

    move-result p2

    const-string p3, "header"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->g:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->b(Lb/b/e/n;)I

    move-result p2

    const-string p3, "ids defs"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->h:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p1}, Lb/a/i;->a()Lb/a/ac;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ac;->C:I

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->j:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->j:Lb/a/ad;

    const/4 p2, 0x1

    iput p2, p1, Lb/a/ad;->b:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->c(Lb/b/e/n;)I

    move-result p2

    const-string p3, "map list"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->i:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->k:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->d(Lb/b/e/n;)I

    move-result p2

    const-string p3, "type list"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->j:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->l:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->e(Lb/b/e/n;)I

    move-result p2

    const-string p3, "annotation set ref list"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->r:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->m:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->f(Lb/b/e/n;)I

    move-result p2

    const-string p3, "annotation sets"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->q:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->n:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->g(Lb/b/e/n;)I

    move-result p2

    const-string p3, "class data"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->k:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->o:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->h(Lb/b/e/n;)I

    move-result p2

    const-string p3, "code"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->l:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->p:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->i(Lb/b/e/n;)I

    move-result p2

    const-string p3, "string data"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->m:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->q:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->j(Lb/b/e/n;)I

    move-result p2

    const-string p3, "debug info"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->n:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->r:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->k(Lb/b/e/n;)I

    move-result p2

    const-string p3, "annotation"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->s:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->s:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->l(Lb/b/e/n;)I

    move-result p2

    const-string p3, "encoded array"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->o:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p1, p1, Lb/a/ac;->t:Lb/a/ad;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iput p2, p1, Lb/a/ad;->c:I

    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-static {p4}, Lb/b/e/n;->m(Lb/b/e/n;)I

    move-result p2

    const-string p3, "annotations directory"

    invoke-virtual {p1, p2, p3}, Lb/a/i;->a(ILjava/lang/String;)Lb/a/o;

    move-result-object p1

    iput-object p1, p0, Lb/b/e/b;->p:Lb/a/o;

    iget-object p1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object p2, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {p2}, Lb/a/i;->c()I

    move-result p2

    iget-object p3, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget p3, p3, Lb/a/ac;->C:I

    sub-int/2addr p2, p3

    iput p2, p1, Lb/a/ac;->B:I

    return-void
.end method

.method private a(Lb/a/g;Lb/b/e/o;)V
    .registers 9

    invoke-virtual {p1}, Lb/a/g;->c()I

    move-result v0

    invoke-virtual {p1}, Lb/a/g;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lb/a/g;->b()[I

    move-result-object p1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v3, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v4, v1

    neg-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, Lb/a/o;->h(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v4, v1

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lb/b/e/b;->l:Lb/a/o;

    aget v5, v1, v3

    invoke-virtual {p2, v5}, Lb/b/e/o;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lb/a/o;->g(I)V

    iget-object v4, p0, Lb/b/e/b;->l:Lb/a/o;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Lb/a/o;->g(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p1, v0}, Lb/a/o;->g(I)V

    :cond_2
    return-void
.end method

.method private a(Lb/a/i;Lb/a/f;Lb/b/e/o;)V
    .registers 11

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v0, v0, Lb/a/ac;->o:Lb/a/ad;

    iget v1, v0, Lb/a/ad;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lb/a/ad;->b:I

    iget-object v0, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {v0}, Lb/a/o;->p()V

    iget-object v0, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p2}, Lb/a/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/o;->e(I)V

    iget-object v0, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p2}, Lb/a/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/o;->e(I)V

    iget-object v0, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p2}, Lb/a/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/o;->e(I)V

    invoke-virtual {p2}, Lb/a/f;->f()[Lb/a/h;

    move-result-object v0

    invoke-virtual {p2}, Lb/a/f;->g()[Lb/a/g;

    move-result-object v1

    iget-object v3, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v4, v0

    invoke-virtual {v3, v4}, Lb/a/o;->e(I)V

    invoke-virtual {p2}, Lb/a/f;->d()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lb/b/e/b;->l:Lb/a/o;

    iget-object v6, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v6}, Lb/a/o;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Lb/a/o;->f(I)V

    invoke-virtual {p1, v3}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lb/b/e/b;->a(Lb/a/o;Lb/b/e/o;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p1, v4}, Lb/a/o;->f(I)V

    :goto_0
    invoke-virtual {p2}, Lb/a/f;->e()[S

    move-result-object p1

    iget-object p2, p0, Lb/b/e/b;->u:Lb/b/e/q;

    invoke-virtual {p2, p3, p1}, Lb/b/e/q;->a(Lb/b/e/o;[S)[S

    move-result-object p1

    iget-object p2, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v3, p1

    invoke-virtual {p2, v3}, Lb/a/o;->f(I)V

    iget-object p2, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p2, p1}, Lb/a/o;->a([S)V

    array-length p2, v0

    if-lez p2, :cond_2

    array-length p1, p1

    rem-int/lit8 p1, p1, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p1, v4}, Lb/a/o;->a(S)V

    :cond_1
    iget-object p1, p0, Lb/b/e/b;->f:Lb/a/i;

    iget-object p2, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {p2}, Lb/a/o;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object p1

    iget-object p2, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v2, v0

    shl-int/lit8 v2, v2, 0x3

    invoke-virtual {p2, v2}, Lb/a/o;->c(I)V

    invoke-direct {p0, p3, v1}, Lb/b/e/b;->a(Lb/b/e/o;[Lb/a/g;)[I

    move-result-object p2

    invoke-static {p1, v0, p2}, Lb/b/e/b;->a(Lb/a/o;[Lb/a/h;[I)V

    :cond_2
    return-void
.end method

.method private a(Lb/a/i;Lb/b/e/o;[Lb/a/e;)V
    .registers 11

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lb/a/e;->a()I

    move-result v5

    invoke-virtual {p2, v5}, Lb/b/e/o;->e(I)I

    move-result v5

    iget-object v6, p0, Lb/b/e/b;->k:Lb/a/o;

    sub-int v3, v5, v3

    invoke-virtual {v6, v3}, Lb/a/o;->g(I)V

    iget-object v3, p0, Lb/b/e/b;->k:Lb/a/o;

    invoke-virtual {v4}, Lb/a/e;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Lb/a/o;->g(I)V

    invoke-virtual {v4}, Lb/a/e;->c()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/b/e/b;->k:Lb/a/o;

    invoke-virtual {v3, v1}, Lb/a/o;->g(I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {v3}, Lb/a/o;->o()V

    iget-object v3, p0, Lb/b/e/b;->k:Lb/a/o;

    iget-object v6, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {v6}, Lb/a/o;->b()I

    move-result v6

    invoke-virtual {v3, v6}, Lb/a/o;->g(I)V

    invoke-virtual {p1, v4}, Lb/a/i;->a(Lb/a/e;)Lb/a/f;

    move-result-object v3

    invoke-direct {p0, p1, v3, p2}, Lb/b/e/b;->a(Lb/a/i;Lb/a/f;Lb/b/e/o;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lb/a/o;Lb/b/e/o;)V
    .registers 7

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v0, v0, Lb/a/ac;->q:Lb/a/ad;

    iget v1, v0, Lb/a/ad;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lb/a/ad;->b:I

    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v1, v0}, Lb/a/o;->g(I)V

    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v1, v0}, Lb/a/o;->g(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {p2, v2}, Lb/b/e/o;->a(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lb/a/o;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lb/a/o;->a()B

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v1, v0}, Lb/a/o;->d(I)V

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v1

    iget-object v2, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v2, v1}, Lb/a/o;->g(I)V

    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {p2, v1}, Lb/b/e/o;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lb/a/o;->b(I)V

    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {p2, v1}, Lb/b/e/o;->b(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lb/a/o;->b(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_1
    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {p2, v0}, Lb/b/e/o;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/o;->b(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lb/a/o;->e()I

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v1, v0}, Lb/a/o;->h(I)V

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, La/a/a;->a(Lb/a/a/a;)I

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->n:Lb/a/o;

    invoke-virtual {v1, v0}, Lb/a/o;->g(I)V

    goto :goto_1

    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lb/a/o;[Lb/a/h;[I)V
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lb/a/h;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/a/o;->f(I)V

    invoke-virtual {v2}, Lb/a/h;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/a/o;->e(I)V

    invoke-virtual {v2}, Lb/a/h;->c()I

    move-result v2

    aget v2, p2, v2

    invoke-virtual {p0, v2}, Lb/a/o;->e(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lb/b/e/o;[Lb/a/d;)V
    .registers 9

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lb/a/d;->a()I

    move-result v4

    invoke-virtual {p1, v4}, Lb/b/e/o;->d(I)I

    move-result v4

    iget-object v5, p0, Lb/b/e/b;->k:Lb/a/o;

    sub-int v2, v4, v2

    invoke-virtual {v5, v2}, Lb/a/o;->g(I)V

    iget-object v2, p0, Lb/b/e/b;->k:Lb/a/o;

    invoke-virtual {v3}, Lb/a/d;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/a/o;->g(I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lb/b/e/o;[Lb/a/g;)[I
    .registers 7

    iget-object v0, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {v0}, Lb/a/o;->b()I

    move-result v0

    iget-object v1, p0, Lb/b/e/b;->l:Lb/a/o;

    array-length v2, p2

    invoke-virtual {v1, v2}, Lb/a/o;->g(I)V

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lb/b/e/b;->l:Lb/a/o;

    invoke-virtual {v3}, Lb/a/o;->b()I

    move-result v3

    sub-int/2addr v3, v0

    aput v3, v1, v2

    aget-object v3, p2, v2

    invoke-direct {p0, v3, p1}, Lb/b/e/b;->a(Lb/a/g;Lb/b/e/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lb/b/e/b;)[Lb/a/i;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->a:[Lb/a/i;

    return-object p0
.end method

.method private b()Lb/a/i;
    .registers 15

    new-instance v0, Lb/b/e/c;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/c;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/c;->a()V

    new-instance v0, Lb/b/e/d;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/d;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/d;->a()V

    new-instance v0, Lb/b/e/e;

    iget-object v1, p0, Lb/b/e/b;->j:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/e;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/e;->b()V

    new-instance v0, Lb/b/e/f;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/f;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/f;->a()V

    new-instance v0, Lb/b/e/i;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/i;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/i;->a()V

    new-instance v0, Lb/b/e/j;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/j;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/j;->a()V

    new-instance v0, Lb/b/e/h;

    iget-object v1, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/h;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/h;->b()V

    new-instance v0, Lb/b/e/k;

    iget-object v1, p0, Lb/b/e/b;->s:Lb/a/o;

    invoke-direct {v0, p0, v1}, Lb/b/e/k;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v0}, Lb/b/e/k;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v2, v2, v1

    iget-object v4, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v5

    iget-object v5, v5, Lb/a/ac;->m:Lb/a/ad;

    invoke-virtual {v5}, Lb/a/ad;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lb/a/ad;->c:I

    invoke-virtual {v2, v6}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v2

    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Lb/a/ad;->b:I

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v7, v7, Lb/a/ac;->m:Lb/a/ad;

    iget v8, v7, Lb/a/ad;->b:I

    add-int/2addr v8, v3

    iput v8, v7, Lb/a/ad;->b:I

    iget-object v7, p0, Lb/b/e/b;->q:Lb/a/o;

    invoke-virtual {v7}, Lb/a/o;->p()V

    invoke-virtual {v2}, Lb/a/o;->b()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->q:Lb/a/o;

    invoke-virtual {v8}, Lb/a/o;->b()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lb/b/e/o;->c(II)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->q:Lb/a/o;

    invoke-virtual {v8, v7}, Lb/a/o;->f(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    iget-object v9, p0, Lb/b/e/b;->q:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v10

    invoke-virtual {v4, v10}, Lb/b/e/o;->f(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lb/a/o;->f(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v2, v2, v1

    iget-object v4, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v5

    iget-object v5, v5, Lb/a/ac;->l:Lb/a/ad;

    invoke-virtual {v5}, Lb/a/ad;->a()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Lb/a/ad;->c:I

    invoke-virtual {v2, v6}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v2

    const/4 v6, 0x0

    :goto_4
    iget v7, v5, Lb/a/ad;->b:I

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v7, v7, Lb/a/ac;->l:Lb/a/ad;

    iget v8, v7, Lb/a/ad;->b:I

    add-int/2addr v8, v3

    iput v8, v7, Lb/a/ad;->b:I

    iget-object v7, p0, Lb/b/e/b;->r:Lb/a/o;

    invoke-virtual {v7}, Lb/a/o;->p()V

    invoke-virtual {v2}, Lb/a/o;->b()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->r:Lb/a/o;

    invoke-virtual {v8}, Lb/a/o;->b()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lb/b/e/o;->d(II)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->r:Lb/a/o;

    invoke-virtual {v8, v7}, Lb/a/o;->f(I)V

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_3

    iget-object v9, p0, Lb/b/e/b;->r:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v10

    invoke-virtual {v4, v10}, Lb/b/e/o;->g(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lb/a/o;->f(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v2, v2, v1

    iget-object v4, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v5

    iget-object v5, v5, Lb/a/ac;->t:Lb/a/ad;

    invoke-virtual {v5}, Lb/a/ad;->a()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Lb/a/ad;->c:I

    invoke-virtual {v2, v6}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v2

    const/4 v6, 0x0

    :goto_7
    iget v7, v5, Lb/a/ad;->b:I

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v7, v7, Lb/a/ac;->t:Lb/a/ad;

    iget v8, v7, Lb/a/ad;->b:I

    add-int/2addr v8, v3

    iput v8, v7, Lb/a/ad;->b:I

    iget-object v7, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v7}, Lb/a/o;->p()V

    invoke-virtual {v2}, Lb/a/o;->b()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v8}, Lb/a/o;->b()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lb/b/e/o;->e(II)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v7

    invoke-virtual {v4, v7}, Lb/b/e/o;->g(I)I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v8, v7}, Lb/a/o;->f(I)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v8, v7}, Lb/a/o;->f(I)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v8

    iget-object v9, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v9, v8}, Lb/a/o;->f(I)V

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v9

    iget-object v10, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v10, v9}, Lb/a/o;->f(I)V

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v7, :cond_6

    iget-object v11, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v12

    invoke-virtual {v4, v12}, Lb/b/e/o;->d(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lb/a/o;->f(I)V

    iget-object v11, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v12

    invoke-virtual {v4, v12}, Lb/b/e/o;->g(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lb/a/o;->f(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_6
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v8, :cond_7

    iget-object v10, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v11

    invoke-virtual {v4, v11}, Lb/b/e/o;->e(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lb/a/o;->f(I)V

    iget-object v10, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v11

    invoke-virtual {v4, v11}, Lb/b/e/o;->g(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lb/a/o;->f(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_7
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v9, :cond_8

    iget-object v8, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v10

    invoke-virtual {v4, v10}, Lb/b/e/o;->e(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lb/a/o;->f(I)V

    iget-object v8, p0, Lb/b/e/b;->p:Lb/a/o;

    invoke-virtual {v2}, Lb/a/o;->c()I

    move-result v10

    invoke-virtual {v4, v10}, Lb/b/e/o;->h(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lb/a/o;->f(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v2, v2, v1

    iget-object v4, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v5

    iget-object v5, v5, Lb/a/ac;->s:Lb/a/ad;

    invoke-virtual {v5}, Lb/a/ad;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v5, Lb/a/ad;->c:I

    invoke-virtual {v2, v6}, Lb/a/i;->a(I)Lb/a/o;

    move-result-object v2

    const/4 v6, 0x0

    :goto_c
    iget v7, v5, Lb/a/ad;->b:I

    if-ge v6, v7, :cond_b

    iget-object v7, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v7, v7, Lb/a/ac;->s:Lb/a/ad;

    iget v8, v7, Lb/a/ad;->b:I

    add-int/2addr v8, v3

    iput v8, v7, Lb/a/ad;->b:I

    invoke-virtual {v2}, Lb/a/o;->b()I

    move-result v7

    iget-object v8, p0, Lb/b/e/b;->o:Lb/a/o;

    invoke-virtual {v8}, Lb/a/o;->b()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lb/b/e/o;->f(II)V

    invoke-virtual {v2}, Lb/a/o;->n()Lb/a/u;

    move-result-object v7

    new-instance v8, Lb/b/h/f;

    const/16 v9, 0x20

    invoke-direct {v8, v9}, Lb/b/h/f;-><init>(I)V

    new-instance v9, Lb/b/e/p;

    invoke-direct {v9, v4, v8}, Lb/b/e/p;-><init>(Lb/b/e/o;Lb/a/a/b;)V

    new-instance v10, Lb/a/v;

    const/16 v11, 0x1c

    invoke-direct {v10, v7, v11}, Lb/a/v;-><init>(Lb/a/u;I)V

    invoke-static {v9, v10}, Lb/b/e/p;->a(Lb/b/e/p;Lb/a/v;)V

    new-instance v7, Lb/a/u;

    invoke-virtual {v8}, Lb/b/h/f;->b()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lb/a/u;-><init>([B)V

    iget-object v8, p0, Lb/b/e/b;->o:Lb/a/o;

    invoke-virtual {v7, v8}, Lb/a/u;->a(Lb/a/o;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    new-instance v1, Lb/b/e/g;

    iget-object v2, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-direct {v1, p0, v2}, Lb/b/e/g;-><init>(Lb/b/e/b;Lb/a/o;)V

    invoke-virtual {v1}, Lb/b/e/g;->a()V

    iget-object v1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, v1, Lb/a/ac;->c:Lb/a/ad;

    iget v1, v1, Lb/a/ad;->b:I

    new-array v1, v1, [Lb/b/e/y;

    const/4 v2, 0x0

    :goto_d
    iget-object v4, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v4, v4

    if-ge v2, v4, :cond_10

    iget-object v4, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v4, v4, v2

    iget-object v5, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    aget-object v5, v5, v2

    invoke-virtual {v4}, Lb/a/i;->k()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmail/heagoo/common/ab;

    new-instance v8, Lb/b/e/y;

    invoke-direct {v8, v4, v5, v7}, Lb/b/e/y;-><init>(Lb/a/i;Lb/b/e/o;Lcom/gmail/heagoo/common/ab;)V

    new-instance v9, Lb/b/e/y;

    invoke-virtual {v8}, Lb/b/e/y;->a()Lb/a/i;

    move-result-object v10

    invoke-virtual {v8}, Lb/b/e/y;->b()Lb/b/e/o;

    move-result-object v11

    invoke-virtual {v8}, Lb/b/e/y;->c()Lcom/gmail/heagoo/common/ab;

    move-result-object v8

    invoke-virtual {v5, v8}, Lb/b/e/o;->a(Lcom/gmail/heagoo/common/ab;)Lcom/gmail/heagoo/common/ab;

    move-result-object v8

    invoke-direct {v9, v10, v11, v8}, Lb/b/e/y;-><init>(Lb/a/i;Lb/b/e/o;Lcom/gmail/heagoo/common/ab;)V

    invoke-virtual {v9}, Lb/b/e/y;->d()I

    move-result v8

    aget-object v10, v1, v8

    if-nez v10, :cond_d

    aput-object v9, v1, v8

    goto :goto_e

    :cond_d
    iget v8, p0, Lb/b/e/b;->c:I

    sget v9, Lb/b/e/a;->a:I

    if-ne v8, v9, :cond_e

    goto :goto_e

    :cond_e
    new-instance v0, Lb/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple dex files define "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_10
    :goto_f
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_10
    if-ge v4, v2, :cond_12

    aget-object v6, v1, v4

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lb/b/e/y;->e()Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6, v1}, Lb/b/e/y;->a([Lb/b/e/y;)Z

    move-result v6

    and-int/2addr v5, v6

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_12
    if-nez v5, :cond_13

    goto :goto_f

    :cond_13
    sget-object v2, Lb/b/e/y;->a:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_14

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb/b/e/y;

    :cond_14
    iget-object v2, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v2, v2, Lb/a/ac;->g:Lb/a/ad;

    iget-object v4, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v4}, Lb/a/o;->b()I

    move-result v4

    iput v4, v2, Lb/a/ad;->c:I

    iget-object v2, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v2, v2, Lb/a/ac;->g:Lb/a/ad;

    array-length v4, v1

    iput v4, v2, Lb/a/ad;->b:I

    array-length v2, v1

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v2, :cond_16

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lb/b/e/y;->a()Lb/a/i;

    move-result-object v6

    invoke-virtual {v5}, Lb/b/e/y;->c()Lcom/gmail/heagoo/common/ab;

    move-result-object v7

    invoke-virtual {v5}, Lb/b/e/y;->b()Lb/b/e/o;

    move-result-object v5

    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v8}, Lb/a/o;->p()V

    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/o;->f(I)V

    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->f()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/o;->f(I)V

    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/o;->f(I)V

    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->d()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/o;->f(I)V

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->g()I

    move-result v8

    invoke-virtual {v5, v8}, Lb/b/e/o;->a(I)I

    move-result v8

    iget-object v9, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v9, v8}, Lb/a/o;->f(I)V

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->h()I

    move-result v8

    iget-object v9, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v5, v8}, Lb/b/e/o;->i(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lb/a/o;->f(I)V

    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->i()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v6, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v6, v0}, Lb/a/o;->f(I)V

    goto :goto_12

    :cond_15
    iget-object v8, p0, Lb/b/e/b;->h:Lb/a/o;

    iget-object v9, p0, Lb/b/e/b;->k:Lb/a/o;

    invoke-virtual {v9}, Lb/a/o;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lb/a/o;->f(I)V

    invoke-virtual {v6, v7}, Lb/a/i;->a(Lcom/gmail/heagoo/common/ab;)Lb/a/c;

    move-result-object v8

    iget-object v9, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v9, v9, Lb/a/ac;->n:Lb/a/ad;

    iget v10, v9, Lb/a/ad;->b:I

    add-int/2addr v10, v3

    iput v10, v9, Lb/a/ad;->b:I

    invoke-virtual {v8}, Lb/a/c;->a()[Lb/a/d;

    move-result-object v9

    invoke-virtual {v8}, Lb/a/c;->b()[Lb/a/d;

    move-result-object v10

    invoke-virtual {v8}, Lb/a/c;->c()[Lb/a/e;

    move-result-object v11

    invoke-virtual {v8}, Lb/a/c;->d()[Lb/a/e;

    move-result-object v8

    iget-object v12, p0, Lb/b/e/b;->k:Lb/a/o;

    array-length v13, v9

    invoke-virtual {v12, v13}, Lb/a/o;->g(I)V

    iget-object v12, p0, Lb/b/e/b;->k:Lb/a/o;

    array-length v13, v10

    invoke-virtual {v12, v13}, Lb/a/o;->g(I)V

    iget-object v12, p0, Lb/b/e/b;->k:Lb/a/o;

    array-length v13, v11

    invoke-virtual {v12, v13}, Lb/a/o;->g(I)V

    iget-object v12, p0, Lb/b/e/b;->k:Lb/a/o;

    array-length v13, v8

    invoke-virtual {v12, v13}, Lb/a/o;->g(I)V

    invoke-direct {p0, v5, v9}, Lb/b/e/b;->a(Lb/b/e/o;[Lb/a/d;)V

    invoke-direct {p0, v5, v10}, Lb/b/e/b;->a(Lb/b/e/o;[Lb/a/d;)V

    invoke-direct {p0, v6, v5, v11}, Lb/b/e/b;->a(Lb/a/i;Lb/b/e/o;[Lb/a/e;)V

    invoke-direct {p0, v6, v5, v8}, Lb/b/e/b;->a(Lb/a/i;Lb/b/e/o;[Lb/a/e;)V

    :goto_12
    invoke-virtual {v7}, Lcom/gmail/heagoo/common/ab;->j()I

    move-result v6

    iget-object v7, p0, Lb/b/e/b;->h:Lb/a/o;

    invoke-virtual {v5, v6}, Lb/b/e/o;->j(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lb/a/o;->f(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :cond_16
    iget-object v1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, v1, Lb/a/ac;->u:[Lb/a/ad;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, v1, Lb/a/ac;->a:Lb/a/ad;

    iput v0, v1, Lb/a/ad;->c:I

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v0, v0, Lb/a/ac;->a:Lb/a/ad;

    iput v3, v0, Lb/a/ad;->b:I

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->b()I

    move-result v1

    iput v1, v0, Lb/a/ac;->y:I

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    invoke-virtual {v0}, Lb/a/ac;->a()V

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, p0, Lb/b/e/b;->g:Lb/a/o;

    invoke-direct {p0}, Lb/b/e/b;->c()I

    move-result v2

    invoke-static {v2}, La/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/o;->a([B)V

    iget v2, v0, Lb/a/ac;->w:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->x:[B

    invoke-virtual {v1, v2}, Lb/a/o;->a([B)V

    iget v2, v0, Lb/a/ac;->y:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    const v2, 0x12345678

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget v2, v0, Lb/a/ac;->z:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget v2, v0, Lb/a/ac;->A:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->j:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->b:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->b:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->c:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->c:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->d:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->d:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->e:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->e:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->f:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->f:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->g:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->b:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget-object v2, v0, Lb/a/ac;->g:Lb/a/ad;

    iget v2, v2, Lb/a/ad;->c:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget v2, v0, Lb/a/ac;->B:I

    invoke-virtual {v1, v2}, Lb/a/o;->f(I)V

    iget v0, v0, Lb/a/ac;->C:I

    invoke-virtual {v1, v0}, Lb/a/o;->f(I)V

    iget-object v0, p0, Lb/b/e/b;->t:Lb/a/ac;

    iget-object v1, p0, Lb/b/e/b;->i:Lb/a/o;

    invoke-virtual {v0, v1}, Lb/a/ac;->a(Lb/a/o;)V

    iget-object v0, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {v0}, Lb/a/i;->l()V

    iget-object v0, p0, Lb/b/e/b;->f:Lb/a/i;

    return-object v0
.end method

.method static synthetic b(Lb/b/e/b;)[Lb/b/e/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->b:[Lb/b/e/o;

    return-object p0
.end method

.method private c()I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v2

    iget v2, v2, Lb/a/ac;->v:I

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic c(Lb/b/e/b;)Lb/a/ac;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->t:Lb/a/ac;

    return-object p0
.end method

.method static synthetic d(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->m:Lb/a/o;

    return-object p0
.end method

.method static synthetic e(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->h:Lb/a/o;

    return-object p0
.end method

.method static synthetic f(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->j:Lb/a/o;

    return-object p0
.end method

.method static synthetic g(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->s:Lb/a/o;

    return-object p0
.end method

.method static synthetic h(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->g:Lb/a/o;

    return-object p0
.end method

.method static synthetic i(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->i:Lb/a/o;

    return-object p0
.end method

.method static synthetic j(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->k:Lb/a/o;

    return-object p0
.end method

.method static synthetic k(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->l:Lb/a/o;

    return-object p0
.end method

.method static synthetic l(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->n:Lb/a/o;

    return-object p0
.end method

.method static synthetic m(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->o:Lb/a/o;

    return-object p0
.end method

.method static synthetic n(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->p:Lb/a/o;

    return-object p0
.end method

.method static synthetic o(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->q:Lb/a/o;

    return-object p0
.end method

.method static synthetic p(Lb/b/e/b;)Lb/a/o;
    .registers 1

    iget-object p0, p0, Lb/b/e/b;->r:Lb/a/o;

    return-object p0
.end method


# virtual methods
.method public final a()Lb/a/i;
    .registers 15

    iget-object v0, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {p0}, Lb/b/e/b;->b()Lb/a/i;

    move-result-object v0

    new-instance v5, Lb/b/e/n;

    invoke-direct {v5, p0}, Lb/b/e/n;-><init>(Lb/b/e/b;)V

    iget-object v6, p0, Lb/b/e/b;->e:Lb/b/e/n;

    invoke-virtual {v6}, Lb/b/e/n;->a()I

    move-result v6

    invoke-virtual {v5}, Lb/b/e/n;->a()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lb/b/e/b;->v:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/high16 v10, 0x44800000    # 1024.0f

    if-le v6, v7, :cond_2

    new-instance v0, Lb/b/e/b;

    new-array v7, v9, [Lb/a/i;

    iget-object v11, p0, Lb/b/e/b;->f:Lb/a/i;

    aput-object v11, v7, v2

    new-instance v11, Lb/a/i;

    invoke-direct {v11, v2}, Lb/a/i;-><init>(I)V

    aput-object v11, v7, v1

    sget v11, Lb/b/e/a;->b:I

    iget-object v12, p0, Lb/b/e/b;->d:Lb/b/b/b/a;

    invoke-direct {v0, v7, v11, v12, v5}, Lb/b/e/b;-><init>([Lb/a/i;ILb/b/b/b/a;Lb/b/e/n;)V

    invoke-direct {v0}, Lb/b/e/b;->b()Lb/a/i;

    move-result-object v0

    iget-object v5, p0, Lb/b/e/b;->d:Lb/b/b/b/a;

    iget-object v5, v5, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    const-string v7, "Result compacted from %.1fKiB to %.1fKiB to save %.1fKiB%n"

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v12, p0, Lb/b/e/b;->f:Lb/a/i;

    invoke-virtual {v12}, Lb/a/i;->b()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v0}, Lb/a/i;->b()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v1

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v11, v9

    invoke-virtual {v5, v7, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lb/b/e/b;->a:[Lb/a/i;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lb/b/e/b;->d:Lb/b/b/b/a;

    iget-object v4, v4, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    const-string v7, "Merged dex #%d (%d defs/%.1fKiB)%n"

    new-array v11, v8, [Ljava/lang/Object;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v2

    iget-object v13, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v13, v13, v3

    invoke-virtual {v13}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v13

    iget-object v13, v13, Lb/a/ac;->g:Lb/a/ad;

    iget v13, v13, Lb/a/ad;->b:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v1

    iget-object v13, p0, Lb/b/e/b;->a:[Lb/a/i;

    aget-object v3, v13, v3

    invoke-virtual {v3}, Lb/a/i;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v11, v9

    invoke-virtual {v4, v7, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move v3, v12

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lb/b/e/b;->d:Lb/b/b/b/a;

    iget-object v3, v3, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    const-string v4, "Result is %d defs/%.1fKiB. Took %.1fs%n"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lb/a/i;->a()Lb/a/ac;

    move-result-object v8

    iget-object v8, v8, Lb/a/ac;->g:Lb/a/ad;

    iget v8, v8, Lb/a/ad;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v0}, Lb/a/i;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    long-to-float v1, v5

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-virtual {v3, v4, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-object v0
.end method
