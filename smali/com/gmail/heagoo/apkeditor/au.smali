.class final Lcom/gmail/heagoo/apkeditor/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/au;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/au;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/au;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0137

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p2, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/au;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->d(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Lcom/gmail/heagoo/apkeditor/ci;

    move-result-object v2

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/au;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f0d0153

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/au;->c:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->c(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
