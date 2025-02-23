.class final Lcom/gmail/heagoo/common/h;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/widget/ListAdapter;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gmail/heagoo/common/h;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/h;->c:Z

    iput-object p1, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    iput p2, p0, Lcom/gmail/heagoo/common/h;->a:I

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    iget v1, p0, Lcom/gmail/heagoo/common/h;->a:I

    if-le p2, v1, :cond_0

    iget p1, p0, Lcom/gmail/heagoo/common/h;->a:I

    iput p1, p0, Lcom/gmail/heagoo/common/h;->e:I

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/h;->c:Z

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/gmail/heagoo/common/h;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/common/h;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/common/h;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/gmail/heagoo/common/h;->a:I

    iget v1, p0, Lcom/gmail/heagoo/common/h;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gmail/heagoo/common/h;->a:I

    iget-object v0, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/gmail/heagoo/common/h;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/h;->c:Z

    iget v0, p0, Lcom/gmail/heagoo/common/h;->a:I

    :goto_0
    iput v0, p0, Lcom/gmail/heagoo/common/h;->e:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/common/h;->c:Z

    iget-object v0, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/gmail/heagoo/common/h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/common/h;->e:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/common/h;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
