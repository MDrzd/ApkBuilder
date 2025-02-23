.class final Lorg/apache/commons/lang3/time/FastDateParser$6;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method final modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .registers 3

    const/16 p1, 0xc

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method
