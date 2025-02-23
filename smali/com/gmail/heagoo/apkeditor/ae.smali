.class final Lcom/gmail/heagoo/apkeditor/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ae;->a:Lcom/gmail/heagoo/apkeditor/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 13

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ae;->a:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p1, v1, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ac;

    invoke-direct {v2, v1}, Lcom/gmail/heagoo/apkeditor/ac;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    const p2, 0x7f0d0190

    invoke-virtual {v1, p2}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v9, "import_file"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    return-void
.end method
