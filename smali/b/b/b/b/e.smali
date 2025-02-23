.class final Lb/b/b/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lb/b/b/b/e;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb/b/b/b/e;->d:Ljava/lang/String;

    return v3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lb/b/b/b/e;->b:I

    iget-object v2, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    iget v1, p0, Lb/b/b/b/e;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    iget v0, p0, Lb/b/b/b/e;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lb/b/b/b/e;->b:I

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing value after parameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lb/b/b/a;

    invoke-direct {p1}, Lb/b/b/a;-><init>()V

    throw p1

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/b/b/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 4

    iget v0, p0, Lb/b/b/b/e;->b:I

    iget-object v1, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    iget v1, p0, Lb/b/b/b/e;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/b/b/e;->c:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lb/b/b/b/e;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lb/b/b/b/e;->b:I

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public final d()[Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lb/b/b/b/e;->b:I

    sub-int/2addr v0, v1

    new-array v1, v0, [Ljava/lang/String;

    if-lez v0, :cond_0

    iget-object v2, p0, Lb/b/b/b/e;->a:[Ljava/lang/String;

    iget v3, p0, Lb/b/b/b/e;->b:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method
