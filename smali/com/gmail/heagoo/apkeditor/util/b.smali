.class final Lcom/gmail/heagoo/apkeditor/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/util/a;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/util/a;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/util/b;->a:Lcom/gmail/heagoo/apkeditor/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/util/b;->a:Lcom/gmail/heagoo/apkeditor/util/a;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/util/a;->a(Lcom/gmail/heagoo/apkeditor/util/a;)V

    return-void
.end method
