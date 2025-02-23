.class public final Lb/b/c/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:I


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    if-eqz p1, :cond_0

    iput p2, p0, Lb/b/c/b/d;->b:I

    iput-object p1, p0, Lb/b/c/b/d;->a:Lb/b/f/c/ae;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptionType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/c/b/d;)I
    .registers 4

    iget v0, p0, Lb/b/c/b/d;->b:I

    iget v1, p1, Lb/b/c/b/d;->b:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lb/b/c/b/d;->b:I

    iget v1, p1, Lb/b/c/b/d;->b:I

    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lb/b/c/b/d;->a:Lb/b/f/c/ae;

    iget-object p1, p1, Lb/b/c/b/d;->a:Lb/b/f/c/ae;

    invoke-virtual {v0, p1}, Lb/b/f/c/ae;->a(Lb/b/f/c/a;)I

    move-result p1

    return p1
.end method

.method public final a()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/d;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/c/b/d;->b:I

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/b/d;

    invoke-virtual {p0, p1}, Lb/b/c/b/d;->a(Lb/b/c/b/d;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/c/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/c/b/d;

    invoke-virtual {p0, p1}, Lb/b/c/b/d;->a(Lb/b/c/b/d;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lb/b/c/b/d;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/c/b/d;->a:Lb/b/f/c/ae;

    invoke-virtual {v1}, Lb/b/f/c/ae;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
