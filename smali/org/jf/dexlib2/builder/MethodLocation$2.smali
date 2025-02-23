.class Lorg/jf/dexlib2/builder/MethodLocation$2;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/builder/MethodLocation;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/builder/MethodLocation;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/builder/MethodLocation$2;->this$0:Lorg/jf/dexlib2/builder/MethodLocation;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/builder/BuilderDebugItem;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/builder/MethodLocation$2;->add(Lorg/jf/dexlib2/builder/BuilderDebugItem;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/jf/dexlib2/builder/BuilderDebugItem;)Z
    .registers 4
    .param p1    # Lorg/jf/dexlib2/builder/BuilderDebugItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p1, Lorg/jf/dexlib2/builder/BuilderDebugItem;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2;->this$0:Lorg/jf/dexlib2/builder/MethodLocation;

    iput-object v0, p1, Lorg/jf/dexlib2/builder/BuilderDebugItem;->location:Lorg/jf/dexlib2/builder/MethodLocation;

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2;->this$0:Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jf/dexlib2/builder/MethodLocation;->access$100(Lorg/jf/dexlib2/builder/MethodLocation;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add a debug item that has already been added to a method. You must remove it from its current location first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2;->this$0:Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jf/dexlib2/builder/MethodLocation;->access$100(Lorg/jf/dexlib2/builder/MethodLocation;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/builder/MethodLocation$2$1;

    invoke-direct {v1, p0, v0}, Lorg/jf/dexlib2/builder/MethodLocation$2$1;-><init>(Lorg/jf/dexlib2/builder/MethodLocation$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/builder/MethodLocation$2;->this$0:Lorg/jf/dexlib2/builder/MethodLocation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jf/dexlib2/builder/MethodLocation;->access$100(Lorg/jf/dexlib2/builder/MethodLocation;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
