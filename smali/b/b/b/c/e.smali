.class public final Lb/b/b/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/d/j;


# instance fields
.field private a:Lb/b/a/c/k;

.field private final b:[B

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Lb/b/b/c/a;

.field private final g:Lcom/gmail/heagoo/b/a/a;


# direct methods
.method private constructor <init>([BLjava/lang/String;Lb/b/b/c/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/b/c/e;->b:[B

    iput-object p2, p0, Lb/b/b/c/e;->c:Ljava/lang/String;

    iget-boolean p1, p3, Lb/b/b/c/a;->h:Z

    iput-boolean p1, p0, Lb/b/b/c/e;->d:Z

    iget-boolean p1, p3, Lb/b/b/c/a;->g:Z

    iput-boolean p1, p0, Lb/b/b/c/e;->e:Z

    iput-object p3, p0, Lb/b/b/c/e;->f:Lb/b/b/c/a;

    new-instance p1, Lcom/gmail/heagoo/b/a/a;

    invoke-direct {p1}, Lcom/gmail/heagoo/b/a/a;-><init>()V

    iput-object p1, p0, Lb/b/b/c/e;->g:Lcom/gmail/heagoo/b/a/a;

    return-void
.end method

.method static a([BLjava/lang/String;Lb/b/b/c/a;)V
    .registers 5

    new-instance v0, Lb/b/b/c/e;

    invoke-direct {v0, p0, p1, p2}, Lb/b/b/c/e;-><init>([BLjava/lang/String;Lb/b/b/c/a;)V

    new-instance p0, Lb/b/h/c;

    iget-object p1, v0, Lb/b/b/c/e;->b:[B

    invoke-direct {p0, p1}, Lb/b/h/c;-><init>([B)V

    new-instance p1, Lb/b/a/c/k;

    iget-object p2, v0, Lb/b/b/c/e;->c:Ljava/lang/String;

    iget-boolean v1, v0, Lb/b/b/c/e;->d:Z

    invoke-direct {p1, p0, p2, v1}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    iput-object p1, v0, Lb/b/b/c/e;->a:Lb/b/a/c/k;

    iget-object p1, v0, Lb/b/b/c/e;->a:Lb/b/a/c/k;

    sget-object p2, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {p1, p2}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    iget-object p1, v0, Lb/b/b/c/e;->a:Lb/b/a/c/k;

    invoke-virtual {p1}, Lb/b/a/c/k;->c()I

    new-instance p1, Lb/b/a/c/k;

    iget-object p2, v0, Lb/b/b/c/e;->c:Ljava/lang/String;

    iget-boolean v1, v0, Lb/b/b/c/e;->d:Z

    invoke-direct {p1, p0, p2, v1}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    sget-object p0, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {p1, p0}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    invoke-virtual {p1, v0}, Lb/b/a/c/k;->a(Lb/b/a/d/j;)V

    invoke-virtual {p1}, Lb/b/a/c/k;->c()I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final a(Lb/b/h/c;IILjava/lang/String;)V
    .registers 5

    return-void
.end method

.method public final a(Lb/b/h/c;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public final a(Lb/b/h/c;Ljava/lang/String;Lb/b/a/d/f;)V
    .registers 14

    instance-of p1, p3, Lb/b/a/d/g;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lb/b/b/c/e;->f:Lb/b/b/c/a;

    iget-object p1, p1, Lb/b/b/c/a;->k:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/b/b/c/e;->f:Lb/b/b/c/a;

    iget-object p1, p1, Lb/b/b/c/a;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lb/b/a/b/n;

    check-cast p3, Lb/b/a/d/g;

    iget-object v2, p0, Lb/b/b/c/e;->a:Lb/b/a/c/k;

    invoke-direct {p1, p3, v2, v1, v1}, Lb/b/a/b/n;-><init>(Lb/b/a/d/g;Lb/b/a/d/c;ZZ)V

    sget-object p3, Lb/b/f/b/f;->a:Lb/b/f/b/f;

    iget-object v2, p0, Lb/b/b/c/e;->a:Lb/b/a/c/k;

    invoke-virtual {v2}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object v2

    iget-object v3, p0, Lb/b/b/c/e;->g:Lcom/gmail/heagoo/b/a/a;

    invoke-static {p1, p3, v2, v3}, Lb/b/a/b/z;->a(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v2

    iget-boolean v3, p0, Lb/b/b/c/e;->e:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lb/b/a/b/n;->f()I

    move-result v3

    invoke-static {v3}, La/a/a;->i(I)Z

    move-result v3

    invoke-static {p1}, Lb/b/b/c/b;->a(Lb/b/a/b/n;)I

    move-result p1

    invoke-static {v2, p1, v3, v1, p3}, Lb/b/g/y;->a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v2

    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "digraph "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "{"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\tfirst -> n"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gmail/heagoo/pngeditor/j;->b()I

    move-result p3

    invoke-static {p3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/gmail/heagoo/pngeditor/j;->a()Lb/b/f/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/b/c;->a_()I

    move-result p2

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p2, :cond_9

    invoke-virtual {p1, p3}, Lb/b/f/b/c;->a(I)Lb/b/f/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/b/a;->a()I

    move-result v3

    invoke-virtual {v2}, Lb/b/f/b/a;->c()Lb/b/h/k;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v5

    if-nez v5, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\tn"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> returns;"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v5

    if-ne v5, v1, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tn"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Lb/b/h/k;->b(I)I

    move-result v3

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\tn"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4}, Lb/b/h/k;->f()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v4, v5}, Lb/b/h/k;->b(I)I

    move-result v6

    invoke-virtual {v2}, Lb/b/f/b/a;->d()I

    move-result v7

    if-eq v6, v7, :cond_7

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "};"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tn"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lb/b/f/b/a;->d()I

    move-result v2

    invoke-static {v2}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [label=\"primary\"];"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_2

    :cond_9
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
