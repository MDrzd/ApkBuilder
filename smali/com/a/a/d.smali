.class final Lcom/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    iget-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    iget-object p1, p1, Lcom/a/a/a;->a:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    iget-object p1, p1, Lcom/a/a/a;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
