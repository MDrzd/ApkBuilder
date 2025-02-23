.class final Lcom/gmail/heagoo/apkeditor/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/MainActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/MainActivity;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/br;->b:Lcom/gmail/heagoo/apkeditor/MainActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/br;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/br;->b:Lcom/gmail/heagoo/apkeditor/MainActivity;

    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/br;->a:Ljava/io/File;

    const-string v1, "build.gradle"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gmail/heagoo/apkeditor/MainActivity;->a(Lcom/gmail/heagoo/apkeditor/MainActivity;Ljava/lang/String;)V

    return-void
.end method
