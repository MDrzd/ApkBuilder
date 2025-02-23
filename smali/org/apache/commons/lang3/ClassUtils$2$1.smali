.class Lorg/apache/commons/lang3/ClassUtils$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field interfaces:Ljava/util/Iterator;

.field final synthetic this$0:Lorg/apache/commons/lang3/ClassUtils$2;

.field final synthetic val$seenInterfaces:Ljava/util/Set;

.field final synthetic val$wrapped:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/ClassUtils$2;Ljava/util/Iterator;Ljava/util/Set;)V
    .registers 4

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->this$0:Lorg/apache/commons/lang3/ClassUtils$2;

    iput-object p2, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    return-void
.end method

.method private walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
