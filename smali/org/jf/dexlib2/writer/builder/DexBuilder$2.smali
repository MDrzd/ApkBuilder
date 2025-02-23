.class Lorg/jf/dexlib2/writer/builder/DexBuilder$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$2;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/AnnotationElement;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder$2;->apply(Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$2;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-static {v0, p1}, Lorg/jf/dexlib2/writer/builder/DexBuilder;->access$100(Lorg/jf/dexlib2/writer/builder/DexBuilder;Lorg/jf/dexlib2/iface/AnnotationElement;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotationElement;

    move-result-object p1

    return-object p1
.end method
