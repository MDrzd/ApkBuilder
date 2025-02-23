.class public Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;
.super Lorg/jf/dexlib2/base/BaseAnnotationElement;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field protected final value:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/value/EncodedValue;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/iface/value/EncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotationElement;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    invoke-static {p2}, Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValueFactory;->of(Lorg/jf/dexlib2/iface/value/EncodedValue;)Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->value:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseAnnotationElement;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->value:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

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

    sget-object v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;
    .registers 3

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/AnnotationElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/AnnotationElement;->getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;-><init>(Ljava/lang/String;Lorg/jf/dexlib2/iface/value/EncodedValue;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lorg/jf/dexlib2/iface/value/EncodedValue;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableAnnotationElement;->value:Lorg/jf/dexlib2/immutable/value/ImmutableEncodedValue;

    return-object v0
.end method
