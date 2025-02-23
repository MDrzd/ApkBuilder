.class final Lb/b/g/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g/ac;


# instance fields
.field private synthetic a:Lb/b/g/ap;


# direct methods
.method constructor <init>(Lb/b/g/ap;)V
    .registers 2

    iput-object p1, p0, Lb/b/g/aq;->a:Lb/b/g/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/g/aa;)V
    .registers 5

    invoke-virtual {p1}, Lb/b/g/aa;->f()I

    move-result v0

    iget-object v1, p0, Lb/b/g/aq;->a:Lb/b/g/ap;

    iget-object v1, v1, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-static {v1, v0}, Lb/b/g/an;->b(Lb/b/g/an;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb/b/g/aq;->a:Lb/b/g/ap;

    invoke-static {v1}, Lb/b/g/ap;->a(Lb/b/g/ap;)[Lb/b/f/b/r;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lb/b/g/aq;->a:Lb/b/g/ap;

    iget-object v1, v1, Lb/b/g/ap;->a:Lb/b/g/an;

    invoke-virtual {v0}, Lb/b/f/b/r;->f()I

    move-result v2

    invoke-static {v1, v2}, Lb/b/g/an;->c(Lb/b/g/an;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/g/aq;->a:Lb/b/g/ap;

    invoke-static {v1}, Lb/b/g/ap;->b(Lb/b/g/ap;)Lb/b/g/af;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lb/b/g/aa;->a(Lb/b/f/b/r;Lb/b/g/af;)V

    :cond_1
    return-void
.end method
