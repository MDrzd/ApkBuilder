.class public final Lb/b/a/d/l;
.super Lb/b/a/d/n;

# interfaces
.implements Lb/b/a/d/d;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/a/d/n;-><init>(Lb/b/f/c/ae;ILb/b/f/c/aa;Lb/b/a/d/b;)V

    return-void
.end method


# virtual methods
.method public final a()Lb/b/f/c/ag;
    .registers 3

    invoke-virtual {p0}, Lb/b/a/d/l;->g()Lb/b/a/d/b;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-interface {v0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v0

    check-cast v0, Lb/b/a/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lb/b/a/a/d;->b()Lb/b/f/c/ag;

    move-result-object v0

    return-object v0
.end method
