.class final enum Lb/b/d/a/aa;
.super Lb/b/d/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 p2, 0x18

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/d/a/i;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a(ILb/b/d/a/c;)Lb/b/d/a/e;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/b/d/a/i;->a(Lb/b/d/a/i;ILb/b/d/a/c;)Lb/b/d/a/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/d/a/e;Lb/b/d/a/d;)V
    .registers 3

    invoke-static {p1, p2}, Lb/b/d/a/i;->b(Lb/b/d/a/e;Lb/b/d/a/d;)V

    return-void
.end method
