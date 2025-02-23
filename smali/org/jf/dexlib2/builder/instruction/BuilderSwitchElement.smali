.class public Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/SwitchElement;


# instance fields
.field private final key:I

.field parent:Lorg/jf/dexlib2/builder/BuilderSwitchPayload;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final target:Lorg/jf/dexlib2/builder/Label;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/builder/BuilderSwitchPayload;ILorg/jf/dexlib2/builder/Label;)V
    .registers 4
    .param p1    # Lorg/jf/dexlib2/builder/BuilderSwitchPayload;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/builder/Label;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->parent:Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

    iput p2, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->key:I

    iput-object p3, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lorg/jf/dexlib2/builder/Label;

    return-void
.end method


# virtual methods
.method public getKey()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->key:I

    return v0
.end method

.method public getOffset()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lorg/jf/dexlib2/builder/Label;

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/Label;->getCodeAddress()I

    move-result v0

    iget-object v1, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->parent:Lorg/jf/dexlib2/builder/BuilderSwitchPayload;

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;->getReferrer()Lorg/jf/dexlib2/builder/MethodLocation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jf/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTarget()Lorg/jf/dexlib2/builder/Label;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/instruction/BuilderSwitchElement;->target:Lorg/jf/dexlib2/builder/Label;

    return-object v0
.end method
