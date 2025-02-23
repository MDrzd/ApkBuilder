.class Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/apache/commons/lang3/text/StrLookup;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/text/StrLookup$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
