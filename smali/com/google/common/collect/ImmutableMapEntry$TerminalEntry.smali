.class final Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;
.super Lcom/google/common/collect/ImmutableMapEntry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method final getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
