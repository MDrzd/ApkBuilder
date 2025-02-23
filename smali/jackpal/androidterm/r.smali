.class final Ljackpal/androidterm/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/os/ParcelFileDescriptor;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Landroid/app/PendingIntent;

.field private synthetic e:Landroid/os/ResultReceiver;

.field private synthetic f:Ljackpal/androidterm/q;


# direct methods
.method constructor <init>(Ljackpal/androidterm/q;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 7

    iput-object p1, p0, Ljackpal/androidterm/r;->f:Ljackpal/androidterm/q;

    iput-object p2, p0, Ljackpal/androidterm/r;->a:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Ljackpal/androidterm/r;->b:Ljava/lang/String;

    iput-object p4, p0, Ljackpal/androidterm/r;->c:Ljava/lang/String;

    iput-object p5, p0, Ljackpal/androidterm/r;->d:Landroid/app/PendingIntent;

    iput-object p6, p0, Ljackpal/androidterm/r;->e:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljackpal/androidterm/c/c;

    iget-object v2, p0, Ljackpal/androidterm/r;->f:Ljackpal/androidterm/q;

    iget-object v2, v2, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-virtual {v2}, Ljackpal/androidterm/TermService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Ljackpal/androidterm/r;->f:Ljackpal/androidterm/q;

    iget-object v3, v3, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-virtual {v3}, Ljackpal/androidterm/TermService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljackpal/androidterm/c/c;-><init>(Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    new-instance v2, Ljackpal/androidterm/a;

    iget-object v3, p0, Ljackpal/androidterm/r;->a:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Ljackpal/androidterm/r;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Ljackpal/androidterm/a;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/c/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Ljackpal/androidterm/r;->f:Ljackpal/androidterm/q;

    iget-object v0, v0, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    invoke-static {v0}, Ljackpal/androidterm/TermService;->a(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/c/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljackpal/androidterm/c/a;->a(Ljackpal/androidterm/a/q;)Z

    iget-object v0, p0, Ljackpal/androidterm/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljackpal/androidterm/b;->c(Ljava/lang/String;)V

    new-instance v0, Ljackpal/androidterm/s;

    iget-object v1, p0, Ljackpal/androidterm/r;->f:Ljackpal/androidterm/q;

    iget-object v1, v1, Ljackpal/androidterm/q;->a:Ljackpal/androidterm/TermService;

    iget-object v3, p0, Ljackpal/androidterm/r;->d:Landroid/app/PendingIntent;

    iget-object v4, p0, Ljackpal/androidterm/r;->e:Landroid/os/ResultReceiver;

    invoke-direct {v0, v1, v3, v4}, Ljackpal/androidterm/s;-><init>(Ljackpal/androidterm/TermService;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    invoke-virtual {v2, v0}, Ljackpal/androidterm/b;->a(Ljackpal/androidterm/a/w;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljackpal/androidterm/b;->e(Ljava/lang/String;)V

    const/16 v0, 0x50

    const/16 v1, 0x18

    invoke-virtual {v2, v0, v1}, Ljackpal/androidterm/b;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    const-string v1, "TermService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to bootstrap AIDL session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljackpal/androidterm/b;->d()V

    :cond_0
    return-void
.end method
