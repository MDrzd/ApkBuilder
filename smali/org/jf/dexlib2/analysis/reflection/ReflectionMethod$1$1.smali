.class Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;
.super Lorg/jf/dexlib2/base/BaseMethodParameter;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;I)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;->this$1:Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;

    iput p2, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;->val$index:I

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;->this$1:Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;->access$000(Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1;)[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionMethod$1$1;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/util/ReflectionUtils;->javaToDexName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
