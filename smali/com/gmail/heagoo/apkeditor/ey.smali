.class final Lcom/gmail/heagoo/apkeditor/ey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/neweditor/aa;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ey;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ey;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const-string v1, "posted scroll message to do syntax highlight"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ey;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(IIZ)V

    return-void
.end method
