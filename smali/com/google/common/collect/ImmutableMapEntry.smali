.class abstract Lcom/google/common/collect/ImmutableMapEntry;
.super Lcom/google/common/collect/ImmutableEntry;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "unnecessary"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMapEntry;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method abstract getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method abstract getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
