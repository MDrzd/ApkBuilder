.class Lorg/jf/util/AbstractForwardSequentialList$1;
.super Lorg/jf/util/AbstractListIterator;


# instance fields
.field private forwardIterator:Ljava/util/Iterator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private index:I

.field final synthetic this$0:Lorg/jf/util/AbstractForwardSequentialList;

.field final synthetic val$initialIndex:I

.field final synthetic val$initialIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/jf/util/AbstractForwardSequentialList;ILjava/util/Iterator;)V
    .registers 4

    iput-object p1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->this$0:Lorg/jf/util/AbstractForwardSequentialList;

    iput p2, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->val$initialIndex:I

    iput-object p3, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->val$initialIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/jf/util/AbstractListIterator;-><init>()V

    iget p1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->val$initialIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    iget-object p1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->val$initialIterator:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    return-void
.end method

.method private getForwardIterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->this$0:Lorg/jf/util/AbstractForwardSequentialList;

    iget v1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jf/util/AbstractForwardSequentialList;->access$000(Lorg/jf/util/AbstractForwardSequentialList;I)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lorg/jf/util/AbstractForwardSequentialList$1;->getForwardIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lorg/jf/util/AbstractForwardSequentialList$1;->getForwardIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->forwardIterator:Ljava/util/Iterator;

    :try_start_0
    iget-object v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->this$0:Lorg/jf/util/AbstractForwardSequentialList;

    iget v1, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    invoke-static {v0, v1}, Lorg/jf/util/AbstractForwardSequentialList;->access$000(Lorg/jf/util/AbstractForwardSequentialList;I)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lorg/jf/util/AbstractForwardSequentialList$1;->index:I

    return v0
.end method
