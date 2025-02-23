.class Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    new-instance v1, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4$1;

    invoke-direct {v1, p0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4$1;-><init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;->this$0:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;

    invoke-static {v0}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;->access$000(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
