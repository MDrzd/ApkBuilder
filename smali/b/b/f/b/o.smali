.class public final Lb/b/f/b/o;
.super Lcom/gmail/heagoo/pngeditor/n;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/b/w;

.field private final c:[Lb/b/f/b/w;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/pngeditor/j;)V
    .registers 5

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->l()I

    move-result v0

    invoke-virtual {p1}, Lb/b/f/b/c;->f()I

    move-result v1

    iput v1, p0, Lb/b/f/b/o;->a:I

    new-instance v1, Lb/b/f/b/w;

    iget v2, p0, Lb/b/f/b/o;->a:I

    invoke-direct {v1, v2}, Lb/b/f/b/w;-><init>(I)V

    iput-object v1, p0, Lb/b/f/b/o;->b:Lb/b/f/b/w;

    new-array v0, v0, [Lb/b/f/b/w;

    iput-object v0, p0, Lb/b/f/b/o;->c:[Lb/b/f/b/w;

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lb/b/f/b/c;->g()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lb/b/f/b/o;->d:Ljava/util/HashMap;

    iget-object p1, p0, Lb/b/f/b/o;->b:Lb/b/f/b/w;

    invoke-virtual {p1}, Lb/b/f/b/w;->b_()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)Lb/b/f/b/w;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/o;->c(I)Lb/b/f/b/w;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lb/b/f/b/o;->b:Lb/b/f/b/w;

    return-object p1
.end method

.method private b(ILb/b/f/b/w;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/f/b/o;->d()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/b/f/b/o;->c:[Lb/b/f/b/w;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)Lb/b/f/b/w;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lb/b/f/b/o;->c:[Lb/b/f/b/w;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/b/i;)Lb/b/f/b/r;
    .registers 3

    iget-object v0, p0, Lb/b/f/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/b/r;

    return-object p1
.end method

.method public final a(I)Lb/b/f/b/w;
    .registers 3

    invoke-direct {p0, p1}, Lb/b/f/b/o;->c(I)Lb/b/f/b/w;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lb/b/f/b/w;

    iget v0, p0, Lb/b/f/b/o;->a:I

    invoke-direct {p1, v0}, Lb/b/f/b/w;-><init>(I)V

    return-object p1
.end method

.method public final a(Lb/b/f/b/a;)Lb/b/f/b/w;
    .registers 2

    invoke-virtual {p1}, Lb/b/f/b/a;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lb/b/f/b/o;->b(I)Lb/b/f/b/w;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/f/b/i;Lb/b/f/b/r;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/f/b/o;->d()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/b/f/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILb/b/f/b/w;)Z
    .registers 7

    invoke-direct {p0, p1}, Lb/b/f/b/o;->c(I)Lb/b/f/b/w;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/f/b/o;->b(ILb/b/f/b/w;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object v2

    invoke-virtual {v0}, Lb/b/f/b/w;->g()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2, v1}, Lb/b/f/b/w;->a(Lb/b/f/b/w;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lb/b/f/b/w;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {v2}, Lb/b/f/b/w;->b_()V

    invoke-direct {p0, p1, v2}, Lb/b/f/b/o;->b(ILb/b/f/b/w;)V

    return v1
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lb/b/f/b/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
