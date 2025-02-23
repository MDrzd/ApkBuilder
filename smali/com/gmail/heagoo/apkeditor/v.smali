.class final Lcom/gmail/heagoo/apkeditor/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/gmail/heagoo/apkeditor/t;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/t;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/v;->c:Lcom/gmail/heagoo/apkeditor/t;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/v;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/v;->c:Lcom/gmail/heagoo/apkeditor/t;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/t;->b:Lcom/gmail/heagoo/apkeditor/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/v;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/v;->c:Lcom/gmail/heagoo/apkeditor/t;

    iget v2, v2, Lcom/gmail/heagoo/apkeditor/t;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gmail/heagoo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
