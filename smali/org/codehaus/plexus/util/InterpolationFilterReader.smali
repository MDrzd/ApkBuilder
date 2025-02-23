.class public Lorg/codehaus/plexus/util/InterpolationFilterReader;
.super Ljava/io/FilterReader;


# static fields
.field private static final DEFAULT_BEGIN_TOKEN:Ljava/lang/String; = "${"

.field private static final DEFAULT_END_TOKEN:Ljava/lang/String; = "}"


# instance fields
.field private beginToken:Ljava/lang/String;

.field private beginTokenLength:I

.field private endToken:Ljava/lang/String;

.field private endTokenLength:I

.field private previousIndex:I

.field private replaceData:Ljava/lang/String;

.field private replaceIndex:I

.field private variables:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 5

    const-string v0, "${"

    const-string v1, "}"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/codehaus/plexus/util/InterpolationFilterReader;-><init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    iput p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->variables:Ljava/util/Map;

    iput-object p2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->variables:Ljava/util/Map;

    iput-object p3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginToken:Ljava/lang/String;

    iput-object p4, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginTokenLength:I

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    return-void
.end method


# virtual methods
.method public read()I
    .registers 9

    iget v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    iget-object v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    iget-object v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    iput v1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    :cond_0
    return v0

    :cond_1
    iget v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    iget v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    iget v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginToken:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v4, 0x1

    :cond_3
    iget v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    if-eq v5, v1, :cond_4

    iget v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    iget v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v5

    :goto_1
    if-eq v5, v1, :cond_7

    int-to-char v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginTokenLength:I

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginToken:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_5

    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    iget-object v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_3

    :cond_7
    :goto_2
    if-eq v5, v1, :cond_b

    iget v4, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    if-le v4, v2, :cond_b

    const/4 v4, 0x1

    :goto_3
    iget v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    if-eq v5, v1, :cond_8

    iget v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    iget v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    if-ge v5, v6, :cond_8

    iget-object v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    iget v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v5

    :goto_4
    if-eq v5, v1, :cond_b

    int-to-char v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endToken:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v5, v4, :cond_9

    const/4 v5, -0x1

    goto :goto_5

    :cond_9
    iget v4, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    if-lt v7, v4, :cond_a

    goto :goto_5

    :cond_a
    move v4, v7

    goto :goto_3

    :cond_b
    :goto_5
    if-ne v5, v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    iput v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    iget-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_c
    iget v1, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->beginTokenLength:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v4, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->variables:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    iput-object v0, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceData:Ljava/lang/String;

    iput v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->replaceIndex:I

    :cond_d
    invoke-virtual {p0}, Lorg/codehaus/plexus/util/InterpolationFilterReader;->read()I

    move-result v0

    return v0

    :cond_e
    iput v3, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->previousIndex:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget v2, p0, Lorg/codehaus/plexus/util/InterpolationFilterReader;->endTokenLength:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_f
    return v0
.end method

.method public read([CII)I
    .registers 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/InterpolationFilterReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    add-int v2, p2, v0

    int-to-char v1, v1

    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public skip(J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/plexus/util/InterpolationFilterReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skip value is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
