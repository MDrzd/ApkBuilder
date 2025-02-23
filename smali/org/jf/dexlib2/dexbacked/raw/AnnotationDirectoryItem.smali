.class public Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem;
.super Ljava/lang/Object;


# static fields
.field public static final ANNOTATED_METHOD_SIZE_OFFSET:I = 0x8

.field public static final ANNOTATED_PARAMETERS_SIZE:I = 0xc

.field public static final CLASS_ANNOTATIONS_OFFSET:I = 0x0

.field public static final FIELD_SIZE_OFFSET:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotator(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)Lorg/jf/dexlib2/dexbacked/raw/SectionAnnotator;
    .registers 3
    .param p0    # Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Lorg/jf/dexlib2/dexbacked/raw/MapItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;

    invoke-direct {v0, p0, p1}, Lorg/jf/dexlib2/dexbacked/raw/AnnotationDirectoryItem$1;-><init>(Lorg/jf/dexlib2/dexbacked/raw/util/DexAnnotator;Lorg/jf/dexlib2/dexbacked/raw/MapItem;)V

    return-object v0
.end method
