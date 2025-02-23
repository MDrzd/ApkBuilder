.class final Lcom/gmail/heagoo/apkeditor/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Landroid/widget/CheckBox;

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/ai;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ai;Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/al;->d:Lcom/gmail/heagoo/apkeditor/ai;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/al;->a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/al;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/al;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/al;->a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/al;->d:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    const p2, 0x7f0d0137

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/al;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/al;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/al;->d:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-static {v1, p1, p2, v0}, Lcom/gmail/heagoo/apkeditor/ai;->a(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;ZZ)V

    return-void
.end method
