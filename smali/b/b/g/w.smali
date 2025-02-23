.class final Lb/b/g/w;
.super Lb/b/g/ad;


# instance fields
.field private synthetic a:Lb/b/f/b/r;

.field private synthetic b:Lb/b/f/b/r;

.field private synthetic c:Lb/b/g/v;


# direct methods
.method constructor <init>(Lb/b/g/v;Lb/b/f/b/r;Lb/b/f/b/r;)V
    .registers 4

    iput-object p1, p0, Lb/b/g/w;->c:Lb/b/g/v;

    iput-object p2, p0, Lb/b/g/w;->a:Lb/b/f/b/r;

    iput-object p3, p0, Lb/b/g/w;->b:Lb/b/f/b/r;

    invoke-direct {p0}, Lb/b/g/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/g/w;->c:Lb/b/g/v;

    iget-object v0, v0, Lb/b/g/v;->a:Lb/b/g/u;

    invoke-static {v0}, Lb/b/g/u;->a(Lb/b/g/u;)Lb/b/g/al;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    return v0
.end method

.method public final a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/w;->a:Lb/b/f/b/r;

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lb/b/g/w;->b:Lb/b/f/b/r;

    :cond_0
    return-object p1
.end method
