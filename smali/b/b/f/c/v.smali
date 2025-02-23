.class public abstract Lb/b/f/c/v;
.super Lb/b/f/c/ag;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/b/f/c/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract i()Z
.end method

.method public abstract j()I
.end method

.method public abstract k()J
.end method

.method public final l()Z
    .registers 4

    invoke-virtual {p0}, Lb/b/f/c/v;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lb/b/f/c/v;->j()I

    move-result v0

    int-to-short v2, v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
