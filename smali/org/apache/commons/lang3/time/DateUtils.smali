.class public Lorg/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput v4, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const/16 v4, 0xd

    aput v4, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/16 v4, 0xc

    aput v4, v2, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    aput v1, v2, v3

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v1, v1, [I

    aput v3, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_0
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find ceiling of for type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J
    .registers 8

    if-eqz p0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-wide/16 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x6

    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v3, v0

    int-to-long v3, v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    :goto_2
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The fragment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    :pswitch_4
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    :pswitch_5
    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v3, v4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    :pswitch_6
    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long p0, p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    add-long/2addr v1, p0

    :pswitch_7
    return-wide v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J
    .registers 4

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;ILjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not iterate based on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 9

    if-eqz p0, :cond_7

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x7

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The range style "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    invoke-virtual {v5, v1, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v6, 0x6

    if-ne p1, v6, :cond_0

    move-object v6, v5

    move-object v5, p0

    goto :goto_0

    :cond_0
    move-object v6, v5

    const/4 v1, 0x1

    move-object v5, p0

    const/4 p0, 0x7

    goto :goto_2

    :pswitch_1
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    invoke-static {p0, v2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v6

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 v1, p1, -0x3

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 p0, v1, -0x1

    goto :goto_2

    :goto_0
    :pswitch_4
    const/4 p0, 0x1

    goto :goto_2

    :goto_1
    :pswitch_5
    const/4 p0, 0x7

    const/4 v1, 0x1

    :goto_2
    if-gtz v1, :cond_1

    add-int/lit8 v1, v1, 0x7

    :cond_1
    if-le v1, v4, :cond_2

    add-int/lit8 v1, v1, -0x7

    :cond_2
    if-gtz p0, :cond_3

    add-int/lit8 p0, p0, 0x7

    :cond_3
    if-le p0, v4, :cond_4

    add-int/lit8 p0, p0, -0x7

    :cond_4
    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-virtual {v5, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p0, :cond_6

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_6
    new-instance p0, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {p0, v5, v6}, Lorg/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x10b07600

    if-gt v4, v5, :cond_1d

    const/16 v4, 0xe

    if-ne v1, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sget-object v8, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v8, v2, :cond_1

    const/16 v8, 0x1f4

    if-ge v4, v8, :cond_2

    :cond_1
    int-to-long v8, v4

    sub-long/2addr v6, v8

    :cond_2
    const/16 v4, 0xd

    if-ne v1, v4, :cond_3

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v10, 0x1e

    if-nez v9, :cond_5

    sget-object v11, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v11, v2, :cond_4

    if-ge v4, v10, :cond_5

    :cond_4
    int-to-long v11, v4

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    sub-long/2addr v6, v11

    :cond_5
    const/16 v4, 0xc

    if-ne v1, v4, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v9, :cond_8

    sget-object v9, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v9, v2, :cond_7

    if-ge v11, v10, :cond_8

    :cond_7
    int-to-long v9, v11

    const-wide/32 v11, 0xea60

    mul-long v9, v9, v11

    sub-long/2addr v6, v9

    :cond_8
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v11, v9, v6

    if-eqz v11, :cond_9

    invoke-virtual {v5, v6, v7}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_9
    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils;->fields:[[I

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v6, :cond_1c

    aget-object v10, v5, v7

    array-length v11, v10

    const/4 v12, 0x0

    :goto_2
    const/16 v13, 0xf

    const/4 v14, 0x2

    const/16 v15, 0x3e9

    const/4 v4, 0x5

    if-ge v12, v11, :cond_11

    aget v8, v10, v12

    if-ne v8, v1, :cond_10

    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-eq v2, v5, :cond_a

    sget-object v5, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    if-ne v2, v5, :cond_f

    if-eqz v9, :cond_f

    :cond_a
    if-ne v1, v15, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_b

    invoke-virtual {v0, v4, v13}, Ljava/util/Calendar;->add(II)V

    return-void

    :cond_b
    const/16 v1, -0xf

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v14, v3}, Ljava/util/Calendar;->add(II)V

    return-void

    :cond_c
    const/16 v2, 0x9

    if-ne v1, v2, :cond_e

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    return-void

    :cond_d
    const/16 v2, -0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    return-void

    :cond_e
    const/4 v8, 0x0

    aget v1, v10, v8

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    :cond_f
    return-void

    :cond_10
    const/4 v8, 0x0

    add-int/lit8 v12, v12, 0x1

    const/16 v4, 0xc

    goto :goto_2

    :cond_11
    const/4 v8, 0x0

    const/16 v11, 0x9

    if-eq v1, v11, :cond_16

    if-eq v1, v15, :cond_13

    :cond_12
    const/16 v8, 0xc

    goto :goto_5

    :cond_13
    aget v11, v10, v8

    if-ne v11, v4, :cond_12

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v4, v13, :cond_14

    add-int/lit8 v4, v4, -0xf

    :cond_14
    move v8, v4

    const/4 v4, 0x7

    if-le v8, v4, :cond_15

    const/4 v9, 0x1

    goto :goto_3

    :cond_15
    const/4 v9, 0x0

    :goto_3
    move v11, v9

    const/4 v4, 0x1

    move v9, v8

    const/16 v8, 0xc

    goto :goto_6

    :cond_16
    const/4 v4, 0x0

    aget v8, v10, v4

    const/16 v4, 0xb

    if-ne v8, v4, :cond_12

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v8, 0xc

    if-lt v4, v8, :cond_17

    add-int/lit8 v4, v4, -0xc

    :cond_17
    const/4 v9, 0x6

    if-lt v4, v9, :cond_18

    const/4 v9, 0x1

    goto :goto_4

    :cond_18
    const/4 v9, 0x0

    :goto_4
    move v11, v9

    move v9, v4

    const/4 v4, 0x1

    goto :goto_6

    :goto_5
    move v11, v9

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_6
    if-nez v4, :cond_1a

    const/4 v4, 0x0

    aget v9, v10, v4

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    aget v11, v10, v4

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v11

    aget v12, v10, v4

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v12, v9

    sub-int/2addr v11, v9

    div-int/2addr v11, v14

    if-le v12, v11, :cond_19

    const/4 v9, 0x1

    goto :goto_7

    :cond_19
    const/4 v9, 0x0

    :goto_7
    move v11, v9

    move v9, v12

    goto :goto_8

    :cond_1a
    const/4 v4, 0x0

    :goto_8
    if-eqz v9, :cond_1b

    aget v12, v10, v4

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v0, v12, v10}, Ljava/util/Calendar;->set(II)V

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    move v9, v11

    const/16 v4, 0xc

    goto/16 :goto_1

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Calendar value too large for accurate calculations"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDate(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->parseDateStrictly(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/String;Z)Ljava/util/Date;
    .registers 11

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/Calendar;->setLenient(Z)V

    array-length p3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    aget-object v5, p2, v4

    new-instance v6, Lorg/apache/commons/lang3/time/FastDateParser;

    invoke-direct {v6, v5, v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    :try_start_0
    invoke-virtual {v6, p0, v1, v3}, Lorg/apache/commons/lang3/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    :cond_1
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/text/ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to parse the date: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-direct {p1, p0, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Date and Patterns must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not round "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 5

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 2

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    sget-object v0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 4

    if-eqz p0, :cond_2

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not truncate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The date must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/lang3/time/DateUtils;->validateDateNotNull(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lorg/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p1, p0}, Lorg/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;ILorg/apache/commons/lang3/time/DateUtils$ModifyType;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .registers 3

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .registers 3

    invoke-static {p0, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static validateDateNotNull(Ljava/util/Date;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v1, "The date must not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
