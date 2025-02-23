.class public final Lb/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lb/a/ae;


# instance fields
.field private final b:Lb/a/i;

.field private final c:[S


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lb/a/ae;

    sget-object v1, Lb/a/i;->a:[S

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lb/a/ae;-><init>(Lb/a/i;[S)V

    sput-object v0, Lb/a/ae;->a:Lb/a/ae;

    return-void
.end method

.method public constructor <init>(Lb/a/i;[S)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/ae;->b:Lb/a/i;

    iput-object p2, p0, Lb/a/ae;->c:[S

    return-void
.end method


# virtual methods
.method public final a()[S
    .registers 2

    iget-object v0, p0, Lb/a/ae;->c:[S

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lb/a/ae;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/a/ae;->c:[S

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lb/a/ae;->c:[S

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lb/a/ae;->c:[S

    aget-short v2, v2, v1

    iget-object v3, p1, Lb/a/ae;->c:[S

    aget-short v3, v3, v1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lb/a/ae;->c:[S

    aget-short v2, v2, v1

    iget-object p1, p1, Lb/a/ae;->c:[S

    aget-short p1, p1, v1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0xffff

    and-int v1, v2, v0

    and-int/2addr p1, v0

    if-ge v1, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/ae;->c:[S

    array-length v0, v0

    iget-object p1, p1, Lb/a/ae;->c:[S

    array-length p1, p1

    invoke-static {v0, p1}, La/a/a;->a(II)I

    move-result v0

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ae;->c:[S

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lb/a/ae;->b:Lb/a/i;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lb/a/ae;->b:Lb/a/i;

    invoke-virtual {v3}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lb/a/ae;->c:[S

    aget-short v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lb/a/ae;->c:[S

    aget-short v3, v3, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
