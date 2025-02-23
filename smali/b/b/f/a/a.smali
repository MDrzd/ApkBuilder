.class public final Lb/b/f/a/a;
.super Lcom/gmail/heagoo/pngeditor/n;

# interfaces
.implements Lb/b/h/s;
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lb/b/f/c/ae;

.field private final b:Lb/b/f/a/b;

.field private final c:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lb/b/f/c/ae;Lb/b/f/a/b;)V
    .registers 3

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/n;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    iput-object p2, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "visibility == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/a/a;)I
    .registers 5

    iget-object v0, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    iget-object v1, p1, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    invoke-virtual {v0, v1}, Lb/b/f/c/ae;->a(Lb/b/f/c/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    iget-object v1, p1, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    invoke-virtual {v0, v1}, Lb/b/f/a/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/e;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/e;

    invoke-virtual {v1, v2}, Lb/b/f/a/e;->a(Lb/b/f/a/e;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lb/b/f/a/e;)V
    .registers 4

    invoke-virtual {p0}, Lb/b/f/a/a;->d()V

    iget-object v0, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lb/b/f/a/e;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/f/a/a;->d()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v0

    iget-object v1, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pair == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/a/a;

    invoke-virtual {p0, p1}, Lb/b/f/a/a;->a(Lb/b/f/a/a;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lb/b/f/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb/b/f/a/a;

    iget-object v0, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    iget-object v2, p1, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    invoke-virtual {v0, v2}, Lb/b/f/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    iget-object v2, p1, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    iget-object p1, p1, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lb/b/f/c/ae;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    return-object v0
.end method

.method public final g()Lb/b/f/a/b;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    invoke-virtual {v1}, Lb/b/f/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    invoke-virtual {v1}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/e;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Lb/b/f/a/e;->a()Lb/b/f/c/ad;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/f/c/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/b/f/a/e;->b()Lb/b/f/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lb/b/f/c/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lb/b/f/a/a;->a:Lb/b/f/c/ae;

    invoke-virtual {v0}, Lb/b/f/c/ae;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/b/f/a/a;->b:Lb/b/f/a/b;

    invoke-virtual {v1}, Lb/b/f/a/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/a;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/b/f/a/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
