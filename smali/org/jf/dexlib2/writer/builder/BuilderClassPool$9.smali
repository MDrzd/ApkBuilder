.class Lorg/jf/dexlib2/writer/builder/BuilderClassPool$9;
.super Lorg/jf/dexlib2/writer/builder/BuilderMapEntryCollection;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassPool;Ljava/util/Collection;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$9;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

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

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$9;->getValue(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)I

    move-result p1

    return p1
.end method

.method protected getValue(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)I
    .registers 2
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget p1, p1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return p1
.end method

.method protected bridge synthetic setValue(Ljava/lang/Object;I)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    check-cast p1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$9;->setValue(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;I)I

    move-result p1

    return p1
.end method

.method protected setValue(Lorg/jf/dexlib2/writer/builder/BuilderClassDef;I)I
    .registers 4
    .param p1    # Lorg/jf/dexlib2/writer/builder/BuilderClassDef;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget v0, p1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    iput p2, p1, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    return v0
.end method
