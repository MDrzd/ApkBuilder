.class Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

.field final synthetic val$annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

.field final synthetic val$fieldsStartOffset:I

.field final synthetic val$skipDuplicates:Z

.field final synthetic val$staticInitialValuesOffset:I


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;IIZ)V
    .registers 6

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iput-object p2, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    iput p3, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$staticInitialValuesOffset:I

    iput p4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$fieldsStartOffset:I

    iput-boolean p5, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$skipDuplicates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 8
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$annotationsDirectory:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;

    invoke-virtual {v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory;->getFieldAnnotationIterator()Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    move-result-object v6

    iget-object v0, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v0, v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$staticInitialValuesOffset:I

    invoke-static {v0, v1}, Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;->newOrEmpty(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;I)Lorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;

    move-result-object v5

    new-instance v0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;

    iget-object v1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;

    iget-object v3, v1, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef;->dexFile:Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;

    iget v4, p0, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;->val$fieldsStartOffset:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2$1;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedClassDef$2;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;ILorg/jf/dexlib2/dexbacked/util/StaticInitialValueIterator;Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;)V

    return-object v0
.end method
