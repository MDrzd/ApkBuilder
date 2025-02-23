.class public final Lcom/gmail/heagoo/neweditor/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Cloneable;
.implements Ljava/text/CharacterIterator;


# instance fields
.field public a:[C

.field public b:I

.field public c:I

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/gmail/heagoo/neweditor/ab;-><init>([CII)V

    return-void
.end method

.method private constructor <init>([CII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/ab;->d:Z

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final current()C
    .registers 4

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    :goto_0
    const v0, 0xffff

    return v0
.end method

.method public final first()C
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    aget-char v0, v0, v1

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public final getBeginIndex()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    return v0
.end method

.method public final getEndIndex()I
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getIndex()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    return v0
.end method

.method public final last()C
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-nez v0, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final length()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    return v0
.end method

.method public final next()C
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ab;->current()C

    move-result v0

    return v0

    :cond_0
    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    const v0, 0xffff

    return v0
.end method

.method public final previous()C
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    return v0

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/neweditor/ab;->current()C

    move-result v0

    return v0
.end method

.method public final setIndex(I)C
    .registers 5

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    if-lt p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->e:I

    aget-char p1, p1, v0

    return p1

    :cond_1
    :goto_0
    const p1, 0xffff

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 5

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/gmail/heagoo/neweditor/ab;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/ab;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iput-object v1, v0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v1, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    sub-int/2addr p2, p1

    iput p2, v0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int/2addr p2, p1

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ab;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method
