.class final Lcom/gmail/heagoo/apkeditor/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/az;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->g(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/az;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->e(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->f(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;->fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/az;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->b(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/az;->b:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->dismiss()V

    return-void
.end method
