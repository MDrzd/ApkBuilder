.class final Ljackpal/androidterm/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljackpal/androidterm/TermViewFlipper;


# direct methods
.method constructor <init>(Ljackpal/androidterm/TermViewFlipper;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/v;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/v;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-static {v0}, Ljackpal/androidterm/TermViewFlipper;->a(Ljackpal/androidterm/TermViewFlipper;)V

    iget-object v0, p0, Ljackpal/androidterm/v;->a:Ljackpal/androidterm/TermViewFlipper;

    invoke-static {v0}, Ljackpal/androidterm/TermViewFlipper;->b(Ljackpal/androidterm/TermViewFlipper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
