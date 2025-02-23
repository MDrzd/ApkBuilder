.class public abstract Lb/b/f/c/u;
.super Lb/b/f/c/v;


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lb/b/f/c/v;-><init>()V

    iput-wide p1, p0, Lb/b/f/c/u;->a:J

    return-void
.end method


# virtual methods
.method protected final b(Lb/b/f/c/a;)I
    .registers 6

    check-cast p1, Lb/b/f/c/u;

    iget-wide v0, p1, Lb/b/f/c/u;->a:J

    iget-wide v2, p0, Lb/b/f/c/u;->a:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v2, p0, Lb/b/f/c/u;->a:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lb/b/f/c/u;->a:J

    check-cast p1, Lb/b/f/c/u;

    iget-wide v2, p1, Lb/b/f/c/u;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 5

    iget-wide v0, p0, Lb/b/f/c/u;->a:J

    long-to-int v0, v0

    iget-wide v1, p0, Lb/b/f/c/u;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .registers 6

    iget-wide v0, p0, Lb/b/f/c/u;->a:J

    long-to-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lb/b/f/c/u;->a:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .registers 3

    iget-wide v0, p0, Lb/b/f/c/u;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final k()J
    .registers 3

    iget-wide v0, p0, Lb/b/f/c/u;->a:J

    return-wide v0
.end method
