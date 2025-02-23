.class public Lcom/gmail/heagoo/apkeditor/KeyListPreference;
.super Landroid/preference/ListPreference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 2

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 6

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/KeyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_1
    const v0, 0x7f020030

    new-instance v1, Lcom/gmail/heagoo/apkeditor/be;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/be;-><init>(Lcom/gmail/heagoo/apkeditor/KeyListPreference;)V

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
