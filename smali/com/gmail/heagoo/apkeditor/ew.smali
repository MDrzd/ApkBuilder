.class final Lcom/gmail/heagoo/apkeditor/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/l;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ev;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ev;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ew;->a:Lcom/gmail/heagoo/apkeditor/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ew;->a:Lcom/gmail/heagoo/apkeditor/ev;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ev;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->finish()V

    return-void
.end method
