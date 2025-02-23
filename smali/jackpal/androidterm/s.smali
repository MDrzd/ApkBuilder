.class final Ljackpal/androidterm/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljackpal/androidterm/a/w;


# instance fields
.field private final a:Landroid/app/PendingIntent;

.field private final b:Landroid/os/ResultReceiver;

.field private synthetic c:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/TermService;Landroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 4

    iput-object p1, p0, Ljackpal/androidterm/s;->c:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljackpal/androidterm/s;->a:Landroid/app/PendingIntent;

    iput-object p3, p0, Ljackpal/androidterm/s;->b:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final a(Ljackpal/androidterm/a/q;)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/s;->a:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    iget-object v0, p0, Ljackpal/androidterm/s;->b:Landroid/os/ResultReceiver;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, p0, Ljackpal/androidterm/s;->c:Ljackpal/androidterm/TermService;

    invoke-static {v0}, Ljackpal/androidterm/TermService;->a(Ljackpal/androidterm/TermService;)Ljackpal/androidterm/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljackpal/androidterm/c/a;->remove(Ljava/lang/Object;)Z

    return-void
.end method
