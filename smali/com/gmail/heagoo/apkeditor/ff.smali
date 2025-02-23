.class final Lcom/gmail/heagoo/apkeditor/ff;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/common/l;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Lcom/gmail/heagoo/common/l;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/ff;->a:Lcom/gmail/heagoo/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->d()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->g:Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->b:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->a:Lcom/gmail/heagoo/common/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ff;->a:Lcom/gmail/heagoo/common/l;

    invoke-interface {v0}, Lcom/gmail/heagoo/common/l;->a()V

    :cond_0
    return-void
.end method
