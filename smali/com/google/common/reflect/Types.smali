.class final Lcom/google/common/reflect/Types;
.super Ljava/lang/Object;


# static fields
.field private static final COMMA_JOINER:Lcom/google/common/base/Joiner;

.field private static final TYPE_NAME:Lcom/google/common/base/Function;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/reflect/Types$1;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$1;-><init>()V

    sput-object v0, Lcom/google/common/reflect/Types;->TYPE_NAME:Lcom/google/common/base/Function;

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 1

    invoke-static {p0}, Lcom/google/common/reflect/Types;->subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/reflect/Types;->disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .registers 1

    invoke-static {p0}, Lcom/google/common/reflect/Types;->toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lcom/google/common/base/Function;
    .registers 1

    sget-object v0, Lcom/google/common/reflect/Types;->TYPE_NAME:Lcom/google/common/base/Function;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/common/base/Joiner;
    .registers 1

    sget-object v0, Lcom/google/common/reflect/Types;->COMMA_JOINER:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 1

    invoke-static {p0}, Lcom/google/common/reflect/Types;->filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private static disallowPrimitiveType([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 10

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v6, "Primitive type \'%s\' used as %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    aput-object p1, v7, v5

    invoke-static {v4, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static filterUpperBounds(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lcom/google/common/reflect/Types$2;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/Types$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/common/reflect/Types$2;->visit([Ljava/lang/reflect/Type;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 6

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v1, v0

    if-ne v1, v3, :cond_1

    aget-object p0, v0, v2

    invoke-static {p0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v0, "Wildcard should have only one upper bound."

    invoke-static {v3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->CURRENT:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/Types$JavaVersion;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static varargs newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .registers 6

    new-instance v0, Lcom/google/common/reflect/Types$TypeVariableImpl;

    array-length v1, p2

    if-nez v1, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    aput-object v2, p2, v1

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$TypeVariableImpl;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 4

    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v1, p0}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .registers 7
    .param p0    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Owner type for unenclosed %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static subtypeOfComponentType([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of p0, v2, Ljava/lang/Class;

    if-eqz p0, :cond_0

    move-object p0, v2

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {v2}, Lcom/google/common/reflect/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array p0, v1, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, p0, v3

    invoke-direct {v0, v2, p0}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static toArray(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .registers 2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static toString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
