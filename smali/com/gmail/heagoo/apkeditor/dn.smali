.class final Lcom/gmail/heagoo/apkeditor/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/dm;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dm;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dn;->b:Lcom/gmail/heagoo/apkeditor/dm;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dn;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dn;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dn;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/b/a;

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dn;->b:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/dm;->a(Lcom/gmail/heagoo/apkeditor/dm;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/dn;->b:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/dm;->a(Lcom/gmail/heagoo/apkeditor/dm;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gmail/heagoo/apkeditor/do;

    iget p1, p1, Lcom/gmail/heagoo/apkeditor/b/a;->b:I

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, Lcom/gmail/heagoo/apkeditor/do;->b(I)V

    :cond_0
    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dn;->b:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dm;->b(Lcom/gmail/heagoo/apkeditor/dm;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dn;->b:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/dm;->b(Lcom/gmail/heagoo/apkeditor/dm;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
