.class final Lcom/gmail/heagoo/neweditor/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/neweditor/af;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/i;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(II)V
    .registers 3

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/i;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->k(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/SlidingDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/neweditor/i;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {p1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->l(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    :cond_0
    return-void
.end method
