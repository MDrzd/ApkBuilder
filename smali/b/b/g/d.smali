.class final Lb/b/g/d;
.super Lb/b/g/ad;


# instance fields
.field private synthetic a:Lb/b/f/b/r;

.field private synthetic b:Lb/b/f/b/r;

.field private synthetic c:Lb/b/g/b;


# direct methods
.method constructor <init>(Lb/b/g/b;Lb/b/f/b/r;Lb/b/f/b/r;)V
    .registers 4

    iput-object p1, p0, Lb/b/g/d;->c:Lb/b/g/b;

    iput-object p2, p0, Lb/b/g/d;->a:Lb/b/f/b/r;

    iput-object p3, p0, Lb/b/g/d;->b:Lb/b/f/b/r;

    invoke-direct {p0}, Lb/b/g/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/g/d;->c:Lb/b/g/b;

    invoke-static {v0}, Lb/b/g/b;->a(Lb/b/g/b;)Lb/b/g/al;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/g/al;->g()I

    move-result v0

    return v0
.end method

.method public final a(Lb/b/f/b/r;)Lb/b/f/b/r;
    .registers 4

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/d;->a:Lb/b/f/b/r;

    invoke-virtual {v1}, Lb/b/f/b/r;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/g/d;->b:Lb/b/f/b/r;

    invoke-virtual {p1}, Lb/b/f/b/r;->i()Lb/b/f/b/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/f/b/r;->a(Lb/b/f/b/n;)Lb/b/f/b/r;

    move-result-object p1

    :cond_0
    return-object p1
.end method
