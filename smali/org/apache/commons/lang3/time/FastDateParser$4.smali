.class final Lorg/apache/commons/lang3/time/FastDateParser$4;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method final modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 4

    const/4 p1, 0x1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    add-int/2addr p2, p1

    return p2

    :cond_0
    return p1
.end method
