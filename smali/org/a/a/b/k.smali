.class public final Lorg/a/a/b/k;
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

    iget-object v0, p0, Lorg/a/a/b/k;->a:Lorg/a/a/b/n;

    invoke-interface {v0, p1}, Lorg/a/a/b/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
