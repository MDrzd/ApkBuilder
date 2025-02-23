.class Lorg/jf/dexlib2/analysis/ClassProto$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/ClassProto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/dexlib2/analysis/ClassProto;

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/analysis/ClassProto;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto$4;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSortedInstanceFields(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;
    .registers 2
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

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p1
.end method

.method private swap([BLjava/util/List;II)V
    .registers 7

    aget-byte v0, p1, p3

    aget-byte v1, p1, p4

    aput-byte v1, p1, p3

    aput-byte v0, p1, p4

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/iface/Field;

    invoke-interface {p2, p4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto$4;->get()Lorg/jf/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/jf/util/SparseArray;
    .registers 13

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto$4;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jf/dexlib2/analysis/ClassProto$4;->getSortedInstanceFields(Lorg/jf/dexlib2/iface/ClassDef;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-static {v5}, Lorg/jf/dexlib2/analysis/ClassProto;->access$000(Lorg/jf/dexlib2/iface/reference/FieldReference;)B

    move-result v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    aget-byte v7, v2, v4

    if-eqz v7, :cond_2

    :goto_2
    if-le v6, v4, :cond_2

    aget-byte v7, v2, v6

    if-nez v7, :cond_1

    add-int/lit8 v7, v6, -0x1

    invoke-direct {p0, v2, v0, v4, v6}, Lorg/jf/dexlib2/analysis/ClassProto$4;->swap([BLjava/util/List;II)V

    move v6, v7

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    aget-byte v7, v2, v4

    if-nez v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/jf/dexlib2/analysis/ClassProto$4;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v6}, Lorg/jf/dexlib2/analysis/ClassProto;->getSuperclass()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_4

    iget-object v7, p0, Lorg/jf/dexlib2/analysis/ClassProto$4;->this$0:Lorg/jf/dexlib2/analysis/ClassProto;

    iget-object v7, v7, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v7, v6}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-static {v7}, Lorg/jf/dexlib2/analysis/ClassProto;->access$100(Lorg/jf/dexlib2/analysis/ClassProto;)I

    move-result v6

    goto :goto_4

    :cond_4
    const/16 v6, 0x8

    :goto_4
    rem-int/2addr v6, v8

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    const/4 v6, 0x1

    :goto_5
    if-ge v4, v1, :cond_8

    rem-int/lit8 v9, v4, 0x2

    if-eq v9, v6, :cond_8

    aget-byte v6, v2, v4

    if-ne v6, v5, :cond_7

    add-int/lit8 v6, v1, -0x1

    :goto_6
    if-le v6, v4, :cond_8

    aget-byte v9, v2, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    add-int/lit8 v9, v4, 0x1

    invoke-direct {p0, v2, v0, v4, v6}, Lorg/jf/dexlib2/analysis/ClassProto$4;->swap([BLjava/util/List;II)V

    move v4, v9

    goto :goto_7

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    :cond_8
    :goto_7
    add-int/lit8 v6, v1, -0x1

    :goto_8
    if-ge v4, v1, :cond_b

    aget-byte v9, v2, v4

    if-eq v9, v5, :cond_a

    :goto_9
    if-le v6, v4, :cond_a

    aget-byte v9, v2, v6

    if-ne v9, v5, :cond_9

    add-int/lit8 v9, v6, -0x1

    invoke-direct {p0, v2, v0, v4, v6}, Lorg/jf/dexlib2/analysis/ClassProto$4;->swap([BLjava/util/List;II)V

    move v6, v9

    goto :goto_a

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_a
    :goto_a
    aget-byte v9, v2, v4

    if-ne v9, v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v4

    goto :goto_b

    :cond_c
    new-instance v4, Lorg/jf/util/SparseArray;

    invoke-direct {v4}, Lorg/jf/util/SparseArray;-><init>()V

    :goto_b
    invoke-virtual {v4}, Lorg/jf/util/SparseArray;->size()I

    move-result v6

    add-int v9, v6, v1

    new-instance v10, Lorg/jf/util/SparseArray;

    invoke-direct {v10, v9}, Lorg/jf/util/SparseArray;-><init>(I)V

    if-eqz v7, :cond_10

    if-lez v6, :cond_10

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_d

    invoke-virtual {v4, v7}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v4, v7}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lorg/jf/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_d
    sub-int/2addr v6, v5

    invoke-virtual {v10, v6}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v6}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-interface {v4}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x4a

    if-eq v4, v6, :cond_f

    const/16 v6, 0x44

    if-ne v4, v6, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 v8, v7, 0x4

    goto :goto_e

    :cond_f
    :goto_d
    add-int/2addr v8, v7

    :cond_10
    :goto_e
    const/4 v4, 0x0

    :goto_f
    if-ge v3, v1, :cond_14

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jf/dexlib2/iface/reference/FieldReference;

    aget-byte v7, v2, v3

    if-ne v7, v5, :cond_12

    if-nez v4, :cond_12

    rem-int/lit8 v4, v8, 0x8

    if-eqz v4, :cond_11

    add-int/lit8 v8, v8, 0x4

    :cond_11
    const/4 v4, 0x1

    :cond_12
    invoke-virtual {v10, v8, v6}, Lorg/jf/util/SparseArray;->append(ILjava/lang/Object;)V

    aget-byte v6, v2, v3

    if-ne v6, v5, :cond_13

    add-int/lit8 v8, v8, 0x8

    goto :goto_10

    :cond_13
    add-int/lit8 v8, v8, 0x4

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_14
    return-object v10
.end method
