.class final Lcom/gmail/heagoo/pngeditor/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/gmail/heagoo/pngeditor/PngEditActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/g;->c:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/pngeditor/g;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmail/heagoo/pngeditor/g;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/g;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/g;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    const v4, 0x8000

    if-ge v2, v4, :cond_0

    if-ge v3, v4, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/pngeditor/g;->c:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->g(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/g;->c:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->h(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/g;->c:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    const p2, 0x7f0d019a

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
