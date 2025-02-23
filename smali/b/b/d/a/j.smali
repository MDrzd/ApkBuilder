.class final enum Lb/b/d/a/j;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 11

    new-instance p2, Lb/b/d/a/bd;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lb/b/d/a/bd;-><init>(Lb/b/d/a/i;IIIIJ)V

    return-object p2
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 3

    invoke-virtual {p1}, Lb/b/d/a/e;->c()S

    move-result p1

    invoke-interface {p2, p1}, Lb/b/d/a/d;->a(S)V

    return-void
.end method
