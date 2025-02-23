.class final Lcom/gmail/heagoo/apkeditor/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/cg;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/gmail/heagoo/apkeditor/ai;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ai;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/aj;->b:Lcom/gmail/heagoo/apkeditor/ai;

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/aj;->b:Lcom/gmail/heagoo/apkeditor/ai;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/ai;->a(Lcom/gmail/heagoo/apkeditor/ai;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/aj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gmail/heagoo/common/i;->a(Ljava/util/List;Ljava/lang/String;)Z

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/aj;->b:Lcom/gmail/heagoo/apkeditor/ai;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ai;->a:Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;

    sget v1, Lcom/gmail/heagoo/apkeditor/ah;->a:I

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/apkeditor/ApkProjectActivity;->a(I)V

    return-void
.end method
