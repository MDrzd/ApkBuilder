.class public Lorg/apache/commons/lang3/time/DateFormatUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ISO_8601_EXTENDED_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_8601_EXTENDED_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field public static final ISO_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_DATE_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_NO_T_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ISO_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMTP_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

.field private static final UTC_TIME_ZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_8601_EXTENDED_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_8601_EXTENDED_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATETIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_8601_EXTENDED_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "yyyy-MM-ddZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_DATE_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "\'T\'HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "\'T\'HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "HH:mm:ss"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_8601_EXTENDED_TIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "HH:mm:ssZZ"

    invoke-static {v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_8601_EXTENDED_TIME_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->ISO_TIME_NO_T_TIME_ZONE_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->SMTP_DATETIME_FORMAT:Lorg/apache/commons/lang3/time/FastDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0, p3}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(JLjava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p2, p3, p4}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 p1, 0x0

    invoke-static {v0, p2, p0, p1}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {v0, p2, p0, p3}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUTC(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/apache/commons/lang3/time/DateFormatUtils;->UTC_TIME_ZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/time/DateFormatUtils;->format(Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
