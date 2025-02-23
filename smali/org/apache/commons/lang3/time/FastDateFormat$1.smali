.class final Lorg/apache/commons/lang3/time/FastDateFormat$1;
.super Lorg/apache/commons/lang3/time/FormatCache;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/time/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected final createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/apache/commons/lang3/time/FastDateFormat;
    .registers 5

    new-instance v0, Lorg/apache/commons/lang3/time/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method
