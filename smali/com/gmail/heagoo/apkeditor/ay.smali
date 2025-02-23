.class final Lcom/gmail/heagoo/apkeditor/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ay;->a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/ay;->a:Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->a(Lcom/gmail/heagoo/apkeditor/FileSelectDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
