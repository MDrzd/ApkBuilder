.class final Lb/b/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ak;


# instance fields
.field private a:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/f;->a:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 3

    invoke-static {p1}, Lb/b/g/e;->a(Lb/b/g/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/f;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/aa;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public final a(Lb/b/g/x;)V
    .registers 3

    invoke-static {p1}, Lb/b/g/e;->a(Lb/b/g/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/g/f;->a:Ljava/util/BitSet;

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/r;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public final b(Lb/b/g/x;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/g/x;->n()Lb/b/f/b/r;

    move-result-object v0

    invoke-static {p1}, Lb/b/g/e;->a(Lb/b/g/aj;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/b/g/f;->a:Ljava/util/BitSet;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method
