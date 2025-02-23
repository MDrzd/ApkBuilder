.class public final Lb/b/c/b/a/c;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/c;

    invoke-direct {v0}, Lb/b/c/b/a/c;-><init>()V

    sput-object v0, Lb/b/c/b/a/c;->a:Lb/b/c/b/p;

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

    const/4 v0, 0x1

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

    invoke-static {p1}, Lb/b/c/b/a/c;->a(Lb/b/f/c/v;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/v;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lb/b/c/b/a/c;->a(Lb/b/f/c/v;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 6

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lb/b/c/b/h;

    invoke-virtual {v1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/v;

    invoke-virtual {v1}, Lb/b/f/c/v;->j()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    and-int/lit8 v1, v1, 0xf

    invoke-static {v0, v1}, Lb/b/c/b/a/c;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lb/b/c/b/a/c;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-interface {p1, p2}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 6

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    instance-of v1, p1, Lb/b/c/b/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v0}, Lb/b/c/b/a/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    instance-of v0, p1, Lb/b/f/c/v;

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/b/f/c/v;

    invoke-virtual {p1}, Lb/b/f/c/v;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb/b/f/c/v;->j()I

    move-result p1

    const/4 v0, -0x8

    if-lt p1, v0, :cond_2

    const/4 v0, 0x7

    if-gt p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return v3

    :cond_3
    :goto_1
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

    invoke-static {p1}, Lb/b/c/b/a/c;->a(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method
