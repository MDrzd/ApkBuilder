.class final Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public final isMatch([CIII)I
    .registers 5

    iget-char p3, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    aget-char p1, p1, p2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
