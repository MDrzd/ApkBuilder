.class abstract Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createEntrySet()Ljava/util/Set;
.end method

.method createKeySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Maps$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
