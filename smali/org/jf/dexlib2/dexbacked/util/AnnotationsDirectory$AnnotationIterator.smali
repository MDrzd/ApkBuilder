.class public interface abstract Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator$1;

    invoke-direct {v0}, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator$1;-><init>()V

    sput-object v0, Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;->EMPTY:Lorg/jf/dexlib2/dexbacked/util/AnnotationsDirectory$AnnotationIterator;

    return-void
.end method


# virtual methods
.method public abstract reset()V
.end method

.method public abstract seekTo(I)I
.end method
