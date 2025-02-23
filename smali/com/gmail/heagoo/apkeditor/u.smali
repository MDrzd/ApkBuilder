.class final Lcom/gmail/heagoo/apkeditor/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/t;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/t;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/u;->a:Lcom/gmail/heagoo/apkeditor/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/u;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget v1, v1, Lcom/gmail/heagoo/apkeditor/t;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/u;->a:Lcom/gmail/heagoo/apkeditor/t;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/l;->b:Lcom/gmail/heagoo/apkeditor/ci;

    invoke-virtual {v1, p1}, Lcom/gmail/heagoo/apkeditor/ci;->b(Ljava/util/List;)V

    return v0
.end method
