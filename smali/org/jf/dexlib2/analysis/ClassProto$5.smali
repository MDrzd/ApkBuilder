.class Lorg/jf/dexlib2/analysis/ClassProto$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassProto;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/jf/dexlib2/analysis/ClassProto$5;Lorg/jf/dexlib2/iface/reference/FieldReference;)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/ClassProto$5;->getFieldSortOrder(Lorg/jf/dexlib2/iface/reference/FieldReference;)I

    move-result p0

    return p0
.end method

.method private addFieldGap(IILjava/util/PriorityQueue;)V
    .registers 7
    .param p3    # Ljava/util/PriorityQueue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    :goto_0
    if-ge p1, p2, :cond_2

    sub-int v0, p2, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    invoke-static {p1, v1, v0}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    invoke-static {p1, v1, v0}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v0, v0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->newFieldGap(III)Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFieldSize(Lorg/jf/dexlib2/iface/reference/FieldReference;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/jf/dexlib2/analysis/ClassProto;->access$400(C)I

    move-result p1

    return p1
.end method

.method private getFieldSortOrder(Lorg/jf/dexlib2/iface/reference/FieldReference;)I
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lorg/jf/util/ExceptionWithContext;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Invalid field type: %s"

    invoke-direct {v0, p1, v2}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :sswitch_0
    const/4 p1, 0x7

    return p1

    :sswitch_1
    const/4 p1, 0x6

    return p1

    :sswitch_2
    return v1

    :sswitch_3
    return v2

    :sswitch_4
    const/4 p1, 0x3

    return p1

    :sswitch_5
    const/4 p1, 0x4

    return p1

    :sswitch_6
    const/4 p1, 0x2

    return p1

    :sswitch_7
    const/4 p1, 0x5

    return p1

    :sswitch_8
    const/16 p1, 0x8

    return p1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x4c -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method private getSortedInstanceFields(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/ClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lorg/jf/dexlib2/analysis/ClassProto$5$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/analysis/ClassProto$5$1;-><init>(Lorg/jf/dexlib2/analysis/ClassProto$5;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto$5;->get()Lorg/jf/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/jf/util/SparseArray;
    .registers 10

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    new-instance v1, Lorg/jf/util/SparseArray;

    invoke-direct {v1}, Lorg/jf/util/SparseArray;-><init>()V

    iget-object v2, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v2}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/analysis/ClassProto$5;->getSortedInstanceFields(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/jf/dexlib2/analysis/ClassProto$5;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v5, v5, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v5, v3}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v3

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/jf/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    invoke-virtual {v3, v5}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v5}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-virtual {v1, v7, v6}, Lorg/jf/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-direct {p0, v6}, Lorg/jf/dexlib2/analysis/ClassProto$5;->getFieldSize(Lorg/jf/dexlib2/iface/reference/FieldReference;)I

    move-result v3

    add-int v4, v7, v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/Field;

    invoke-direct {p0, v3}, Lorg/jf/dexlib2/analysis/ClassProto$5;->getFieldSize(Lorg/jf/dexlib2/iface/reference/FieldReference;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/jf/util/AlignmentUtils;->isAligned(II)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4, v5}, Lorg/jf/util/AlignmentUtils;->alignOffset(II)I

    move-result v6

    invoke-direct {p0, v4, v6, v0}, Lorg/jf/dexlib2/analysis/ClassProto$5;->addFieldGap(IILjava/util/PriorityQueue;)V

    move v4, v6

    :cond_3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;

    if-eqz v6, :cond_4

    iget v7, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->size:I

    if-lt v7, v5, :cond_4

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    iget v7, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    invoke-virtual {v1, v7, v3}, Lorg/jf/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v3, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->size:I

    if-le v3, v5, :cond_2

    iget v3, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    add-int/2addr v3, v5

    iget v5, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->offset:I

    iget v6, v6, Lorg/jf/dexlib2/analysis/ClassProto$FieldGap;->size:I

    add-int/2addr v5, v6

    invoke-direct {p0, v3, v5, v0}, Lorg/jf/dexlib2/analysis/ClassProto$5;->addFieldGap(IILjava/util/PriorityQueue;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v4, v3}, Lorg/jf/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/2addr v4, v5

    goto :goto_1

    :cond_5
    return-object v1
.end method
