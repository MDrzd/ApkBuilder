.class final Ljackpal/androidterm/l;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/os/IBinder;

.field private synthetic b:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/l;->b:Ljackpal/androidterm/Term;

    iput-object p2, p0, Ljackpal/androidterm/l;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/l;->b:Ljackpal/androidterm/Term;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Ljackpal/androidterm/Term;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ljackpal/androidterm/l;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
