.class public final Lb/b/a/a/g;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/d/e;


# direct methods
.method public constructor <init>(Lb/b/f/d/e;)V
    .registers 3

    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lb/b/f/d/e;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iput-object p1, p0, Lb/b/a/a/g;->a:Lb/b/f/d/e;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb/b/h/q;

    const-string v0, "exceptions.isMutable()"

    invoke-direct {p1, v0}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "exceptions == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/g;->a:Lb/b/f/d/e;

    invoke-interface {v0}, Lb/b/f/d/e;->a_()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final b()Lb/b/f/d/e;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/g;->a:Lb/b/f/d/e;

    return-object v0
.end method
