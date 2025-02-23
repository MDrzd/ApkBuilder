.class final Lcom/gmail/heagoo/neweditor/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/d;

.field private synthetic b:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;Lcom/gmail/heagoo/neweditor/d;)V
    .registers 3

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/f;->b:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iput-object p2, p0, Lcom/gmail/heagoo/neweditor/f;->a:Lcom/gmail/heagoo/neweditor/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/f;->b:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->p(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/f;->a:Lcom/gmail/heagoo/neweditor/d;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/f;->a:Lcom/gmail/heagoo/neweditor/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
