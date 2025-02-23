.class final Lcom/gmail/heagoo/neweditor/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Landroid/graphics/Rect;

.field private synthetic b:Lcom/gmail/heagoo/neweditor/d;

.field private synthetic c:Lcom/gmail/heagoo/neweditor/o;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/o;Landroid/graphics/Rect;Lcom/gmail/heagoo/neweditor/d;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/p;->c:Lcom/gmail/heagoo/neweditor/o;

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/p;->a:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/gmail/heagoo/neweditor/p;->b:Lcom/gmail/heagoo/neweditor/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/p;->c:Lcom/gmail/heagoo/neweditor/o;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/p;->c:Lcom/gmail/heagoo/neweditor/o;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/o;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/p;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/p;->c:Lcom/gmail/heagoo/neweditor/o;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/p;->b:Lcom/gmail/heagoo/neweditor/d;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/p;->a:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/gmail/heagoo/neweditor/o;->a(Lcom/gmail/heagoo/neweditor/o;Lcom/gmail/heagoo/neweditor/d;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
