.class public final Lb/b/a/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/d/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lb/b/h/c;

.field private final c:Z

.field private d:Lb/b/f/c/af;

.field private e:I

.field private f:Lb/b/f/c/ae;

.field private g:Lb/b/f/c/ae;

.field private h:Lb/b/f/d/e;

.field private i:Lb/b/a/d/e;

.field private j:Lb/b/a/d/h;

.field private k:Lb/b/a/d/k;

.field private l:Lb/b/a/c/b;

.field private m:Lb/b/a/d/j;


# direct methods
.method public constructor <init>(Lb/b/h/c;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    iput-object p1, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    iput-boolean p3, p0, Lb/b/a/c/k;->c:Z

    const/4 p1, -0x1

    iput p1, p0, Lb/b/a/c/k;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "filePath == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;Z)V
    .registers 5

    new-instance v0, Lb/b/h/c;

    invoke-direct {v0, p1}, Lb/b/h/c;-><init>([B)V

    invoke-direct {p0, v0, p2, p3}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_0

    const-string p0, "(none)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(I)Z
    .registers 2

    const v0, -0x35014542    # -8346975.0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(II)Z
    .registers 4

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    const/16 v1, 0x35

    if-ne p1, v1, :cond_0

    if-gtz p0, :cond_1

    return v0

    :cond_0
    if-ge p1, v1, :cond_1

    const/16 p0, 0x2d

    if-lt p1, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private n()I
    .registers 3

    iget-object v0, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/h/c;->d(I)I

    move-result v0

    return v0
.end method

.method private o()I
    .registers 3

    iget-object v0, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lb/b/h/c;->g(I)I

    move-result v0

    return v0
.end method

.method private p()I
    .registers 3

    iget-object v0, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lb/b/h/c;->g(I)I

    move-result v0

    return v0
.end method

.method private q()V
    .registers 3

    iget v0, p0, Lb/b/a/c/k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lb/b/a/c/k;->s()V

    :cond_0
    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lb/b/a/c/k;->k:Lb/b/a/d/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/b/a/c/k;->s()V

    :cond_0
    return-void
.end method

.method private s()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lb/b/a/c/k;->t()V
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lb/b/a/d/i;

    invoke-direct {v1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/d/i;->a(Ljava/lang/String;)V

    throw v0
.end method

.method private t()V
    .registers 14

    iget-object v0, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    invoke-virtual {v0}, Lb/b/h/c;->a()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    const-string v5, "begin classfile"

    invoke-interface {v0, v4, v2, v2, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "magic: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/a/c/k;->n()I

    move-result v6

    invoke-static {v6}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v0, v4, v2, v6, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "minor_version: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/a/c/k;->o()I

    move-result v7

    invoke-static {v7}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v6, v3, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "major_version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/a/c/k;->p()I

    move-result v6

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v1, v3, v5}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lb/b/a/c/k;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lb/b/a/c/k;->n()I

    move-result v0

    invoke-static {v0}, Lb/b/a/c/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lb/b/a/c/k;->o()I

    move-result v0

    invoke-direct {p0}, Lb/b/a/c/k;->p()I

    move-result v4

    invoke-static {v0, v4}, Lb/b/a/c/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lb/b/a/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported class file version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/a/c/k;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lb/b/a/c/k;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lb/b/a/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad class file magic ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lb/b/a/c/k;->n()I

    move-result v2

    invoke-static {v2}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    new-instance v0, Lcom/gmail/heagoo/common/af;

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    invoke-direct {v0, v4}, Lcom/gmail/heagoo/common/af;-><init>(Lb/b/h/c;)V

    iget-object v4, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    invoke-virtual {v0, v4}, Lcom/gmail/heagoo/common/af;->a(Lb/b/a/d/j;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/af;->b()Lb/b/f/c/af;

    move-result-object v4

    iput-object v4, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    iget-object v4, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    invoke-virtual {v4}, Lb/b/f/c/af;->b_()V

    invoke-virtual {v0}, Lcom/gmail/heagoo/common/af;->a()I

    move-result v0

    iget-object v4, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    invoke-virtual {v4, v0}, Lb/b/h/c;->g(I)I

    move-result v4

    iget-object v5, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v5, v6}, Lb/b/h/c;->g(I)I

    move-result v5

    iget-object v7, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    invoke-virtual {v7, v5}, Lb/b/f/c/af;->a(I)Lb/b/f/c/a;

    move-result-object v5

    check-cast v5, Lb/b/f/c/ae;

    iput-object v5, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    iget-object v5, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    add-int/lit8 v7, v0, 0x4

    invoke-virtual {v5, v7}, Lb/b/h/c;->g(I)I

    move-result v5

    iget-object v8, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    invoke-virtual {v8, v5}, Lb/b/f/c/af;->b(I)Lb/b/f/c/a;

    move-result-object v5

    check-cast v5, Lb/b/f/c/ae;

    iput-object v5, p0, Lb/b/a/c/k;->g:Lb/b/f/c/ae;

    iget-object v5, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    add-int/lit8 v8, v0, 0x6

    invoke-virtual {v5, v8}, Lb/b/h/c;->g(I)I

    move-result v5

    iget-object v9, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v10, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "access_flags: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, La/a/a;->d(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v0, v3, v11}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v9, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v10, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "this_class: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v6, v3, v11}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v6, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v9, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "super_class: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lb/b/a/c/k;->g:Lb/b/f/c/ae;

    invoke-static {v11}, Lb/b/a/c/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v7, v3, v10}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    iget-object v6, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v7, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "interfaces_count: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v3, v9}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    if-eqz v5, :cond_4

    iget-object v3, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v6, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    add-int/lit8 v7, v0, 0x8

    const-string v8, "interfaces:"

    invoke-interface {v3, v6, v7, v2, v8}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0, v5}, Lb/b/a/c/k;->a(II)Lb/b/f/d/e;

    move-result-object v3

    iput-object v3, p0, Lb/b/a/c/k;->h:Lb/b/f/d/e;

    shl-int/lit8 v3, v5, 0x1

    add-int/2addr v0, v3

    iget-boolean v3, p0, Lb/b/a/c/k;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    invoke-virtual {v3}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Lb/b/a/d/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class name ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") does not match path ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iput v4, p0, Lb/b/a/c/k;->e:I

    new-instance v1, Lb/b/a/c/m;

    iget-object v3, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    iget-object v4, p0, Lb/b/a/c/k;->l:Lb/b/a/c/b;

    invoke-direct {v1, p0, v3, v0, v4}, Lb/b/a/c/m;-><init>(Lb/b/a/c/k;Lb/b/f/c/ae;ILb/b/a/c/b;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    invoke-virtual {v1, v0}, Lb/b/a/c/m;->a(Lb/b/a/d/j;)V

    invoke-virtual {v1}, Lb/b/a/c/m;->a()Lb/b/a/d/m;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/c/k;->i:Lb/b/a/d/e;

    invoke-virtual {v1}, Lb/b/a/c/m;->d()I

    move-result v0

    new-instance v1, Lb/b/a/c/o;

    iget-object v3, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    iget-object v4, p0, Lb/b/a/c/k;->l:Lb/b/a/c/b;

    invoke-direct {v1, p0, v3, v0, v4}, Lb/b/a/c/o;-><init>(Lb/b/a/c/k;Lb/b/f/c/ae;ILb/b/a/c/b;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    invoke-virtual {v1, v0}, Lb/b/a/c/o;->a(Lb/b/a/d/j;)V

    invoke-virtual {v1}, Lb/b/a/c/o;->a()Lb/b/a/d/p;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/c/k;->j:Lb/b/a/d/h;

    invoke-virtual {v1}, Lb/b/a/c/o;->d()I

    move-result v0

    new-instance v1, Lb/b/a/c/c;

    iget-object v3, p0, Lb/b/a/c/k;->l:Lb/b/a/c/b;

    invoke-direct {v1, p0, v2, v0, v3}, Lb/b/a/c/c;-><init>(Lb/b/a/c/k;IILb/b/a/c/b;)V

    iget-object v0, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    invoke-virtual {v1, v0}, Lb/b/a/c/c;->a(Lb/b/a/d/j;)V

    invoke-virtual {v1}, Lb/b/a/c/c;->b()Lb/b/a/d/k;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/c/k;->k:Lb/b/a/d/k;

    iget-object v0, p0, Lb/b/a/c/k;->k:Lb/b/a/d/k;

    invoke-virtual {v0}, Lb/b/a/d/k;->b_()V

    invoke-virtual {v1}, Lb/b/a/c/c;->a()I

    move-result v0

    iget-object v1, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    invoke-virtual {v1}, Lb/b/h/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    iget-object v3, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    const-string v4, "end classfile"

    invoke-interface {v1, v3, v0, v2, v4}, Lb/b/a/d/j;->a(Lb/b/h/c;IILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    new-instance v1, Lb/b/a/d/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extra bytes at end of class file, at offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Lb/b/a/d/i;

    const-string v1, "severely truncated class file"

    invoke-direct {v0, v1}, Lb/b/a/d/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(II)Lb/b/f/d/e;
    .registers 10

    if-nez p2, :cond_0

    sget-object p1, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    if-eqz v0, :cond_1

    new-instance v0, Lb/b/a/c/l;

    iget-object v2, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    iget-object v5, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    iget-object v6, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    move-object v1, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lb/b/a/c/l;-><init>(Lb/b/h/c;IILb/b/f/c/af;Lb/b/a/d/j;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "pool not yet initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/b/a/c/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lb/b/a/c/b;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/b/a/c/k;->l:Lb/b/a/c/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "attributeFactory == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lb/b/a/d/j;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/c/k;->m:Lb/b/a/d/j;

    return-void
.end method

.method public final b()Lb/b/h/c;
    .registers 2

    iget-object v0, p0, Lb/b/a/c/k;->b:Lb/b/h/c;

    return-object v0
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    invoke-direct {p0}, Lb/b/a/c/k;->n()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    iget v0, p0, Lb/b/a/c/k;->e:I

    return v0
.end method

.method public final e()Lb/b/f/c/ae;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    iget-object v0, p0, Lb/b/a/c/k;->f:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final f()Lb/b/f/c/ae;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    iget-object v0, p0, Lb/b/a/c/k;->g:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final g()Lb/b/f/c/b;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    iget-object v0, p0, Lb/b/a/c/k;->d:Lb/b/f/c/af;

    return-object v0
.end method

.method public final h()Lb/b/f/d/e;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->q()V

    iget-object v0, p0, Lb/b/a/c/k;->h:Lb/b/f/d/e;

    return-object v0
.end method

.method public final i()Lb/b/a/d/e;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->r()V

    iget-object v0, p0, Lb/b/a/c/k;->i:Lb/b/a/d/e;

    return-object v0
.end method

.method public final j()Lb/b/a/d/h;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->r()V

    iget-object v0, p0, Lb/b/a/c/k;->j:Lb/b/a/d/h;

    return-object v0
.end method

.method public final k()Lb/b/a/d/b;
    .registers 2

    invoke-direct {p0}, Lb/b/a/c/k;->r()V

    iget-object v0, p0, Lb/b/a/c/k;->k:Lb/b/a/d/k;

    return-object v0
.end method

.method public final l()Lb/b/a/b/d;
    .registers 3

    invoke-virtual {p0}, Lb/b/a/c/k;->k()Lb/b/a/d/b;

    move-result-object v0

    const-string v1, "BootstrapMethods"

    invoke-interface {v0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v0

    check-cast v0, Lb/b/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/a/a/b;->b()Lb/b/a/b/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lb/b/a/b/d;->a:Lb/b/a/b/d;

    return-object v0
.end method

.method public final m()Lb/b/f/c/ad;
    .registers 3

    invoke-virtual {p0}, Lb/b/a/c/k;->k()Lb/b/a/d/b;

    move-result-object v0

    const-string v1, "SourceFile"

    invoke-interface {v0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v0

    instance-of v1, v0, Lb/b/a/a/r;

    if-eqz v1, :cond_0

    check-cast v0, Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->b()Lb/b/f/c/ad;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
