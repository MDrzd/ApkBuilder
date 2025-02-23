.class public Lorg/jf/dexlib2/builder/Label;
.super Ljava/lang/Object;


# instance fields
.field location:Lorg/jf/dexlib2/builder/MethodLocation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/jf/dexlib2/builder/MethodLocation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    return-void
.end method


# virtual methods
.method public getCodeAddress()I
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/builder/Label;->getLocation()Lorg/jf/dexlib2/builder/MethodLocation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jf/dexlib2/builder/MethodLocation;->getCodeAddress()I

    move-result v0

    return v0
.end method

.method public getLocation()Lorg/jf/dexlib2/builder/MethodLocation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get the location of a label that hasn\'t been placed yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPlaced()Z
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/builder/Label;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
