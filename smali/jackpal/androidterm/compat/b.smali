.class final Ljackpal/androidterm/compat/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# instance fields
.field private synthetic a:Ljackpal/androidterm/compat/d;

.field private synthetic b:Ljackpal/androidterm/compat/a;


# direct methods
.method constructor <init>(Ljackpal/androidterm/compat/a;Ljackpal/androidterm/compat/d;)V
    .registers 3

    iput-object p1, p0, Ljackpal/androidterm/compat/b;->b:Ljackpal/androidterm/compat/a;

    iput-object p2, p0, Ljackpal/androidterm/compat/b;->a:Ljackpal/androidterm/compat/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(IJ)Z
    .registers 4

    iget-object p2, p0, Ljackpal/androidterm/compat/b;->a:Ljackpal/androidterm/compat/d;

    invoke-interface {p2, p1}, Ljackpal/androidterm/compat/d;->a(I)Z

    move-result p1

    return p1
.end method
