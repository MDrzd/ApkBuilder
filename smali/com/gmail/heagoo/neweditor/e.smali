.class final Lcom/gmail/heagoo/neweditor/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/e;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/e;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/EditorActivity;->b(Z)V

    return-void
.end method
