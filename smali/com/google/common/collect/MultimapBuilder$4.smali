.class final Lcom/google/common/collect/MultimapBuilder$4;
.super Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;


# instance fields
.field final synthetic val$keyClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$4;->val$keyClass:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;-><init>()V

    return-void
.end method


# virtual methods
.method final createMap()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/MultimapBuilder$4;->val$keyClass:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
