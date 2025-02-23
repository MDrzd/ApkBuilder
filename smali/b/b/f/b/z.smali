.class public final Lb/b/f/b/z;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/b/f/b/z;


# instance fields
.field private final b:Lb/b/f/c/ad;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lb/b/f/b/z;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lb/b/f/b/z;-><init>(Lb/b/f/c/ad;II)V

    sput-object v0, Lb/b/f/b/z;->a:Lb/b/f/b/z;

    return-void
.end method

.method public constructor <init>(Lb/b/f/c/ad;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    iput p2, p0, Lb/b/f/b/z;->c:I

    iput p3, p0, Lb/b/f/b/z;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "line < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/f/b/z;->d:I

    return v0
.end method

.method public final a(Lb/b/f/b/z;)Z
    .registers 3

    iget v0, p0, Lb/b/f/b/z;->d:I

    iget p1, p1, Lb/b/f/b/z;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lb/b/f/b/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lb/b/f/b/z;

    iget v2, p0, Lb/b/f/b/z;->c:I

    iget v3, p1, Lb/b/f/b/z;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lb/b/f/b/z;->d:I

    iget v3, p1, Lb/b/f/b/z;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    iget-object v3, p1, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    invoke-virtual {v2, p1}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->hashCode()I

    move-result v0

    iget v1, p0, Lb/b/f/b/z;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/f/b/z;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/f/b/z;->b:Lb/b/f/c/ad;

    invoke-virtual {v1}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lb/b/f/b/z;->d:I

    if-ltz v1, :cond_1

    iget v1, p0, Lb/b/f/b/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/b/f/b/z;->c:I

    if-gez v1, :cond_2

    const-string v1, "????"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget v1, p0, Lb/b/f/b/z;->c:I

    invoke-static {v1}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
