.class public final Lcom/gmail/heagoo/apkeditor/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/ref/WeakReference;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bf;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    const v1, 0x7f0d0149

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    const v1, 0x7f0d014a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CustomKeyPath"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CustomKeyPassword"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/KeyListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0a0063

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->a:Landroid/view/View;

    const v2, 0x7f0800bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->a:Landroid/view/View;

    const v2, 0x7f0800c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bf;->d:Landroid/widget/EditText;

    const-string v3, "CustomKeyPath"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bf;->e:Landroid/widget/EditText;

    const-string v3, "CustomKeyPassword"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->a:Landroid/view/View;

    const v2, 0x7f08006e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bf;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0d0103

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/bg;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/apkeditor/bg;-><init>(Lcom/gmail/heagoo/apkeditor/bf;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bf;->d:Landroid/widget/EditText;

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

    const-string p2, ".key"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ".keystore"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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

.method public final onClick(Landroid/view/View;)V
    .registers 13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08006e

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    const-string v4, ".key"

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bf;->b:Landroid/content/Context;

    const v1, 0x7f0d0287

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "key"

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;-><init>(Landroid/content/Context;Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/FileSelectDialog;->show()V

    :cond_0
    return-void
.end method
