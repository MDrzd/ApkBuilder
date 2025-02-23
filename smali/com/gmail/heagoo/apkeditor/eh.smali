.class final Lcom/gmail/heagoo/apkeditor/eh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/common/l;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;Lcom/gmail/heagoo/common/l;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/eh;->a:Lcom/gmail/heagoo/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->e(Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;)Lcom/gmail/heagoo/apkeditor/er;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gmail/heagoo/apkeditor/er;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gmail/heagoo/common/i;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->j:Lcom/gmail/heagoo/neweditor/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/d;->a(Z)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->d()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->g:Z

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->b:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->b()V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->a:Lcom/gmail/heagoo/common/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/eh;->a:Lcom/gmail/heagoo/common/l;

    invoke-interface {v0}, Lcom/gmail/heagoo/common/l;->a()V

    :cond_0
    return-void
.end method
