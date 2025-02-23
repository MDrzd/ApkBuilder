.class final Lcom/gmail/heagoo/neweditor/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/g;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerOpened()V
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/g;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->i(Lcom/gmail/heagoo/neweditor/EditorActivity;)V

    return-void
.end method
