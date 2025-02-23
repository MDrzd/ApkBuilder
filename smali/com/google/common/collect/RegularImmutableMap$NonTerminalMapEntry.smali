.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry;


# instance fields
.field private final nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;)V

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method final getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method final getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
