.class public abstract Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;
.super Lcom/google/common/collect/MultimapBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MultimapBuilder;-><init>(Lcom/google/common/collect/MultimapBuilder$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/Multimap;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SetMultimap;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lcom/google/common/collect/SetMultimap;
.end method

.method public build(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/SetMultimap;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MultimapBuilder;->build(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/SetMultimap;

    return-object p1
.end method
