.class final Lb/b/f/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/b/k;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/f/b/d;->a:I

    return-void
.end method

.method private a(Lb/b/f/b/i;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/f/b/i;->g()Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lb/b/f/b/d;->a(Lb/b/f/b/r;)V

    :cond_0
    invoke-virtual {p1}, Lb/b/f/b/i;->j()Lb/b/f/b/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/u;->a_()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb/b/f/b/u;->b(I)Lb/b/f/b/r;

    move-result-object v2

    invoke-direct {p0, v2}, Lb/b/f/b/d;->a(Lb/b/f/b/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lb/b/f/b/r;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/f/b/r;->j()I

    move-result p1

    iget v0, p0, Lb/b/f/b/d;->a:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lb/b/f/b/d;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/f/b/d;->a:I

    return v0
.end method

.method public final a(Lb/b/f/b/aa;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/ab;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/ac;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/p;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/q;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/f/b/d;->a(Lb/b/f/b/i;)V

    return-void
.end method
