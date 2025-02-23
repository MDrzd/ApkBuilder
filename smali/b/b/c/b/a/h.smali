.class public final Lb/b/c/b/a/h;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/h;

    invoke-direct {v0}, Lb/b/c/b/a/h;-><init>()V

    sput-object v0, Lb/b/c/b/a/h;->a:Lb/b/c/b/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/c/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb/b/c/b/a/h;->a(Lb/b/f/c/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p2

    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/v;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/b/r;->k()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/16 p2, 0x40

    :goto_0
    invoke-static {p1, p2}, Lb/b/c/b/a/h;->a(Lb/b/f/c/v;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 8

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lb/b/c/b/h;

    invoke-virtual {v1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/v;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->k()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lb/b/f/c/v;->j()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x10

    :goto_0
    int-to-short v1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lb/b/f/c/v;->k()J

    move-result-wide v3

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {p2, v0}, Lb/b/c/b/a/h;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-static {p1, p2, v1}, Lb/b/c/b/a/h;->a(Lb/b/h/r;SS)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 8

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    instance-of v1, p1, Lb/b/c/b/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-static {v1}, Lb/b/c/b/a/h;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    instance-of v1, p1, Lb/b/f/c/v;

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/b/f/c/v;

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->k()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lb/b/f/c/v;->j()I

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Lb/b/f/c/v;->k()J

    move-result-wide v0

    const-wide v4, 0xffffffffffffL

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_4

    return v3

    :cond_4
    :goto_0
    return v2
.end method

.method public final c(Lb/b/c/b/k;)Ljava/util/BitSet;
    .registers 4

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/h;->c(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method
