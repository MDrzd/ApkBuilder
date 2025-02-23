.class final Ljackpal/androidterm/a/g;
.super Landroid/view/inputmethod/BaseInputConnection;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private synthetic f:Ljackpal/androidterm/a/c;


# direct methods
.method constructor <init>(Ljackpal/androidterm/a/c;Landroid/view/View;Z)V
    .registers 4

    iput-object p1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljackpal/androidterm/a/g;->b:I

    const/4 v2, 0x0

    if-gt v1, v0, :cond_2

    iget v1, p0, Ljackpal/androidterm/a/g;->c:I

    if-le v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v3}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/a/g;->b:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v3}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/a/g;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V

    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    iget v1, p0, Ljackpal/androidterm/a/g;->b:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    iget v1, p0, Ljackpal/androidterm/a/g;->c:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Ljackpal/androidterm/a/g;->b:I

    :goto_0
    iput v0, p0, Ljackpal/androidterm/a/g;->a:I

    goto :goto_1

    :cond_1
    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    iget v1, p0, Ljackpal/androidterm/a/g;->c:I

    iget v3, p0, Ljackpal/androidterm/a/g;->b:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Ljackpal/androidterm/a/g;->b:I

    iput v2, p0, Ljackpal/androidterm/a/g;->c:I

    return-void
.end method

.method private a(I)V
    .registers 5

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->l(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/o;->b(I)I

    move-result p1

    const/high16 v0, 0xa00000

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->m(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/q;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v1}, Ljackpal/androidterm/a/c;->l(Ljackpal/androidterm/a/c;)Ljackpal/androidterm/a/o;

    move-result-object v1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    iget-object v2, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-virtual {v2}, Ljackpal/androidterm/a/c;->c()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Ljackpal/androidterm/a/o;->a(ILandroid/view/KeyEvent;Z)Z

    :goto_0
    iget-object p1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p1}, Ljackpal/androidterm/a/c;->n(Ljackpal/androidterm/a/c;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    :try_start_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_1

    :cond_0
    const v2, 0xfffd

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Ljackpal/androidterm/a/g;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "EmulatorView"

    const-string v1, "error writing "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final beginBatchEdit()Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    const-string v1, ""

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/g;->a:I

    iput v0, p0, Ljackpal/androidterm/a/g;->b:I

    iput v0, p0, Ljackpal/androidterm/a/g;->c:I

    const/4 v0, 0x1

    return v0
.end method

.method public final clearMetaKeyStates(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .registers 3

    invoke-direct {p0}, Ljackpal/androidterm/a/g;->a()V

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/g;->a(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    const-string p2, ""

    invoke-static {p1, p2}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Ljackpal/androidterm/a/g;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public final deleteSurroundingText(II)Z
    .registers 6

    const/16 v0, 0x43

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Ljackpal/androidterm/a/g;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, v1, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Ljackpal/androidterm/a/g;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final endBatchEdit()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final finishComposingText()Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljackpal/androidterm/a/g;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    const-string v1, ""

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Ljackpal/androidterm/a/g;->b:I

    iput v0, p0, Ljackpal/androidterm/a/g;->c:I

    iput v0, p0, Ljackpal/androidterm/a/g;->a:I

    const/4 v0, 0x1

    return v0
.end method

.method public final getCursorCapsMode(I)I
    .registers 3

    const/16 v0, 0x1000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .registers 4

    iget-object p1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p1}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Ljackpal/androidterm/a/g;->e:I

    if-ge v0, p1, :cond_1

    iget p1, p0, Ljackpal/androidterm/a/g;->d:I

    iget v0, p0, Ljackpal/androidterm/a/g;->e:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p1}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Ljackpal/androidterm/a/g;->d:I

    iget v1, p0, Ljackpal/androidterm/a/g;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 5

    iget-object p2, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p2}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_1

    iget p2, p0, Ljackpal/androidterm/a/g;->a:I

    if-ltz p2, :cond_1

    iget p2, p0, Ljackpal/androidterm/a/g;->a:I

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p2}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    iget v1, p0, Ljackpal/androidterm/a/g;->a:I

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 4

    iget p2, p0, Ljackpal/androidterm/a/g;->a:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_1

    iget p2, p0, Ljackpal/androidterm/a/g;->a:I

    if-ltz p2, :cond_1

    iget p2, p0, Ljackpal/androidterm/a/g;->a:I

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {p2}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Ljackpal/androidterm/a/g;->a:I

    sub-int/2addr v0, p1

    iget p1, p0, Ljackpal/androidterm/a/g;->a:I

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final performContextMenuAction(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final performEditorAction(I)Z
    .registers 2

    if-nez p1, :cond_0

    const-string p1, "\r"

    invoke-direct {p0, p1}, Ljackpal/androidterm/a/g;->a(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public final reportFullscreenMode(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/a/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final setComposingRegion(II)Z
    .registers 4

    if-ge p1, p2, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-direct {p0}, Ljackpal/androidterm/a/g;->a()V

    iput p1, p0, Ljackpal/androidterm/a/g;->b:I

    iput p2, p0, Ljackpal/androidterm/a/g;->c:I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 8

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Ljackpal/androidterm/a/g;->b:I

    const/4 v2, 0x0

    if-gt v1, v0, :cond_2

    iget v1, p0, Ljackpal/androidterm/a/g;->c:I

    if-le v1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v3}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/a/g;->b:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v2}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Ljackpal/androidterm/a/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljackpal/androidterm/a/c;->a(Ljackpal/androidterm/a/c;Ljava/lang/String;)V

    iget v0, p0, Ljackpal/androidterm/a/g;->b:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Ljackpal/androidterm/a/g;->c:I

    const/4 p1, 0x1

    if-lez p2, :cond_1

    iget v0, p0, Ljackpal/androidterm/a/g;->c:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    iget v0, p0, Ljackpal/androidterm/a/g;->b:I

    sub-int/2addr v0, p2

    :goto_0
    iput v0, p0, Ljackpal/androidterm/a/g;->a:I

    return p1

    :cond_2
    :goto_1
    return v2
.end method

.method public final setSelection(II)Z
    .registers 4

    iget-object v0, p0, Ljackpal/androidterm/a/g;->f:Ljackpal/androidterm/a/c;

    invoke-static {v0}, Ljackpal/androidterm/a/c;->o(Ljackpal/androidterm/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Ljackpal/androidterm/a/g;->e:I

    iput p2, p0, Ljackpal/androidterm/a/g;->d:I

    :goto_0
    iput p1, p0, Ljackpal/androidterm/a/g;->a:I

    goto :goto_1

    :cond_0
    if-ge p1, p2, :cond_1

    if-lez p1, :cond_1

    if-ge p2, v0, :cond_1

    iput p1, p0, Ljackpal/androidterm/a/g;->d:I

    iput p2, p0, Ljackpal/androidterm/a/g;->e:I

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
