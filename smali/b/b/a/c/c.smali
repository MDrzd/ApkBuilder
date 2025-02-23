.class final Lb/b/a/c/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/a/c/k;

.field private final b:I

.field private final c:I

.field private final d:Lb/b/a/c/b;

.field private final e:Lb/b/a/d/k;

.field private f:I

.field private g:Lb/b/a/d/j;


# direct methods
.method public constructor <init>(Lb/b/a/c/k;IILb/b/a/c/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lb/b/h/c;->g(I)I

    move-result v0

    iput-object p1, p0, Lb/b/a/c/c;->a:Lb/b/a/c/k;

    iput p2, p0, Lb/b/a/c/c;->b:I

    iput p3, p0, Lb/b/a/c/c;->c:I

    iput-object p4, p0, Lb/b/a/c/c;->d:Lb/b/a/c/b;

    new-instance p1, Lb/b/a/d/k;

    invoke-direct {p1, v0}, Lb/b/a/d/k;-><init>(I)V

    iput-object p1, p0, Lb/b/a/c/c;->e:Lb/b/a/d/k;

    const/4 p1, -0x1

    iput p1, p0, Lb/b/a/c/c;->f:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributeFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lb/b/a/c/c;->f:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lb/b/a/c/c;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .registers 10

    iget-object v0, p0, Lb/b/a/c/c;->e:Lb/b/a/d/k;

    invoke-virtual {v0}, Lb/b/a/d/k;->a_()I

    move-result v0

    iget v1, p0, Lb/b/a/c/c;->c:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iget-object v3, p0, Lb/b/a/c/c;->a:Lb/b/a/c/k;

    invoke-virtual {v3}, Lb/b/a/c/k;->b()Lb/b/h/c;

    move-result-object v3

    iget-object v4, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    iget v5, p0, Lb/b/a/c/c;->c:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "attributes_count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v5, v2, v6}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    move v4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    :try_start_0
    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\nattributes["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v4, v2, v6}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lb/b/a/d/j;->a(I)V

    :cond_1
    iget-object v5, p0, Lb/b/a/c/c;->d:Lb/b/a/c/b;

    iget-object v6, p0, Lb/b/a/c/c;->a:Lb/b/a/c/k;

    iget v7, p0, Lb/b/a/c/c;->b:I

    iget-object v8, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    invoke-virtual {v5, v6, v7, v4, v8}, Lb/b/a/c/b;->a(Lb/b/a/c/k;IILb/b/a/d/j;)Lb/b/a/d/a;

    move-result-object v5

    invoke-interface {v5}, Lb/b/a/d/a;->a()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lb/b/a/c/c;->e:Lb/b/a/d/k;

    invoke-virtual {v6, v1, v5}, Lb/b/a/d/k;->a(ILb/b/a/d/a;)V

    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Lb/b/a/d/j;->a(I)V

    iget-object v5, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "end attributes["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v4, v2, v6}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lb/b/a/d/i;

    invoke-direct {v2, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while parsing attributes["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v4, p0, Lb/b/a/c/c;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/c;->c()V

    iget v0, p0, Lb/b/a/c/c;->f:I

    return v0
.end method

.method public final a(Lb/b/a/d/j;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/c/c;->g:Lb/b/a/d/j;

    return-void
.end method

.method public final b()Lb/b/a/d/k;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/c;->c()V

    iget-object v0, p0, Lb/b/a/c/c;->e:Lb/b/a/d/k;

    return-object v0
.end method
