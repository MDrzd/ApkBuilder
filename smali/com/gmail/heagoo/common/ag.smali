.class public final Lcom/gmail/heagoo/common/ag;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/text/DecimalFormat;

.field private static b:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.# kB"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gmail/heagoo/common/ag;->a:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.# MB"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gmail/heagoo/common/ag;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " Bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v2, p0, v0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    if-gez v2, :cond_1

    sget-object v2, Lcom/gmail/heagoo/common/ag;->a:Ljava/text/DecimalFormat;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lcom/gmail/heagoo/common/ag;->b:Ljava/text/DecimalFormat;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
