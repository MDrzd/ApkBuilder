.class Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;
.super Ljava/lang/Object;


# instance fields
.field final strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

.field final width:I


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/time/FastDateParser$Strategy;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    iput p2, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->width:I

    return-void
.end method


# virtual methods
.method getMaxWidth(Ljava/util/ListIterator;)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;

    iget-object v0, v0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->strategy:Lorg/apache/commons/lang3/time/FastDateParser$Strategy;

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/FastDateParser$Strategy;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/commons/lang3/time/FastDateParser$StrategyAndWidth;->width:I

    return p1

    :cond_1
    :goto_0
    return v1
.end method
