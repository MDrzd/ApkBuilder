.class final Lcom/gmail/heagoo/apkeditor/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->b(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->a(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ds;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dr;->b(Lcom/gmail/heagoo/apkeditor/dr;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
