.class Lb/b/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/c/h;


# instance fields
.field private final a:Lb/b/b/a/d;

.field private b:Ljava/util/HashSet;

.field private c:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lb/b/b/a/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/b/b/a/a;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/b/b/a/a;->c:Ljava/util/HashSet;

    iput-object p1, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    return-void
.end method

.method private a(Lb/b/a/c/k;)V
    .registers 6

    iget-object v0, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v0, v0, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/b/a/f;

    sget-object v2, Lb/b/b/a/b;->a:[I

    invoke-virtual {v1}, Lb/b/b/a/f;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lb/b/b/a/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V
    .registers 7

    iget-object v0, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v0, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Lb/b/a/a/t;->b()Lb/b/f/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/a/c;->g()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/a;

    invoke-virtual {v1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v2, v2, Lb/b/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v1, v1, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/b/a/f;

    sget-object v3, Lb/b/b/a/b;->a:[I

    invoke-virtual {v2}, Lb/b/b/a/f;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x2e

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lb/b/b/a/a;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V
    .registers 5

    iget-object v0, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v0, v0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    sget-object v1, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lb/b/a/a/t;->b()Lb/b/f/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/a/c;->g()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/a;

    invoke-virtual {v0}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v1, v1, Lb/b/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lb/b/b/a/a;->a(Lb/b/a/c/k;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .registers 7

    iget-object v0, p0, Lb/b/b/a/a;->a:Lb/b/b/a/d;

    iget-object v0, v0, Lb/b/b/a/d;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lb/b/a/c/d;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5, p0}, Lb/b/a/c/d;-><init>(Ljava/lang/String;ZLb/b/a/c/h;)V

    invoke-virtual {v4}, Lb/b/a/c/d;->a()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ljava/lang/String;J[B)Z
    .registers 8

    const-string p2, ".class"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    new-instance p2, Lb/b/h/c;

    invoke-direct {p2, p4}, Lb/b/h/c;-><init>([B)V

    new-instance p4, Lb/b/a/c/k;

    invoke-direct {p4, p2, p1, p3}, Lb/b/a/c/k;-><init>(Lb/b/h/c;Ljava/lang/String;Z)V

    sget-object p1, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {p4, p1}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    invoke-virtual {p4}, Lb/b/a/c/k;->k()Lb/b/a/d/b;

    move-result-object p1

    invoke-virtual {p4}, Lb/b/a/c/k;->e()Lb/b/f/c/ae;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/c/ae;->i()Lb/b/f/d/c;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/f/d/c;->g()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package-info"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "RuntimeInvisibleAnnotations"

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Lb/b/a/a/t;

    invoke-static {p0, p4, v0}, Lb/b/b/a/a;->a(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "RuntimeVisibleAnnotations"

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_9

    move-object v0, p2

    check-cast v0, Lb/b/a/a/t;

    invoke-static {p0, p4, v0}, Lb/b/b/a/a;->a(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object v0, p2

    :cond_3
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/b/b/a/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_8

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const-string p2, ""

    goto :goto_3

    :cond_5
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :goto_3
    iget-object v0, p0, Lb/b/b/a/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_6

    :cond_6
    const-string p2, "RuntimeInvisibleAnnotations"

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p2

    :goto_4
    if-eqz p2, :cond_7

    move-object v0, p2

    check-cast v0, Lb/b/a/a/t;

    invoke-static {p0, p4, v0}, Lb/b/b/a/a;->b(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p2

    goto :goto_4

    :cond_7
    const-string p2, "RuntimeVisibleAnnotations"

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Ljava/lang/String;)Lb/b/a/d/a;

    move-result-object p2

    :goto_5
    if-eqz p2, :cond_9

    move-object v0, p2

    check-cast v0, Lb/b/a/a/t;

    invoke-static {p0, p4, v0}, Lb/b/b/a/a;->b(Lb/b/b/a/a;Lb/b/a/c/k;Lb/b/a/a/t;)V

    invoke-interface {p1, p2}, Lb/b/a/d/b;->a(Lb/b/a/d/a;)Lb/b/a/d/a;

    move-result-object p2

    goto :goto_5

    :cond_8
    :goto_6
    invoke-direct {p0, p4}, Lb/b/b/a/a;->a(Lb/b/a/c/k;)V

    :cond_9
    return p3
.end method
