.class public final Lb/b/b/c/g;
.super Lb/b/b/c/c;


# direct methods
.method private constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lb/b/b/c/c;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLb/b/b/c/a;)V

    return-void
.end method

.method public static a([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V
    .registers 5

    new-instance v0, Lb/b/b/c/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/b/b/c/g;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lb/b/b/c/a;)V

    invoke-virtual {v0}, Lb/b/b/c/g;->e()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/h/c;Ljava/lang/String;Lb/b/a/d/f;)V
    .registers 13

    instance-of v0, p3, Lb/b/a/d/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lb/b/b/c/g;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Lb/b/a/d/f;->f()I

    move-result p2

    and-int/lit16 p2, p2, 0x500

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Lb/b/a/b/n;

    check-cast p3, Lb/b/a/d/g;

    iget-object v0, p0, Lb/b/b/c/g;->c:Lb/b/a/c/k;

    const/4 v1, 0x1

    invoke-direct {p2, p3, v0, v1, v1}, Lb/b/a/b/n;-><init>(Lb/b/a/d/g;Lb/b/a/d/c;ZZ)V

    sget-object v6, Lb/b/f/b/f;->a:Lb/b/f/b/f;

    iget-object p3, p0, Lb/b/b/c/g;->c:Lb/b/a/c/k;

    invoke-virtual {p3}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object p3

    iget-object v0, p0, Lb/b/b/c/g;->b:Lcom/gmail/heagoo/b/a/a;

    invoke-static {p2, v6, p3, v0}, Lb/b/a/b/z;->a(Lb/b/a/b/n;Lb/b/f/b/ad;Lb/b/a/d/h;Lcom/gmail/heagoo/b/a/a;)Lcom/gmail/heagoo/pngeditor/j;

    move-result-object v2

    const/4 p3, 0x0

    invoke-virtual {p2}, Lb/b/a/b/n;->f()I

    move-result v0

    invoke-static {v0}, La/a/a;->i(I)Z

    move-result v4

    invoke-static {p2}, Lb/b/b/c/g;->a(Lb/b/a/b/n;)I

    move-result v3

    iget-object p2, p0, Lb/b/b/c/g;->a:Lb/b/b/c/a;

    iget-object p2, p2, Lb/b/b/c/a;->f:Ljava/lang/String;

    if-nez p2, :cond_3

    const/4 v5, 0x1

    const-class p2, Lb/b/g/z;

    invoke-static {p2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lb/b/g/y;->a(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;Ljava/util/EnumSet;)Lb/b/g/al;

    move-result-object p3

    goto :goto_0

    :cond_3
    const-string p2, "edge-split"

    iget-object v0, p0, Lb/b/b/c/g;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {v2, v3, v4, v1, v6}, Lb/b/g/y;->b(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;

    move-result-object p3

    goto :goto_0

    :cond_4
    const-string p2, "phi-placement"

    iget-object v0, p0, Lb/b/b/c/g;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v2, v3, v4, v1, v6}, Lb/b/g/y;->c(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;

    move-result-object p3

    goto :goto_0

    :cond_5
    const-string p2, "renaming"

    iget-object v0, p0, Lb/b/b/c/g;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v2, v3, v4, v1, v6}, Lb/b/g/y;->d(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;

    move-result-object p3

    goto :goto_0

    :cond_6
    const-string p2, "dead-code"

    iget-object v0, p0, Lb/b/b/c/g;->a:Lb/b/b/c/a;

    iget-object v0, v0, Lb/b/b/c/a;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {v2, v3, v4, v1, v6}, Lb/b/g/y;->e(Lcom/gmail/heagoo/pngeditor/j;IZZLb/b/f/b/ad;)Lb/b/g/al;

    move-result-object p3

    :cond_7
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x7d0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "first "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/b/g/al;->c()I

    move-result v0

    invoke-virtual {p3, v0}, Lb/b/g/al;->a(I)I

    move-result v0

    invoke-static {v0}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/b/g/al;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    sget-object v3, Lb/b/g/af;->a:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/g/af;

    const-string v5, "block "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/g/af;->f()I

    move-result v5

    invoke-static {v5}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/g/af;->g()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    :goto_2
    if-ltz v6, :cond_8

    const-string v7, "  pred "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Lb/b/g/al;->a(I)I

    move-result v7

    invoke-static {v7}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v6

    goto :goto_2

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  live in:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb/b/g/af;->p()Lb/b/h/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/g/af;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/g/aj;

    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lb/b/g/aj;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lb/b/g/af;->h()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-nez v5, :cond_a

    const-string v4, "  returns\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lb/b/g/af;->k()I

    move-result v5

    invoke-virtual {v3}, Lb/b/g/af;->m()Lb/b/h/k;

    move-result-object v6

    invoke-virtual {v6}, Lb/b/h/k;->f()I

    move-result v7

    :goto_4
    if-ge v4, v7, :cond_c

    const-string v8, "  next "

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Lb/b/h/k;->b(I)I

    move-result v8

    invoke-static {v8}, La/a/a;->p(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v7, v1, :cond_b

    invoke-virtual {v6, v4}, Lb/b/h/k;->b(I)I

    move-result v8

    if-ne v5, v8, :cond_b

    const-string v8, " *"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  live out:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lb/b/g/af;->q()Lb/b/h/l;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    iput-boolean v4, p0, Lb/b/b/c/g;->d:Z

    invoke-virtual {p1}, Lb/b/h/c;->a()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v4, p3, p2}, Lb/b/b/c/g;->a(Lb/b/h/c;IILjava/lang/String;)V

    iput-boolean v1, p0, Lb/b/b/c/g;->d:Z

    return-void
.end method
