.class public final Lb/b/e/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[S

.field public final c:[S

.field public final d:[S

.field public final e:[S

.field public final f:[I

.field public final g:Ljava/util/HashMap;

.field private final h:Lb/a/i;

.field private final i:Ljava/util/HashMap;

.field private final j:Ljava/util/HashMap;

.field private final k:Ljava/util/HashMap;

.field private final l:Ljava/util/HashMap;

.field private final m:Ljava/util/HashMap;

.field private final n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lb/a/i;Lb/a/ac;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->h:Lb/a/i;

    iget-object p1, p2, Lb/a/ac;->b:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [I

    iput-object p1, p0, Lb/b/e/o;->a:[I

    iget-object p1, p2, Lb/a/ac;->c:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lb/b/e/o;->b:[S

    iget-object p1, p2, Lb/a/ac;->d:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lb/b/e/o;->c:[S

    iget-object p1, p2, Lb/a/ac;->e:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lb/b/e/o;->d:[S

    iget-object p1, p2, Lb/a/ac;->f:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [S

    iput-object p1, p0, Lb/b/e/o;->e:[S

    iget-object p1, p2, Lb/a/ac;->h:Lb/a/ad;

    iget p1, p1, Lb/a/ad;->b:I

    new-array p1, p1, [I

    iput-object p1, p0, Lb/b/e/o;->f:[I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->g:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->i:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->j:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->k:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->l:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->m:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/e/o;->n:Ljava/util/HashMap;

    iget-object p1, p0, Lb/b/e/o;->i:Ljava/util/HashMap;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/b/e/o;->k:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/b/e/o;->m:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/b/e/o;->n:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private k(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/e/o;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final a(Lb/a/a;)Lb/a/a;
    .registers 6

    new-instance v0, Lb/b/h/f;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lb/b/h/f;-><init>(I)V

    new-instance v1, Lb/b/e/p;

    invoke-direct {v1, p0, v0}, Lb/b/e/p;-><init>(Lb/b/e/o;Lb/a/a/b;)V

    invoke-virtual {p1}, Lb/a/a;->b()Lb/a/v;

    move-result-object v2

    invoke-static {v1, v2}, Lb/b/e/p;->b(Lb/b/e/p;Lb/a/v;)V

    new-instance v1, Lb/a/a;

    iget-object v2, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/a;->a()B

    move-result p1

    new-instance v3, Lb/a/u;

    invoke-virtual {v0}, Lb/b/h/f;->b()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lb/a/u;-><init>([B)V

    invoke-direct {v1, v2, p1, v3}, Lb/a/a;-><init>(Lb/a/i;BLb/a/u;)V

    return-object v1
.end method

.method public final a(Lb/a/aa;)Lb/a/aa;
    .registers 6

    new-instance v0, Lb/a/aa;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/aa;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/b/e/o;->b(I)I

    move-result v2

    invoke-virtual {p1}, Lb/a/aa;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/b/e/o;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lb/a/aa;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/e/o;->a(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lb/a/aa;-><init>(Lb/a/i;III)V

    return-object v0
.end method

.method public final a(Lb/a/ab;)Lb/a/ab;
    .registers 6

    new-instance v0, Lb/a/ab;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/ab;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/b/e/o;->a(I)I

    move-result v2

    invoke-virtual {p1}, Lb/a/ab;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/b/e/o;->b(I)I

    move-result v3

    invoke-virtual {p1}, Lb/a/ab;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lb/b/e/o;->k(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lb/a/ab;-><init>(Lb/a/i;III)V

    return-object v0
.end method

.method public final a(Lb/a/ae;)Lb/a/ae;
    .registers 4

    sget-object v0, Lb/a/ae;->a:Lb/a/ae;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lb/a/ae;->a()[S

    move-result-object p1

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lb/b/e/o;->b(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lb/a/ae;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-direct {v0, v1, p1}, Lb/a/ae;-><init>(Lb/a/i;[S)V

    return-object v0
.end method

.method public final a(Lb/a/b;)Lb/a/b;
    .registers 4

    new-instance v0, Lb/a/b;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/e/o;->j(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lb/a/b;-><init>(Lb/a/i;I)V

    return-object v0
.end method

.method public final a(Lb/a/w;)Lb/a/w;
    .registers 6

    new-instance v0, Lb/a/w;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/w;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lb/b/e/o;->b(I)I

    move-result v2

    invoke-virtual {p1}, Lb/a/w;->b()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/b/e/o;->b(I)I

    move-result v3

    invoke-virtual {p1}, Lb/a/w;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/e/o;->a(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lb/a/w;-><init>(Lb/a/i;III)V

    return-object v0
.end method

.method public final a(Lb/a/x;)Lb/a/x;
    .registers 9

    new-instance v6, Lb/a/x;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lb/a/x;->a()Lb/a/z;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/x;->b()I

    move-result v3

    invoke-virtual {p1}, Lb/a/x;->a()Lb/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/a/x;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/e/o;->d(I)I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lb/a/x;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/e/o;->e(I)I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lb/a/x;->d()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lb/a/x;-><init>(Lb/a/i;Lb/a/z;III)V

    return-object v6
.end method

.method public final a(Lcom/gmail/heagoo/common/ab;)Lcom/gmail/heagoo/common/ab;
    .registers 14

    new-instance v11, Lcom/gmail/heagoo/common/ab;

    iget-object v1, p0, Lb/b/e/o;->h:Lb/a/i;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/e/o;->b(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->f()I

    move-result v4

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/e/o;->b(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lb/b/e/o;->k(I)I

    move-result v6

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->g()I

    move-result v7

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->h()I

    move-result v8

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->i()I

    move-result v9

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ab;->j()I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/gmail/heagoo/common/ab;-><init>(Lb/a/i;IIIIIIIII)V

    return-object v11
.end method

.method public final a(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final b(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/e/o;->b:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final b(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->c:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final c(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final d(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->d:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final d(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final e(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->e:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final e(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final f(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final f(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lb/b/e/o;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final g(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final h(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final i(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final j(I)I
    .registers 3

    iget-object v0, p0, Lb/b/e/o;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
