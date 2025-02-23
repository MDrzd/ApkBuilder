.class Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;
.super Ljava/lang/Object;


# instance fields
.field public final annotation:Ljava/lang/String;

.field public final indentLevel:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->indentLevel:I

    iput-object p2, p0, Lorg/jf/dexlib2/util/AnnotatedBytes$AnnotationItem;->annotation:Ljava/lang/String;

    return-void
.end method
