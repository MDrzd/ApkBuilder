.class public final Lb/b/f/c/j;
.super Lb/b/f/c/a;


# instance fields
.field private final a:Lb/b/f/c/r;

.field private final b:I


# direct methods
.method constructor <init>(Lb/b/f/c/r;I)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    iput-object p1, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    iput p2, p0, Lb/b/f/c/j;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lb/b/f/d/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0}, Lb/b/f/c/r;->e()Lb/b/f/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lb/b/f/c/a;)I
    .registers 4

    check-cast p1, Lb/b/f/c/j;

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    iget-object v1, p1, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0, v1}, Lb/b/f/c/r;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lb/b/f/c/j;->b:I

    iget p1, p1, Lb/b/f/c/j;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final b()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0}, Lb/b/f/c/r;->i()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb/b/f/c/i;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0}, Lb/b/f/c/r;->j()Lb/b/f/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "CallSiteRef"

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0}, Lb/b/f/c/r;->j()Lb/b/f/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/c/j;->a:Lb/b/f/c/r;

    invoke-virtual {v0}, Lb/b/f/c/r;->j()Lb/b/f/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
