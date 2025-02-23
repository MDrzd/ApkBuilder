.class public final Lb/b/b/c/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/b/b/c/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/b/c/a;

    invoke-direct {v0}, Lb/b/b/c/a;-><init>()V

    iput-object v0, p0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lb/b/b/c/f;

    invoke-direct {v0}, Lb/b/b/c/f;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_b

    aget-object v3, p0, v2

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "--bytes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->b:Z

    goto/16 :goto_1

    :cond_0
    const-string v5, "--basic-blocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->c:Z

    goto/16 :goto_1

    :cond_1
    const-string v5, "--rop-blocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->d:Z

    goto/16 :goto_1

    :cond_2
    const-string v5, "--optimize"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->g:Z

    goto/16 :goto_1

    :cond_3
    const-string v5, "--ssa-blocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->e:Z

    goto/16 :goto_1

    :cond_4
    const-string v5, "--ssa-step="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x3d

    if-eqz v5, :cond_5

    iget-object v5, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lb/b/b/c/a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v5, "--debug"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->a:Z

    goto :goto_1

    :cond_6
    const-string v5, "--dot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->j:Z

    goto :goto_1

    :cond_7
    const-string v5, "--strict"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v4, v3, Lb/b/b/c/a;->h:Z

    goto :goto_1

    :cond_8
    const-string v5, "--width="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lb/b/b/c/a;->i:I

    goto :goto_1

    :cond_9
    const-string v5, "--method="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-object v3, v4, Lb/b/b/c/a;->k:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "usage"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    array-length v3, p0

    if-eq v2, v3, :cond_13

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_12

    :try_start_0
    aget-object v3, p0, v2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reading "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, La/a/a;->a(Ljava/io/File;)[B

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_c

    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lb/b/a/d/i; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v6}, La/a/a;->g(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "shouldn\'t happen"

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_c
    :goto_3
    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iget-boolean v6, v6, Lb/b/b/c/a;->j:Z

    if-eqz v6, :cond_d

    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v5, v3, v6}, Lb/b/b/c/e;->a([BLjava/lang/String;Lb/b/b/c/a;)V

    goto :goto_4

    :cond_d
    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iget-boolean v6, v6, Lb/b/b/c/a;->c:Z

    if-eqz v6, :cond_e

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v5, v6, v3, v1, v7}, Lb/b/b/c/c;->a([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V

    goto :goto_4

    :cond_e
    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iget-boolean v6, v6, Lb/b/b/c/a;->d:Z

    if-eqz v6, :cond_f

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v5, v6, v3, v4, v7}, Lb/b/b/c/c;->a([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V

    goto :goto_4

    :cond_f
    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iget-boolean v6, v6, Lb/b/b/c/a;->e:Z

    if-eqz v6, :cond_10

    iget-object v6, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iput-boolean v1, v6, Lb/b/b/c/a;->g:Z

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v5, v6, v3, v7}, Lb/b/b/c/g;->a([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V

    goto :goto_4

    :cond_10
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v7, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    invoke-static {v5, v6, v3, v7}, Lb/b/b/c/d;->a([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    :try_end_2
    .catch Lb/b/a/d/i; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "\ntrouble parsing:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, v0, Lb/b/b/c/f;->a:Lb/b/b/c/a;

    iget-boolean v5, v5, Lb/b/b/c/a;->a:Z

    if-eqz v5, :cond_11

    invoke-virtual {v3}, Lb/b/a/d/i;->printStackTrace()V

    goto :goto_4

    :cond_11
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v5}, Lb/b/a/d/i;->a(Ljava/io/PrintStream;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_12
    return-void

    :cond_13
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "no input files specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "usage"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
