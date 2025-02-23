.class final Ljackpal/androidterm/a;
.super Ljackpal/androidterm/b;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/c/c;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljackpal/androidterm/b;-><init>(Landroid/os/ParcelFileDescriptor;Ljackpal/androidterm/c/c;Z)V

    iput-object p3, p0, Ljackpal/androidterm/a;->c:Ljava/lang/String;

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, p2}, Ljackpal/androidterm/a;->a(Ljava/io/InputStream;)V

    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0, p2}, Ljackpal/androidterm/a;->a(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    invoke-super {p0}, Ljackpal/androidterm/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljackpal/androidterm/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljackpal/androidterm/b;->a(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljackpal/androidterm/a;->d:Z

    return-void
.end method

.method final b()Z
    .registers 2

    iget-boolean v0, p0, Ljackpal/androidterm/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
