.class public final Lb/b/c/c/t;
.super Lb/b/c/c/av;


# instance fields
.field private final a:Lb/b/c/b/i;

.field private b:[B

.field private final c:Z

.field private final d:Lb/b/f/c/z;


# direct methods
.method public constructor <init>(Lb/b/c/b/i;ZLb/b/f/c/z;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lb/b/c/c/av;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/c/c/t;->a:Lb/b/c/b/i;

    iput-boolean p2, p0, Lb/b/c/c/t;->c:Z

    iput-object p3, p0, Lb/b/c/c/t;->d:Lb/b/f/c/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B
    .registers 6

    invoke-direct/range {p0 .. p5}, Lb/b/c/c/t;->b(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B
    .registers 15

    iget-object v0, p0, Lb/b/c/c/t;->a:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->h()Lb/b/c/b/z;

    move-result-object v2

    iget-object v0, p0, Lb/b/c/c/t;->a:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->i()Lb/b/c/b/q;

    move-result-object v3

    iget-object v0, p0, Lb/b/c/c/t;->a:Lb/b/c/b/i;

    invoke-virtual {v0}, Lb/b/c/b/i;->f()Lb/b/c/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/c/b/l;->f()I

    move-result v5

    invoke-virtual {v0}, Lb/b/c/b/l;->g()I

    move-result v6

    new-instance v0, Lb/b/c/c/q;

    iget-boolean v7, p0, Lb/b/c/c/t;->c:Z

    iget-object v8, p0, Lb/b/c/c/t;->d:Lb/b/f/c/z;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lb/b/c/c/q;-><init>(Lb/b/c/b/z;Lb/b/c/b/q;Lb/b/c/c/u;IIZLb/b/f/c/z;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lb/b/c/c/q;->a()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lb/b/c/c/q;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a()Lb/b/c/c/ai;
    .registers 2

    sget-object v0, Lb/b/c/c/ai;->q:Lb/b/c/c/ai;

    return-object v0
.end method

.method protected final a(Lb/b/c/c/az;I)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Lb/b/c/c/az;->e()Lb/b/c/c/u;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lb/b/c/c/t;->a(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    move-result-object p1

    iput-object p1, p0, Lb/b/c/c/t;->b:[B

    iget-object p1, p0, Lb/b/c/c/t;->b:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lb/b/c/c/t;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "...while placing debug info for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/c/c/t;->d:Lb/b/f/c/z;

    invoke-virtual {v0}, Lb/b/f/c/z;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p1

    throw p1
.end method

.method public final a(Lb/b/c/c/u;)V
    .registers 2

    return-void
.end method

.method public final a(Lb/b/c/c/u;Lb/b/h/r;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lb/b/c/c/t;->a(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    return-void
.end method

.method public final a(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lb/b/c/c/t;->a(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    return-void
.end method

.method protected final a_(Lb/b/c/c/u;Lb/b/h/r;)V
    .registers 10

    invoke-interface {p2}, Lb/b/h/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/b/c/c/t;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lb/b/h/r;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lb/b/c/c/t;->a(Lb/b/c/c/u;Ljava/lang/String;Ljava/io/PrintWriter;Lb/b/h/r;Z)[B

    :cond_0
    iget-object p1, p0, Lb/b/c/c/t;->b:[B

    invoke-interface {p2, p1}, Lb/b/h/r;->a([B)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
