.class Lorg/jf/dexlib2/analysis/ClassProto$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto$6;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .registers 10

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v3, v3, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3, v2}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean v2, v2, Lorg/jf/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iput-boolean v1, v2, Lorg/jf/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v3

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4, v4}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getDirectInterfaces()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/Method;

    new-instance v7, Lorg/jf/dexlib2/analysis/ClassProto$ReparentedMethod;

    iget-object v8, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v8, v8, Lorg/jf/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    invoke-direct {v7, v6, v8}, Lorg/jf/dexlib2/analysis/ClassProto$ReparentedMethod;-><init>(Lorg/jf/dexlib2/iface/Method;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v3, v5, v0, v1, v4}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$6;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v2, v2, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
