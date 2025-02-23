.class Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;
.super Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderStringPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderStringPool;Ljava/util/Collection;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-direct {p0, p2}, Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getValue(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;->getValue(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I

    move-result p1

    return p1
.end method

.method protected getValue(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return p1
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool$1;->setValue(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;I)I

    move-result p1

    return p1
.end method

.method protected setValue(Lorg/jf/dexlib2/writer/builder/BuilderStringReference;I)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderStringReference;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    iput p2, p1, Lorg/jf/dexlib2/writer/builder/BuilderStringReference;->index:I

    return v0
.end method
