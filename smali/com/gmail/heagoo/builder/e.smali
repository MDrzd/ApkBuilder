.class final Lcom/gmail/heagoo/builder/e;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/builder/d;


# direct methods
.method public constructor <init>(Lcom/gmail/heagoo/builder/d;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/gmail/heagoo/builder/e;->a:Lcom/gmail/heagoo/builder/d;

    const p1, 0x1090003

    invoke-direct {p0, p2, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/gmail/heagoo/builder/e;->a:Lcom/gmail/heagoo/builder/d;

    invoke-static {p3}, Lcom/gmail/heagoo/builder/d;->a(Lcom/gmail/heagoo/builder/d;)I

    move-result p3

    if-ne p1, p3, :cond_0

    const p1, -0x7fa6683c

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    return-object p2
.end method
