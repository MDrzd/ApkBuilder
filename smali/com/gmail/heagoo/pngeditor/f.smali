.class final Lcom/gmail/heagoo/pngeditor/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/pngeditor/f;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/gmail/heagoo/pngeditor/f;->a:Lcom/gmail/heagoo/pngeditor/PngEditActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/pngeditor/PngEditActivity;->f(Lcom/gmail/heagoo/pngeditor/PngEditActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
