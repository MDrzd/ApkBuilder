.class public Lorg/jf/dexlib2/immutable/ImmutableDexFile;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/DexFile;


# instance fields
.field protected final classes:Lcom/google/common/collect/ImmutableSet;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final opcodes:Lorg/jf/dexlib2/Opcodes;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;Lcom/google/common/collect/ImmutableSet;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/google/common/collect/ImmutableSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/jf/util/ImmutableUtils;->nullToEmptySet(Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p2

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->classes:Lcom/google/common/collect/ImmutableSet;

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-void
.end method

.method public constructor <init>(Lorg/jf/dexlib2/Opcodes;Ljava/util/Collection;)V
    .registers 3
    .param p1    # Lorg/jf/dexlib2/Opcodes;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/jf/dexlib2/immutable/ImmutableClassDef;->immutableSetOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p2

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->classes:Lcom/google/common/collect/ImmutableSet;

    iput-object p1, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/DexFile;)Lorg/jf/dexlib2/immutable/ImmutableDexFile;
    .registers 3

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/DexFile;->getOpcodes()Lorg/jf/dexlib2/Opcodes;

    move-result-object v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/DexFile;->getClasses()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/ImmutableDexFile;-><init>(Lorg/jf/dexlib2/Opcodes;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public getClasses()Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->classes:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic getClasses()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->getClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getOpcodes()Lorg/jf/dexlib2/Opcodes;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/ImmutableDexFile;->opcodes:Lorg/jf/dexlib2/Opcodes;

    return-object v0
.end method
