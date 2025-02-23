.class final Ljackpal/androidterm/q;
.super Ljackpal/androidterm/b/a/b;


# instance fields
.field final synthetic a:Ljackpal/androidterm/TermService;


# direct methods
.method private constructor <init>(Ljackpal/androidterm/TermService;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Ljackpal/androidterm/b/a/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljackpal/androidterm/TermService;B)V
    .registers 3

    invoke-direct {p0, p1}, Ljackpal/androidterm/q;-><init>(Ljackpal/androidterm/TermService;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)Landroid/content/IntentSender;
    .registers 19

    move-object/from16 v7, p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "jackpal.androidterm.private.target_window"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v7, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-virtual {v1}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v1, v2, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    iget-object v0, v7, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Ljackpal/androidterm/q;->getCallingUid()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    array-length v0, v12

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v14, v12

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_3

    aget-object v0, v12, v15

    :try_start_0
    invoke-virtual {v11, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Ljackpal/androidterm/r;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v8

    move-object v9, v5

    move-object v5, v10

    move-object v13, v6

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Ljackpal/androidterm/r;-><init>(Ljackpal/androidterm/q;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    invoke-virtual {v13, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
