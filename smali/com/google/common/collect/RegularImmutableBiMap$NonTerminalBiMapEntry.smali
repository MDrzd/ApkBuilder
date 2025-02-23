.class final Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry;


# instance fields
.field private final nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 4
    .param p2    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;)V

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 5
    .param p3    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    iput-object p4, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method final getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method final getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method
