.class public abstract Lb/b/f/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/h/s;
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/f/c/a;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/b/f/c/a;->b(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method protected abstract b(Lb/b/f/c/a;)I
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/c/a;

    invoke-virtual {p0, p1}, Lb/b/f/c/a;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/lang/String;
.end method
