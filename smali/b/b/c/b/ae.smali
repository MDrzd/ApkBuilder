.class final Lb/b/c/b/ae;
.super Lb/b/c/b/af;


# instance fields
.field private final a:Lb/b/f/b/o;

.field private synthetic b:Lb/b/c/b/ac;


# direct methods
.method public constructor <init>(Lb/b/c/b/ac;Lcom/gmail/heagoo/neweditor/y;Lb/b/f/b/o;)V
    .registers 4

    iput-object p1, p0, Lb/b/c/b/ae;->b:Lb/b/c/b/ac;

    invoke-direct {p0, p1, p2}, Lb/b/c/b/af;-><init>(Lb/b/c/b/ac;Lcom/gmail/heagoo/neweditor/y;)V

    iput-object p3, p0, Lb/b/c/b/ae;->a:Lb/b/f/b/o;

    return-void
.end method

.method private a(Lb/b/f/b/i;)V
    .registers 4

    iget-object v0, p0, Lb/b/c/b/ae;->a:Lb/b/f/b/o;

    invoke-virtual {v0, p1}, Lb/b/f/b/o;->a(Lb/b/f/b/i;)Lb/b/f/b/r;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lb/b/c/b/v;

    invoke-virtual {p1}, Lb/b/f/b/i;->f()Lb/b/f/b/z;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lb/b/c/b/v;-><init>(Lb/b/f/b/z;Lb/b/f/b/r;)V

    invoke-virtual {p0, v1}, Lb/b/c/b/ae;->a(Lb/b/c/b/k;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/b/aa;)V
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/b/af;->a(Lb/b/f/b/aa;)V

    invoke-direct {p0, p1}, Lb/b/c/b/ae;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/ab;)V
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/b/af;->a(Lb/b/f/b/ab;)V

    invoke-direct {p0, p1}, Lb/b/c/b/ae;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/ac;)V
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/b/af;->a(Lb/b/f/b/ac;)V

    invoke-direct {p0, p1}, Lb/b/c/b/ae;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/p;)V
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/b/af;->a(Lb/b/f/b/p;)V

    invoke-direct {p0, p1}, Lb/b/c/b/ae;->a(Lb/b/f/b/i;)V

    return-void
.end method

.method public final a(Lb/b/f/b/q;)V
    .registers 2

    invoke-super {p0, p1}, Lb/b/c/b/af;->a(Lb/b/f/b/q;)V

    invoke-direct {p0, p1}, Lb/b/c/b/ae;->a(Lb/b/f/b/i;)V

    return-void
.end method
