.class final Lcom/gmail/heagoo/apkeditor/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/cn;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/cn;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/co;->a:Lcom/gmail/heagoo/apkeditor/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/co;->a:Lcom/gmail/heagoo/apkeditor/cn;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/cn;->a(Lcom/gmail/heagoo/apkeditor/cn;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
