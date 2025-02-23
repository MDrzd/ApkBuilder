.class Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->this$0:Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/builder/SwitchLabelElement;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->apply(Lorg/jf/dexlib2/builder/SwitchLabelElement;)Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/builder/SwitchLabelElement;)Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;
    .registers 5
    .param p1    # Lorg/jf/dexlib2/builder/SwitchLabelElement;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;

    iget-object v1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload$1;->this$0:Lorg/jf/dexlib2/builder/instruction/BuilderSparseSwitchPayload;

    iget v2, p1, Lorg/jf/dexlib2/builder/SwitchLabelElement;->key:I

    iget-object p1, p1, Lorg/jf/dexlib2/builder/SwitchLabelElement;->target:Lorg/jf/dexlib2/builder/Label;

    invoke-direct {v0, v1, v2, p1}, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;-><init>(Lorg/jf/dexlib2/builder/BuilderSwitchPayload;ILorg/jf/dexlib2/builder/Label;)V

    return-object v0
.end method
