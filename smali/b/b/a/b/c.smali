.class public final Lb/b/a/b/c;
.super Lb/b/h/h;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/f/c/a;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/c;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/c/a;

    return-object p1
.end method

.method public final a(ILb/b/f/c/a;)V
    .registers 5

    instance-of v0, p2, Lb/b/f/c/ad;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/ae;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/p;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/w;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/o;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/l;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/y;

    if-nez v0, :cond_1

    instance-of v0, p2, Lb/b/f/c/ab;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad type for bootstrap argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lb/b/a/b/c;->a(ILjava/lang/Object;)V

    return-void
.end method
