.class Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$1:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4$1;->this$1:Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionClassDef$4$1;->apply(Ljava/lang/reflect/Field;)Lorg/jf/dexlib2/iface/Field;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/reflect/Field;)Lorg/jf/dexlib2/iface/Field;
    .registers 3
    .param p1    # Ljava/lang/reflect/Field;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/analysis/reflection/ReflectionField;

    invoke-direct {v0, p1}, Lorg/jf/dexlib2/analysis/reflection/ReflectionField;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method
