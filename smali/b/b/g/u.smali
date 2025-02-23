.class public final Lb/b/g/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/g/al;


# direct methods
.method private constructor <init>(Lb/b/g/al;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/u;->a:Lb/b/g/al;

    return-void
.end method

.method static synthetic a(Lb/b/g/u;Lb/b/g/x;)I
    .registers 2

    invoke-virtual {p1}, Lb/b/g/x;->d()Lb/b/f/b/i;

    move-result-object p0

    check-cast p0, Lb/b/f/b/e;

    invoke-virtual {p0}, Lb/b/f/b/e;->e_()Lb/b/f/c/a;

    move-result-object p0

    check-cast p0, Lb/b/f/c/p;

    invoke-virtual {p0}, Lb/b/f/c/p;->j()I

    move-result p0

    return p0
.end method

.method static synthetic a(Lb/b/g/u;)Lb/b/g/al;
    .registers 1

    iget-object p0, p0, Lb/b/g/u;->a:Lb/b/g/al;

    return-object p0
.end method

.method public static a(Lb/b/g/al;)V
    .registers 5

    new-instance v0, Lb/b/g/u;

    invoke-direct {v0, p0}, Lb/b/g/u;-><init>(Lb/b/g/al;)V

    iget-object p0, v0, Lb/b/g/u;->a:Lb/b/g/al;

    invoke-virtual {p0}, Lb/b/g/al;->h()I

    move-result p0

    new-array p0, p0, [Lb/b/f/b/r;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lb/b/g/u;->a:Lb/b/g/al;

    new-instance v3, Lb/b/g/v;

    invoke-direct {v3, v0, p0, v1}, Lb/b/g/v;-><init>(Lb/b/g/u;[Lb/b/f/b/r;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lb/b/g/al;->a(Lb/b/g/ak;)V

    iget-object p0, v0, Lb/b/g/u;->a:Lb/b/g/al;

    invoke-virtual {p0, v1}, Lb/b/g/al;->a(Ljava/util/Set;)V

    return-void
.end method
