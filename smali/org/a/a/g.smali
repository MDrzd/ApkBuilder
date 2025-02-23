.class public Lorg/a/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final debug:Z = false


# instance fields
.field protected accept:[S

.field protected decisionNumber:I

.field protected eof:[S

.field protected eot:[S

.field protected max:[C

.field protected min:[C

.field protected recognizer:Lorg/a/a/a;

.field protected special:[S

.field protected transition:[[S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unpackEncodedString(Ljava/lang/String;)[S
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    new-array v1, v2, [S

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v3, :cond_1

    add-int/lit8 v6, v2, 0x1

    int-to-short v7, v4

    aput-short v7, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static unpackEncodedStringToUnsignedChars(Ljava/lang/String;)[C
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    new-array v1, v2, [C

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v3, :cond_1

    add-int/lit8 v6, v2, 0x1

    aput-char v4, v1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method protected error(Lorg/a/a/r;)V
    .registers 2

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "n/a"

    return-object v0
.end method

.method protected noViableAlt(ILorg/a/a/j;)V
    .registers 6

    iget-object v0, p0, Lorg/a/a/g;->recognizer:Lorg/a/a/a;

    iget-object v0, v0, Lorg/a/a/a;->state:Lorg/a/a/v;

    iget v0, v0, Lorg/a/a/v;->g:I

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/a/a/g;->recognizer:Lorg/a/a/a;

    iget-object p1, p1, Lorg/a/a/a;->state:Lorg/a/a/v;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/a/a/v;->e:Z

    return-void

    :cond_0
    new-instance v0, Lorg/a/a/r;

    invoke-virtual {p0}, Lorg/a/a/g;->getDescription()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/a/a/g;->decisionNumber:I

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/a/a/r;-><init>(Ljava/lang/String;IILorg/a/a/j;)V

    invoke-virtual {p0, v0}, Lorg/a/a/g;->error(Lorg/a/a/r;)V

    throw v0
.end method

.method public predict(Lorg/a/a/j;)I
    .registers 8

    invoke-interface {p1}, Lorg/a/a/j;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/a/a/g;->special:[S

    aget-short v3, v3, v2

    if-ltz v3, :cond_1

    invoke-virtual {p0, v3, p1}, Lorg/a/a/g;->specialStateTransition(ILorg/a/a/j;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v2, p1}, Lorg/a/a/g;->noViableAlt(ILorg/a/a/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    return v1

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lorg/a/a/j;->e()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/a/a/g;->accept:[S

    aget-short v3, v3, v2

    if-lez v3, :cond_2

    iget-object v1, p0, Lorg/a/a/g;->accept:[S

    aget-short v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    return v1

    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {p1, v3}, Lorg/a/a/j;->e(I)I

    move-result v3

    int-to-char v3, v3

    iget-object v4, p0, Lorg/a/a/g;->min:[C

    aget-char v4, v4, v2

    if-lt v3, v4, :cond_5

    iget-object v4, p0, Lorg/a/a/g;->max:[C

    aget-char v4, v4, v2

    if-gt v3, v4, :cond_5

    iget-object v4, p0, Lorg/a/a/g;->transition:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/a/a/g;->min:[C

    aget-char v5, v5, v2

    sub-int/2addr v3, v5

    aget-short v3, v4, v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lorg/a/a/g;->eot:[S

    aget-short v3, v3, v2

    if-ltz v3, :cond_3

    iget-object v3, p0, Lorg/a/a/g;->eot:[S

    aget-short v2, v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p1}, Lorg/a/a/g;->noViableAlt(ILorg/a/a/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    return v1

    :cond_4
    :try_start_3
    invoke-interface {p1}, Lorg/a/a/j;->e()V

    move v2, v3

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lorg/a/a/g;->eot:[S

    aget-short v4, v4, v2

    if-ltz v4, :cond_6

    iget-object v3, p0, Lorg/a/a/g;->eot:[S

    aget-short v2, v3, v2

    goto :goto_1

    :cond_6
    const v4, 0xffff

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lorg/a/a/g;->eof:[S

    aget-short v3, v3, v2

    if-ltz v3, :cond_7

    iget-object v1, p0, Lorg/a/a/g;->accept:[S

    iget-object v3, p0, Lorg/a/a/g;->eof:[S

    aget-short v2, v3, v2

    aget-short v1, v1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    return v1

    :cond_7
    :try_start_4
    invoke-virtual {p0, v2, p1}, Lorg/a/a/g;->noViableAlt(ILorg/a/a/j;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Lorg/a/a/j;->a(I)V

    throw v1
.end method

.method public specialStateTransition(ILorg/a/a/j;)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method
