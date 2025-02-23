.class public final Lb/b/a/a/x;
.super Lb/b/h/h;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/a/a/y;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/a/x;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/a/y;

    return-object p1
.end method

.method public final a(ILb/b/f/c/ae;Lb/b/f/c/ae;Lb/b/f/c/ad;I)V
    .registers 7

    new-instance v0, Lb/b/a/a/y;

    invoke-direct {v0, p2, p3, p4, p5}, Lb/b/a/a/y;-><init>(Lb/b/f/c/ae;Lb/b/f/c/ae;Lb/b/f/c/ad;I)V

    invoke-virtual {p0, p1, v0}, Lb/b/a/a/x;->a(ILjava/lang/Object;)V

    return-void
.end method
