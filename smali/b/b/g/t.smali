.class public final Lb/b/g/t;
.super Lcom/gmail/heagoo/pngeditor/n;


# instance fields
.field private final a:I

.field private final b:Lb/b/f/b/w;

.field private final c:[Lb/b/f/b/w;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lb/b/g/al;)V
    .registers 4

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/g/al;->g()I

    move-result p1

    iput p1, p0, Lb/b/g/t;->a:I

    new-instance p1, Lb/b/f/b/w;

    iget v1, p0, Lb/b/g/t;->a:I

    invoke-direct {p1, v1}, Lb/b/f/b/w;-><init>(I)V

    iput-object p1, p0, Lb/b/g/t;->b:Lb/b/f/b/w;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lb/b/f/b/w;

    iput-object p1, p0, Lb/b/g/t;->c:[Lb/b/f/b/w;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb/b/g/t;->d:Ljava/util/HashMap;

    iget-object p1, p0, Lb/b/g/t;->b:Lb/b/f/b/w;

    invoke-virtual {p1}, Lb/b/f/b/w;->b_()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(ILb/b/f/b/w;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/g/t;->d()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/b/g/t;->c:[Lb/b/f/b/w;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus index"

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
    iget-object v0, p0, Lb/b/g/t;->c:[Lb/b/f/b/w;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lb/b/f/b/w;
    .registers 2

    invoke-direct {p0, p1}, Lb/b/g/t;->c(I)Lb/b/f/b/w;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lb/b/g/t;->b:Lb/b/f/b/w;

    return-object p1
.end method

.method public final a(Lb/b/g/aj;Lb/b/f/b/r;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/g/t;->d()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lb/b/g/t;->d:Ljava/util/HashMap;

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
    .registers 6

    invoke-direct {p0, p1}, Lb/b/g/t;->c(I)Lb/b/f/b/w;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lb/b/g/t;->b(ILb/b/f/b/w;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lb/b/f/b/w;->a(Lb/b/f/b/w;Z)V

    invoke-virtual {v0, v2}, Lb/b/f/b/w;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v2}, Lb/b/f/b/w;->b_()V

    invoke-direct {p0, p1, v2}, Lb/b/g/t;->b(ILb/b/f/b/w;)V

    return v1
.end method

.method public final b(I)Lb/b/f/b/w;
    .registers 3

    invoke-direct {p0, p1}, Lb/b/g/t;->c(I)Lb/b/f/b/w;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/f/b/w;->h()Lb/b/f/b/w;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lb/b/f/b/w;

    iget v0, p0, Lb/b/g/t;->a:I

    invoke-direct {p1, v0}, Lb/b/f/b/w;-><init>(I)V

    return-object p1
.end method
