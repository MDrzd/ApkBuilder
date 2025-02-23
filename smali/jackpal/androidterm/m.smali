.class final Ljackpal/androidterm/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljackpal/androidterm/Term;


# direct methods
.method constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/m;->a:Ljackpal/androidterm/Term;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/m;->a:Ljackpal/androidterm/Term;

    invoke-static {v0}, Ljackpal/androidterm/Term;->n(Ljackpal/androidterm/Term;)V

    return-void
.end method
