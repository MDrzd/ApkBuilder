.class final Lcom/google/common/collect/HashBiMap$BiEntry;
.super Lcom/google/common/collect/ImmutableEntry;


# instance fields
.field final keyHash:I

.field nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final valueHash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iput p4, p0, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    return-void
.end method
