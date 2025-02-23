.class public Lorg/jf/dexlib2/util/SyntheticAccessorResolver;
.super Ljava/lang/Object;


# static fields
.field public static final ADD_ASSIGNMENT:I = 0x7

.field public static final AND_ASSIGNMENT:I = 0xc

.field public static final DIV_ASSIGNMENT:I = 0xa

.field public static final GETTER:I = 0x1

.field public static final METHOD:I = 0x0

.field public static final MUL_ASSIGNMENT:I = 0x9

.field public static final OR_ASSIGNMENT:I = 0xd

.field public static final POSTFIX_DECREMENT:I = 0x5

.field public static final POSTFIX_INCREMENT:I = 0x3

.field public static final PREFIX_DECREMENT:I = 0x6

.field public static final PREFIX_INCREMENT:I = 0x4

.field public static final REM_ASSIGNMENT:I = 0xb

.field public static final SETTER:I = 0x2

.field public static final SHL_ASSIGNMENT:I = 0xf

.field public static final SHR_ASSIGNMENT:I = 0x10

.field public static final SUB_ASSIGNMENT:I = 0x8

.field public static final USHR_ASSIGNMENT:I = 0x11

.field public static final XOR_ASSIGNMENT:I = 0xe


# instance fields
.field private final classDefMap:Ljava/util/Map;

.field private final resolvedAccessors:Ljava/util/Map;

.field private final syntheticAccessorFSM:Lorg/jf/dexlib2/util/SyntheticAccessorFSM;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;Ljava/lang/Iterable;)V
    .registers 5
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    new-instance v0, Lorg/jf/dexlib2/util/SyntheticAccessorFSM;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/util/SyntheticAccessorFSM;-><init>(Lorg/jf/dexlib2/Opcodes;)V

    iput-object v0, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->syntheticAccessorFSM:Lorg/jf/dexlib2/util/SyntheticAccessorFSM;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/dexlib2/iface/ClassDef;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->classDefMap:Ljava/util/Map;

    return-void
.end method

.method public static looksLikeSyntheticAccessor(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "access$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static methodReferenceEquals(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)Z
    .registers 4
    .param p0    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAccessedMember(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;
    .registers 8
    .param p1    # Lorg/jf/dexlib2/iface/reference/MethodReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/jf/dexlib2/util/ReferenceUtil;->getMethodDescriptor(Lorg/jf/dexlib2/iface/reference/MethodReference;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->classDefMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jf/dexlib2/iface/ClassDef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v1}, Lorg/jf/dexlib2/iface/ClassDef;->getMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jf/dexlib2/iface/Method;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3, p1}, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->methodReferenceEquals(Lorg/jf/dexlib2/iface/reference/MethodReference;Lorg/jf/dexlib2/iface/reference/MethodReference;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-nez v3, :cond_4

    return-object v2

    :cond_4
    sget-object p1, Lorg/jf/dexlib2/AccessFlags;->SYNTHETIC:Lorg/jf/dexlib2/AccessFlags;

    invoke-interface {v3}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jf/dexlib2/AccessFlags;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_5

    return-object v2

    :cond_5
    invoke-interface {v4}, Lorg/jf/dexlib2/iface/MethodImplementation;->getInstructions()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iget-object v1, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->syntheticAccessorFSM:Lorg/jf/dexlib2/util/SyntheticAccessorFSM;

    invoke-virtual {v1, p1}, Lorg/jf/dexlib2/util/SyntheticAccessorFSM;->test(Ljava/util/List;)I

    move-result v1

    if-ltz v1, :cond_6

    new-instance v2, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/instruction/ReferenceInstruction;->getReference()Lorg/jf/dexlib2/iface/reference/Reference;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/jf/dexlib2/util/SyntheticAccessorResolver$AccessedMember;-><init>(ILorg/jf/dexlib2/iface/reference/Reference;)V

    iget-object p1, p0, Lorg/jf/dexlib2/util/SyntheticAccessorResolver;->resolvedAccessors:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v2
.end method
