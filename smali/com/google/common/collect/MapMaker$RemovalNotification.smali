.class final Lcom/google/common/collect/MapMaker$RemovalNotification;
.super Lcom/google/common/collect/ImmutableEntry;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    return-void
.end method


# virtual methods
.method public final getCause()Lcom/google/common/collect/MapMaker$RemovalCause;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public final wasEvicted()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker$RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method
