.class final Ljackpal/androidterm/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/Runnable;

.field private synthetic b:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/n;->b:Ljackpal/androidterm/Term;

    iput-object p2, p0, Ljackpal/androidterm/n;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Ljackpal/androidterm/n;->b:Ljackpal/androidterm/Term;

    invoke-static {p1}, Ljackpal/androidterm/Term;->o(Ljackpal/androidterm/Term;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Ljackpal/androidterm/n;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
