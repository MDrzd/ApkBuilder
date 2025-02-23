.class public final Lb/b/a/a/d;
.super Lb/b/a/a/u;


# instance fields
.field private final a:Lb/b/f/c/ag;


# direct methods
.method public constructor <init>(Lb/b/f/c/ag;)V
    .registers 3

    const-string v0, "ConstantValue"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    instance-of v0, p1, Lb/b/f/c/ad;

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/b/f/c/p;

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/b/f/c/w;

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/b/f/c/o;

    if-nez v0, :cond_1

    instance-of v0, p1, Lb/b/f/c/l;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "constantValue == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad type for constantValue"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lb/b/a/a/d;->a:Lb/b/f/c/ag;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Lb/b/f/c/ag;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/d;->a:Lb/b/f/c/ag;

    return-object v0
.end method
