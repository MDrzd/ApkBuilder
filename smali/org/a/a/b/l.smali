.class public final Lorg/a/a/b/l;
.super Lorg/a/a/b/j;


# direct methods
.method public constructor <init>(Lorg/a/a/b/n;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/j;-><init>(Lorg/a/a/b/n;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/b/n;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/b/j;-><init>(Lorg/a/a/b/n;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "dup can\'t be called for a token stream."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public final e()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/a/a/b/l;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/x;

    iget-object v1, p0, Lorg/a/a/b/l;->a:Lorg/a/a/b/n;

    invoke-interface {v1, v0}, Lorg/a/a/b/n;->b(Lorg/a/a/x;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
