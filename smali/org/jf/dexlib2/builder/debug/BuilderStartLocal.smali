.class public Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;
.super Lorg/jf/dexlib2/builder/BuilderDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/StartLocal;


# instance fields
.field private final name:Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final register:I

.field private final signature:Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final type:Lorg/jf/dexlib2/iface/reference/TypeReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/jf/dexlib2/iface/reference/StringReference;Lorg/jf/dexlib2/iface/reference/TypeReference;Lorg/jf/dexlib2/iface/reference/StringReference;)V
    .registers 5
    .param p2    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/jf/dexlib2/iface/reference/TypeReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/BuilderDebugItem;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->register:I

    iput-object p2, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->name:Lorg/jf/dexlib2/iface/reference/StringReference;

    iput-object p3, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->type:Lorg/jf/dexlib2/iface/reference/TypeReference;

    iput-object p4, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->signature:Lorg/jf/dexlib2/iface/reference/StringReference;

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->name:Lorg/jf/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->name:Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->name:Lorg/jf/dexlib2/iface/reference/StringReference;

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->signature:Lorg/jf/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->signature:Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->signature:Lorg/jf/dexlib2/iface/reference/StringReference;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->type:Lorg/jf/dexlib2/iface/reference/TypeReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->type:Lorg/jf/dexlib2/iface/reference/TypeReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/TypeReference;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeReference()Lorg/jf/dexlib2/iface/reference/TypeReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderStartLocal;->type:Lorg/jf/dexlib2/iface/reference/TypeReference;

    return-object v0
.end method
