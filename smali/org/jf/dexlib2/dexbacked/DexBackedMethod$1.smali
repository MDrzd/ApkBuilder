.class Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;
.super Lorg/jf/util/AbstractForwardSequentialList;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

.field final synthetic val$parameterTypes:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedMethod;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->val$parameterTypes:Ljava/util/List;

    invoke-direct {p0}, Lorg/jf/util/AbstractForwardSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->val$parameterTypes:Ljava/util/List;

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    invoke-virtual {v2}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParameterAnnotations()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    invoke-virtual {v3}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->getParameterNames()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedMethod$1;->val$parameterTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
