.class final Lb/b/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lb/b/a/c/k;)Lb/b/f/a/a;
    .registers 8

    invoke-virtual {p0}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/a/c/k;->j()Lb/b/a/d/h;

    move-result-object p0

    invoke-interface {p0}, Lb/b/a/d/h;->a_()I

    move-result v1

    new-instance v2, Lb/b/f/a/a;

    sget-object v3, Lb/b/f/a/b;->d:Lb/b/f/a/b;

    invoke-direct {v2, v0, v3}, Lb/b/f/a/a;-><init>(Lb/b/f/c/ae;Lb/b/f/a/b;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lb/b/a/d/h;->a(I)Lb/b/a/d/g;

    move-result-object v4

    invoke-interface {v4}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object v5

    const-string v6, "AnnotationDefault"

    invoke-interface {v5, v6}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v5

    check-cast v5, Lb/b/a/a/a;

    if-eqz v5, :cond_0

    new-instance v3, Lb/b/f/a/e;

    invoke-interface {v4}, Lb/b/a/d/g;->c()Lb/b/f/c/aa;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/c/aa;->a()Lb/b/f/c/ad;

    move-result-object v4

    invoke-virtual {v5}, Lb/b/a/a/a;->b()Lb/b/f/c/a;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/b/f/a/e;-><init>(Lb/b/f/c/ad;Lb/b/f/c/a;)V

    invoke-virtual {v2, v3}, Lb/b/f/a/a;->b(Lb/b/f/a/e;)V

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v2}, Lb/b/f/a/a;->b_()V

    invoke-static {v2}, Lb/b/c/c/f;->a(Lb/b/f/a/a;)Lb/b/f/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lb/b/a/c/k;Lcom/gmail/heagoo/httpserver/g;)Lb/b/f/a/c;
    .registers 17

    invoke-virtual {p0}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/a/c/k;->k()Lb/b/a/d/b;

    move-result-object v1

    invoke-static {v1}, Lb/b/c/a/a;->a(Lb/b/a/d/b;)Lb/b/f/a/c;

    move-result-object v2

    const-string v3, "EnclosingMethod"

    invoke-interface {v1, v3}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v3

    check-cast v3, Lb/b/a/a/f;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lb/b/a/a/f;->b()Lb/b/f/c/ae;

    move-result-object v5

    invoke-virtual {v3}, Lb/b/a/a/f;->c()Lb/b/f/c/aa;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v5}, Lb/b/c/c/f;->a(Lb/b/f/c/ae;)Lb/b/f/a/a;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v6, Lb/b/f/c/z;

    invoke-direct {v6, v5, v3}, Lb/b/f/c/z;-><init>(Lb/b/f/c/ae;Lb/b/f/c/aa;)V

    invoke-static {v6}, Lb/b/c/c/f;->a(Lb/b/f/c/z;)Lb/b/f/a/a;

    move-result-object v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    :try_start_0
    const-string v8, "InnerClasses"

    invoke-interface {v1, v8}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v1

    check-cast v1, Lb/b/a/a/h;

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v1}, Lb/b/a/a/h;->b()Lb/b/a/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/a/x;->a_()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_6

    invoke-virtual {v1, v10}, Lb/b/a/a/x;->a(I)Lb/b/a/a/y;

    move-result-object v12

    invoke-virtual {v12}, Lb/b/a/a/y;->a()Lb/b/f/c/ae;

    move-result-object v13

    invoke-virtual {v13, v0}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v11, v12

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Lb/b/a/a/y;->b()Lb/b/f/c/ae;

    move-result-object v12

    invoke-virtual {v0, v12}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v13}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v11, :cond_7

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    new-instance v4, Lb/b/f/a/c;

    invoke-direct {v4}, Lb/b/f/a/c;-><init>()V

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lb/b/a/a/y;->c()Lb/b/f/c/ad;

    move-result-object v8

    invoke-virtual {v11}, Lb/b/a/a/y;->d()I

    move-result v10

    invoke-static {v8, v10}, Lb/b/c/c/f;->a(Lb/b/f/c/ad;I)Lb/b/f/a/a;

    move-result-object v8

    invoke-virtual {v4, v8}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    if-eqz v7, :cond_9

    invoke-virtual {v11}, Lb/b/a/a/y;->b()Lb/b/f/c/ae;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v11}, Lb/b/a/a/y;->b()Lb/b/f/c/ae;

    move-result-object v0

    invoke-static {v0}, Lb/b/c/c/f;->a(Lb/b/f/c/ae;)Lb/b/f/a/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    goto :goto_4

    :cond_8
    new-instance v1, Lb/b/h/t;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring InnerClasses attribute for an anonymous inner class\n("

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") that doesn\'t come with an\nassociated EnclosingMethod attribute. This class was probably produced by a\ncompiler that did not target the modern .class file format. The recommended\nsolution is to recompile the class from source, using an up-to-date compiler\nand without specifying any \"-target\" type options. The consequence of ignoring\nthis warning is that reflective operations on this class will incorrectly\nindicate that it is *not* an inner class."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/b/h/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    new-instance v0, Lb/b/f/d/b;

    invoke-direct {v0, v1}, Lb/b/f/d/b;-><init>(I)V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_a

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/f/d/c;

    invoke-virtual {v0, v7, v8}, Lb/b/f/d/b;->a(ILb/b/f/d/c;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lb/b/f/d/b;->b_()V

    invoke-static {v0}, Lb/b/c/c/f;->a(Lb/b/f/d/e;)Lb/b/f/a/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    :cond_b
    invoke-virtual {v4}, Lb/b/f/a/c;->b_()V

    :goto_6
    if-eqz v4, :cond_c

    invoke-static {v2, v4}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/c;)Lb/b/f/a/c;

    move-result-object v0
    :try_end_0
    .catch Lb/b/h/t; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/gmail/heagoo/httpserver/g;->h:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "warning: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/h/t;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    invoke-static {v2, v3}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;

    move-result-object v2

    :cond_d
    invoke-virtual {p0}, Lb/b/a/c/k;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    :cond_e
    if-eqz v5, :cond_f

    invoke-static {p0}, Lb/b/c/a/a;->a(Lb/b/a/c/k;)Lb/b/f/a/a;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v2, v0}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;

    move-result-object v2

    :cond_f
    return-object v2
.end method

.method public static a(Lb/b/a/d/b;)Lb/b/f/a/c;
    .registers 5

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v0}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v0

    check-cast v0, Lb/b/a/a/n;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v1

    check-cast v1, Lb/b/a/a/l;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    sget-object v0, Lb/b/f/a/c;->a:Lb/b/f/a/c;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb/b/a/a/l;->b()Lb/b/f/a/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lb/b/a/a/n;->b()Lb/b/f/a/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lb/b/a/a/n;->b()Lb/b/f/a/c;

    move-result-object v0

    invoke-virtual {v1}, Lb/b/a/a/l;->b()Lb/b/f/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/c;)Lb/b/f/a/c;

    move-result-object v0

    :goto_0
    const-string v1, "Signature"

    invoke-interface {p0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v1

    check-cast v1, Lb/b/a/a/p;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lb/b/a/a/p;->b()Lb/b/f/c/ad;

    move-result-object v1

    invoke-static {v1}, Lb/b/c/c/f;->a(Lb/b/f/c/ad;)Lb/b/f/a/a;

    move-result-object v1

    :goto_1
    const-string v3, "SourceDebugExtension"

    invoke-interface {p0, v3}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p0

    check-cast p0, Lb/b/a/a/q;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lb/b/a/a/q;->b()Lb/b/f/c/ad;

    move-result-object p0

    invoke-static {p0}, Lb/b/c/c/f;->b(Lb/b/f/c/ad;)Lb/b/f/a/a;

    move-result-object v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;

    move-result-object v0

    :cond_5
    if-eqz v2, :cond_6

    invoke-static {v0, v2}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static a(Lb/b/a/d/g;)Lb/b/f/d/e;
    .registers 2

    invoke-interface {p0}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object p0

    const-string v0, "Exceptions"

    invoke-interface {p0, v0}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p0

    check-cast p0, Lb/b/a/a/g;

    if-nez p0, :cond_0

    sget-object p0, Lb/b/f/d/b;->a:Lb/b/f/d/b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/a/g;->b()Lb/b/f/d/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb/b/a/d/g;)Lb/b/f/a/c;
    .registers 3

    invoke-interface {p0}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object v0

    invoke-static {v0}, Lb/b/c/a/a;->a(Lb/b/a/d/b;)Lb/b/f/a/c;

    move-result-object v0

    invoke-static {p0}, Lb/b/c/a/a;->a(Lb/b/a/d/g;)Lb/b/f/d/e;

    move-result-object p0

    invoke-interface {p0}, Lb/b/f/d/e;->a_()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lb/b/c/c/f;->b(Lb/b/f/d/e;)Lb/b/f/a/a;

    move-result-object p0

    invoke-static {v0, p0}, Lb/b/f/a/c;->a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c(Lb/b/a/d/g;)Lb/b/f/a/d;
    .registers 3

    invoke-interface {p0}, Lb/b/a/d/g;->g()Lb/b/a/d/b;

    move-result-object p0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-interface {p0, v0}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object v0

    check-cast v0, Lb/b/a/a/o;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    invoke-interface {p0, v1}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p0

    check-cast p0, Lb/b/a/a/m;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    sget-object p0, Lb/b/f/a/d;->a:Lb/b/f/a/d;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/a/m;->b()Lb/b/f/a/d;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v0}, Lb/b/a/a/o;->b()Lb/b/f/a/d;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lb/b/a/a/o;->b()Lb/b/f/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lb/b/a/a/m;->b()Lb/b/f/a/d;

    move-result-object p0

    invoke-static {v0, p0}, Lb/b/f/a/d;->a(Lb/b/f/a/d;Lb/b/f/a/d;)Lb/b/f/a/d;

    move-result-object p0

    return-object p0
.end method
