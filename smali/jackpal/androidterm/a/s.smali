.class final Ljackpal/androidterm/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljackpal/androidterm/a/r;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/r;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/a/s;->a:Ljackpal/androidterm/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Ljackpal/androidterm/a/s;->a:Ljackpal/androidterm/a/r;

    iget-object v0, v0, Ljackpal/androidterm/a/r;->a:Ljackpal/androidterm/a/q;

    invoke-virtual {v0}, Ljackpal/androidterm/a/q;->c()V

    return-void
.end method
