.class Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

.field final synthetic val$classDef:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderClassPool;Lorg/jf/dexlib2/writer/builder/BuilderClassDef;)V
    .registers 3

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    iput-object p2, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->getKey()Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lorg/jf/dexlib2/writer/builder/BuilderClassDef;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    return-object v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    iget v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->val$classDef:Lorg/jf/dexlib2/writer/builder/BuilderClassDef;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/jf/dexlib2/writer/builder/BuilderClassDef;->classDefIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool$1;->setValue(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
