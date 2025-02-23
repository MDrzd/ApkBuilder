.class final Lcom/gmail/heagoo/builder/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/builder/a;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/builder/a;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/builder/b;->a:Lcom/gmail/heagoo/builder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iget-object p2, p0, Lcom/gmail/heagoo/builder/b;->a:Lcom/gmail/heagoo/builder/a;

    invoke-static {p2}, Lcom/gmail/heagoo/builder/a;->a(Lcom/gmail/heagoo/builder/a;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
