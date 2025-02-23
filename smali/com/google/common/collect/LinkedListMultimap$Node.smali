.class final Lcom/google/common/collect/LinkedListMultimap$Node;
.super Lcom/google/common/collect/AbstractMapEntry;


# instance fields
.field final key:Ljava/lang/Object;

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;

.field nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

.field previous:Lcom/google/common/collect/LinkedListMultimap$Node;

.field previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
