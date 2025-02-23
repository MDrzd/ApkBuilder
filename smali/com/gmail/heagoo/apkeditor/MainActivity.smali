.class public Lcom/gmail/heagoo/apkeditor/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private a:La/a/a;

.field private b:Landroid/support/v4/widget/DrawerLayout;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->e:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->f:I

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/MainActivity;)V
    .registers 3

    :try_start_0
    const-string v0, "jackpal.androidterm.Term"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bin/aapt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bq;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bq;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/bq;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/MainActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "/build.gradle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, La/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.project"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NAME="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nFROM_GRADLE=TRUE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, La/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "projectFilePath"

    invoke-static {v0, v1, p1}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/MainActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->e:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gmail/heagoo/apkeditor/ApkComposeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/decoded"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gmail/heagoo/common/i;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const-string p2, "/build.gradle"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, La/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    const-string v1, "settings.gradle"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/io/File;

    const-string v0, "build.gradle"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/io/File;

    const-string v0, "settings.gradle"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0d02eb

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x1040013

    new-instance v0, Lcom/gmail/heagoo/apkeditor/br;

    invoke-direct {v0, p0, p2}, Lcom/gmail/heagoo/apkeditor/br;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;Ljava/io/File;)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040009

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p2, ".project"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "build.gradle"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->d:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "Language"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "Language"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p1

    const v0, 0x7f0a003a

    const v1, 0x7f0e0006

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->setTheme(I)V

    const v0, 0x7f0a003c

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->setTheme(I)V

    const v0, 0x7f0a003b

    :goto_0
    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->setContentView(I)V

    const p1, 0x7f0801ef

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bl;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bl;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801f1

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bm;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bm;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801ff

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bn;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bn;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801df

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/gmail/heagoo/apkeditor/bo;

    invoke-direct {v0, p0}, Lcom/gmail/heagoo/apkeditor/bo;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_3
    const p1, 0x7f0800ae

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    const p1, 0x7f0801a7

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->c:Landroid/widget/ListView;

    new-instance p1, Lcom/gmail/heagoo/apkeditor/ca;

    invoke-static {p0}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gmail/heagoo/apkeditor/ba;->a()Z

    move-result v2

    invoke-direct {p1, p0, v2}, Lcom/gmail/heagoo/apkeditor/ca;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x7f0d004c

    invoke-direct {p1, p0, v2, v3, v3}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->d:Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->d:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    new-instance v2, Lcom/gmail/heagoo/apkeditor/bp;

    invoke-direct {v2, p0}, Lcom/gmail/heagoo/apkeditor/bp;-><init>(Lcom/gmail/heagoo/apkeditor/MainActivity;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    invoke-static {p0}, La/a/a;->a(Landroid/app/Activity;)La/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->a:La/a/a;

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->f:I

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->a:La/a/a;

    invoke-virtual {v0}, La/a/a;->c()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    long-to-int p1, p4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gmail/heagoo/apkeditor/TutorialActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/gmail/heagoo/builder/a;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/builder/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    const-string p3, "https://github.com/heagoo/apk_builder_tutorial/blob/master/README.md"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gmail/heagoo/apkeditor/SettingActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gmail/heagoo/apkeditor/aq;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    :pswitch_5
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_1

    iget-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->e:Z

    const v0, 0x800003

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :goto_0
    return v1

    :cond_1
    const v2, 0x7f08001f

    if-ne v0, v2, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gmail/heagoo/apkeditor/SettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    const v2, 0x7f080006

    if-ne v0, v2, :cond_3

    new-instance p1, Lcom/gmail/heagoo/apkeditor/a;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/apkeditor/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/a;->show()V

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->a:La/a/a;

    invoke-virtual {v0}, La/a/a;->a()V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->d:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/MainActivity;->a:La/a/a;

    invoke-virtual {v0}, La/a/a;->b()V

    return-void
.end method
