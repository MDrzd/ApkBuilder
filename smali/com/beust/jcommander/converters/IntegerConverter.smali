.class public Lcom/beust/jcommander/converters/IntegerConverter;
.super Lcom/beust/jcommander/converters/BaseConverter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/beust/jcommander/converters/BaseConverter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/beust/jcommander/ParameterException;

    const-string v1, "an integer"

    invoke-virtual {p0, p1, v1}, Lcom/beust/jcommander/converters/IntegerConverter;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beust/jcommander/ParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/beust/jcommander/converters/IntegerConverter;->convert(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
