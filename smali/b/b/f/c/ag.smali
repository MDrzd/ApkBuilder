.class public abstract Lb/b/f/c/ag;
.super Lb/b/f/c/a;

# interfaces
.implements Lb/b/f/d/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/f/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lb/b/f/d/d;
    .registers 1

    return-object p0
.end method

.method public final c()I
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/ag;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    invoke-virtual {p0}, Lb/b/f/c/ag;->a()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->d()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
