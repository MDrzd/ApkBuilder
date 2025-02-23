.class Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation$1;
.super Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;


# direct methods
.method constructor <init>(Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V
    .registers 5

    iput-object p1, p0, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation$1;->this$0:Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation;

    invoke-direct {p0, p2, p3, p4}, Lorg/jf/dexlib2/dexbacked/util/VariableSizeSet;-><init>(Lorg/jf/dexlib2/dexbacked/DexBackedDexFile;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Ljava/lang/Object;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotation$1;->readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Lorg/jf/dexlib2/dexbacked/DexBackedAnnotationElement;

    move-result-object p1

    return-object p1
.end method

.method protected readNextItem(Lorg/jf/dexlib2/dexbacked/DexReader;I)Lorg/jf/dexlib2/dexbacked/DexBackedAnnotationElement;
    .registers 3
    .param p1    # Lorg/jf/dexlib2/dexbacked/DexReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance p2, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotationElement;

    invoke-direct {p2, p1}, Lorg/jf/dexlib2/dexbacked/DexBackedAnnotationElement;-><init>(Lorg/jf/dexlib2/dexbacked/DexReader;)V

    return-object p2
.end method
