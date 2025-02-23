.class final Lcom/gmail/heagoo/apkeditor/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ac;->a:Lcom/gmail/heagoo/apkeditor/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/ac;->a:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p3, p2, p1}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
