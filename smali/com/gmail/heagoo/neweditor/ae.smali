.class public Lcom/gmail/heagoo/neweditor/ae;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Lcom/gmail/heagoo/neweditor/ae;->a:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p0, Lcom/gmail/heagoo/neweditor/ae;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
