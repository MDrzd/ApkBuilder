.class Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;
.super Lorg/jf/dexlib2/dexbacked/util/DebugInfo;


# static fields
.field public static final INSTANCE:Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;->INSTANCE:Lorg/jf/dexlib2/dexbacked/util/DebugInfo$EmptyDebugInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jf/dexlib2/dexbacked/util/DebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameterNames(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/util/Iterator;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
