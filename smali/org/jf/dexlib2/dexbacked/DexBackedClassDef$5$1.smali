.class Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;


# instance fields
.field private count:I

.field private previousIndex:I

.field private previousMethod:Lorg/jf/dexlib2/iface/reference/MethodReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V
    .registers 4

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    invoke-direct {p0, p2, p3}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/DexBackedMethod;
    .registers 9
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->count:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->access$600(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    return-object p1

    :cond_1
    new-instance v6, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v2, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousIndex:I

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v4, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;->methodAnnotationIterator:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-object v5, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;->parameterAnnotationIterator:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;ILorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousMethod:Lorg/jf/dexlib2/iface/reference/MethodReference;

    invoke-static {v6}, Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;->of(Lorg/jf/dexlib2/iface/reference/MethodReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableMethodReference;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousMethod:Lorg/jf/dexlib2/iface/reference/MethodReference;

    iget v2, v6, Lorg/jf/dexlib2/dexbacked/DexBackedMethod;->methodIndex:I

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->previousIndex:I

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;

    iget-boolean v2, v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$5;->val$skipDuplicates:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/iface/reference/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-object v6
.end method
