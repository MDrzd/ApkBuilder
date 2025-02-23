.class Lorg/jf/dexlib2/dexbacked/OatFile$1;
.super Lorg/jf/util/AbstractForwardSequentialList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/OatFile;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/OatFile;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-direct {p0}, Lorg/jf/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/OatFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jf/dexlib2/dexbacked/OatFile$DexEntryIterator;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile;Lorg/jf/dexlib2/dexbacked/OatFile$1;)V

    new-instance v1, Lorg/jf/dexlib2/dexbacked/OatFile$1$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/dexbacked/OatFile$1$1;-><init>(Lorg/jf/dexlib2/dexbacked/OatFile$1;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/OatFile$1;->this$0:Lorg/jf/dexlib2/dexbacked/OatFile;

    invoke-static {v0}, Lorg/jf/dexlib2/dexbacked/OatFile;->access$000(Lorg/jf/dexlib2/dexbacked/OatFile;)Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/OatFile$OatHeader;->getDexFileCount()I

    move-result v0

    return v0
.end method
