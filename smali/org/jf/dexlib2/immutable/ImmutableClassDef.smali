.class public Lorg/jf/dexlib2/immutable/ImmutableClassDef;
.super Lorg/jf/dexlib2/base/reference/BaseTypeReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/ClassDef;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final accessFlags:I

.field protected final annotations:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final directMethods:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final instanceFields:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final interfaces:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final sourceFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final staticFields:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final superclass:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$3;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef$3;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableSortedSet;)V
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/common/collect/ImmutableSortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/common/collect/ImmutableSortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/common/collect/ImmutableSortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/common/collect/ImmutableSortedSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    invoke-static {p4}, Lorg/jf/util/ImmutableUtils;->nullToEmptyList(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->interfaces:Lcom/google/common/collect/ImmutableList;

    iput-object p5, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    invoke-static {p6}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->annotations:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p7}, Lorg/jf/util/ImmutableUtils;->nullToEmptySortedSet(Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p8}, Lorg/jf/util/ImmutableUtils;->nullToEmptySortedSet(Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p9}, Lorg/jf/util/ImmutableUtils;->nullToEmptySortedSet(Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p10}, Lorg/jf/util/ImmutableUtils;->nullToEmptySortedSet(Lcom/google/common/collect/ImmutableSortedSet;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    if-nez p7, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p7

    :cond_0
    if-nez p8, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p8

    :cond_1
    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    if-nez p4, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->interfaces:Lcom/google/common/collect/ImmutableList;

    iput-object p5, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    invoke-static {p6}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->annotations:Lcom/google/common/collect/ImmutableSet;

    sget-object p1, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_STATIC:Lcom/google/common/base/Predicate;

    invoke-static {p7, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/FieldUtil;->FIELD_IS_INSTANCE:Lcom/google/common/base/Predicate;

    invoke-static {p7, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/MethodUtil;->METHOD_IS_DIRECT:Lcom/google/common/base/Predicate;

    invoke-static {p8, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    sget-object p1, Lorg/jf/dexlib2/util/MethodUtil;->METHOD_IS_VIRTUAL:Lcom/google/common/base/Predicate;

    invoke-static {p8, p1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 11
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseTypeReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    iput p2, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    if-nez p4, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->interfaces:Lcom/google/common/collect/ImmutableList;

    iput-object p5, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    invoke-static {p6}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->annotations:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p7}, Lorg/jf/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p8}, Lorg/jf/dexlib2/immutable/ImmutableField;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p9}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-static {p10}, Lorg/jf/dexlib2/immutable/ImmutableMethod;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method public static immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/ClassDef;)Lorg/jf/dexlib2/immutable/ImmutableClassDef;
    .registers 13

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    return-object p0

    :cond_0
    new-instance v11, Lorg/jf/dexlib2/immutable/ImmutableClassDef;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getAccessFlags()I

    move-result v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getStaticFields()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getInstanceFields()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getDirectMethods()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/ClassDef;->getVirtualMethods()Ljava/lang/Iterable;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v11
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->annotations:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getAnnotations()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMethods()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->directMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic getDirectMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getDirectMethods()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getFields()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef$1;-><init>(Lorg/jf/dexlib2/immutable/ImmutableClassDef;)V

    return-object v0
.end method

.method public getInstanceFields()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->instanceFields:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic getInstanceFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getInstanceFields()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->interfaces:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getInterfaces()Ljava/util/List;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getInterfaces()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getMethods()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethods()Ljava/util/Collection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableClassDef$2;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef$2;-><init>(Lorg/jf/dexlib2/immutable/ImmutableClassDef;)V

    return-object v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticFields()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->staticFields:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic getStaticFields()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getStaticFields()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->superclass:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualMethods()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->virtualMethods:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic getVirtualMethods()Ljava/lang/Iterable;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->getVirtualMethods()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
