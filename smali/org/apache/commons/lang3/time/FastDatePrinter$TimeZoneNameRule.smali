.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# instance fields
.field private final mDaylight:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mStandard:Ljava/lang/String;

.field private final mStyle:I


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStyle:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0, p3, p2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStyle:I

    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    invoke-static {v0, p2, v1, v2}, Lorg/apache/commons/lang3/time/FastDatePrinter;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public estimateLength()I
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
