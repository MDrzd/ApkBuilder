.class Lorg/jf/dexlib2/analysis/ClassProto$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto$8;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .registers 13

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

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
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iput-boolean v1, v2, Lorg/jf/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v3

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4, v4}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getDirectInterfaces()Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v7}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jf/dexlib2/iface/Method;

    iget-object v9, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v9, v0, v8}, Lorg/jf/dexlib2/analysis/ClassProto;->access$900(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result v9

    if-ltz v9, :cond_3

    iget-object v10, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jf/dexlib2/iface/Method;

    invoke-static {v10, v8, v11}, Lorg/jf/dexlib2/analysis/ClassProto;->access$700(Lorg/jf/dexlib2/analysis/ClassProto;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/Method;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v9, v3, v8}, Lorg/jf/dexlib2/analysis/ClassProto;->access$900(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result v9

    if-ltz v9, :cond_4

    sget-object v10, Lorg/jf/dexlib2/AccessFlags;->ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v10, v10, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v11}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v10

    check-cast v10, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lorg/jf/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v9, v4, v8}, Lorg/jf/dexlib2/analysis/ClassProto;->access$900(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result v9

    if-gez v9, :cond_2

    iget-object v9, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v9, v5, v8}, Lorg/jf/dexlib2/analysis/ClassProto;->access$900(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result v9

    if-ltz v9, :cond_5

    sget-object v10, Lorg/jf/dexlib2/AccessFlags;->ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v10, v10, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v11}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v10

    check-cast v10, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/jf/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jf/dexlib2/iface/Method;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    sget-object v9, Lorg/jf/dexlib2/AccessFlags;->ABSTRACT:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {v8}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v2, Lorg/jf/dexlib2/analysis/ClassProto$8$1;

    invoke-direct {v2, p0, v6}, Lorg/jf/dexlib2/analysis/ClassProto$8$1;-><init>(Lorg/jf/dexlib2/analysis/ClassProto$8;Ljava/util/HashMap;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v2, v3, v0, v1, v1}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v2, v4, v0, v1, v1}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v2, v5, v0, v1, v1}, Lorg/jf/dexlib2/analysis/ClassProto;->access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    :cond_8
    return-object v0

    :catch_0
    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$8;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v2, v2, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method
