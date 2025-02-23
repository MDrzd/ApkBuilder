.class public final Lb/b/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/i;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Lb/b/d/a;

.field private final e:Ljava/io/PrintWriter;

.field private f:Lcom/gmail/heagoo/common/ab;

.field private g:Lb/a/e;


# direct methods
.method public constructor <init>(Lb/a/i;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/b/d/a;

    invoke-direct {v0}, Lb/b/d/a;-><init>()V

    iput-object v0, p0, Lb/b/b/d/a;->d:Lb/b/d/a;

    iput-object p1, p0, Lb/b/b/d/a;->a:Lb/a/i;

    iput-object p4, p0, Lb/b/b/d/a;->e:Ljava/io/PrintWriter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/i;->e()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1}, Lb/a/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v0, p3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p3

    if-ltz p3, :cond_4

    iget-object v0, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p3}, Lb/b/b/d/a;->b(Lb/a/i;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    invoke-static {p1, v1, p3}, Lb/b/b/d/a;->a(Lb/a/i;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lb/b/b/d/a;->d:Lb/b/d/a;

    new-instance p3, Lb/b/b/d/b;

    invoke-direct {p3, p0, p4, p1}, Lb/b/b/d/b;-><init>(Lb/b/b/d/a;Ljava/io/PrintWriter;Lb/a/i;)V

    invoke-virtual {p2, p3}, Lb/b/d/a;->d(Lb/b/d/c;)V

    iget-object p2, p0, Lb/b/b/d/a;->d:Lb/b/d/a;

    new-instance p3, Lb/b/b/d/c;

    invoke-direct {p3, p0, p4, p1}, Lb/b/b/d/c;-><init>(Lb/b/b/d/a;Ljava/io/PrintWriter;Lb/a/i;)V

    invoke-virtual {p2, p3}, Lb/b/d/a;->e(Lb/b/d/c;)V

    return-void

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    iput-object p1, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    return-void
.end method

.method private static a(Lb/a/i;Ljava/util/Set;I)Ljava/util/Set;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lb/a/i;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/w;

    invoke-virtual {v2}, Lb/a/w;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lb/a/w;->a()I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lb/b/b/d/a;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v0}, Lb/a/i;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lb/b/b/d/a;->f:Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lb/b/b/d/a;->g:Lb/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v1}, Lb/a/i;->j()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lb/b/b/d/a;->g:Lb/a/e;

    invoke-virtual {v2}, Lb/a/e;->a()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v0}, Lb/a/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/aa;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lb/b/b/d/a;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lb/b/b/d/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lb/a/i;Ljava/util/Set;I)Ljava/util/Set;
    .registers 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lb/a/i;->k()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/common/ab;

    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->e()[S

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_0

    aget-short v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lb/a/i;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/aa;

    invoke-virtual {v1}, Lb/a/aa;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lb/a/aa;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object p3
.end method

.method static synthetic c(Lb/b/b/d/a;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 11

    iget-object v0, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v0}, Lb/a/i;->k()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gmail/heagoo/common/ab;

    iput-object v1, p0, Lb/b/b/d/a;->f:Lcom/gmail/heagoo/common/ab;

    iput-object v2, p0, Lb/b/b/d/a;->g:Lb/a/e;

    invoke-virtual {v1}, Lcom/gmail/heagoo/common/ab;->i()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v2, v1}, Lb/a/i;->a(Lcom/gmail/heagoo/common/ab;)Lb/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/c;->e()[Lb/a/d;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lb/a/d;->a()I

    move-result v6

    iget-object v7, p0, Lb/b/b/d/a;->c:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lb/b/b/d/a;->e:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lb/b/b/d/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " field declared "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v9}, Lb/a/i;->i()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lb/a/c;->f()[Lb/a/e;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v3, v1, v4

    iput-object v3, p0, Lb/b/b/d/a;->g:Lb/a/e;

    invoke-virtual {v3}, Lb/a/e;->a()I

    move-result v5

    iget-object v6, p0, Lb/b/b/d/a;->b:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lb/b/b/d/a;->e:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lb/b/b/d/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " method declared "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v8}, Lb/a/i;->j()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lb/a/e;->c()I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lb/b/b/d/a;->d:Lb/b/d/a;

    iget-object v6, p0, Lb/b/b/d/a;->a:Lb/a/i;

    invoke-virtual {v6, v3}, Lb/a/i;->a(Lb/a/e;)Lb/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/f;->e()[S

    move-result-object v3

    invoke-static {v3}, Lb/b/d/a/e;->a([S)[Lb/b/d/a/e;

    move-result-object v3

    invoke-virtual {v5, v3}, Lb/b/d/a;->a([Lb/b/d/a/e;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    iput-object v2, p0, Lb/b/b/d/a;->f:Lcom/gmail/heagoo/common/ab;

    iput-object v2, p0, Lb/b/b/d/a;->g:Lb/a/e;

    :cond_7
    :goto_2
    return-void
.end method
