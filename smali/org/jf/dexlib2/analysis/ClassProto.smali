.class public Lorg/jf/dexlib2/analysis/ClassProto;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/analysis/TypeProto;


# static fields
.field private static final OTHER:B = 0x2t

.field private static final REFERENCE:B = 0x0t

.field private static final WIDE:B = 0x1t


# instance fields
.field private final artInstanceFieldsSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final buggyPostDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final classDefSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final classPath:Lorg/jf/dexlib2/analysis/ClassPath;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final dalvikInstanceFieldsSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected interfacesFullyResolved:Z

.field private final postDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final postDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final preDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final preDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected unresolvedInterfaces:Ljava/util/Set;

.field protected vtableFullyResolved:Z


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/analysis/ClassPath;Ljava/lang/String;)V
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/ClassPath;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->vtableFullyResolved:Z

    iput-boolean v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->unresolvedInterfaces:Ljava/util/Set;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$1;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classDefSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$2;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$2;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->preDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$3;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$3;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->postDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$4;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$4;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->dalvikInstanceFieldsSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$5;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$5;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->artInstanceFieldsSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$6;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$6;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->preDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$7;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$7;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->buggyPostDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    new-instance v1, Lorg/jf/dexlib2/analysis/ClassProto$8;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/ClassProto$8;-><init>(Lorg/jf/dexlib2/analysis/ClassProto;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->postDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_0

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iput-object p2, p0, Lorg/jf/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "Cannot construct ClassProto for non reference type: %s"

    invoke-direct {p1, p2, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/jf/dexlib2/iface/reference/FieldReference;)B
    .registers 1

    invoke-static {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getFieldType(Lorg/jf/dexlib2/iface/reference/FieldReference;)B

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/jf/dexlib2/analysis/ClassProto;)I
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getNextFieldOffset()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(C)I
    .registers 1

    invoke-static {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getTypeSize(C)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/lang/Iterable;Ljava/util/List;ZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jf/dexlib2/analysis/ClassProto;->addToVtable(Ljava/lang/Iterable;Ljava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto;->findMethodIndexInVtableReverse(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/jf/dexlib2/analysis/ClassProto;Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/Method;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto;->interfaceMethodOverrides(Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/Method;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/jf/dexlib2/analysis/ClassProto;Lorg/jf/dexlib2/iface/Method;)Z
    .registers 2

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/analysis/ClassProto;->isOverridableByDefaultMethod(Lorg/jf/dexlib2/iface/Method;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/jf/dexlib2/analysis/ClassProto;Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p0

    return p0
.end method

.method private addToVtable(Ljava/lang/Iterable;Ljava/util/List;ZZ)V
    .registers 6
    .param p1    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    if-eqz p4, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/jf/dexlib2/iface/Method;

    invoke-direct {p0, p2, p4}, Lorg/jf/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p2, v0, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private checkInterface(Lorg/jf/dexlib2/analysis/ClassProto;)Z
    .registers 6
    .param p1    # Lorg/jf/dexlib2/analysis/ClassProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v2
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jf/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_1

    return v1

    :catch_1
    move-exception p1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    throw p1

    :cond_1
    :goto_1
    return v0
.end method

.method private findMethodIndexInVtable(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/Method;

    invoke-static {v2, p2}, Lorg/jf/dexlib2/util/MethodUtil;->methodSignaturesMatch(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassPath;->shouldCheckPackagePrivateAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0, v0}, Lorg/jf/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lorg/jf/dexlib2/analysis/TypeProto;Lorg/jf/dexlib2/iface/Method;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private findMethodIndexInVtableReverse(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jf/dexlib2/iface/Method;

    invoke-static {v2, p2}, Lorg/jf/dexlib2/util/MethodUtil;->methodSignaturesMatch(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v3}, Lorg/jf/dexlib2/analysis/ClassPath;->shouldCheckPackagePrivateAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v3}, Lorg/jf/dexlib2/analysis/AnalyzedMethodUtil;->canAccess(Lorg/jf/dexlib2/analysis/TypeProto;Lorg/jf/dexlib2/iface/Method;ZZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static getFieldType(Lorg/jf/dexlib2/iface/reference/FieldReference;)B
    .registers 3
    .param p0    # Lorg/jf/dexlib2/iface/reference/FieldReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x44

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private getNextFieldOffset()I
    .registers 6

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lorg/jf/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/jf/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v1}, Lorg/jf/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/reference/FieldReference;

    iget-object v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v1}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/ClassProto;->getTypeSize(C)I

    move-result v0

    add-int/2addr v4, v0

    return v4

    :cond_2
    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/FieldReference;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_3

    add-int/lit8 v4, v4, 0x4

    return v4

    :cond_3
    add-int/2addr v4, v2

    return v4
.end method

.method private static getTypeSize(C)I
    .registers 4

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    new-instance v1, Lorg/jf/util/ExceptionWithContext;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "Invalid type: %s"

    invoke-direct {v1, p0, v0}, Lorg/jf/util/ExceptionWithContext;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_0
    const/4 p0, 0x4

    return p0

    :sswitch_1
    const/16 p0, 0x8

    return p0

    :sswitch_2
    const/4 p0, 0x2

    return p0

    :sswitch_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_2
        0x44 -> :sswitch_1
        0x46 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x4c -> :sswitch_0
        0x53 -> :sswitch_2
        0x5a -> :sswitch_3
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private interfaceMethodOverrides(Lorg/jf/dexlib2/iface/Method;Lorg/jf/dexlib2/iface/Method;)Z
    .registers 5
    .param p1    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-interface {p2}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jf/dexlib2/analysis/ClassProto;->implementsInterface(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isOverridableByDefaultMethod(Lorg/jf/dexlib2/iface/Method;)Z
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/Method;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getClass(Ljava/lang/CharSequence;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ClassProto;->isInterface()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public findMethodIndexInVtable(Lorg/jf/dexlib2/iface/reference/MethodReference;)I
    .registers 3
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jf/dexlib2/analysis/ClassProto;->findMethodIndexInVtable(Ljava/util/List;Lorg/jf/dexlib2/iface/reference/MethodReference;)I

    move-result p1

    return p1
.end method

.method public getClassDef()Lorg/jf/dexlib2/iface/ClassDef;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classDefSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/ClassDef;

    return-object v0
.end method

.method public getClassPath()Lorg/jf/dexlib2/analysis/ClassPath;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    return-object v0
.end method

.method public getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;
    .registers 7
    .param p1    # Lorg/jf/dexlib2/analysis/TypeProto;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p1, Lorg/jf/dexlib2/analysis/ClassProto;

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Lorg/jf/dexlib2/analysis/TypeProto;->getCommonSuperclass(Lorg/jf/dexlib2/analysis/TypeProto;)Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_0
    if-eq p0, p1, :cond_9

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {p1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    move-object v2, p1

    check-cast v2, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {p0, v2}, Lorg/jf/dexlib2/analysis/ClassProto;->checkInterface(Lorg/jf/dexlib2/analysis/ClassProto;)Z

    move-result v2
    :try_end_0
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    return-object p0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    :goto_0
    :try_start_1
    move-object v3, p1

    check-cast v3, Lorg/jf/dexlib2/analysis/ClassProto;

    invoke-direct {v3, p0}, Lorg/jf/dexlib2/analysis/ClassProto;->checkInterface(Lorg/jf/dexlib2/analysis/ClassProto;)Z

    move-result v3
    :try_end_1
    .catch Lorg/jf/dexlib2/analysis/UnresolvedClassException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_5

    return-object p1

    :catch_1
    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
    iget-object p1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/ClassPath;->getUnknownClass()Lorg/jf/dexlib2/analysis/TypeProto;

    move-result-object p1

    return-object p1

    :cond_7
    new-array v2, v1, [Lorg/jf/dexlib2/analysis/TypeProto;

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p0}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassChain(Lorg/jf/dexlib2/analysis/TypeProto;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    new-array v3, v1, [Lorg/jf/dexlib2/analysis/TypeProto;

    aput-object p1, v3, v0

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lorg/jf/dexlib2/analysis/util/TypeProtoUtils;->getSuperclassChain(Lorg/jf/dexlib2/analysis/TypeProto;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-static {v2}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v1}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jf/dexlib2/analysis/TypeProto;

    invoke-interface {v4}, Lorg/jf/dexlib2/analysis/TypeProto;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_9
    :goto_2
    return-object p0
.end method

.method protected getDirectInterfaces()Ljava/lang/Iterable;
    .registers 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getInterfaces()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Predicates;->notNull()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/analysis/UnresolvedClassException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getUnresolvedInterfaces()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Interfaces for class %s not fully resolved: %s"

    invoke-direct {v0, v2, v1}, Lorg/jf/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFieldByOffset(I)Lorg/jf/dexlib2/iface/reference/FieldReference;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getInstanceFields()Lorg/jf/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jf/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/iface/reference/FieldReference;

    return-object p1
.end method

.method public getInstanceFields()Lorg/jf/util/SparseArray;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->artInstanceFieldsSupplier:Lcom/google/common/base/Supplier;

    :goto_0
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/util/SparseArray;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->dalvikInstanceFieldsSupplier:Lcom/google/common/base/Supplier;

    goto :goto_0
.end method

.method protected getInterfaces()Ljava/util/LinkedHashMap;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x48

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->postDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;

    :goto_0
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->preDefaultMethodInterfaceSupplier:Lcom/google/common/base/Supplier;

    goto :goto_0
.end method

.method public getMethodByVtableIndex(I)Lorg/jf/dexlib2/iface/Method;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getVtable()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/iface/Method;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected getUnresolvedInterfaces()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->unresolvedInterfaces:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->unresolvedInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getVtable()Ljava/util/List;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    invoke-virtual {v0}, Lorg/jf/dexlib2/analysis/ClassPath;->isArt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x48

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->classPath:Lorg/jf/dexlib2/analysis/ClassPath;

    iget v0, v0, Lorg/jf/dexlib2/analysis/ClassPath;->oatVersion:I

    const/16 v1, 0x57

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->buggyPostDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    :goto_0
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->postDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->preDefaultMethodVtableSupplier:Lcom/google/common/base/Supplier;

    goto :goto_0
.end method

.method public implementsInterface(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getInterfaces()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p0, Lorg/jf/dexlib2/analysis/ClassProto;->interfacesFullyResolved:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Lorg/jf/dexlib2/analysis/UnresolvedClassException;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Interfaces for class %s not fully resolved"

    invoke-direct {p1, v1, v0}, Lorg/jf/dexlib2/analysis/UnresolvedClassException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public isInterface()Z
    .registers 3

    invoke-virtual {p0}, Lorg/jf/dexlib2/analysis/ClassProto;->getClassDef()Lorg/jf/dexlib2/iface/ClassDef;

    move-result-object v0

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v0

    sget-object v1, Lorg/jf/dexlib2/AccessFlags;->INTERFACE:Lorg/jf/dexlib2/AccessFlags;

    invoke-virtual {v1}, Lorg/jf/dexlib2/AccessFlags;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/ClassProto;->type:Ljava/lang/String;

    return-object v0
.end method
