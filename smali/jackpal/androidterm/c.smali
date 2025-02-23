.class Ljackpal/androidterm/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljackpal/androidterm/a/ac;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private synthetic a:Ljackpal/androidterm/b;


# direct methods
.method constructor <init>(Ljackpal/androidterm/b;)V
    .registers 2

    iput-object p1, p0, Ljackpal/androidterm/c;->a:Ljackpal/androidterm/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/c;->a:Ljackpal/androidterm/b;

    iget-object v1, p0, Ljackpal/androidterm/c;->a:Ljackpal/androidterm/b;

    invoke-virtual {v1}, Ljackpal/androidterm/b;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljackpal/androidterm/b;->a(Z)V

    return-void
.end method
