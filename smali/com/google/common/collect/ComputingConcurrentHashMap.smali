.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/MapMakerInternalMap;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lcom/google/common/base/Function;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 4

    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getOrCompute(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object p1
.end method

.method bridge synthetic segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 16

    new-instance v14, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v5, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterWriteNanos:J

    iget-wide v7, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterAccessNanos:J

    iget v9, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->maximumSize:I

    iget v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->concurrencyLevel:I

    iget-object v11, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    iget-object v13, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    move-object v0, v14

    move-object v12, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/Function;)V

    return-object v14
.end method
