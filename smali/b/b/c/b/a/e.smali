.class public final Lb/b/c/b/a/e;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/e;

    invoke-direct {v0}, Lb/b/c/b/a/e;-><init>()V

    sput-object v0, Lb/b/c/b/a/e;->a:Lb/b/c/b/p;

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

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    const-string p1, ""

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 6

    invoke-virtual {p2}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/r;->f()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-static {v2, v0}, Lb/b/c/b/a/e;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lb/b/c/b/a/e;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-interface {p1, p2}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 7

    instance-of v0, p1, Lb/b/c/b/ag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v4

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    if-eq v4, p1, :cond_1

    return v1

    :pswitch_1
    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v0

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    :cond_1
    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/e;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lb/b/c/b/k;)Ljava/util/BitSet;
    .registers 9

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/b/r;->f()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/f/b/r;->f()I

    move-result v5

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    if-eq v3, v5, :cond_0

    invoke-virtual {v0, v2, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lb/b/c/b/a/e;->a(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :goto_0
    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-static {p1}, Lb/b/c/b/a/e;->a(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1

    :pswitch_1
    invoke-static {v3}, Lb/b/c/b/a/e;->a(I)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/BitSet;->set(IZ)V

    invoke-static {v5}, Lb/b/c/b/a/e;->a(I)Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Ljava/util/BitSet;->set(IZ)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
