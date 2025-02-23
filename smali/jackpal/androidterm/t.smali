.class public final Ljackpal/androidterm/t;
.super Landroid/os/Binder;


# instance fields
.field private synthetic a:Ljackpal/androidterm/TermService;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/TermService;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/t;->a:Ljackpal/androidterm/TermService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljackpal/androidterm/TermService;
    .registers 3

    const-string v0, "TermService"

    const-string v1, "Activity binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljackpal/androidterm/t;->a:Ljackpal/androidterm/TermService;

    return-object v0
.end method
