.class public final Lb/b/a/a/h;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/a/a/x;


# direct methods
.method public constructor <init>(Lb/b/a/a/x;)V
    .registers 3

    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lb/b/a/a/x;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iput-object p1, p0, Lb/b/a/a/h;->a:Lb/b/a/a/x;

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb/b/h/q;

    const-string v0, "innerClasses.isMutable()"

    invoke-direct {p1, v0}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "innerClasses == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lb/b/a/a/h;->a:Lb/b/a/a/x;

    invoke-virtual {v0}, Lb/b/a/a/x;->a_()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final b()Lb/b/a/a/x;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/h;->a:Lb/b/a/a/x;

    return-object v0
.end method
