.class public Ljackpal/androidterm/TermPreferences;
.super Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f100002

    invoke-virtual {p0, p1}, Ljackpal/androidterm/TermPreferences;->addPreferencesFromResource(I)V

    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    const-string p1, "actionbar"

    invoke-virtual {p0, p1}, Ljackpal/androidterm/TermPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const-string v0, "screen"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    sget-boolean p1, Ljackpal/androidterm/compat/f;->b:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljackpal/androidterm/compat/e;->b(Landroid/app/Activity;)Ljackpal/androidterm/compat/c;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v0}, Ljackpal/androidterm/compat/c;->a(II)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/TermPreferences;->finish()V

    const/4 p1, 0x1

    return p1
.end method
