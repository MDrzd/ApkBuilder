.class final Lcom/google/common/collect/MultimapBuilder$1;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# instance fields
.field final synthetic val$expectedKeys:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method final createMap()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/google/common/collect/MultimapBuilder$1;->val$expectedKeys:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method
