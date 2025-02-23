.class public final Lb/b/a/b/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lb/b/f/c/ad;

.field private final d:Lb/b/f/c/ad;

.field private final e:Lb/b/f/c/ad;

.field private final f:I


# direct methods
.method public constructor <init>(IILb/b/f/c/ad;Lb/b/f/c/ad;Lb/b/f/c/ad;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_5

    if-ltz p2, :cond_4

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(descriptor == null) && (signature == null)"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p6, :cond_2

    iput p1, p0, Lb/b/a/b/t;->a:I

    iput p2, p0, Lb/b/a/b/t;->b:I

    iput-object p3, p0, Lb/b/a/b/t;->c:Lb/b/f/c/ad;

    iput-object p4, p0, Lb/b/a/b/t;->d:Lb/b/f/c/ad;

    iput-object p5, p0, Lb/b/a/b/t;->e:Lb/b/f/c/ad;

    iput p6, p0, Lb/b/a/b/t;->f:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lb/b/a/b/t;)Lb/b/f/c/ad;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/t;->e:Lb/b/f/c/ad;

    return-object p0
.end method


# virtual methods
.method public final a(Lb/b/f/c/ad;)Lb/b/a/b/t;
    .registers 10

    new-instance v7, Lb/b/a/b/t;

    iget v1, p0, Lb/b/a/b/t;->a:I

    iget v2, p0, Lb/b/a/b/t;->b:I

    iget-object v3, p0, Lb/b/a/b/t;->c:Lb/b/f/c/ad;

    iget-object v4, p0, Lb/b/a/b/t;->d:Lb/b/f/c/ad;

    iget v6, p0, Lb/b/a/b/t;->f:I

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lb/b/a/b/t;-><init>(IILb/b/f/c/ad;Lb/b/f/c/ad;Lb/b/f/c/ad;I)V

    return-object v7
.end method

.method public final a()Lb/b/f/b/n;
    .registers 3

    iget-object v0, p0, Lb/b/a/b/t;->c:Lb/b/f/c/ad;

    iget-object v1, p0, Lb/b/a/b/t;->e:Lb/b/f/c/ad;

    invoke-static {v0, v1}, Lb/b/f/b/n;->a(Lb/b/f/c/ad;Lb/b/f/c/ad;)Lb/b/f/b/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Z
    .registers 4

    iget v0, p0, Lb/b/a/b/t;->f:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Lb/b/a/b/t;->a:I

    if-lt p1, p2, :cond_0

    iget p2, p0, Lb/b/a/b/t;->a:I

    iget v0, p0, Lb/b/a/b/t;->b:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lb/b/a/b/t;)Z
    .registers 4

    iget v0, p0, Lb/b/a/b/t;->a:I

    iget v1, p1, Lb/b/a/b/t;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/b/t;->b:I

    iget v1, p1, Lb/b/a/b/t;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/b/t;->f:I

    iget v1, p1, Lb/b/a/b/t;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/b/t;->c:Lb/b/f/c/ad;

    iget-object p1, p1, Lb/b/a/b/t;->c:Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/f/c/ad;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lb/b/f/d/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/b/t;->d:Lb/b/f/c/ad;

    invoke-virtual {v0}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/f/d/c;->a(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object v0

    return-object v0
.end method
