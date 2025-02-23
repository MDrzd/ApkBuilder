.class public Lcom/gmail/heagoo/common/DynamicExpandListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:I

.field private b:Lcom/gmail/heagoo/common/h;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1e

    iput p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->c:I

    invoke-virtual {p0, p0}, Lcom/gmail/heagoo/common/DynamicExpandListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1e

    iput p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->c:I

    invoke-virtual {p0, p0}, Lcom/gmail/heagoo/common/DynamicExpandListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1e

    iput p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->c:I

    invoke-virtual {p0, p0}, Lcom/gmail/heagoo/common/DynamicExpandListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->b:Lcom/gmail/heagoo/common/h;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->b:Lcom/gmail/heagoo/common/h;

    invoke-virtual {p1}, Lcom/gmail/heagoo/common/h;->a()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    iput p2, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->a:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/common/DynamicExpandListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    new-instance v0, Lcom/gmail/heagoo/common/h;

    iget v1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->c:I

    invoke-direct {v0, p1, v1}, Lcom/gmail/heagoo/common/h;-><init>(Landroid/widget/ListAdapter;I)V

    iput-object v0, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->b:Lcom/gmail/heagoo/common/h;

    iget-object p1, p0, Lcom/gmail/heagoo/common/DynamicExpandListView;->b:Lcom/gmail/heagoo/common/h;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
