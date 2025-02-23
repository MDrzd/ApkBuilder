.class public Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;
.super Lorg/jf/dexlib2/builder/BuilderDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/EndLocal;


# instance fields
.field private final register:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/BuilderDebugItem;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;->register:I

    return-void
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegister()I
    .registers 2

    iget v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderEndLocal;->register:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
