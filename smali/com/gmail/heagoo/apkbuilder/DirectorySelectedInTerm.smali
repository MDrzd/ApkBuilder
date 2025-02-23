.class public Lcom/gmail/heagoo/apkbuilder/DirectorySelectedInTerm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/gmail/heagoo/apkeditor/FileSelectDialog$IFileSelection;


# instance fields
.field private termRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/Term;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkbuilder/DirectorySelectedInTerm;->termRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public fileSelectedInDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    iget-object p2, p0, Lcom/gmail/heagoo/apkbuilder/DirectorySelectedInTerm;->termRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljackpal/androidterm/Term;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljackpal/androidterm/Term;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getConfirmMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInterestedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
