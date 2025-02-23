.class public final Lcom/gmail/heagoo/neweditor/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/gmail/heagoo/neweditor/ab;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/neweditor/ab;)V
    .registers 4

    iget v0, p1, Lcom/gmail/heagoo/neweditor/ab;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/gmail/heagoo/neweditor/ac;-><init>(Lcom/gmail/heagoo/neweditor/ab;II)V

    return-void
.end method

.method public constructor <init>(Lcom/gmail/heagoo/neweditor/ab;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/gmail/heagoo/neweditor/ac;->b:I

    iput p3, p0, Lcom/gmail/heagoo/neweditor/ac;->a:I

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    iget v1, v1, Lcom/gmail/heagoo/neweditor/ab;->c:I

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ac;->b:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1
.end method

.method public final length()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ac;->a:I

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    new-instance v0, Lcom/gmail/heagoo/neweditor/ac;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ac;->b:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/gmail/heagoo/neweditor/ac;-><init>(Lcom/gmail/heagoo/neweditor/ab;II)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/ab;->a:[C

    iget v2, p0, Lcom/gmail/heagoo/neweditor/ac;->b:I

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/ac;->c:Lcom/gmail/heagoo/neweditor/ab;

    iget v3, v3, Lcom/gmail/heagoo/neweditor/ab;->c:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/gmail/heagoo/neweditor/ac;->a:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
