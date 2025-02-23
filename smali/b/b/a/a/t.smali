.class public abstract Lb/b/a/a/t;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/a/c;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lb/b/f/a/c;I)V
    .registers 4

    invoke-direct {p0, p1}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lb/b/f/a/c;->c()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    iput-object p2, p0, Lb/b/a/a/t;->a:Lb/b/f/a/c;

    iput p3, p0, Lb/b/a/a/t;->b:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lb/b/h/q;

    const-string p2, "annotations.isMutable()"

    invoke-direct {p1, p2}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/a/t;->b:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final b()Lb/b/f/a/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/t;->a:Lb/b/f/a/c;

    return-object v0
.end method
