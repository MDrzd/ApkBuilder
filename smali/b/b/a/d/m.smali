.class public final Lb/b/a/d/m;
.super Lb/b/h/h;

# interfaces
.implements Lb/b/a/d/e;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/a/d/d;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/d/m;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/d/d;

    return-object p1
.end method

.method public final a(ILb/b/a/d/d;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lb/b/a/d/m;->a(ILjava/lang/Object;)V

    return-void
.end method
