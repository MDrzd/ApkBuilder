.class final Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;


# instance fields
.field final synthetic val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .registers 4

    iput-object p3, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v13/view/inputmethod/InputConnectionCompat$1;->val$listener:Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {p1}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->wrap(Ljava/lang/Object;)Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/support/v13/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
