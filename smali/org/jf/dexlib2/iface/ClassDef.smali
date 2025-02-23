.class public interface abstract Lorg/jf/dexlib2/iface/ClassDef;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jf/dexlib2/iface/Annotatable;
.implements Lorg/jf/dexlib2/iface/reference/TypeReference;


# virtual methods
.method public abstract getAccessFlags()I
.end method

.method public abstract getAnnotations()Ljava/util/Set;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getDirectMethods()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFields()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getInstanceFields()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getInterfaces()Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethods()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getSourceFile()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getStaticFields()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getSuperclass()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getVirtualMethods()Ljava/lang/Iterable;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
