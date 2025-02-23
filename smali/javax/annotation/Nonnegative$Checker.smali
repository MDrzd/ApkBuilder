.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    check-cast p1, Ljavax/annotation/Nonnegative;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 8

    instance-of p1, p2, Ljava/lang/Number;

    if-nez p1, :cond_0

    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    :cond_0
    check-cast p2, Ljava/lang/Number;

    instance-of p1, p2, Ljava/lang/Long;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_4

    goto :goto_0

    :cond_2
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    :cond_5
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1
.end method
