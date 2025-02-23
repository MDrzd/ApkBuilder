.class public final La/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/d;->a:Ljava/lang/Object;

    iput-object p2, p0, La/a/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, La/a/d;

    iget-object v1, p0, La/a/d;->a:Ljava/lang/Object;

    iget-object v2, p1, La/a/d;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, La/a/d;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/d;->a:Ljava/lang/Object;

    iget-object v2, p1, La/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, La/a/d;->b:Ljava/lang/Object;

    iget-object v2, p1, La/a/d;->b:Ljava/lang/Object;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, La/a/d;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, La/a/d;->b:Ljava/lang/Object;

    iget-object p1, p1, La/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, La/a/d;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0xd5

    mul-int/lit8 v0, v0, 0x47

    iget-object v2, p0, La/a/d;->b:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v1, p0, La/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
