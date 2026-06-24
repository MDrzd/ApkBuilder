.class final Lcom/gmail/heagoo/builder/h;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/gmail/heagoo/builder/f;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/builder/f;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    .line 21
    invoke-static {p1}, Lcom/gmail/heagoo/builder/f;->a(Lcom/gmail/heagoo/builder/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    const-string v1, "lastPackageName"

    const-string v2, "fnmods_package"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gmail/heagoo/builder/h;->a:Ljava/lang/String;

    .line 24
    const-string v1, "lastProjectPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/ApkBuilder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_5b
    iput-object v0, p0, Lcom/gmail/heagoo/builder/h;->b:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_6d
    return-void

    .line 28
    :cond_6e
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_80
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/builder/f;->a(Lcom/gmail/heagoo/builder/f;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    iget-object v1, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    invoke-static {v1}, Lcom/gmail/heagoo/builder/f;->b(Lcom/gmail/heagoo/builder/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/builder/f;->b(Lcom/gmail/heagoo/builder/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    invoke-static {v1}, Lcom/gmail/heagoo/builder/f;->c(Lcom/gmail/heagoo/builder/f;)Landroid/widget/EditText;

    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/builder/h;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    invoke-static {v1}, Lcom/gmail/heagoo/builder/f;->d(Lcom/gmail/heagoo/builder/f;)Landroid/widget/EditText;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gmail/heagoo/builder/h;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 48
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 50
    move-object v6, v0

    iget-object v6, v6, Lcom/gmail/heagoo/builder/h;->c:Lcom/gmail/heagoo/builder/f;

    invoke-virtual {v6}, Lcom/gmail/heagoo/builder/f;->_error()V

    return-void
.end method
