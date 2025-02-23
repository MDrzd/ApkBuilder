.class public Lorg/jf/util/StringUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    const/16 v5, 0x7f

    if-lt v3, v4, :cond_1

    if-ge v3, v5, :cond_1

    const/16 v4, 0x27

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_0

    const/16 v4, 0x22

    if-eq v3, v4, :cond_0

    if-ne v3, v5, :cond_4

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    if-gt v3, v5, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v3, "\\n"

    goto :goto_1

    :pswitch_1
    const-string v3, "\\t"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    const-string v3, "\\r"

    goto :goto_1

    :cond_3
    :goto_2
    const-string v4, "\\u"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v3, 0xc

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v3, 0x8

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    :cond_4
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeEscapedChar(Ljava/io/Writer;C)V
    .registers 4

    const/16 v0, 0x7f

    const/16 v1, 0x20

    if-lt p1, v1, :cond_2

    if-ge p1, v0, :cond_2

    const/16 v0, 0x27

    const/16 v1, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_2
    if-gt p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "\\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "\\t"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "\\r"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    shr-int/lit8 v0, p1, 0xc

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x7f

    if-lt v1, v2, :cond_1

    if-ge v1, v3, :cond_1

    const/16 v2, 0x27

    const/16 v3, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_4

    :cond_0
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_3

    :cond_1
    if-gt v1, v3, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "\\n"

    goto :goto_1

    :pswitch_1
    const-string v1, "\\t"

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const-string v1, "\\r"

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "\\u"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    shr-int/lit8 v2, v1, 0xc

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v2, v1, 0x8

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    :cond_4
    :goto_3
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
