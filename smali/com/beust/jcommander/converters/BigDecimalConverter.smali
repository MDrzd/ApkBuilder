.class public Lcom/beust/jcommander/converters/BigDecimalConverter;
.super Lcom/beust/jcommander/converters/BaseConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/beust/jcommander/converters/BaseConverter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/converters/BigDecimalConverter;->convert(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    const-string v1, "a BigDecimal"

    invoke-virtual {p0, p1, v1}, Lcom/beust/jcommander/converters/BigDecimalConverter;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
