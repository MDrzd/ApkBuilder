.class public Lorg/apache/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public add(S)V
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public addAndGet(Ljava/lang/Number;)S
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p1
.end method

.method public addAndGet(S)S
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short p1, p1, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public decrementAndGet()S
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public doubleValue()D
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)S
    .registers 4

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    add-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndAdd(S)S
    .registers 4

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v1, p1

    int-to-short p1, v1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndDecrement()S
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public getAndIncrement()S
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public incrementAndGet()S
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public intValue()I
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .registers 2

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public shortValue()S
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public subtract(S)V
    .registers 3

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short p1, v0

    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
