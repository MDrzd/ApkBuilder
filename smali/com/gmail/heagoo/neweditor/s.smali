.class public final Lcom/gmail/heagoo/neweditor/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:[Lcom/gmail/heagoo/neweditor/t;

.field private c:I

.field private d:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    const/16 v0, 0x34

    invoke-direct {p0, p1, v0}, Lcom/gmail/heagoo/neweditor/s;-><init>(ZI)V

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/s;->a:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/s;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x34

    iput p2, p0, Lcom/gmail/heagoo/neweditor/s;->c:I

    iput-boolean p1, p0, Lcom/gmail/heagoo/neweditor/s;->a:Z

    new-array p1, p2, [Lcom/gmail/heagoo/neweditor/t;

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/s;->b:[Lcom/gmail/heagoo/neweditor/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/neweditor/ab;II)B
    .registers 9

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/s;->b:[Lcom/gmail/heagoo/neweditor/t;

    iget-object v2, p1, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    aget-char v2, v2, p2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-object v3, p1, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    add-int v4, p2, p3

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gmail/heagoo/neweditor/s;->c:I

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/gmail/heagoo/neweditor/t;->b:[C

    array-length v2, v2

    if-eq p3, v2, :cond_2

    :cond_1
    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/t;->c:Lcom/gmail/heagoo/neweditor/t;

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/gmail/heagoo/neweditor/s;->a:Z

    iget-object v3, v1, Lcom/gmail/heagoo/neweditor/t;->b:[C

    invoke-static {v2, p1, p2, v3}, La/a/a;->a(ZLcom/gmail/heagoo/neweditor/ab;I[C)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-byte p1, v1, Lcom/gmail/heagoo/neweditor/t;->a:B

    return p1

    :cond_3
    return v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;B)V
    .registers 10

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-char v2, p1, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/gmail/heagoo/neweditor/s;->c:I

    rem-int/2addr v1, v2

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/gmail/heagoo/neweditor/s;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/s;->b:[Lcom/gmail/heagoo/neweditor/t;

    new-instance v2, Lcom/gmail/heagoo/neweditor/t;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/s;->b:[Lcom/gmail/heagoo/neweditor/t;

    aget-object v3, v3, v1

    invoke-direct {v2, p1, p2, v3}, Lcom/gmail/heagoo/neweditor/t;-><init>([CBLcom/gmail/heagoo/neweditor/t;)V

    aput-object v2, v0, v1

    return-void
.end method
