.class final Lcom/gmail/heagoo/apkeditor/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/gmail/heagoo/apkeditor/l;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/n;->d:Lcom/gmail/heagoo/apkeditor/l;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/n;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/n;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/n;->d:Lcom/gmail/heagoo/apkeditor/l;

    const p2, 0x7f0d0137

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/n;->d:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p2, p2, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/n;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/n;->d:Lcom/gmail/heagoo/apkeditor/l;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/n;->c:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/gmail/heagoo/apkeditor/l;->a(Lcom/gmail/heagoo/apkeditor/l;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p2, v0}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_0
    invoke-static {v2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void
.end method
