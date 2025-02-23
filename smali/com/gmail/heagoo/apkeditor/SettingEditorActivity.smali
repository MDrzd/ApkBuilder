.class public Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/SharedPreferences;)I
    .registers 3

    const-string v0, "FontSize"

    const-string v1, "12"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "LineWrap"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->a(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/SharedPreferences;)I
    .registers 3

    const-string v0, "BigFileSize"

    const-string v1, "64"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x40

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "ShowLineNumbers"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/ba;->a()Z

    move-result v0

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    const v2, 0x7f0e016d

    invoke-virtual {p0, v2}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->setTheme(I)V

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x400

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    const/high16 p1, 0x7f100000

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->addPreferencesFromResource(I)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0a00de

    invoke-virtual {p1, v1, v0}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LineWrap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d01b1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    :cond_0
    const v1, 0x7f0d01b0

    goto :goto_0

    :cond_1
    const-string v1, "FontSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/Context;)I

    move-result v1

    :goto_1
    const v4, 0x7f0d0170

    invoke-virtual {p0, v4}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_2
    const-string v1, "BigFileSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->c(Landroid/content/Context;)I

    move-result v1

    :goto_3
    const v4, 0x7f0d0310

    invoke-virtual {p0, v4}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    goto :goto_2

    :cond_3
    :goto_4
    const-string v1, "ShowLineNumbers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0d01ae

    :goto_5
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_4
    const p2, 0x7f0d01ad

    goto :goto_5

    :cond_5
    :goto_6
    return v2
.end method

.method protected onResume()V
    .registers 8

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LineWrap"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0d01b1

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0d01b0

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    const-string v1, "FontSize"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->a(Landroid/content/SharedPreferences;)I

    move-result v2

    const v5, 0x7f0d0170

    invoke-virtual {p0, v5}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "BigFileSize"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->b(Landroid/content/SharedPreferences;)I

    move-result v2

    const v5, 0x7f0d0310

    invoke-virtual {p0, v5}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "ShowLineNumbers"

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d01ae

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0d01ad

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    const v0, 0x7f0801cd

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const-string v1, "com.gmail.heagoo.seticon.SetIcon"

    const-string v2, "getSelectedIcon"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v5, v3}, La/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method
