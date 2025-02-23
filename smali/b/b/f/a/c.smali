.class public final Lb/b/f/a/c;
.super Lcom/gmail/heagoo/pngeditor/n;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lb/b/f/a/c;


# instance fields
.field private final b:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/f/a/c;

    invoke-direct {v0}, Lb/b/f/a/c;-><init>()V

    sput-object v0, Lb/b/f/a/c;->a:Lb/b/f/a/c;

    invoke-virtual {v0}, Lb/b/f/a/c;->b_()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/pngeditor/n;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    return-void
.end method

.method public static a(Lb/b/f/a/c;Lb/b/f/a/a;)Lb/b/f/a/c;
    .registers 3

    new-instance v0, Lb/b/f/a/c;

    invoke-direct {v0}, Lb/b/f/a/c;-><init>()V

    invoke-direct {v0, p0}, Lb/b/f/a/c;->b(Lb/b/f/a/c;)V

    invoke-virtual {v0, p1}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    invoke-virtual {v0}, Lb/b/f/a/c;->b_()V

    return-object v0
.end method

.method public static a(Lb/b/f/a/c;Lb/b/f/a/c;)Lb/b/f/a/c;
    .registers 3

    new-instance v0, Lb/b/f/a/c;

    invoke-direct {v0}, Lb/b/f/a/c;-><init>()V

    invoke-direct {v0, p0}, Lb/b/f/a/c;->b(Lb/b/f/a/c;)V

    invoke-direct {v0, p1}, Lb/b/f/a/c;->b(Lb/b/f/a/c;)V

    invoke-virtual {v0}, Lb/b/f/a/c;->b_()V

    return-object v0
.end method

.method private b(Lb/b/f/a/c;)V
    .registers 3

    invoke-virtual {p0}, Lb/b/f/a/c;->d()V

    if-eqz p1, :cond_1

    iget-object p1, p1, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/f/a/a;

    invoke-virtual {p0, v0}, Lb/b/f/a/c;->a(Lb/b/f/a/a;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "toAdd == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lb/b/f/a/c;)I
    .registers 5

    iget-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/a;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/a;

    invoke-virtual {v1, v2}, Lb/b/f/a/a;->a(Lb/b/f/a/a;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lb/b/f/a/a;)V
    .registers 5

    invoke-virtual {p0}, Lb/b/f/a/c;->d()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lb/b/f/a/a;->f()Lb/b/f/c/ae;

    move-result-object v0

    iget-object v1, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/b/f/c/ae;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/b/f/a/c;

    invoke-virtual {p0, p1}, Lb/b/f/a/c;->a(Lb/b/f/a/c;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lb/b/f/a/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lb/b/f/a/c;

    iget-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    iget-object p1, p1, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public final g()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotations{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/b/f/a/c;->b:Ljava/util/TreeMap;

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

    check-cast v3, Lb/b/f/a/a;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Lb/b/f/a/a;->h()Ljava/lang/String;

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
