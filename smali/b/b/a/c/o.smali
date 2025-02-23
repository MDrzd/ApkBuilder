.class final Lb/b/a/c/o;
.super Lb/b/a/c/n;


# instance fields
.field private final a:Lb/b/a/d/p;


# direct methods
.method public constructor <init>(Lb/b/a/c/k;Lb/b/f/c/ae;ILb/b/a/c/b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/a/c/n;-><init>(Lb/b/a/c/k;Lb/b/f/c/ae;ILb/b/a/c/b;)V

    new-instance p1, Lb/b/a/d/p;

    invoke-virtual {p0}, Lb/b/a/c/o;->f()I

    move-result p2

    invoke-direct {p1, p2}, Lb/b/a/d/p;-><init>(I)V

    iput-object p1, p0, Lb/b/a/c/o;->a:Lb/b/a/d/p;

    return-void
.end method


# virtual methods
.method protected final a(IILb/b/f/c/aa;Lb/b/a/d/b;)Lb/b/a/d/f;
    .registers 7

    new-instance v0, Lb/b/a/d/o;

    invoke-virtual {p0}, Lb/b/a/c/o;->g()Lb/b/f/c/ae;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lb/b/a/d/o;-><init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V

    iget-object p2, p0, Lb/b/a/c/o;->a:Lb/b/a/d/p;

    invoke-virtual {p2, p1, v0}, Lb/b/a/d/p;->a(ILb/b/a/d/g;)V

    return-object v0
.end method

.method public final a()Lb/b/a/d/p;
    .registers 2

    invoke-virtual {p0}, Lb/b/a/c/o;->e()V

    iget-object v0, p0, Lb/b/a/c/o;->a:Lb/b/a/d/p;

    return-object v0
.end method

.method protected final a(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, La/a/a;->g(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    const-string v0, "method"

    return-object v0
.end method

.method protected final c()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
