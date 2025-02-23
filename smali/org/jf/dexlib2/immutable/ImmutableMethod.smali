.class public Lorg/jf/dexlib2/immutable/ImmutableMethod;
.super Lorg/jf/dexlib2/base/reference/BaseMethodReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Method;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final accessFlags:I

.field protected final annotations:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final definingClass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final methodImplementation:Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final parameters:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final returnType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableMethod$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableMethod$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;ILcom/google/common/collect/ImmutableSet;Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->parameters:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    iput p5, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    invoke-static {p6}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->annotations:Lcom/google/common/collect/ImmutableSet;

    iput-object p7, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Lorg/jf/dexlib2/iface/MethodImplementation;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/jf/dexlib2/iface/MethodImplementation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseMethodReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    invoke-static {p3}, Lorg/jf/dexlib2/immutable/ImmutableMethodParameter;->immutableListOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->parameters:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    iput p5, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    invoke-static {p6}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->annotations:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p7}, Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;->of(Lorg/jf/dexlib2/iface/MethodImplementation;)Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 3
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/jf/util/ImmutableConverter;->toSortedSet(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/Method;)Lorg/jf/dexlib2/immutable/ImmutableMethod;
    .registers 10

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;

    return-object p0

    :cond_0
    new-instance v8, Lorg/jf/dexlib2/immutable/ImmutableMethod;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getReturnType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getAccessFlags()I

    move-result v5

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Method;->getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jf/dexlib2/immutable/ImmutableMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;ILjava/util/Set;Lorg/jf/dexlib2/iface/MethodImplementation;)V

    return-object v8
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->annotations:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->getAnnotations()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getImplementation()Lorg/jf/dexlib2/iface/MethodImplementation;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->getImplementation()Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->methodImplementation:Lorg/jf/dexlib2/immutable/ImmutableMethodImplementation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->parameters:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getParameterTypes()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->getParameterTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->parameters:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getParameters()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->getParameters()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableMethod;->returnType:Ljava/lang/String;

    return-object v0
.end method
