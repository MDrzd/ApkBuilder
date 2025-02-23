.class Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;
.super Ljava/util/AbstractList;


# instance fields
.field private final parameters:Ljava/util/List;

.field final synthetic this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iget-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor;

    invoke-virtual {p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor;->getParameters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/iface/MethodParameter;

    invoke-interface {p1}, Lorg/jf/dexlib2/iface/MethodParameter;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionConstructor$2;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
