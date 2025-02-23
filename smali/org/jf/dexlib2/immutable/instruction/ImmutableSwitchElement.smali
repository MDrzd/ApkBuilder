.class public Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/SwitchElement;


# static fields
.field private static final CONVERTER:Lorg/jf/util/ImmutableConverter;


# instance fields
.field protected final key:I

.field protected final offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->key:I

    iput p2, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->offset:I

    return-void
.end method

.method public static immutableListOf(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->CONVERTER:Lorg/jf/util/ImmutableConverter;

    invoke-virtual {v0, p0}, Lorg/jf/util/ImmutableConverter;->toList(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/jf/dexlib2/iface/instruction/SwitchElement;)Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getKey()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/instruction/SwitchElement;->getOffset()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getKey()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->key:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/immutable/instruction/ImmutableSwitchElement;->offset:I

    return v0
.end method
