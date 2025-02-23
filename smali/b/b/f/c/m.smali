.class public final Lb/b/f/c/m;
.super Lb/b/f/c/x;


# instance fields
.field private a:Lb/b/f/c/n;


# direct methods
.method public constructor <init>(Lb/b/f/c/aa;)V
    .registers 4

    new-instance v0, Lb/b/f/c/ae;

    invoke-virtual {p1}, Lb/b/f/c/aa;->c()Lb/b/f/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    invoke-direct {p0, v0, p1}, Lb/b/f/c/x;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/f/c/m;->a:Lb/b/f/c/n;

    return-void
.end method


# virtual methods
.method public final a()Lb/b/f/d/c;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/m;->l()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "enum"

    return-object v0
.end method

.method public final i()Lb/b/f/c/n;
    .registers 4

    iget-object v0, p0, Lb/b/f/c/m;->a:Lb/b/f/c/n;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/f/c/n;

    invoke-virtual {p0}, Lb/b/f/c/m;->l()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/c/m;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/b/f/c/n;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    iput-object v0, p0, Lb/b/f/c/m;->a:Lb/b/f/c/n;

    :cond_0
    iget-object v0, p0, Lb/b/f/c/m;->a:Lb/b/f/c/n;

    return-object v0
.end method
