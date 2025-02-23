.class final Lb/b/a/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/f/d/e;


# instance fields
.field private final a:Lb/b/h/c;

.field private final b:I

.field private final c:Lb/b/f/c/af;


# direct methods
.method public constructor <init>(Lb/b/h/c;IILb/b/f/c/af;Lb/b/a/d/j;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_2

    shl-int/lit8 v0, p3, 0x1

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lb/b/h/c;->a(II)Lb/b/h/c;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/c/l;->a:Lb/b/h/c;

    iput p3, p0, Lb/b/a/c/l;->b:I

    iput-object p4, p0, Lb/b/a/c/l;->c:Lb/b/f/c/af;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    shl-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lb/b/h/c;->g(I)I

    move-result v1

    :try_start_0
    invoke-virtual {p4, v1}, Lb/b/f/c/af;->a(I)Lb/b/f/c/a;

    move-result-object v1

    check-cast v1, Lb/b/f/c/ae;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_0

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, p1, v0, v2, v1}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "bogus class cpi"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lb/b/f/d/c;
    .registers 3

    iget-object v0, p0, Lb/b/a/c/l;->a:Lb/b/h/c;

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lb/b/h/c;->g(I)I

    move-result p1

    iget-object v0, p0, Lb/b/a/c/l;->c:Lb/b/f/c/af;

    invoke-virtual {v0, p1}, Lb/b/f/c/af;->a(I)Lb/b/f/c/a;

    move-result-object p1

    check-cast p1, Lb/b/f/c/ae;

    invoke-virtual {p1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lb/b/f/d/c;)Lb/b/f/d/e;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a_()I
    .registers 2

    iget v0, p0, Lb/b/a/c/l;->b:I

    return v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
