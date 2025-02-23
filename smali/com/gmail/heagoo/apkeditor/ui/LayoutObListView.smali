.class public Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;
.super Landroid/widget/ListView;

# interfaces
.implements Lcom/gmail/heagoo/neweditor/r;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    return-void
.end method


# virtual methods
.method public final a(III)V
    .registers 5

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->d:I

    iput p3, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->e:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->b:Z

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->d:I

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->e:I

    return-void
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->c:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->d:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->e:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/ui/LayoutObListView;->a:Z

    return-void
.end method
