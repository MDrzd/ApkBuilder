.class final Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>([C)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .registers 5

    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharSetMatcher;->chars:[C

    aget-char p1, p1, p2

    invoke-static {p3, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
