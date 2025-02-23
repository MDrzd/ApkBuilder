.class final Lorg/apache/commons/lang3/time/FastDateParser$2;
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

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/FastDateParser;->access$700(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method
