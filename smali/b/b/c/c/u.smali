.class public final Lb/b/c/c/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/gmail/heagoo/b/a/a;

.field private final b:Lb/b/c/c/ar;

.field private final c:Lb/b/c/c/ar;

.field private final d:Lb/b/c/c/ar;

.field private final e:Lb/b/c/c/ar;

.field private final f:Lb/b/c/c/be;

.field private final g:Lb/b/c/c/bg;

.field private final h:Lb/b/c/c/ay;

.field private final i:Lb/b/c/c/ac;

.field private final j:Lb/b/c/c/aq;

.field private final k:Lb/b/c/c/n;

.field private final l:Lb/b/c/c/ar;

.field private final m:Lb/b/c/c/i;

.field private final n:Lb/b/c/c/ao;

.field private final o:Lb/b/c/c/ar;

.field private final p:Lb/b/c/c/ae;

.field private final q:[Lb/b/c/c/az;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/b/a/a;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lb/b/c/c/u;->a:Lcom/gmail/heagoo/b/a/a;

    new-instance v2, Lb/b/c/c/ae;

    invoke-direct {v2, v0}, Lb/b/c/c/ae;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->p:Lb/b/c/c/ae;

    new-instance v2, Lb/b/c/c/ar;

    sget v3, Lb/b/c/c/au;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v4, v0, v5, v3}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->c:Lb/b/c/c/ar;

    new-instance v2, Lb/b/c/c/ar;

    const-string v3, "word_data"

    sget v6, Lb/b/c/c/au;->b:I

    invoke-direct {v2, v3, v0, v5, v6}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    new-instance v2, Lb/b/c/c/ar;

    const-string v3, "string_data"

    sget v6, Lb/b/c/c/au;->c:I

    const/4 v7, 0x1

    invoke-direct {v2, v3, v0, v7, v6}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->e:Lb/b/c/c/ar;

    new-instance v2, Lb/b/c/c/ar;

    sget v3, Lb/b/c/c/au;->a:I

    invoke-direct {v2, v4, v0, v7, v3}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->l:Lb/b/c/c/ar;

    new-instance v2, Lb/b/c/c/ar;

    const-string v3, "byte_data"

    sget v6, Lb/b/c/c/au;->b:I

    invoke-direct {v2, v3, v0, v7, v6}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->o:Lb/b/c/c/ar;

    new-instance v2, Lb/b/c/c/be;

    invoke-direct {v2, v0}, Lb/b/c/c/be;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    new-instance v2, Lb/b/c/c/bg;

    invoke-direct {v2, v0}, Lb/b/c/c/bg;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    new-instance v2, Lb/b/c/c/ay;

    invoke-direct {v2, v0}, Lb/b/c/c/ay;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    new-instance v2, Lb/b/c/c/ac;

    invoke-direct {v2, v0}, Lb/b/c/c/ac;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    new-instance v2, Lb/b/c/c/aq;

    invoke-direct {v2, v0}, Lb/b/c/c/aq;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    new-instance v2, Lb/b/c/c/n;

    invoke-direct {v2, v0}, Lb/b/c/c/n;-><init>(Lb/b/c/c/u;)V

    iput-object v2, v0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    new-instance v2, Lb/b/c/c/ar;

    const-string v3, "map"

    sget v6, Lb/b/c/c/au;->a:I

    invoke-direct {v2, v3, v0, v5, v6}, Lb/b/c/c/ar;-><init>(Ljava/lang/String;Lb/b/c/c/u;II)V

    iput-object v2, v0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v6, 0xb

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lb/b/c/c/i;

    invoke-direct {v1, v0}, Lb/b/c/c/i;-><init>(Lb/b/c/c/u;)V

    iput-object v1, v0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    new-instance v1, Lb/b/c/c/ao;

    invoke-direct {v1, v0}, Lb/b/c/c/ao;-><init>(Lb/b/c/c/u;)V

    iput-object v1, v0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    const/16 v1, 0xf

    new-array v1, v1, [Lb/b/c/c/az;

    iget-object v4, v0, Lb/b/c/c/u;->p:Lb/b/c/c/ae;

    aput-object v4, v1, v16

    iget-object v4, v0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    aput-object v4, v1, v7

    iget-object v4, v0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    aput-object v4, v1, v15

    iget-object v4, v0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    aput-object v4, v1, v14

    iget-object v4, v0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    aput-object v4, v1, v5

    iget-object v4, v0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    aput-object v4, v1, v13

    iget-object v4, v0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    aput-object v4, v1, v12

    iget-object v4, v0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    aput-object v4, v1, v11

    iget-object v4, v0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    aput-object v4, v1, v10

    iget-object v4, v0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    aput-object v4, v1, v9

    iget-object v4, v0, Lb/b/c/c/u;->c:Lb/b/c/c/ar;

    aput-object v4, v1, v8

    iget-object v4, v0, Lb/b/c/c/u;->e:Lb/b/c/c/ar;

    aput-object v4, v1, v6

    iget-object v4, v0, Lb/b/c/c/u;->o:Lb/b/c/c/ar;

    aput-object v4, v1, v3

    iget-object v3, v0, Lb/b/c/c/u;->l:Lb/b/c/c/ar;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-object v3, v0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    aput-object v3, v1, v2

    :goto_0
    iput-object v1, v0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    goto :goto_1

    :cond_0
    iput-object v4, v0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    iput-object v4, v0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    new-array v1, v2, [Lb/b/c/c/az;

    iget-object v2, v0, Lb/b/c/c/u;->p:Lb/b/c/c/ae;

    aput-object v2, v1, v16

    iget-object v2, v0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    aput-object v2, v1, v7

    iget-object v2, v0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    aput-object v2, v1, v15

    iget-object v2, v0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    aput-object v2, v1, v14

    iget-object v2, v0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    aput-object v2, v1, v5

    iget-object v2, v0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    aput-object v2, v1, v13

    iget-object v2, v0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    aput-object v2, v1, v12

    iget-object v2, v0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    aput-object v2, v1, v11

    iget-object v2, v0, Lb/b/c/c/u;->c:Lb/b/c/c/ar;

    aput-object v2, v1, v10

    iget-object v2, v0, Lb/b/c/c/u;->e:Lb/b/c/c/ar;

    aput-object v2, v1, v9

    iget-object v2, v0, Lb/b/c/c/u;->o:Lb/b/c/c/ar;

    aput-object v2, v1, v8

    iget-object v2, v0, Lb/b/c/c/u;->l:Lb/b/c/c/ar;

    aput-object v2, v1, v6

    iget-object v2, v0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    aput-object v2, v1, v3

    goto :goto_0

    :goto_1
    const/4 v1, -0x1

    iput v1, v0, Lb/b/c/c/u;->r:I

    const/16 v1, 0x4f

    iput v1, v0, Lb/b/c/c/u;->s:I

    return-void
.end method

.method private a(ZZLb/b/c/c/v;)Lb/b/h/f;
    .registers 10

    iget-object p3, p0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    invoke-virtual {p3}, Lb/b/c/c/n;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->l:Lb/b/c/c/ar;

    invoke-virtual {p3}, Lb/b/c/c/ar;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    invoke-virtual {p3}, Lb/b/c/c/ar;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->a:Lcom/gmail/heagoo/b/a/a;

    const/16 v0, 0x1a

    invoke-virtual {p3, v0}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    invoke-virtual {p3}, Lb/b/c/c/i;->h()V

    :cond_0
    iget-object p3, p0, Lb/b/c/c/u;->o:Lb/b/c/c/ar;

    invoke-virtual {p3}, Lb/b/c/c/ar;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->a:Lcom/gmail/heagoo/b/a/a;

    invoke-virtual {p3, v0}, Lcom/gmail/heagoo/b/a/a;->a(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    invoke-virtual {p3}, Lb/b/c/c/ao;->h()V

    :cond_1
    iget-object p3, p0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    invoke-virtual {p3}, Lb/b/c/c/aq;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    invoke-virtual {p3}, Lb/b/c/c/ac;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    invoke-virtual {p3}, Lb/b/c/c/ay;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->c:Lb/b/c/c/ar;

    invoke-virtual {p3}, Lb/b/c/c/ar;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    invoke-virtual {p3}, Lb/b/c/c/bg;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    invoke-virtual {p3}, Lb/b/c/c/be;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->e:Lb/b/c/c/ar;

    invoke-virtual {p3}, Lb/b/c/c/ar;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->p:Lb/b/c/c/ae;

    invoke-virtual {p3}, Lb/b/c/c/ae;->h()V

    iget-object p3, p0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    array-length p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    iget-object v3, p0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    aget-object v3, v3, v1

    iget-object v4, p0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    if-ne v3, v4, :cond_3

    :cond_2
    invoke-virtual {v3}, Lb/b/c/c/az;->b()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_3
    invoke-virtual {v3, v2}, Lb/b/c/c/az;->b(I)I

    move-result v4

    if-lt v4, v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    iget-object v5, p0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    invoke-static {v2, v5}, Lb/b/c/c/aj;->a([Lb/b/c/c/az;Lb/b/c/c/ar;)V

    iget-object v2, p0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    invoke-virtual {v2}, Lb/b/c/c/ar;->h()V

    :cond_4
    instance-of v2, v3, Lb/b/c/c/ar;

    if-eqz v2, :cond_5

    move-object v2, v3

    check-cast v2, Lb/b/c/c/ar;

    invoke-virtual {v2}, Lb/b/c/c/ar;->d()V

    :cond_5
    invoke-virtual {v3}, Lb/b/c/c/az;->d_()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v2

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "...while writing section "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/a/a/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lb/a/a/c;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bogus placement for section "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    iput v2, p0, Lb/b/c/c/u;->r:I

    iget v1, p0, Lb/b/c/c/u;->r:I

    new-array v1, v1, [B

    new-instance v2, Lb/b/h/f;

    invoke-direct {v2, v1}, Lb/b/h/f;-><init>([B)V

    if-eqz p1, :cond_9

    iget v3, p0, Lb/b/c/c/u;->s:I

    invoke-virtual {v2, v3, p2}, Lb/b/h/f;->a(IZ)V

    :cond_9
    :goto_2
    if-ge v0, p3, :cond_e

    :try_start_1
    iget-object p2, p0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    aget-object p2, p2, v0

    iget-object v3, p0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    if-eq p2, v3, :cond_a

    iget-object v3, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    if-ne p2, v3, :cond_b

    :cond_a
    invoke-virtual {p2}, Lb/b/c/c/az;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Lb/b/c/c/az;->g()I

    move-result v3

    invoke-virtual {v2}, Lb/b/h/f;->c()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_c

    invoke-virtual {v2, v3}, Lb/b/h/f;->g(I)V

    invoke-virtual {p2, v2}, Lb/b/c/c/az;->c(Lb/b/h/r;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    new-instance p1, Lb/a/a/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "excess write of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lb/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    instance-of p2, p1, Lb/a/a/c;

    if-eqz p2, :cond_d

    check-cast p1, Lb/a/a/c;

    goto :goto_4

    :cond_d
    new-instance p2, Lb/a/a/c;

    invoke-direct {p2, p1}, Lb/a/a/c;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "...while writing section "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/a/a/c;->a(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-virtual {v2}, Lb/b/h/f;->c()I

    move-result p2

    iget p3, p0, Lb/b/c/c/u;->r:I

    if-ne p2, p3, :cond_11

    invoke-virtual {v2}, Lb/b/h/f;->c()I

    move-result p2

    :try_start_2
    const-string p3, "SHA-1"

    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v0, 0x20

    sub-int/2addr p2, v0

    invoke-virtual {p3, v1, v0, p2}, Ljava/security/MessageDigest;->update([BII)V

    const/16 p2, 0x14

    const/16 v0, 0xc

    :try_start_3
    invoke-virtual {p3, v1, v0, p2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p3
    :try_end_3
    .catch Ljava/security/DigestException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne p3, p2, :cond_10

    invoke-virtual {v2}, Lb/b/h/f;->c()I

    move-result p2

    new-instance p3, Ljava/util/zip/Adler32;

    invoke-direct {p3}, Ljava/util/zip/Adler32;-><init>()V

    sub-int/2addr p2, v0

    invoke-virtual {p3, v1, v0, p2}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {p3}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide p2

    long-to-int p2, p2

    int-to-byte p3, p2

    const/16 v0, 0x8

    aput-byte p3, v1, v0

    const/16 p3, 0x9

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, p3

    const/16 p3, 0xa

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    aput-byte v0, v1, p3

    const/16 p3, 0xb

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, v1, p3

    if-eqz p1, :cond_f

    iget-object p1, p0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    sget-object p2, Lb/b/c/c/ai;->o:Lb/b/c/c/ai;

    const-string p3, "\nmethod code index:\n\n"

    invoke-virtual {p1, v2, p2, p3}, Lb/b/c/c/ar;->a(Lb/b/h/r;Lb/b/c/c/ai;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/b/c/c/u;->t()Lb/b/c/c/ba;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/b/c/c/ba;->a(Lb/b/h/r;)V

    invoke-virtual {v2}, Lb/b/h/f;->h()V

    :cond_f
    return-object v2

    :cond_10
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unexpected digest write: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lb/b/c/c/m;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lb/b/f/d/c;->c(Ljava/lang/String;)Lb/b/f/d/c;

    move-result-object p1

    iget-object v0, p0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    new-instance v1, Lb/b/f/c/ae;

    invoke-direct {v1, p1}, Lb/b/f/c/ae;-><init>(Lb/b/f/d/c;)V

    invoke-virtual {v0, v1}, Lb/b/c/c/n;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    check-cast p1, Lb/b/c/c/m;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .registers 3

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iput p1, p0, Lb/b/c/c/u;->s:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dumpWidth < 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/c/c/m;)V
    .registers 3

    iget-object v0, p0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    invoke-virtual {v0, p1}, Lb/b/c/c/n;->a(Lb/b/c/c/m;)V

    return-void
.end method

.method final a(Lb/b/f/c/a;)V
    .registers 3

    if-eqz p1, :cond_7

    instance-of v0, p1, Lb/b/f/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    check-cast p1, Lb/b/f/c/ad;

    invoke-virtual {v0, p1}, Lb/b/c/c/be;->a(Lb/b/f/c/ad;)Lb/b/c/c/bd;

    return-void

    :cond_0
    instance-of v0, p1, Lb/b/f/c/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    check-cast p1, Lb/b/f/c/ae;

    invoke-virtual {v0, p1}, Lb/b/c/c/bg;->a(Lb/b/f/c/ae;)Lb/b/c/c/bf;

    return-void

    :cond_1
    instance-of v0, p1, Lb/b/f/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    check-cast p1, Lb/b/f/c/f;

    invoke-virtual {v0, p1}, Lb/b/c/c/aq;->a(Lb/b/f/c/f;)Lb/b/c/c/ap;

    return-void

    :cond_2
    instance-of v0, p1, Lb/b/f/c/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    check-cast p1, Lb/b/f/c/n;

    invoke-virtual {v0, p1}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    return-void

    :cond_3
    instance-of v0, p1, Lb/b/f/c/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    check-cast p1, Lb/b/f/c/m;

    invoke-virtual {p1}, Lb/b/f/c/m;->i()Lb/b/f/c/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    return-void

    :cond_4
    instance-of v0, p1, Lb/b/f/c/ab;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    check-cast p1, Lb/b/f/c/ab;

    invoke-virtual {p1}, Lb/b/f/c/ab;->i()Lb/b/f/d/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/c/c/ay;->a(Lb/b/f/d/a;)Lb/b/c/c/ax;

    return-void

    :cond_5
    instance-of v0, p1, Lb/b/f/c/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    check-cast p1, Lb/b/f/c/y;

    invoke-virtual {v0, p1}, Lb/b/c/c/ao;->a(Lb/b/f/c/y;)V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    invoke-virtual {v0}, Lb/b/c/c/n;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/io/Writer;Z)[B
    .registers 5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lb/b/c/c/u;->a(ZZLb/b/c/c/v;)Lb/b/h/f;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lb/b/h/f;->a(Ljava/io/Writer;)V

    :cond_1
    invoke-virtual {p2}, Lb/b/h/f;->a()[B

    move-result-object p1

    return-object p1
.end method

.method final b(Lb/b/f/c/a;)Lb/b/c/c/ag;
    .registers 3

    instance-of v0, p1, Lb/b/f/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    invoke-virtual {v0, p1}, Lb/b/c/c/be;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lb/b/f/c/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    invoke-virtual {v0, p1}, Lb/b/c/c/bg;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lb/b/f/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    invoke-virtual {v0, p1}, Lb/b/c/c/aq;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lb/b/f/c/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    invoke-virtual {v0, p1}, Lb/b/c/c/ac;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lb/b/f/c/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    check-cast p1, Lb/b/f/c/m;

    invoke-virtual {p1}, Lb/b/f/c/m;->i()Lb/b/f/c/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/c/c/ac;->a(Lb/b/f/c/n;)Lb/b/c/c/ab;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lb/b/f/c/ab;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    invoke-virtual {v0, p1}, Lb/b/c/c/ay;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Lb/b/f/c/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    invoke-virtual {v0, p1}, Lb/b/c/c/ao;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lb/b/f/c/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    invoke-virtual {v0, p1}, Lb/b/c/c/i;->a(Lb/b/f/c/a;)Lb/b/c/c/ag;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lcom/gmail/heagoo/b/a/a;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->a:Lcom/gmail/heagoo/b/a/a;

    return-object v0
.end method

.method public final c()I
    .registers 3

    iget v0, p0, Lb/b/c/c/u;->r:I

    if-ltz v0, :cond_0

    iget v0, p0, Lb/b/c/c/u;->r:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final d()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->e:Lb/b/c/c/ar;

    return-object v0
.end method

.method final e()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    return-object v0
.end method

.method final f()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->c:Lb/b/c/c/ar;

    return-object v0
.end method

.method final g()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    return-object v0
.end method

.method final h()Lb/b/c/c/be;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->f:Lb/b/c/c/be;

    return-object v0
.end method

.method public final i()Lb/b/c/c/n;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->k:Lb/b/c/c/n;

    return-object v0
.end method

.method final j()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->l:Lb/b/c/c/ar;

    return-object v0
.end method

.method public final k()Lb/b/c/c/bg;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->g:Lb/b/c/c/bg;

    return-object v0
.end method

.method final l()Lb/b/c/c/ay;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->h:Lb/b/c/c/ay;

    return-object v0
.end method

.method public final m()Lb/b/c/c/ac;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->i:Lb/b/c/c/ac;

    return-object v0
.end method

.method public final n()Lb/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->j:Lb/b/c/c/aq;

    return-object v0
.end method

.method public final o()Lb/b/c/c/ao;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->n:Lb/b/c/c/ao;

    return-object v0
.end method

.method public final p()Lb/b/c/c/i;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->m:Lb/b/c/c/i;

    return-object v0
.end method

.method final q()Lb/b/c/c/ar;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->o:Lb/b/c/c/ar;

    return-object v0
.end method

.method final r()Lb/b/c/c/az;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->b:Lb/b/c/c/ar;

    return-object v0
.end method

.method final s()Lb/b/c/c/az;
    .registers 2

    iget-object v0, p0, Lb/b/c/c/u;->d:Lb/b/c/c/ar;

    return-object v0
.end method

.method public final t()Lb/b/c/c/ba;
    .registers 7

    new-instance v0, Lb/b/c/c/ba;

    invoke-direct {v0}, Lb/b/c/c/ba;-><init>()V

    iget-object v1, p0, Lb/b/c/c/u;->q:[Lb/b/c/c/az;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lb/b/c/c/az;->b()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/c/c/ah;

    invoke-virtual {v0, v5}, Lb/b/c/c/ba;->a(Lb/b/c/c/ah;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
