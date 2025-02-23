.class public abstract Lb/b/f/b/e;
.super Lb/b/f/b/i;


# instance fields
.field private final a:Lb/b/f/c/a;


# direct methods
.method public constructor <init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;Lb/b/f/c/a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/f/b/i;-><init>(Lb/b/f/b/x;Lb/b/f/b/z;Lb/b/f/b/r;Lb/b/f/b/u;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lb/b/f/b/e;->a:Lb/b/f/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/e;->a:Lb/b/f/c/a;

    invoke-virtual {v0}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lb/b/f/b/i;)Z
    .registers 3

    invoke-super {p0, p1}, Lb/b/f/b/i;->a(Lb/b/f/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/f/b/e;->a:Lb/b/f/c/a;

    check-cast p1, Lb/b/f/b/e;

    iget-object p1, p1, Lb/b/f/b/e;->a:Lb/b/f/c/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e_()Lb/b/f/c/a;
    .registers 2

    iget-object v0, p0, Lb/b/f/b/e;->a:Lb/b/f/c/a;

    return-object v0
.end method
