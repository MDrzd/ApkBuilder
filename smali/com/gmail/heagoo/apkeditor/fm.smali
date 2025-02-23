.class public Lcom/gmail/heagoo/apkeditor/fm;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fm;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/fm;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    invoke-static {p0, p1}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string p0, "xmlPath"

    invoke-static {v0, p0, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    if-eqz p2, :cond_1

    const-string p0, "apkPath"

    invoke-static {v0, p0, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Landroid/content/Intent;
    .registers 6

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string p0, "fileList"

    invoke-static {v0, p0, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    const-string p0, "curFileIndex"

    invoke-static {v0, p0, p2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;I)Landroid/os/Bundle;

    if-eqz p3, :cond_1

    const-string p0, "apkPath"

    invoke-static {v0, p0, p3}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->c(Landroid/content/Context;)I

    move-result p1

    shl-int/lit8 p1, p1, 0xa

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f0d0311

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return p1
.end method
