.class public abstract Lorg/jf/dexlib2/builder/BuilderSwitchPayload;
.super Lorg/jf/dexlib2/builder/BuilderInstruction;

# interfaces
.implements Lorg/jf/dexlib2/iface/instruction/SwitchPayload;


# instance fields
.field referrer:Lorg/jf/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/Opcode;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/Opcode;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/builder/BuilderInstruction;-><init>(Lorg/jf/dexlib2/Opcode;)V

    return-void
.end method


# virtual methods
.method public getReferrer()Lorg/jf/dexlib2/builder/MethodLocation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;->referrer:Lorg/jf/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/BuilderSwitchPayload;->referrer:Lorg/jf/dexlib2/builder/MethodLocation;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The referrer has not been set yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSwitchElements()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
