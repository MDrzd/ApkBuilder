.class final Lcom/gmail/heagoo/neweditor/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/y;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->n(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->n(Lcom/gmail/heagoo/neweditor/EditorActivity;)Lcom/gmail/heagoo/neweditor/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->o(Lcom/gmail/heagoo/neweditor/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->b()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->setResult(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a()V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gmail/heagoo/neweditor/EditorActivity;->c:Z

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/n;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c()V

    return-void
.end method
