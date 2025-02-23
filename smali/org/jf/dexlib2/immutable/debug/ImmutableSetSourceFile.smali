.class public Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;
.super Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/SetSourceFile;


# instance fields
.field protected final sourceFile:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/immutable/debug/ImmutableDebugItem;-><init>(I)V

    iput-object p2, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-void
.end method

.method public static of(Lorg/jf/dexlib2/iface/debug/SetSourceFile;)Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/iface/debug/SetSourceFile;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    instance-of v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    return-object p0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/SetSourceFile;->getCodeAddress()I

    move-result v1

    invoke-interface {p0}, Lorg/jf/dexlib2/iface/debug/SetSourceFile;->getSourceFile()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDebugItemType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceFileReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile$1;

    invoke-direct {v0, p0}, Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile$1;-><init>(Lorg/jf/dexlib2/immutable/debug/ImmutableSetSourceFile;)V

    return-object v0
.end method
