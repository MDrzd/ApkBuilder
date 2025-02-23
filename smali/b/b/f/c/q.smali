.class public final Lb/b/f/c/q;
.super Lb/b/f/c/f;


# instance fields
.field private a:Lb/b/f/c/z;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/f/c/f;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/f/c/q;->a:Lb/b/f/c/z;

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .registers 2

    const-string v0, "ifaceMethod"

    return-object v0
.end method

.method public final k()Lb/b/f/c/z;
    .registers 4

    iget-object v0, p0, Lb/b/f/c/q;->a:Lb/b/f/c/z;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/f/c/z;

    invoke-virtual {p0}, Lb/b/f/c/q;->l()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/f/c/q;->m()Lb/b/f/c/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    iput-object v0, p0, Lb/b/f/c/q;->a:Lb/b/f/c/z;

    :cond_0
    iget-object v0, p0, Lb/b/f/c/q;->a:Lb/b/f/c/z;

    return-object v0
.end method
