.class public final Lb/b/c/b/a/q;
.super Lb/b/c/b/p;


# static fields
.field public static final a:Lb/b/c/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/c/b/a/q;

    invoke-direct {v0}, Lb/b/c/b/a/q;-><init>()V

    sput-object v0, Lb/b/c/b/a/q;->a:Lb/b/c/b/p;

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

    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lb/b/c/b/k;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lb/b/c/b/a/q;->d(Lb/b/c/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/c/b/k;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lb/b/c/b/a/q;->e(Lb/b/c/b/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/h/r;Lb/b/c/b/k;)V
    .registers 5

    move-object v0, p2

    check-cast v0, Lb/b/c/b/aj;

    invoke-virtual {v0}, Lb/b/c/b/aj;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lb/b/c/b/a/q;->a(Lb/b/c/b/k;I)S

    move-result p2

    invoke-static {p1, p2, v0}, Lb/b/c/b/a/q;->a(Lb/b/h/r;SI)V

    return-void
.end method

.method public final a(Lb/b/c/b/aj;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lb/b/c/b/k;)Z
    .registers 3

    instance-of v0, p1, Lb/b/c/b/aj;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/c/b/k;->k()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
