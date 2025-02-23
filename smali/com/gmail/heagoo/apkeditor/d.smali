.class final Lcom/gmail/heagoo/apkeditor/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;Landroid/widget/CheckBox;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/d;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->b(Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;)Lcom/gmail/heagoo/apkeditor/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;->finish()V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/d;->b:Lcom/gmail/heagoo/apkeditor/ApkComposeActivity;

    const-string p2, "donot_show_compose_tip"

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
