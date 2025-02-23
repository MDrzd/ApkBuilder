.class public abstract Lb/b/a/a/v;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/a/b/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/b/a/b/s;)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lb/b/a/b/s;->c()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    iput-object p2, p0, Lb/b/a/a/v;->a:Lb/b/a/b/s;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb/b/h/q;

    const-string p2, "localVariables.isMutable()"

    invoke-direct {p1, p2}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "localVariables == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/v;->a:Lb/b/a/b/s;

    invoke-virtual {v0}, Lb/b/a/b/s;->a_()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final b()Lb/b/a/b/s;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/v;->a:Lb/b/a/b/s;

    return-object v0
.end method
