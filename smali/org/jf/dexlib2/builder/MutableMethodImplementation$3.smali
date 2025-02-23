.class Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/jf/dexlib2/builder/MethodLocation;)Ljava/lang/Iterable;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/builder/MethodLocation;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;->this$0:Lorg/jf/dexlib2/builder/MutableMethodImplementation;

    invoke-static {v0}, Lorg/jf/dexlib2/builder/MutableMethodImplementation;->access$100(Lorg/jf/dexlib2/builder/MutableMethodImplementation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jf/dexlib2/builder/MethodLocation;->getDebugItems()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This iterator was invalidated by a change to this MutableMethodImplementation."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/builder/MutableMethodImplementation$3;->apply(Lorg/jf/dexlib2/builder/MethodLocation;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
