.class public final Lb/b/a/a/i;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/a/b/q;


# direct methods
.method public constructor <init>(Lb/b/a/b/q;)V
    .registers 3

    const-string v0, "LineNumberTable"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lb/b/a/b/q;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iput-object p1, p0, Lb/b/a/a/i;->a:Lb/b/a/b/q;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb/b/h/q;

    const-string v0, "lineNumbers.isMutable()"

    invoke-direct {p1, v0}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "lineNumbers == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/i;->a:Lb/b/a/b/q;

    invoke-virtual {v0}, Lb/b/a/b/q;->a_()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final b()Lb/b/a/b/q;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/i;->a:Lb/b/a/b/q;

    return-object v0
.end method
