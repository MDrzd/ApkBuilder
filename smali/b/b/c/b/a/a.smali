.class public final Lb/b/c/b/a/a;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/a;

    invoke-direct {v0}, Lb/b/c/b/a/a;-><init>()V

    sput-object v0, Lb/b/c/b/a/a;->a:Lb/b/c/b/p;

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
    .registers 2

    invoke-static {p1}, Lb/b/c/b/a/a;->d(Lb/b/c/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lb/b/c/b/a/a;->e(Lb/b/c/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 4

    move-object v0, p2

    check-cast v0, Lb/b/c/b/aj;

    invoke-virtual {v0}, Lb/b/c/b/aj;->o()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Lb/b/c/b/a/a;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-interface {p1, p2}, Lb/b/h/r;->b(I)V

    return-void
.end method

.method public final a(Lb/b/c/b/aj;)Z
    .registers 2

    invoke-virtual {p1}, Lb/b/c/b/aj;->o()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lb/b/c/b/a/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 3

    instance-of v0, p1, Lb/b/c/b/aj;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/b/u;->a_()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lb/b/c/b/aj;

    invoke-virtual {p1}, Lb/b/c/b/aj;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lb/b/c/b/a/a;->a(Lb/b/c/b/aj;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
