.class public final Lb/b/c/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lb/b/c/b/c;


# direct methods
.method public constructor <init>(IILb/b/c/b/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    invoke-virtual {p3}, Lb/b/c/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lb/b/c/b/f;->a:I

    iput p2, p0, Lb/b/c/b/f;->b:I

    iput-object p3, p0, Lb/b/c/b/f;->c:Lb/b/c/b/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/c/b/f;->a:I

    return v0
.end method

.method public final a(Lb/b/c/b/f;)I
    .registers 6

    iget v0, p0, Lb/b/c/b/f;->a:I

    iget v1, p1, Lb/b/c/b/f;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lb/b/c/b/f;->a:I

    iget v1, p1, Lb/b/c/b/f;->a:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p0, Lb/b/c/b/f;->b:I

    iget v1, p1, Lb/b/c/b/f;->b:I

    if-ge v0, v1, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lb/b/c/b/f;->b:I

    iget v1, p1, Lb/b/c/b/f;->b:I

    if-le v0, v1, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lb/b/c/b/f;->c:Lb/b/c/b/c;

    iget-object p1, p1, Lb/b/c/b/f;->c:Lb/b/c/b/c;

    invoke-virtual {v0, p1}, Lb/b/c/b/c;->a(Lb/b/c/b/c;)I

    move-result p1

    return p1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/c/b/f;->b:I

    return v0
.end method

.method public final c()Lb/b/c/b/c;
    .registers 2

    iget-object v0, p0, Lb/b/c/b/f;->c:Lb/b/c/b/c;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/c/b/f;

    invoke-virtual {p0, p1}, Lb/b/c/b/f;->a(Lb/b/c/b/f;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lb/b/c/b/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb/b/c/b/f;

    invoke-virtual {p0, p1}, Lb/b/c/b/f;->a(Lb/b/c/b/f;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lb/b/c/b/f;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lb/b/c/b/f;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/c/b/f;->c:Lb/b/c/b/c;

    invoke-virtual {v1}, Lb/b/c/b/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
