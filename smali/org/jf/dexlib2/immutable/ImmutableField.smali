.class public Lorg/jf/dexlib2/immutable/ImmutableField;
.super Lorg/jf/dexlib2/base/reference/BaseFieldReference;

# interfaces
.implements Lorg/jf/dexlib2/iface/Field;


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

.field protected final initialValue:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableField$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableField$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableField;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jf/dexlib2/iface/value/EncodedValue;Ljava/util/Collection;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->type:Ljava/lang/String;

    iput p4, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->accessFlags:I

    invoke-static {p5}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->ofNullable(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->initialValue:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    invoke-static {p6}, Lorg/jf/dexlib2/immutable/ImmutableAnnotation;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->annotations:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;Lcom/google/common/collect/ImmutableSet;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/reference/BaseFieldReference;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->definingClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->type:Ljava/lang/String;

    iput p4, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->accessFlags:I

    iput-object p5, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->initialValue:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    invoke-static {p6}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->annotations:Lcom/google/common/collect/ImmutableSet;

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

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableField;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/jf/util/ImmutableConverter;->toSortedSet(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/Field;)Lorg/jf/dexlib2/immutable/ImmutableField;
    .registers 9

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableField;

    return-object p0

    :cond_0
    new-instance v7, Lorg/jf/dexlib2/immutable/ImmutableField;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getDefiningClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getAccessFlags()I

    move-result v4

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object v5

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/Field;->getAnnotations()Ljava/util/Set;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/jf/dexlib2/immutable/ImmutableField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/jf/dexlib2/iface/value/EncodedValue;Ljava/util/Collection;)V

    return-object v7
.end method


# virtual methods
.method public getAccessFlags()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->accessFlags:I

    return v0
.end method

.method public getAnnotations()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->annotations:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableField;->getAnnotations()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefiningClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->definingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->initialValue:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableField;->type:Ljava/lang/String;

    return-object v0
.end method
