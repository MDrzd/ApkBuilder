.class Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    check-cast p1, Lorg/jf/dexlib2/iface/Annotation;

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;->apply(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool$1;->this$0:Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;->dexBuilder:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    iget-object v0, v0, Lorg/jf/dexlib2/writer/builder/DexBuilder;->annotationSection:Lorg/jf/dexlib2/writer/AnnotationSection;

    check-cast v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;

    invoke-virtual {v0, p1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;->internAnnotation(Lorg/jf/dexlib2/iface/Annotation;)Lorg/jf/dexlib2/writer/builder/BuilderAnnotation;

    move-result-object p1

    return-object p1
.end method
