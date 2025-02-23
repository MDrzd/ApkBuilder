.class final Lcom/gmail/heagoo/apkeditor/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bm;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 12

    new-instance p1, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bm;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bm;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const-string v4, ""

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bm;->a:Lcom/gmail/heagoo/apkeditor/MainActivity;

    const v3, 0x7f0d028a

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "open_project"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    return-void
.end method
