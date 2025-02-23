.class public abstract Lb/b/b/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/d/j;


# instance fields
.field protected a:Lb/b/b/c/a;

.field protected final b:Lcom/gmail/heagoo/b/a/a;

.field private final c:[B

.field private final d:Z

.field private final e:Ljava/io/PrintStream;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/b/c/b;->c:[B

    iget-boolean p1, p4, Lb/b/b/c/a;->b:Z

    iput-boolean p1, p0, Lb/b/b/c/b;->d:Z

    iput-object p2, p0, Lb/b/b/c/b;->e:Ljava/io/PrintStream;

    iget p1, p4, Lb/b/b/c/a;->i:I

    if-gtz p1, :cond_0

    const/16 p1, 0x4f

    goto :goto_0

    :cond_0
    iget p1, p4, Lb/b/b/c/a;->i:I

    :goto_0
    iput p1, p0, Lb/b/b/c/b;->f:I

    iput-object p3, p0, Lb/b/b/c/b;->g:Ljava/lang/String;

    iget-boolean p1, p4, Lb/b/b/c/a;->h:Z

    iput-boolean p1, p0, Lb/b/b/c/b;->h:Z

    const/4 p1, 0x0

    iput p1, p0, Lb/b/b/c/b;->j:I

    iget-boolean p2, p0, Lb/b/b/c/b;->d:Z

    if-eqz p2, :cond_1

    const-string p2, "|"

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    iput-object p2, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    iput p1, p0, Lb/b/b/c/b;->l:I

    iput-object p4, p0, Lb/b/b/c/b;->a:Lb/b/b/c/a;

    new-instance p1, Lcom/gmail/heagoo/b/a/a;

    invoke-direct {p1}, Lcom/gmail/heagoo/b/a/a;-><init>()V

    iput-object p1, p0, Lb/b/b/c/b;->b:Lcom/gmail/heagoo/b/a/a;

    iget p1, p0, Lb/b/b/c/b;->f:I

    add-int/lit8 p1, p1, -0x5

    div-int/lit8 p1, p1, 0xf

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, -0x2

    const/16 p2, 0xa

    const/4 p3, 0x6

    if-ge p1, p3, :cond_2

    const/4 p1, 0x6

    goto :goto_2

    :cond_2
    if-le p1, p2, :cond_3

    const/16 p1, 0xa

    :cond_3
    :goto_2
    iput p1, p0, Lb/b/b/c/b;->i:I

    return-void
.end method

.method static a(Lb/b/a/b/n;)I
    .registers 1

    invoke-virtual {p0}, Lb/b/a/b/n;->i()Lb/b/f/d/a;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/d/a;->c()Lb/b/f/d/b;

    move-result-object p0

    invoke-virtual {p0}, Lb/b/f/d/b;->f()I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lb/b/b/c/b;->e()I

    move-result v0

    iget-boolean v1, p0, Lb/b/b/c/b;->d:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lb/b/b/c/b;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/b/c/b;->f:I

    sub-int/2addr v2, v1

    iget v1, p0, Lb/b/b/c/b;->j:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v1

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/io/StringWriter;

    shl-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Lb/b/h/i;

    iget-object v3, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lb/b/h/i;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {v1, p2}, Lb/b/h/i;->write(Ljava/lang/String;)V

    const/16 v2, 0xa

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Lb/b/h/i;->write(I)V

    :cond_2
    invoke-virtual {v1}, Lb/b/h/i;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2, v2}, Lb/b/b/a/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private e()I
    .registers 3

    iget-boolean v0, p0, Lb/b/b/c/b;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/b/c/b;->i:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lb/b/b/c/b;->i:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()I
    .registers 2

    iget v0, p0, Lb/b/b/c/b;->l:I

    return v0
.end method

.method public a(I)V
    .registers 4

    iget v0, p0, Lb/b/b/c/b;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/b/c/b;->j:I

    iget-boolean p1, p0, Lb/b/b/c/b;->d:Z

    if-eqz p1, :cond_0

    const-string p1, "|"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lb/b/b/c/b;->j:I

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/c/b;->k:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lb/b/h/c;IILjava/lang/String;)V
    .registers 11

    invoke-virtual {p1, p2}, Lb/b/h/c;->a(I)I

    move-result v3

    iget-boolean p1, p0, Lb/b/b/c/b;->d:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/b/c/b;->c:[B

    iget v4, p0, Lb/b/b/c/b;->i:I

    const/4 v5, 0x4

    move v1, v3

    move v2, p3

    invoke-static/range {v0 .. v5}, La/a/a;->a([BIIIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, p1, p4}, Lb/b/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lb/b/b/c/b;->e:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget p1, p0, Lb/b/b/c/b;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Lb/b/b/c/b;->l:I

    return-void
.end method

.method public a(Lb/b/h/c;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public a(Lb/b/h/c;Ljava/lang/String;Lb/b/a/d/f;)V
    .registers 4

    return-void
.end method

.method protected final b()[B
    .registers 2

    iget-object v0, p0, Lb/b/b/c/b;->c:[B

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/b/c/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()Z
    .registers 2

    iget-boolean v0, p0, Lb/b/b/c/b;->h:Z

    return v0
.end method
