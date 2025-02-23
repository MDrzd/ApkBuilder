.class final Lcom/gmail/heagoo/apkeditor/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/t;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/t;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/w;->a:Lcom/gmail/heagoo/apkeditor/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 13

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/w;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget-object v1, p1, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/w;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget p1, p1, Lcom/gmail/heagoo/apkeditor/t;->a:I

    const v0, 0x7f0d0285

    invoke-virtual {v1, v0}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v2, v0}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/common/c;

    new-instance v3, Lcom/gmail/heagoo/apkeditor/ab;

    invoke-direct {v3, v1}, Lcom/gmail/heagoo/apkeditor/ab;-><init>(Lcom/gmail/heagoo/apkeditor/l;)V

    new-instance v10, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/common/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "replace_folder"

    const/4 p1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v10

    move-object v2, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {v10}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
