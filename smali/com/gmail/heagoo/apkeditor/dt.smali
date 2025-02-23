.class final Lcom/gmail/heagoo/apkeditor/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/dr;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dr;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dt;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dt;->a:Lcom/gmail/heagoo/apkeditor/dr;

    invoke-virtual {v0, p1}, Lcom/gmail/heagoo/apkeditor/dr;->c(I)V

    return-void
.end method
