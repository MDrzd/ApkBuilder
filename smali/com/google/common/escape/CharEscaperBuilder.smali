.class public final Lcom/google/common/escape/CharEscaperBuilder;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final map:Ljava/util/Map;

.field private max:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .registers 5

    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    if-le p1, p2, :cond_0

    iput p1, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    :cond_0
    return-object p0
.end method

.method public final addEscapes([CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .registers 6

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final toArray()[[C
    .registers 5

    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[C

    iget-object v1, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toEscaper()Lcom/google/common/escape/Escaper;
    .registers 3

    new-instance v0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/common/escape/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
