.class public final Lb/b/a/b/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lb/b/f/c/ae;


# direct methods
.method public constructor <init>(IIILb/b/f/c/ae;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_1

    if-ltz p3, :cond_0

    iput p1, p0, Lb/b/a/b/h;->a:I

    iput p2, p0, Lb/b/a/b/h;->b:I

    iput p3, p0, Lb/b/a/b/h;->c:I

    iput-object p4, p0, Lb/b/a/b/h;->d:Lb/b/f/c/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlerPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endPc < startPc"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/a/b/h;->a:I

    return v0
.end method

.method public final a(I)Z
    .registers 3

    iget v0, p0, Lb/b/a/b/h;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lb/b/a/b/h;->b:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/a/b/h;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/b/a/b/h;->c:I

    return v0
.end method

.method public final d()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/h;->d:Lb/b/f/c/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/h;->d:Lb/b/f/c/ae;

    return-object v0

    :cond_0
    sget-object v0, Lb/b/f/c/ae;->a:Lb/b/f/c/ae;

    return-object v0
.end method
