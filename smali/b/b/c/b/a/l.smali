.class public final Lb/b/c/b/a/l;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/l;

    invoke-direct {v0}, Lb/b/c/b/a/l;-><init>()V

    sput-object v0, Lb/b/c/b/a/l;->a:Lb/b/c/b/p;

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/b/c/b/k;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lb/b/c/b/k;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 7

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lb/b/c/b/h;

    invoke-virtual {v1}, Lb/b/c/b/h;->d()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v2, v0}, Lb/b/c/b/a/l;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lb/b/c/b/a/l;->a(Lb/b/c/b/k;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Lb/b/c/b/a/l;->a(Lb/b/h/r;SS)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 6

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    instance-of v1, p1, Lb/b/c/b/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    invoke-static {v1}, Lb/b/c/b/a/l;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v0}, Lb/b/c/b/a/l;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lb/b/c/b/h;

    invoke-virtual {p1}, Lb/b/c/b/h;->d()I

    move-result v0

    invoke-static {v0}, Lb/b/c/b/a/l;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lb/b/c/b/h;->c()Lb/b/f/c/a;

    move-result-object p1

    instance-of v0, p1, Lb/b/f/c/ae;

    if-nez v0, :cond_3

    instance-of p1, p1, Lb/b/f/c/n;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public final c(Lb/b/c/b/k;)Ljava/util/BitSet;
    .registers 5

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-static {v2}, Lb/b/c/b/a/l;->a(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/l;->a(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method
