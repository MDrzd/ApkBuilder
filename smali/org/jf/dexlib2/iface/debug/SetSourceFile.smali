.class public interface abstract Lorg/jf/dexlib2/iface/debug/SetSourceFile;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/debug/DebugItem;


# virtual methods
.method public abstract getSourceFile()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSourceFileReference()Lorg/jf/dexlib2/iface/reference/StringReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
