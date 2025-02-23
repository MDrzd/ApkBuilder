.class public final Lcom/gmail/heagoo/neweditor/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/gmail/heagoo/neweditor/b;->a:I

    iput v0, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/a;->c:I

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    sget p1, Lcom/gmail/heagoo/neweditor/b;->b:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/gmail/heagoo/neweditor/b;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    sget p1, Lcom/gmail/heagoo/neweditor/b;->d:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/gmail/heagoo/neweditor/a;)Z
    .registers 6

    iget v0, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/gmail/heagoo/neweditor/a;->c:I

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lcom/gmail/heagoo/neweditor/a;->c:I

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/gmail/heagoo/neweditor/a;->c:I

    iget-object p1, p1, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/gmail/heagoo/neweditor/a;->c:I

    if-ne v0, p1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public final b(Lcom/gmail/heagoo/neweditor/a;)V
    .registers 4

    iget v0, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/a;->a:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/gmail/heagoo/neweditor/a;->d:I

    sget v1, Lcom/gmail/heagoo/neweditor/b;->c:I

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/neweditor/a;->b:Ljava/lang/String;

    iget p1, p1, Lcom/gmail/heagoo/neweditor/a;->c:I

    iput p1, p0, Lcom/gmail/heagoo/neweditor/a;->c:I

    :cond_1
    return-void
.end method
