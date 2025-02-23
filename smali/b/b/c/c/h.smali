.class public final Lb/b/c/c/h;
.super Lb/b/c/c/ag;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Lb/b/f/c/j;

.field private b:Lb/b/c/c/j;


# direct methods
.method public constructor <init>(Lb/b/f/c/j;)V
    .registers 2

    invoke-direct {p0}, Lb/b/c/c/ag;-><init>()V

    iput-object p1, p0, Lb/b/c/c/h;->a:Lb/b/f/c/j;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/c/c/h;->b:Lb/b/c/c/j;

    return-void
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->h:Lb/b/c/c/ai;

    return-object v0
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 5

    iget-object v0, p0, Lb/b/c/c/h;->a:Lb/b/f/c/j;

    invoke-virtual {v0}, Lb/b/f/c/j;->c()Lb/b/f/c/i;

    move-result-object v0

    invoke-virtual {p1}, Lb/b/c/c/u;->p()Lb/b/c/c/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b/c/c/i;->a(Lb/b/f/c/i;)Lb/b/c/c/j;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lb/b/c/c/u;->q()Lb/b/c/c/ar;

    move-result-object p1

    new-instance v2, Lb/b/c/c/j;

    invoke-direct {v2, v0}, Lb/b/c/c/j;-><init>(Lb/b/f/c/i;)V

    invoke-virtual {p1, v2}, Lb/b/c/c/ar;->a(Lb/b/c/c/av;)V

    invoke-virtual {v1, v0, v2}, Lb/b/c/c/i;->a(Lb/b/f/c/i;Lb/b/c/c/j;)V

    :cond_0
    iput-object v2, p0, Lb/b/c/c/h;->b:Lb/b/c/c/j;

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 6

    iget-object p1, p0, Lb/b/c/c/h;->b:Lb/b/c/c/j;

    invoke-virtual {p1}, Lb/b/c/c/j;->f()I

    move-result p1

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/h;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/c/h;->a:Lb/b/f/c/j;

    invoke-virtual {v2}, Lb/b/f/c/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lb/b/h/r;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call_site_off: "

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

.method public final c_()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lb/b/c/c/h;

    iget-object v0, p0, Lb/b/c/c/h;->a:Lb/b/f/c/j;

    iget-object p1, p1, Lb/b/c/c/h;->a:Lb/b/f/c/j;

    invoke-virtual {v0, p1}, Lb/b/f/c/j;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method
