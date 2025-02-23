.class public final Lb/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:S

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ad;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lb/a/ad;->c:I

    iput v0, p0, Lb/a/ad;->d:I

    int-to-short p1, p1

    iput-short p1, p0, Lb/a/ad;->a:S

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget v0, p0, Lb/a/ad;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lb/a/ad;

    iget v0, p0, Lb/a/ad;->c:I

    iget v1, p1, Lb/a/ad;->c:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lb/a/ad;->c:I

    iget p1, p1, Lb/a/ad;->c:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Section[type=%#x,off=%#x,size=%#x]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lb/a/ad;->a:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lb/a/ad;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lb/a/ad;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
