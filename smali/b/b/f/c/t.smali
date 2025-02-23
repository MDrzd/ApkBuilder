.class public abstract Lb/b/f/c/t;
.super Lb/b/f/c/v;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lb/b/f/c/v;-><init>()V

    iput p1, p0, Lb/b/f/c/t;->a:I

    return-void
.end method


# virtual methods
.method protected final b(Lb/b/f/c/a;)I
    .registers 3

    check-cast p1, Lb/b/f/c/t;

    iget p1, p1, Lb/b/f/c/t;->a:I

    iget v0, p0, Lb/b/f/c/t;->a:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lb/b/f/c/t;->a:I

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/f/c/t;->a:I

    check-cast p1, Lb/b/f/c/t;

    iget p1, p1, Lb/b/f/c/t;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lb/b/f/c/t;->a:I

    return v0
.end method

.method public final i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lb/b/f/c/t;->a:I

    return v0
.end method

.method public final k()J
    .registers 3

    iget v0, p0, Lb/b/f/c/t;->a:I

    int-to-long v0, v0

    return-wide v0
.end method
