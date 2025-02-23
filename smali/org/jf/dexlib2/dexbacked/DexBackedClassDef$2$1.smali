.class Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeLookaheadIterator;


# instance fields
.field private count:I

.field private previousField:Lorg/jf/dexlib2/iface/reference/FieldReference;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private previousIndex:I

.field final synthetic this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

.field final synthetic val$annotationIterator:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

.field final synthetic val$staticInitialValueIterator:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V
    .registers 6

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    iput-object p4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$staticInitialValueIterator:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;

    iput-object p5, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$annotationIterator:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

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

    invoke-virtual {p0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/DexBackedField;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;)Lorg/jf/dexlib2/dexbacked/DexBackedField;
    .registers 9
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :cond_0
    iget v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->count:I

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v1, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-static {v1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->access$000(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    invoke-virtual {p1}, Lorg/jf/dexlib2/dexbacked/DexReader;->getOffset()I

    move-result p1

    invoke-static {v0, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->access$102(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;I)I

    invoke-virtual {p0}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->endOfData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jf/dexlib2/dexbacked/DexBackedField;

    return-object p1

    :cond_1
    new-instance v6, Lorg/jf/dexlib2/dexbacked/DexBackedField;

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-object v2, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget v3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousIndex:I

    iget-object v4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$staticInitialValueIterator:Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;

    iget-object v5, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->val$annotationIterator:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jf/dexlib2/dexbacked/DexBackedField;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;ILorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousField:Lorg/jf/dexlib2/iface/reference/FieldReference;

    invoke-static {v6}, Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;->of(Lorg/jf/dexlib2/iface/reference/FieldReference;)Lorg/jf/dexlib2/immutable/reference/ImmutableFieldReference;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousField:Lorg/jf/dexlib2/iface/reference/FieldReference;

    iget v2, v6, Lorg/jf/dexlib2/dexbacked/DexBackedField;->fieldIndex:I

    iput v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->previousIndex:I

    iget-object v2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;->this$1:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;

    iget-boolean v2, v2, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$skipDuplicates:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lorg/jf/dexlib2/iface/reference/FieldReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-object v6
.end method
