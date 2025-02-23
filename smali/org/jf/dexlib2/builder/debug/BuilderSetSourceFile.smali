.class public Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;
.super Lorg/jf/dexlib2/builder/BuilderDebugItem;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/SetSourceFile;


# instance fields
.field private final sourceFile:Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/iface/reference/StringReference;)V
    .registers 2
    .param p1    # Lorg/jf/dexlib2/iface/reference/StringReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lorg/jf/dexlib2/builder/BuilderDebugItem;-><init>()V

    iput-object p1, p0, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lorg/jf/dexlib2/iface/reference/StringReference;

    return-void
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

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lorg/jf/dexlib2/iface/reference/StringReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lorg/jf/dexlib2/iface/reference/StringReference;

    invoke-interface {v0}, Lorg/jf/dexlib2/iface/reference/StringReference;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFileReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/debug/BuilderSetSourceFile;->sourceFile:Lorg/jf/dexlib2/iface/reference/StringReference;

    return-object v0
.end method
