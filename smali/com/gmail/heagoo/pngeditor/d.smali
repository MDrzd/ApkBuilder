.class final Lcom/gmail/heagoo/pngeditor/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/d;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/d;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->c(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Lcom/b/a/e;

    move-result-object p1

    iget-object p2, p0, Lcom/gmail/heagoo/pngeditor/d;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p2}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->b(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/b/a/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/d;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->d(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V

    return-void
.end method
