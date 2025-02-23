.class public Lb/b/a/b/ak;
.super Ljava/lang/Object;


# static fields
.field private static synthetic g:Z


# instance fields
.field private final a:Lb/b/a/b/w;

.field private final b:Lb/b/a/b/j;

.field private c:Lb/b/a/b/n;

.field private final d:Lb/b/a/b/s;

.field private final e:Lb/b/a/b/al;

.field private final f:Lcom/gmail/heagoo/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/b/a/b/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lb/b/a/b/ak;->g:Z

    return-void
.end method

.method public constructor <init>(Lb/b/a/b/w;Lb/b/a/b/n;Lcom/gmail/heagoo/b/a/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iput-object p1, p0, Lb/b/a/b/ak;->a:Lb/b/a/b/w;

    invoke-virtual {p2}, Lb/b/a/b/n;->l()Lb/b/a/b/j;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/ak;->b:Lb/b/a/b/j;

    iput-object p2, p0, Lb/b/a/b/ak;->c:Lb/b/a/b/n;

    invoke-virtual {p2}, Lb/b/a/b/n;->n()Lb/b/a/b/s;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/b/ak;->d:Lb/b/a/b/s;

    new-instance p1, Lb/b/a/b/al;

    invoke-direct {p1, p0}, Lb/b/a/b/al;-><init>(Lb/b/a/b/ak;)V

    iput-object p1, p0, Lb/b/a/b/ak;->e:Lb/b/a/b/al;

    iput-object p3, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    invoke-virtual {p2}, Lb/b/a/b/n;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 p3, 0x18

    invoke-virtual {p1, p3}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lb/b/a/b/n;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "static"

    goto :goto_0

    :cond_0
    const-string v2, "default"

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x2

    iget-object v1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget v1, v1, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 p3, 0x3

    invoke-virtual {p2}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 p3, 0x4

    invoke-virtual {p2}, Lb/b/a/b/n;->c()Lb/b/f/c/aa;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dexOptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "machine == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Lb/b/a/b/aj;
    .registers 2

    new-instance v0, Lb/b/a/b/aj;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lb/b/a/b/ak;)Lb/b/a/b/w;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/ak;->a:Lb/b/a/b/w;

    return-object p0
.end method

.method static synthetic a(Lb/b/f/d/c;Lb/b/f/d/c;)Lb/b/f/d/c;
    .registers 3

    sget-object v0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lb/b/f/d/c;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lb/b/f/d/c;->j:Lb/b/f/d/c;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/f/d/c;->r()Lb/b/f/d/c;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lb/b/f/d/c;->q:Lb/b/f/d/c;

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Lb/b/f/d/c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/b/f/d/c;->s()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    sget-object v0, Lb/b/f/d/c;->b:Lb/b/f/d/c;

    if-ne p0, v0, :cond_3

    sget-object v0, Lb/b/f/d/c;->D:Lb/b/f/d/c;

    if-ne p1, v0, :cond_3

    sget-object p0, Lb/b/f/d/c;->D:Lb/b/f/d/c;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lb/b/f/d/c;->r()Lb/b/f/d/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lb/b/a/b/ak;I)V
    .registers 5

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget v2, v2, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lb/b/a/b/i;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lb/b/a/b/ak;ILb/b/f/c/z;)V
    .registers 11

    const/16 v0, 0xb9

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget-boolean v0, v0, Lcom/gmail/heagoo/b/a/a;->d:Z

    const/16 v2, 0xb8

    if-ne p1, v2, :cond_0

    iget-object v3, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_0

    :cond_0
    sget-boolean v3, Lb/b/a/b/ak;->g:Z

    if-nez v3, :cond_2

    const/16 v3, 0xb7

    if-eq p1, v3, :cond_2

    const/16 v3, 0xb6

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    const-string p1, "static"

    goto :goto_1

    :cond_3
    const-string p1, "default"

    :goto_1
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v0, :cond_4

    const-string v0, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-virtual {p2}, Lb/b/f/c/z;->l()Lb/b/f/c/ae;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-virtual {p2}, Lb/b/f/c/z;->m()Lb/b/f/c/aa;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    iget-object p1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget p1, p1, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->b(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-virtual {p2}, Lb/b/f/c/z;->l()Lb/b/f/c/ae;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-virtual {p2}, Lb/b/f/c/z;->m()Lb/b/f/c/aa;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    iget-object p1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget p1, p1, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lb/b/a/b/ak;Lb/b/f/c/a;)V
    .registers 6

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lb/b/f/c/a;->g()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget v1, v1, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lb/b/a/b/ak;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lb/b/a/b/ak;->c:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb/b/a/b/ak;->c:Lb/b/a/b/n;

    invoke-virtual {v1}, Lb/b/a/b/n;->c()Lb/b/f/c/aa;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "ERROR in %s.%s: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lb/b/a/b/aj;

    invoke-direct {v0, p1}, Lb/b/a/b/aj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lb/b/a/b/ak;)Lb/b/a/b/s;
    .registers 1

    iget-object p0, p0, Lb/b/a/b/ak;->d:Lb/b/a/b/s;

    return-object p0
.end method

.method static synthetic b(Lb/b/a/b/ak;I)V
    .registers 6

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget v1, v1, Lcom/gmail/heagoo/b/a/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/b/a/b/ak;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "WARNING in %s.%s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lb/b/a/b/ak;->c:Lb/b/a/b/n;

    invoke-virtual {v2}, Lb/b/a/b/n;->h()Lb/b/f/c/ae;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lb/b/a/b/ak;->c:Lb/b/a/b/n;

    invoke-virtual {v2}, Lb/b/a/b/n;->c()Lb/b/f/c/aa;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/aa;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/b/ak;->f:Lcom/gmail/heagoo/b/a/a;

    iget-object v0, v0, Lcom/gmail/heagoo/b/a/a;->e:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/common/ae;Lb/b/a/b/p;)V
    .registers 6

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ae;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/a/b/ak;->e:Lb/b/a/b/al;

    invoke-virtual {v1, p2}, Lb/b/a/b/al;->a(Lb/b/a/b/p;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/gmail/heagoo/common/ae;->b()I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lb/b/a/b/ak;->b:Lb/b/a/b/j;

    iget-object v2, p0, Lb/b/a/b/ak;->e:Lb/b/a/b/al;

    invoke-virtual {v1, p1, v2}, Lb/b/a/b/j;->a(ILb/b/a/b/m;)I

    move-result v1

    iget-object v2, p0, Lb/b/a/b/ak;->e:Lb/b/a/b/al;

    invoke-virtual {v2, p1}, Lb/b/a/b/al;->a(I)V
    :try_end_0
    .catch Lb/b/a/b/aj; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, Lb/b/a/b/p;->a(Lb/a/a/c;)V

    throw p1
.end method
