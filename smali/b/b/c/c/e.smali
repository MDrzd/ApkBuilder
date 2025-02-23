.class public final Lb/b/c/c/e;
.super Lb/b/c/c/av;


# instance fields
.field private a:Lb/b/c/c/d;


# direct methods
.method public constructor <init>(Lb/b/c/c/d;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lb/b/c/c/av;-><init>(II)V

    iput-object p1, p0, Lb/b/c/c/e;->a:Lb/b/c/c/d;

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->v:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/c/c/u;->e()Lb/b/c/c/ar;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/e;->a:Lb/b/c/c/d;

    invoke-virtual {p1, v0}, Lb/b/c/c/ar;->b(Lb/b/c/c/av;)Lb/b/c/c/av;

    move-result-object p1

    check-cast p1, Lb/b/c/c/d;

    iput-object p1, p0, Lb/b/c/c/e;->a:Lb/b/c/c/d;

    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 6

    iget-object p1, p0, Lb/b/c/c/e;->a:Lb/b/c/c/d;

    invoke-virtual {p1}, Lb/b/c/c/d;->f()I

    move-result p1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  annotations_off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lb/b/h/r;->c(I)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/e;->a:Lb/b/c/c/d;

    invoke-virtual {v0}, Lb/b/c/c/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
