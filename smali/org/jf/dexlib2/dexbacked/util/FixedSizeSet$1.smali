.class Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field index:I

.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;

    invoke-virtual {v1}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet$1;->index:I

    invoke-virtual {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/FixedSizeSet;->readItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
