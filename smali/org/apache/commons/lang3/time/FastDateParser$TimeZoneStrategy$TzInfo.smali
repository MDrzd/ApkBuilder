.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
.super Ljava/lang/Object;


# instance fields
.field dstOffset:I

.field zone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    return-void
.end method
