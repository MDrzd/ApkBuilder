.class Lcom/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lcom/google/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
