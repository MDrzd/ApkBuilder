.class final Lcom/gmail/heagoo/apkeditor/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/ac/a;

.field private synthetic d:I

.field private synthetic e:Lcom/gmail/heagoo/apkeditor/bv;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/bv;Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;Landroid/widget/CheckBox;Lcom/gmail/heagoo/apkeditor/ac/a;I)V
    .registers 6

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/bw;->a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/bw;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/bw;->c:Lcom/gmail/heagoo/apkeditor/ac/a;

    iput p5, p0, Lcom/gmail/heagoo/apkeditor/bw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bw;->a:Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Lcom/gmail/heagoo/apkeditor/bv;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->b:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Lcom/gmail/heagoo/apkeditor/bv;Z)Z

    :cond_0
    const-string p1, ""

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Lcom/gmail/heagoo/apkeditor/bv;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->c:Lcom/gmail/heagoo/apkeditor/ac/a;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Lcom/gmail/heagoo/apkeditor/bv;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/ac/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bw;->e:Lcom/gmail/heagoo/apkeditor/bv;

    iget p2, p0, Lcom/gmail/heagoo/apkeditor/bw;->d:I

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Lcom/gmail/heagoo/apkeditor/bv;I)V

    return-void
.end method
