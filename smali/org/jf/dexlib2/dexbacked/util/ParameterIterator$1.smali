.class Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;
.super Lorg/jf/dexlib2/base/BaseMethodParameter;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;

.field final synthetic val$annotations:Ljava/util/Set;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->this$0:Lorg/jf/dexlib2/dexbacked/util/ParameterIterator;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$annotations:Ljava/util/Set;

    iput-object p3, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jf/dexlib2/base/BaseMethodParameter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Set;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$annotations:Ljava/util/Set;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/util/ParameterIterator$1;->val$type:Ljava/lang/String;

    return-object v0
.end method
