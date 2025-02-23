.class final Lorg/apache/commons/lang3/text/StrMatcher$TrimMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .registers 5

    aget-char p1, p1, p2

    const/16 p2, 0x20

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
