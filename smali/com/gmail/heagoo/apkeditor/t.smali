.class final Lcom/gmail/heagoo/apkeditor/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/gmail/heagoo/apkeditor/l;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/l;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/t;->a:I

    iput-boolean p3, p0, Lcom/gmail/heagoo/apkeditor/t;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p3, p3, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {p3, p2}, Lcom/gmail/heagoo/apkeditor/ci;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/t;->a:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/common/c;

    iget-boolean v0, v0, Lcom/gmail/heagoo/common/c;->b:Z

    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/t;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const v3, 0x7f0d010e

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v3, Lcom/gmail/heagoo/apkeditor/u;

    invoke-direct {v3, p0}, Lcom/gmail/heagoo/apkeditor/u;-><init>(Lcom/gmail/heagoo/apkeditor/t;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x2

    const v3, 0x7f0d01f5

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v3, Lcom/gmail/heagoo/apkeditor/v;

    invoke-direct {v3, p0, p3, p2}, Lcom/gmail/heagoo/apkeditor/v;-><init>(Lcom/gmail/heagoo/apkeditor/t;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    iget-boolean p2, p0, Lcom/gmail/heagoo/apkeditor/t;->c:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-object p2, p2, Lcom/gmail/heagoo/apkeditor/l;->a:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    const/4 p2, 0x3

    const p3, 0x7f0d025e

    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    if-eqz v0, :cond_3

    new-instance p3, Lcom/gmail/heagoo/apkeditor/w;

    invoke-direct {p3, p0}, Lcom/gmail/heagoo/apkeditor/w;-><init>(Lcom/gmail/heagoo/apkeditor/t;)V

    goto :goto_0

    :cond_3
    new-instance p3, Lcom/gmail/heagoo/apkeditor/x;

    invoke-direct {p3, p0}, Lcom/gmail/heagoo/apkeditor/x;-><init>(Lcom/gmail/heagoo/apkeditor/t;)V

    :goto_0
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    const/4 p2, 0x4

    const p3, 0x7f0d002f

    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    new-instance p3, Lcom/gmail/heagoo/apkeditor/y;

    invoke-direct {p3, p0}, Lcom/gmail/heagoo/apkeditor/y;-><init>(Lcom/gmail/heagoo/apkeditor/t;)V

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 p2, 0x5

    const p3, 0x7f0d01de

    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/gmail/heagoo/apkeditor/z;

    invoke-direct {p2, p0}, Lcom/gmail/heagoo/apkeditor/z;-><init>(Lcom/gmail/heagoo/apkeditor/t;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
