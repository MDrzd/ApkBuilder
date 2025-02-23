.class Lorg/apache/commons/lang3/ClassUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/ClassUtils$1;

.field final synthetic val$next:Lorg/apache/commons/lang3/mutable/MutableObject;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/ClassUtils$1;Lorg/apache/commons/lang3/mutable/MutableObject;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$1$1;->this$0:Lorg/apache/commons/lang3/ClassUtils$1;

    iput-object p2, p0, Lorg/apache/commons/lang3/ClassUtils$1$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$1$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Class;
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$1$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$1$1;->val$next:Lorg/apache/commons/lang3/mutable/MutableObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang3/mutable/MutableObject;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$1$1;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
