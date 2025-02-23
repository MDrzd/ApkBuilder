.class public final Lb/b/a/a/c;
.super Lb/b/a/a/u;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lb/b/a/b/j;

.field private final d:Lb/b/a/b/g;

.field private final e:Lb/b/a/d/b;


# direct methods
.method public constructor <init>(IILb/b/a/b/j;Lb/b/a/b/g;Lb/b/a/d/b;)V
    .registers 7

    const-string v0, "Code"

    invoke-direct {p0, v0}, Lb/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    :try_start_0
    invoke-virtual {p4}, Lb/b/a/b/g;->c()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {p5}, Lb/b/a/d/b;->c()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    iput p1, p0, Lb/b/a/a/c;->a:I

    iput p2, p0, Lb/b/a/a/c;->b:I

    iput-object p3, p0, Lb/b/a/a/c;->c:Lb/b/a/b/j;

    iput-object p4, p0, Lb/b/a/a/c;->d:Lb/b/a/b/g;

    iput-object p5, p0, Lb/b/a/a/c;->e:Lb/b/a/d/b;

    return-void

    :cond_0
    :try_start_2
    new-instance p1, Lb/b/h/q;

    const-string p2, "attributes.isMutable()"

    invoke-direct {p1, p2}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_3
    new-instance p1, Lb/b/h/q;

    const-string p2, "catches.isMutable()"

    invoke-direct {p1, p2}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLocals < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxStack < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lb/b/a/a/c;->c:Lb/b/a/b/j;

    invoke-virtual {v0}, Lb/b/a/b/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lb/b/a/a/c;->d:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->a_()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/a/c;->e:Lb/b/a/d/b;

    invoke-interface {v1}, Lb/b/a/d/b;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lb/b/a/a/c;->a:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/b/a/a/c;->b:I

    return v0
.end method

.method public final d()Lb/b/a/b/j;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/c;->c:Lb/b/a/b/j;

    return-object v0
.end method

.method public final e()Lb/b/a/b/g;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/c;->d:Lb/b/a/b/g;

    return-object v0
.end method

.method public final f()Lb/b/a/d/b;
    .registers 2

    iget-object v0, p0, Lb/b/a/a/c;->e:Lb/b/a/d/b;

    return-object v0
.end method
