.class public Ljackpal/androidterm/Term;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Ljackpal/androidterm/a/ac;


# static fields
.field private static final b:I = 0x7f08020f


# instance fields
.field private a:Ljackpal/androidterm/TermViewFlipper;

.field private c:Ljackpal/androidterm/c/a;

.field private d:Ljackpal/androidterm/c/c;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Intent;

.field private h:I

.field private i:Landroid/content/ComponentName;

.field private j:Landroid/os/PowerManager$WakeLock;

.field private k:Landroid/net/wifi/WifiManager$WifiLock;

.field private l:Z

.field private m:I

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Ljackpal/androidterm/TermService;

.field private p:Landroid/content/ServiceConnection;

.field private q:Ljackpal/androidterm/compat/c;

.field private r:I

.field private s:Ljackpal/androidterm/y;

.field private t:Ljackpal/androidterm/compat/d;

.field private u:Z

.field private v:Z

.field private w:Landroid/view/View$OnKeyListener;

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->e:Z

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->f:Z

    const/4 v1, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->h:I

    iput v0, p0, Ljackpal/androidterm/Term;->m:I

    new-instance v1, Ljackpal/androidterm/h;

    invoke-direct {v1, p0}, Ljackpal/androidterm/h;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->n:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljackpal/androidterm/i;

    invoke-direct {v1, p0}, Ljackpal/androidterm/i;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->p:Landroid/content/ServiceConnection;

    iput v0, p0, Ljackpal/androidterm/Term;->r:I

    new-instance v1, Ljackpal/androidterm/j;

    invoke-direct {v1, p0}, Ljackpal/androidterm/j;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->t:Ljackpal/androidterm/compat/d;

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->u:Z

    new-instance v0, Ljackpal/androidterm/k;

    invoke-direct {v0, p0}, Ljackpal/androidterm/k;-><init>(Ljackpal/androidterm/Term;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->w:Landroid/view/View$OnKeyListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/Term;->x:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljackpal/androidterm/Term;Ljackpal/androidterm/TermService;)Ljackpal/androidterm/TermService;
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljackpal/androidterm/c/c;Ljava/lang/String;)Ljackpal/androidterm/a/q;
    .registers 4

    new-instance v0, Ljackpal/androidterm/e;

    invoke-direct {v0, p1, p2}, Ljackpal/androidterm/e;-><init>(Ljackpal/androidterm/c/c;Ljava/lang/String;)V

    const p1, 0x7f0d0246

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljackpal/androidterm/b;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Ljackpal/androidterm/Term;)Ljackpal/androidterm/c/c;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    return-object p0
.end method

.method static synthetic a(Ljackpal/androidterm/Term;Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;
    .registers 2

    invoke-direct {p0, p1}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;
    .registers 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljackpal/androidterm/u;

    invoke-direct {v1, p0, p1, v0}, Ljackpal/androidterm/u;-><init>(Landroid/content/Context;Ljackpal/androidterm/a/q;Landroid/util/DisplayMetrics;)V

    new-instance p1, Ljackpal/androidterm/o;

    invoke-direct {p1, p0, v1}, Ljackpal/androidterm/o;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/a/c;)V

    invoke-virtual {v1, p1}, Ljackpal/androidterm/u;->a(Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object p1, p0, Ljackpal/androidterm/Term;->w:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, p1}, Ljackpal/androidterm/u;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0, v1}, Ljackpal/androidterm/Term;->registerForContextMenu(Landroid/view/View;)V

    return-object v1
.end method

.method private static a(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    aget-object p0, p1, p0

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p6, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljackpal/androidterm/Term;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Ljackpal/androidterm/Term;IIII)V
    .registers 5

    iget p1, p0, Ljackpal/androidterm/Term;->r:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p0, Ljackpal/androidterm/Term;->u:Z

    if-nez p1, :cond_0

    div-int/lit8 p4, p4, 0x2

    if-ge p2, p4, :cond_4

    :cond_0
    iget-object p0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljackpal/androidterm/compat/c;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljackpal/androidterm/compat/c;->a()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljackpal/androidterm/compat/c;->c()V

    :cond_2
    return-void

    :pswitch_1
    iget-boolean p1, p0, Ljackpal/androidterm/Term;->u:Z

    if-nez p1, :cond_5

    goto :goto_0

    :pswitch_2
    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/16 p3, 0xb

    if-lt p1, p3, :cond_4

    iget-boolean p1, p0, Ljackpal/androidterm/Term;->u:Z

    if-nez p1, :cond_3

    div-int/lit8 p4, p4, 0x2

    if-ge p2, p4, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->openOptionsMenu()V

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0}, Ljackpal/androidterm/Term;->k()V

    :cond_5
    :goto_1
    invoke-direct {p0}, Ljackpal/androidterm/Term;->e()Ljackpal/androidterm/a/c;

    move-result-object p0

    invoke-virtual {p0}, Ljackpal/androidterm/a/c;->requestFocus()Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Ljackpal/androidterm/Term;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/res/Configuration;)Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Ljackpal/androidterm/Term;)I
    .registers 3

    iget v0, p0, Ljackpal/androidterm/Term;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ljackpal/androidterm/Term;->m:I

    return v0
.end method

.method private b()V
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    return-void
.end method

.method static synthetic c(Ljackpal/androidterm/Term;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/Term;->m:I

    return p0
.end method

.method private c()Ljackpal/androidterm/a/q;
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    iget-object v1, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ljackpal/androidterm/Term;->a(Landroid/content/Context;Ljackpal/androidterm/c/c;Ljava/lang/String;)Ljackpal/androidterm/a/q;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "git"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "git"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "export PATH=$PATH:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljackpal/androidterm/c/c;->s()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cd "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljackpal/androidterm/Term;->a(Landroid/content/Context;Ljackpal/androidterm/c/c;Ljava/lang/String;)Ljackpal/androidterm/a/q;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/a/q;->a(Ljackpal/androidterm/a/w;)V

    return-object v0
.end method

.method static synthetic d(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermService;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    return-object p0
.end method

.method private d()Ljackpal/androidterm/a/q;
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/c/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/q;

    return-object v0
.end method

.method private e()Ljackpal/androidterm/a/c;
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/a/c;

    return-object v0
.end method

.method static synthetic e(Ljackpal/androidterm/Term;)V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    invoke-virtual {v0}, Ljackpal/androidterm/TermService;->a()Ljackpal/androidterm/c/a;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    iget-object v0, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v2}, Ljackpal/androidterm/c/a;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    :try_start_0
    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-direct {p0}, Ljackpal/androidterm/Term;->c()Ljackpal/androidterm/a/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/q;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v2, p0}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/ac;)V

    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v2}, Ljackpal/androidterm/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljackpal/androidterm/a/q;

    invoke-direct {p0, v3}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;

    move-result-object v3

    iget-object v4, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4, v3}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Ljackpal/androidterm/Term;->f()V

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v2}, Ljackpal/androidterm/c/a;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Ljackpal/androidterm/Term;->h:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget v1, p0, Ljackpal/androidterm/Term;->h:I

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V

    const/4 v0, -0x1

    iput v0, p0, Ljackpal/androidterm/Term;->h:I

    :cond_5
    :goto_2
    iget-object p0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {p0}, Ljackpal/androidterm/TermViewFlipper;->b()V

    goto :goto_3

    :catch_0
    const-string v0, "Failed to start terminal session"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    :cond_6
    :goto_3
    return-void
.end method

.method private f()V
    .registers 8

    iget-object v0, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v0}, Ljackpal/androidterm/c/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->v:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget-object v2, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/TermViewFlipper;->a(Ljackpal/androidterm/c/c;)V

    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    check-cast v3, Ljackpal/androidterm/a/c;

    invoke-virtual {v3, v0}, Ljackpal/androidterm/a/c;->a(Landroid/util/DisplayMetrics;)V

    check-cast v2, Ljackpal/androidterm/u;

    iget-object v3, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljackpal/androidterm/u;->a(Ljackpal/androidterm/c/c;Lb/b/c/a/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/a/q;

    check-cast v1, Ljackpal/androidterm/b;

    iget-object v2, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/b;->a(Ljackpal/androidterm/c/c;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v2}, Ljackpal/androidterm/c/c;->a()Z

    move-result v2

    const/16 v3, 0x400

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0x400

    :goto_2
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    const/4 v5, 0x2

    if-ne v2, v1, :cond_3

    sget v1, Ljackpal/androidterm/compat/f;->a:I

    const/16 v6, 0xb

    if-lt v1, v6, :cond_5

    iget v1, p0, Ljackpal/androidterm/Term;->r:I

    iget-object v6, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v6}, Ljackpal/androidterm/c/c;->b()I

    move-result v6

    if-eq v1, v6, :cond_5

    :cond_3
    iget-boolean v1, p0, Ljackpal/androidterm/Term;->e:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Ljackpal/androidterm/Term;->b()V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    iget v0, p0, Ljackpal/androidterm/Term;->r:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/c;->a()V

    :cond_5
    :goto_3
    iget-object v0, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v0}, Ljackpal/androidterm/c/c;->c()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    const/4 v4, -0x1

    goto :goto_4

    :cond_6
    if-ne v0, v1, :cond_7

    goto :goto_4

    :cond_7
    if-ne v0, v5, :cond_8

    const/4 v4, 0x1

    :cond_8
    :goto_4
    invoke-virtual {p0, v4}, Ljackpal/androidterm/Term;->setRequestedOrientation(I)V

    return-void
.end method

.method static synthetic f(Ljackpal/androidterm/Term;)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v0

    iget-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    if-nez v1, :cond_0

    new-instance v1, Ljackpal/androidterm/p;

    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-direct {v1, p0, v2}, Ljackpal/androidterm/p;-><init>(Ljackpal/androidterm/Term;Ljackpal/androidterm/c/a;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    iget-object v1, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    iget-object v2, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    iget-object v3, p0, Ljackpal/androidterm/Term;->t:Ljackpal/androidterm/compat/d;

    invoke-virtual {v1, v2, v3}, Ljackpal/androidterm/compat/c;->a(Landroid/widget/SpinnerAdapter;Ljackpal/androidterm/compat/d;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    iget-object v2, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/y;->a(Ljackpal/androidterm/c/a;)V

    :goto_0
    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget-object v2, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    invoke-virtual {v1, v2}, Ljackpal/androidterm/TermViewFlipper;->a(Ljackpal/androidterm/a/ac;)V

    iget-object p0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/compat/c;->b(I)V

    :cond_1
    return-void
.end method

.method static synthetic g(Ljackpal/androidterm/Term;)Ljackpal/androidterm/TermViewFlipper;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    return-object p0
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-nez v0, :cond_0

    const-string v0, "Term"

    const-string v1, "Couldn\'t create new window because mTermSessions == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljackpal/androidterm/Term;->c()Ljackpal/androidterm/a/q;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/q;)Z

    invoke-direct {p0, v0}, Ljackpal/androidterm/Term;->a(Ljackpal/androidterm/a/q;)Ljackpal/androidterm/u;

    move-result-object v0

    iget-object v1, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/u;->a(Ljackpal/androidterm/c/c;Lb/b/c/a/b;)V

    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/TermViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->setDisplayedChild(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Failed to create a session"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic h(Ljackpal/androidterm/Term;)Ljackpal/androidterm/compat/c;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    return-object p0
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ljackpal/androidterm/Term;->e()Ljackpal/androidterm/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    iget-object v2, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v2}, Ljackpal/androidterm/TermViewFlipper;->getDisplayedChild()I

    move-result v2

    invoke-virtual {v1, v2}, Ljackpal/androidterm/c/a;->a(I)Ljackpal/androidterm/a/q;

    move-result-object v1

    invoke-virtual {v0}, Ljackpal/androidterm/a/c;->b()V

    invoke-virtual {v1}, Ljackpal/androidterm/a/q;->d()V

    iget-object v1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v1, v0}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->showNext()V

    :cond_2
    return-void
.end method

.method static synthetic i(Ljackpal/androidterm/Term;)Ljackpal/androidterm/c/a;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    return-object p0
.end method

.method private i()Z
    .registers 2

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Landroid/content/Context;)Ljackpal/androidterm/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Ljackpal/androidterm/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Ljackpal/androidterm/Term;)I
    .registers 1

    iget p0, p0, Ljackpal/androidterm/Term;->r:I

    return p0
.end method

.method private j()V
    .registers 3

    invoke-direct {p0}, Ljackpal/androidterm/Term;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La/a/a;->a(Landroid/content/Context;)Ljackpal/androidterm/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Ljackpal/androidterm/a/a/c;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Ljackpal/androidterm/Term;->d()Ljackpal/androidterm/a/q;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljackpal/androidterm/a/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 4

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method static synthetic k(Ljackpal/androidterm/Term;)Z
    .registers 1

    iget-boolean p0, p0, Ljackpal/androidterm/Term;->v:Z

    return p0
.end method

.method static synthetic l(Ljackpal/androidterm/Term;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/Term;->g()V

    return-void
.end method

.method static synthetic m(Ljackpal/androidterm/Term;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/Term;->j()V

    return-void
.end method

.method static synthetic n(Ljackpal/androidterm/Term;)V
    .registers 1

    invoke-direct {p0}, Ljackpal/androidterm/Term;->h()V

    return-void
.end method

.method static synthetic o(Ljackpal/androidterm/Term;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Ljackpal/androidterm/Term;->x:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Ljackpal/androidterm/Term;->f:Z

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljackpal/androidterm/c/a;->size()I

    move-result v1

    iget-object v3, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3}, Ljackpal/androidterm/TermViewFlipper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v3, v1}, Ljackpal/androidterm/TermViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Ljackpal/androidterm/a/c;

    invoke-virtual {v3}, Ljackpal/androidterm/a/c;->d()Ljackpal/androidterm/a/q;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljackpal/androidterm/c/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljackpal/androidterm/a/c;->b()V

    iget-object v4, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v4, v3}, Ljackpal/androidterm/TermViewFlipper;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljackpal/androidterm/Term;->d()Ljackpal/androidterm/a/q;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljackpal/androidterm/a/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    const-string p2, "jackpal.androidterm.window_id"

    const/4 v1, -0x2

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_1

    iput p2, p0, Ljackpal/androidterm/Term;->h:I

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    invoke-direct {p0}, Ljackpal/androidterm/Term;->g()V

    iget-object p1, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {p1}, Ljackpal/androidterm/c/a;->size()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Ljackpal/androidterm/Term;->h:I

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-eqz p1, :cond_4

    iget-object p1, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {p1}, Ljackpal/androidterm/c/a;->size()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->f:Z

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Ljackpal/androidterm/Term;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Ljackpal/androidterm/Term;->u:Z

    iget-object p1, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {p1}, Ljackpal/androidterm/TermViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljackpal/androidterm/a/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljackpal/androidterm/a/c;->b(Z)V

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    invoke-virtual {p1}, Ljackpal/androidterm/y;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-direct {p0}, Ljackpal/androidterm/Term;->e()Ljackpal/androidterm/a/c;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/a/c;->j()V

    return v1

    :pswitch_1
    invoke-direct {p0}, Ljackpal/androidterm/Term;->e()Ljackpal/androidterm/a/c;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/a/c;->i()V

    return v1

    :pswitch_2
    invoke-direct {p0}, Ljackpal/androidterm/Term;->j()V

    return v1

    :pswitch_3
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La/a/a;->a(Landroid/content/Context;)Ljackpal/androidterm/a/a/c;

    move-result-object p1

    invoke-direct {p0}, Ljackpal/androidterm/Term;->d()Ljackpal/androidterm/a/q;

    move-result-object v0

    invoke-virtual {v0}, Ljackpal/androidterm/a/q;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljackpal/androidterm/a/a/c;->a(Ljava/lang/CharSequence;)V

    return v1

    :pswitch_4
    invoke-direct {p0}, Ljackpal/androidterm/Term;->e()Ljackpal/androidterm/a/c;

    move-result-object p1

    invoke-virtual {p1}, Ljackpal/androidterm/a/c;->h()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->y:Ljava/lang/String;

    :cond_0
    const-string v0, "Term"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "jackpal.androidterm.TermInternal"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->i:Landroid/content/ComponentName;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljackpal/androidterm/c/c;

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljackpal/androidterm/c/c;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    new-instance v8, Landroid/content/Intent;

    const-string v0, "jackpal.androidterm.broadcast.APPEND_TO_PATH"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v9, 0xc

    if-lt v0, v9, :cond_2

    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    iget v0, p0, Ljackpal/androidterm/Term;->m:I

    const/4 v10, 0x1

    add-int/2addr v0, v10

    iput v0, p0, Ljackpal/androidterm/Term;->m:I

    const-string v2, "jackpal.androidterm.permission.APPEND_TO_PATH"

    iget-object v3, p0, Ljackpal/androidterm/Term;->n:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v0, "jackpal.androidterm.broadcast.PREPEND_TO_PATH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Ljackpal/androidterm/Term;->m:I

    add-int/2addr v0, v10

    iput v0, p0, Ljackpal/androidterm/Term;->m:I

    const-string v2, "jackpal.androidterm.permission.PREPEND_TO_PATH"

    iget-object v3, p0, Ljackpal/androidterm/Term;->n:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljackpal/androidterm/Term;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljackpal/androidterm/TermService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ljackpal/androidterm/Term;->g:Landroid/content/Intent;

    iget-object v0, p0, Ljackpal/androidterm/Term;->g:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v0}, Ljackpal/androidterm/c/c;->b()I

    move-result v0

    iput v0, p0, Ljackpal/androidterm/Term;->r:I

    sget-boolean v1, Ljackpal/androidterm/compat/f;->b:Z

    if-eqz v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v0, 0x7f0e0114

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e0113

    :goto_0
    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->setTheme(I)V

    goto :goto_1

    :cond_3
    iput v10, p0, Ljackpal/androidterm/Term;->r:I

    :cond_4
    :goto_1
    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->setContentView(I)V

    sget v0, Ljackpal/androidterm/Term;->b:I

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/TermViewFlipper;

    iput-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "Term"

    invoke-virtual {v0, v10, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sget v1, Ljackpal/androidterm/compat/f;->a:I

    if-lt v1, v9, :cond_5

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    const-string v2, "Term"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-static {p0}, Ljackpal/androidterm/compat/e;->b(Landroid/app/Activity;)Ljackpal/androidterm/compat/c;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {v0, v10}, Ljackpal/androidterm/compat/c;->a(I)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljackpal/androidterm/compat/c;->a(II)V

    iget v1, p0, Ljackpal/androidterm/Term;->r:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Ljackpal/androidterm/compat/c;->a()V

    :cond_6
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Ljackpal/androidterm/Term;->a(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->u:Z

    invoke-direct {p0}, Ljackpal/androidterm/Term;->f()V

    iput-boolean v10, p0, Ljackpal/androidterm/Term;->e:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const p2, 0x7f0d0132

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    const/4 p2, 0x0

    const p3, 0x7f0d028c

    invoke-interface {p1, p2, p2, p2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p3, 0x1

    const v0, 0x7f0d00f9

    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 p3, 0x2

    const v0, 0x7f0d01fe

    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0d028f

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v1, 0x7f0d0291

    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-direct {p0}, Ljackpal/androidterm/Term;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Ljackpal/androidterm/Term;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08012c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljackpal/androidterm/compat/g;->a(Landroid/view/MenuItem;I)V

    const v0, 0x7f080135

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Ljackpal/androidterm/compat/g;->a(Landroid/view/MenuItem;I)V

    const v0, 0x7f08012f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1, v1}, Ljackpal/androidterm/compat/g;->a(Landroid/view/MenuItem;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-boolean v0, p0, Ljackpal/androidterm/Term;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/Term;->g:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->stopService(Landroid/content/Intent;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljackpal/androidterm/Term;->o:Ljackpal/androidterm/TermService;

    iput-object v0, p0, Ljackpal/androidterm/Term;->p:Landroid/content/ServiceConnection;

    iget-object v0, p0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljackpal/androidterm/Term;->l:Z

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {v0}, Ljackpal/androidterm/compat/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {p1}, Ljackpal/androidterm/compat/c;->c()V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    sget p1, Ljackpal/androidterm/compat/f;->a:I

    const/4 p2, 0x5

    const/4 v0, 0x0

    if-ge p1, p2, :cond_4

    iget-boolean p1, p0, Ljackpal/androidterm/Term;->l:Z

    if-nez p1, :cond_3

    return v0

    :cond_3
    iput-boolean v0, p0, Ljackpal/androidterm/Term;->l:Z

    :cond_4
    iget p1, p0, Ljackpal/androidterm/Term;->r:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    if-eqz p1, :cond_5

    iget-object p1, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {p1}, Ljackpal/androidterm/compat/c;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {p1}, Ljackpal/androidterm/compat/c;->a()V

    return v1

    :cond_5
    iget-object p1, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {p1}, Ljackpal/androidterm/c/c;->g()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-direct {p0}, Ljackpal/androidterm/Term;->h()V

    return v1

    :pswitch_1
    iput-boolean v1, p0, Ljackpal/androidterm/Term;->f:Z

    :pswitch_2
    invoke-virtual {p0}, Ljackpal/androidterm/Term;->finish()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ljackpal/androidterm/Term;->i:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x60bc8535

    const/4 v3, -0x1

    if-eq v1, v2, :cond_3

    const v2, -0x1130cbec

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "jackpal.androidterm.private.OPEN_NEW_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "jackpal.androidterm.private.SWITCH_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "jackpal.androidterm.private.target_window"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_5

    iput p1, p0, Ljackpal/androidterm/Term;->h:I

    goto :goto_2

    :pswitch_1
    const p1, 0x7fffffff

    iput p1, p0, Ljackpal/androidterm/Term;->h:I

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    const v3, 0x7f08012c

    if-ne v1, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/Term;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bin/build.sh\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/Term;->d()Ljackpal/androidterm/a/q;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljackpal/androidterm/a/q;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const v3, 0x7f080135

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_1

    :try_start_0
    const-string v1, "com.gmail.heagoo.apkbuilder.DirectorySelectedInTerm"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "com.gmail.heagoo.apkeditor.FileSelectDialog"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v7, 0x9

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    const-string v9, "com.gmail.heagoo.apkeditor.FileSelectDialog$IFileSelection"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v5

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v9, v8, v11

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x5

    aput-object v9, v8, v12

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x6

    aput-object v9, v8, v13

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x7

    aput-object v9, v8, v14

    const-class v9, Ljava/lang/String;

    const/16 v15, 0x8

    aput-object v9, v8, v15

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v5

    aput-object v4, v7, v2

    aput-object v4, v7, v10

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v7, v12

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v7, v13

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v7, v14

    const-string v1, "term"

    aput-object v1, v7, v15

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "show"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    const v3, 0x7f08013d

    if-ne v1, v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-class v3, Ljackpal/androidterm/TermPreferences;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_2
    const v3, 0x7f08013b

    if-ne v1, v3, :cond_3

    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/Term;->g()V

    goto/16 :goto_3

    :cond_3
    const v3, 0x7f08012f

    if-ne v1, v3, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d00f0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljackpal/androidterm/m;

    invoke-direct {v3, v0}, Ljackpal/androidterm/m;-><init>(Ljackpal/androidterm/Term;)V

    const v5, 0x1040013

    new-instance v6, Ljackpal/androidterm/n;

    invoke-direct {v6, v0, v3}, Ljackpal/androidterm/n;-><init>(Ljackpal/androidterm/Term;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040009

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_4
    const v3, 0x7f08014d

    if-ne v1, v3, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-class v3, Ljackpal/androidterm/WindowList;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v5}, Ljackpal/androidterm/Term;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    :cond_5
    const v3, 0x7f080140

    if-ne v1, v3, :cond_7

    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/Term;->d()Ljackpal/androidterm/a/q;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljackpal/androidterm/a/q;->j()V

    :cond_6
    const v1, 0x7f0d0264

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_7
    const v3, 0x7f080146

    if-ne v1, v3, :cond_8

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Ljackpal/androidterm/Term;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v3, 0x7f0d00f5

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v3}, Ljackpal/androidterm/c/c;->l()I

    move-result v3

    const/4 v4, 0x7

    const v6, 0x7f020003

    const v7, 0x7f0d00f2

    const v8, 0x7f0d00f1

    const-string v9, "CTRLKEY"

    move-object v5, v10

    invoke-static/range {v3 .. v9}, Ljackpal/androidterm/Term;->a(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {v3}, Ljackpal/androidterm/c/c;->m()I

    move-result v3

    const v6, 0x7f020029

    const v7, 0x7f0d00f4

    const v8, 0x7f0d00f3

    const-string v9, "FNKEY"

    invoke-static/range {v3 .. v9}, Ljackpal/androidterm/Term;->a(IILandroid/content/res/Resources;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_8
    const v3, 0x7f080149

    if-ne v1, v3, :cond_9

    invoke-direct/range {p0 .. p0}, Ljackpal/androidterm/Term;->k()V

    goto :goto_3

    :cond_9
    const v3, 0x7f08014a

    if-ne v1, v3, :cond_b

    iget-object v1, v0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    :cond_a
    iget-object v1, v0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_2
    invoke-static/range {p0 .. p0}, Ljackpal/androidterm/compat/e;->a(Landroid/app/Activity;)V

    goto :goto_3

    :cond_b
    const v3, 0x7f08014b

    if-ne v1, v3, :cond_d

    iget-object v1, v0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_2

    :cond_c
    iget-object v1, v0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_2

    :cond_d
    const v3, 0x7f080015

    if-ne v1, v3, :cond_e

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x7f0d0182

    invoke-virtual {v0, v4}, Ljackpal/androidterm/Term;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    :catch_0
    :cond_e
    :goto_3
    iget v1, v0, Ljackpal/androidterm/Term;->r:I

    if-ne v1, v2, :cond_f

    iget-object v1, v0, Ljackpal/androidterm/Term;->q:Ljackpal/androidterm/compat/c;

    invoke-virtual {v1}, Ljackpal/androidterm/compat/c;->a()V

    :cond_f
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget v0, Ljackpal/androidterm/compat/f;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljackpal/androidterm/Term;->l:Z

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Ljackpal/androidterm/l;

    invoke-direct {v1, p0, v0}, Ljackpal/androidterm/l;-><init>(Ljackpal/androidterm/Term;Landroid/os/IBinder;)V

    invoke-virtual {v1}, Ljackpal/androidterm/l;->start()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const v0, 0x7f08014a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08014b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/Term;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0d0122

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    const v2, 0x7f0d013a

    goto :goto_0

    :goto_1
    iget-object v0, p0, Ljackpal/androidterm/Term;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0123

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_1
    const v0, 0x7f0d013b

    goto :goto_2

    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Ljackpal/androidterm/Term;->d:Ljackpal/androidterm/c/c;

    invoke-virtual {p2, p1}, Ljackpal/androidterm/c/c;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Ljackpal/androidterm/Term;->g:Landroid/content/Intent;

    iget-object v1, p0, Ljackpal/androidterm/Term;->p:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljackpal/androidterm/Term;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to bind to TermService!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStop()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->a()V

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    invoke-virtual {v0, p0}, Ljackpal/androidterm/c/a;->b(Ljackpal/androidterm/a/ac;)Z

    iget-object v0, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    iget-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/c/a;->b(Ljackpal/androidterm/a/ac;)Z

    iget-object v0, p0, Ljackpal/androidterm/Term;->c:Ljackpal/androidterm/c/a;

    iget-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/c/a;->d(Ljackpal/androidterm/a/ac;)Z

    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    iget-object v1, p0, Ljackpal/androidterm/Term;->s:Ljackpal/androidterm/y;

    invoke-virtual {v0, v1}, Ljackpal/androidterm/TermViewFlipper;->b(Ljackpal/androidterm/a/ac;)V

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/Term;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-virtual {v0}, Ljackpal/androidterm/TermViewFlipper;->removeAllViews()V

    iget-object v0, p0, Ljackpal/androidterm/Term;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljackpal/androidterm/Term;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
