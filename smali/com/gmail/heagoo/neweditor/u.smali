.class final Lcom/gmail/heagoo/neweditor/u;
.super Landroid/view/inputmethod/BaseInputConnection;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/ObEditText;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/ObEditText;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/u;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/KeyEvent;

    const/16 p2, 0x43

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v0, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method
