.class public final Lb/b/f/c/n;
.super Lb/b/f/c/x;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/f/c/x;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    return-void
.end method

.method public static a(Lb/b/f/d/c;)Lb/b/f/c/n;
    .registers 3

    new-instance v0, Lb/b/f/c/n;

    invoke-static {p0}, Lb/b/f/c/ae;->a(Lb/b/f/d/c;)Lb/b/f/c/ae;

    move-result-object p0

    sget-object v1, Lb/b/f/c/aa;->a:Lb/b/f/c/aa;

    invoke-direct {v0, p0, v1}, Lb/b/f/c/n;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/n;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->c()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    invoke-super {p0, p1}, Lb/b/f/c/x;->b(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lb/b/f/c/n;

    invoke-virtual {p0}, Lb/b/f/c/n;->m()Lb/b/f/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/f/c/n;->m()Lb/b/f/c/aa;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/aa;->b()Lb/b/f/c/ad;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "field"

    return-object v0
.end method
