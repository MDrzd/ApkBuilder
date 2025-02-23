.class public final Lb/b/c/b/w;
.super Lb/b/c/b/n;


# instance fields
.field private final a:[Lb/b/f/c/a;

.field private final b:[I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;[Lb/b/f/c/a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/n;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    iput-object p4, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lb/b/c/b/w;->b:[I

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lb/b/c/b/w;->b:[I

    array-length p2, p2

    const/4 p3, -0x1

    if-ge p1, p2, :cond_1

    aget-object p2, p4, p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/b/c/b/w;->b:[I

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constants[i] == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput p3, p0, Lb/b/c/b/w;->c:I

    return-void
.end method

.method private constructor <init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;[Lb/b/f/c/a;[II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lb/b/c/b/n;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;)V

    iput-object p4, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    iput-object p5, p0, Lb/b/c/b/w;->b:[I

    iput p6, p0, Lb/b/c/b/w;->c:I

    return-void
.end method

.method private f(I)Z
    .registers 3

    iget-object v0, p0, Lb/b/c/b/w;->b:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Lb/b/f/b/u;)Lb/b/c/b/k;
    .registers 10

    new-instance v7, Lb/b/c/b/w;

    invoke-virtual {p0}, Lb/b/c/b/w;->i()Lcom/gmail/heagoo/neweditor/x;

    move-result-object v1

    invoke-virtual {p0}, Lb/b/c/b/w;->j()Lb/b/f/b/z;

    move-result-object v2

    iget-object v4, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    iget-object v5, p0, Lb/b/c/b/w;->b:[I

    iget v6, p0, Lb/b/c/b/w;->c:I

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lb/b/c/b/w;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;[Lb/b/f/c/a;[II)V

    return-object v7
.end method

.method public final a(Lcom/gmail/heagoo/neweditor/x;)Lb/b/c/b/k;
    .registers 10

    new-instance v7, Lb/b/c/b/w;

    invoke-virtual {p0}, Lb/b/c/b/w;->j()Lb/b/f/b/z;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/c/b/w;->k()Lb/b/f/b/u;

    move-result-object v3

    iget-object v4, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    iget-object v5, p0, Lb/b/c/b/w;->b:[I

    iget v6, p0, Lb/b/c/b/w;->c:I

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lb/b/c/b/w;-><init>(Lcom/gmail/heagoo/neweditor/x;Lb/b/f/b/z;Lb/b/f/b/u;[Lb/b/f/c/a;[II)V

    return-object v7
.end method

.method public final a(I)Lb/b/f/c/a;
    .registers 3

    iget-object v0, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(II)V
    .registers 4

    if-ltz p2, :cond_1

    invoke-direct {p0, p1}, Lb/b/c/b/w;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/w;->b:[I

    aput p2, v0, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)I
    .registers 5

    invoke-direct {p0, p1}, Lb/b/c/b/w;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/b/w;->b:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index not yet set for constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    array-length v0, v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/c/b/w;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .registers 4

    if-ltz p1, :cond_2

    iget v0, p0, Lb/b/c/b/w;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lb/b/c/b/w;->c:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lb/b/c/b/w;->f(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lb/b/c/b/w;->a:[Lb/b/f/c/a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lb/b/f/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lb/b/c/b/w;->b(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-static {v2}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
