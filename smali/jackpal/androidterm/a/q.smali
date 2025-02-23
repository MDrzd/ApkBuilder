.class public Ljackpal/androidterm/a/q;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljackpal/androidterm/a/o;

.field private b:Lb/b/c/a/b;

.field private c:Ljackpal/androidterm/a/ac;

.field private d:Ljava/io/OutputStream;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/lang/String;

.field private g:Ljackpal/androidterm/a/aa;

.field private h:Ljackpal/androidterm/a/x;

.field private i:Z

.field private j:Ljava/lang/Thread;

.field private k:Ljackpal/androidterm/a/l;

.field private l:[B

.field private m:Ljava/lang/Thread;

.field private n:Ljackpal/androidterm/a/l;

.field private o:Landroid/os/Handler;

.field private p:Ljava/nio/CharBuffer;

.field private q:Ljava/nio/ByteBuffer;

.field private r:Ljava/nio/charset/CharsetEncoder;

.field private s:Ljackpal/androidterm/a/w;

.field private t:Z

.field private u:Landroid/os/Handler;

.field private v:Ljackpal/androidterm/a/ac;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljackpal/androidterm/a/q;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljackpal/androidterm/a/a;->c:Lb/b/c/a/b;

    iput-object v0, p0, Ljackpal/androidterm/a/q;->b:Lb/b/c/a/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/a/q;->t:Z

    new-instance v0, Ljackpal/androidterm/a/r;

    invoke-direct {v0, p0}, Ljackpal/androidterm/a/r;-><init>(Ljackpal/androidterm/a/q;)V

    iput-object v0, p0, Ljackpal/androidterm/a/q;->u:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/a/q;->p:Ljava/nio/CharBuffer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/a/q;->q:Ljava/nio/ByteBuffer;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/a/q;->r:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Ljackpal/androidterm/a/q;->r:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Ljackpal/androidterm/a/q;->r:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    const/16 v0, 0x1000

    new-array v1, v0, [B

    iput-object v1, p0, Ljackpal/androidterm/a/q;->l:[B

    new-instance v1, Ljackpal/androidterm/a/l;

    invoke-direct {v1, v0}, Ljackpal/androidterm/a/l;-><init>(I)V

    iput-object v1, p0, Ljackpal/androidterm/a/q;->k:Ljackpal/androidterm/a/l;

    new-instance v1, Ljackpal/androidterm/a/t;

    invoke-direct {v1, p0, p1}, Ljackpal/androidterm/a/t;-><init>(Ljackpal/androidterm/a/q;Z)V

    iput-object v1, p0, Ljackpal/androidterm/a/q;->j:Ljava/lang/Thread;

    iget-object p1, p0, Ljackpal/androidterm/a/q;->j:Ljava/lang/Thread;

    const-string v1, "TermSession input reader"

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    new-instance p1, Ljackpal/androidterm/a/l;

    invoke-direct {p1, v0}, Ljackpal/androidterm/a/l;-><init>(I)V

    iput-object p1, p0, Ljackpal/androidterm/a/q;->n:Ljackpal/androidterm/a/l;

    new-instance p1, Ljackpal/androidterm/a/u;

    invoke-direct {p1, p0}, Ljackpal/androidterm/a/u;-><init>(Ljackpal/androidterm/a/q;)V

    iput-object p1, p0, Ljackpal/androidterm/a/q;->m:Ljava/lang/Thread;

    iget-object p1, p0, Ljackpal/androidterm/a/q;->m:Ljava/lang/Thread;

    const-string v0, "TermSession output writer"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/a/q;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->o:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Ljackpal/androidterm/a/q;)Z
    .registers 1

    iget-boolean p0, p0, Ljackpal/androidterm/a/q;->t:Z

    return p0
.end method

.method static synthetic b(Ljackpal/androidterm/a/q;)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/a/q;->k:Ljackpal/androidterm/a/l;

    invoke-virtual {v0}, Ljackpal/androidterm/a/l;->a()I

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/a/q;->l:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Ljackpal/androidterm/a/q;->k:Ljackpal/androidterm/a/l;

    iget-object v2, p0, Ljackpal/androidterm/a/q;->l:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljackpal/androidterm/a/l;->a([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljackpal/androidterm/a/q;->l:[B

    iget-object v2, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v2, v1, v3, v0}, Ljackpal/androidterm/a/x;->a([BII)V

    invoke-virtual {p0}, Ljackpal/androidterm/a/q;->g()V

    :catch_0
    return-void
.end method

.method static synthetic c(Ljackpal/androidterm/a/q;)Ljava/io/InputStream;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/q;->e:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic d(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/a/l;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/q;->k:Ljackpal/androidterm/a/l;

    return-object p0
.end method

.method static synthetic e(Ljackpal/androidterm/a/q;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/q;->u:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/a/l;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/q;->n:Ljackpal/androidterm/a/l;

    return-object p0
.end method

.method static synthetic g(Ljackpal/androidterm/a/q;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/a/q;->d:Ljava/io/OutputStream;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 8

    iget-object v0, p0, Ljackpal/androidterm/a/q;->q:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    invoke-virtual {p0, v0, v2, v1}, Ljackpal/androidterm/a/q;->a([BII)V

    return-void

    :cond_0
    iget-object v3, p0, Ljackpal/androidterm/a/q;->p:Ljava/nio/CharBuffer;

    iget-object v4, p0, Ljackpal/androidterm/a/q;->r:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {p1, v5, v2}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {v4}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v4, v3, v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v2, v0}, Ljackpal/androidterm/a/q;->a([BII)V

    return-void
.end method

.method public a(II)V
    .registers 11

    new-instance v0, Ljackpal/androidterm/a/aa;

    const/16 v1, 0x2710

    invoke-direct {v0, p1, v1, p2}, Ljackpal/androidterm/a/aa;-><init>(III)V

    iput-object v0, p0, Ljackpal/androidterm/a/q;->g:Ljackpal/androidterm/a/aa;

    new-instance v0, Ljackpal/androidterm/a/x;

    iget-object v4, p0, Ljackpal/androidterm/a/q;->g:Ljackpal/androidterm/a/aa;

    iget-object v7, p0, Ljackpal/androidterm/a/q;->b:Lb/b/c/a/b;

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Ljackpal/androidterm/a/x;-><init>(Ljackpal/androidterm/a/q;Ljackpal/androidterm/a/aa;IILb/b/c/a/b;)V

    iput-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    iget-object p1, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    iget-boolean p2, p0, Ljackpal/androidterm/a/q;->i:Z

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/x;->a(Z)V

    iget-object p1, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    iget-object p2, p0, Ljackpal/androidterm/a/q;->a:Ljackpal/androidterm/a/o;

    invoke-virtual {p1, p2}, Ljackpal/androidterm/a/x;->a(Ljackpal/androidterm/a/o;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljackpal/androidterm/a/q;->t:Z

    iget-object p1, p0, Ljackpal/androidterm/a/q;->j:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Ljackpal/androidterm/a/q;->m:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Lb/b/c/a/b;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/a/q;->b:Lb/b/c/a/b;

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/x;->a(Lb/b/c/a/b;)V

    return-void
.end method

.method public final a(Ljackpal/androidterm/a/ac;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->c:Ljackpal/androidterm/a/ac;

    return-void
.end method

.method public final a(Ljackpal/androidterm/a/o;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->a:Ljackpal/androidterm/a/o;

    return-void
.end method

.method public final a(Ljackpal/androidterm/a/w;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->s:Ljackpal/androidterm/a/w;

    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->e:Ljava/io/InputStream;

    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->d:Ljava/io/OutputStream;

    return-void
.end method

.method public final a([BII)V
    .registers 6

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->n:Ljackpal/androidterm/a/l;

    invoke-virtual {v0, p1, p2, p3}, Ljackpal/androidterm/a/l;->b([BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Ljackpal/androidterm/a/q;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public b(II)V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/a/q;->a(II)V

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0, p1, p2}, Ljackpal/androidterm/a/x;->a(II)V

    return-void
.end method

.method public final b(Ljackpal/androidterm/a/ac;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->v:Ljackpal/androidterm/a/ac;

    return-void
.end method

.method public final b(Z)V
    .registers 3

    iput-boolean p1, p0, Ljackpal/androidterm/a/q;->i:Z

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/x;->a(Z)V

    return-void
.end method

.method protected final b([BII)V
    .registers 5

    iget-object p2, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Ljackpal/androidterm/a/x;->a([BII)V

    return-void
.end method

.method protected c()V
    .registers 1

    invoke-virtual {p0}, Ljackpal/androidterm/a/q;->d()V

    return-void
.end method

.method public final c(Ljackpal/androidterm/a/ac;)V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/x;->a(Ljackpal/androidterm/a/ac;)V

    :cond_0
    return-void
.end method

.method public d()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/a/q;->t:Z

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->l()V

    iget-object v0, p0, Ljackpal/androidterm/a/q;->g:Ljackpal/androidterm/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/q;->g:Ljackpal/androidterm/a/aa;

    invoke-virtual {v0}, Ljackpal/androidterm/a/aa;->b()V

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->o:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/a/q;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ljackpal/androidterm/a/q;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->s:Ljackpal/androidterm/a/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->s:Ljackpal/androidterm/a/w;

    invoke-interface {v0, p0}, Ljackpal/androidterm/a/w;->a(Ljackpal/androidterm/a/q;)V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljackpal/androidterm/a/q;->a([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/q;->f:Ljava/lang/String;

    iget-object p1, p0, Ljackpal/androidterm/a/q;->v:Ljackpal/androidterm/a/ac;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljackpal/androidterm/a/ac;->a()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/a/q;->t:Z

    return v0
.end method

.method final f()Ljackpal/androidterm/a/x;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    return-object v0
.end method

.method protected final g()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->c:Ljackpal/androidterm/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/q;->c:Ljackpal/androidterm/a/ac;

    invoke-interface {v0}, Ljackpal/androidterm/a/ac;->a()V

    :cond_0
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->g:Ljackpal/androidterm/a/aa;

    invoke-virtual {v0}, Ljackpal/androidterm/a/aa;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljackpal/androidterm/a/q;->i:Z

    return v0

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->k()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/q;->h:Ljackpal/androidterm/a/x;

    invoke-virtual {v0}, Ljackpal/androidterm/a/x;->j()V

    invoke-virtual {p0}, Ljackpal/androidterm/a/q;->g()V

    return-void
.end method
