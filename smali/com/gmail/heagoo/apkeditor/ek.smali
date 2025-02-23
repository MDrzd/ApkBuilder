.class final Lcom/gmail/heagoo/apkeditor/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/common/l;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/ej;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/ej;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/ek;->a:Lcom/gmail/heagoo/apkeditor/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/ek;->a:Lcom/gmail/heagoo/apkeditor/ej;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/ej;->a:Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/TextEditBigActivity;->finish()V

    return-void
.end method
