.class final Lorg/jf/util/StringWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field final synthetic val$breakIterator:Ljava/text/BreakIterator;

.field final synthetic val$maxWidth:I

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/text/BreakIterator;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lorg/jf/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    iput p2, p0, Lorg/jf/util/StringWrapper$1;->val$maxWidth:I

    iput-object p3, p0, Lorg/jf/util/StringWrapper$1;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lorg/jf/util/StringWrapper$1$1;

    invoke-direct {v0, p0}, Lorg/jf/util/StringWrapper$1$1;-><init>(Lorg/jf/util/StringWrapper$1;)V

    return-object v0
.end method
