.class final Lcom/gmail/heagoo/apkeditor/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/SharedPreferences;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;ILandroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bc;->d:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/bc;->a:I

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/bc;->b:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/bc;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bc;->d:Lcom/gmail/heagoo/apkeditor/ImageDownloadActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/bc;->a:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d02e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bc;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show_tip_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
