.class final Lb/b/g/ar;
.super Lb/b/g/ad;


# instance fields
.field private synthetic a:Lb/b/g/ap;


# direct methods
.method public constructor <init>(Lb/b/g/ap;)V
    .registers 2

    iput-object p1, p0, Lb/b/g/ar;->a:Lb/b/g/ap;

    invoke-direct {p0}, Lb/b/g/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/g/ar;->a:Lb/b/g/ap;

    iget-object v0, v0, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v0}, Lb/b/g/an;->b(Lb/b/g/an;)I

    move-result v0

    return v0
.end method

.method public final a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/ar;->a:Lb/b/g/ap;

    invoke-static {v1}, Lb/b/g/ap;->a(Lb/b/g/ap;)[Lb/b/f/b/r;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/f/b/r;->a(I)Lb/b/f/b/r;

    move-result-object p1

    return-object p1
.end method
