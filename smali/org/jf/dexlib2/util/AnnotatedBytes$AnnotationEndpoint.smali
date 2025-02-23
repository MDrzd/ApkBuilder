.class Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;
.super Ljava/lang/Object;


# instance fields
.field public final pointAnnotations:Ljava/util/List;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->pointAnnotations:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;->rangeAnnotation:Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jf/dexlib2/util/AnnotatedBytes$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationEndpoint;-><init>()V

    return-void
.end method
