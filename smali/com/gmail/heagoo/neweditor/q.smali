.class final Lcom/gmail/heagoo/neweditor/q;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/neweditor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/neweditor/EditorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method protected static a(I)I
    .registers 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    div-int/lit8 p0, p0, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v3, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/neweditor/EditorActivity;->b(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v3

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/q;->a(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;ZI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v2, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v2}, Lcom/gmail/heagoo/neweditor/EditorActivity;->b(Lcom/gmail/heagoo/neweditor/EditorActivity;)Z

    move-result v2

    array-length v3, v0

    invoke-static {v3}, Lcom/gmail/heagoo/neweditor/q;->a(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/gmail/heagoo/neweditor/EditorActivity;->a(Lcom/gmail/heagoo/neweditor/EditorActivity;ZI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    :goto_1
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v6, v6, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v6, v3}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(I)I

    move-result v6

    const/16 v7, 0xa

    if-ge v4, v6, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    move v2, v4

    move v4, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/neweditor/EditorActivity;->c(Lcom/gmail/heagoo/neweditor/EditorActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/gmail/heagoo/neweditor/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, p0, Lcom/gmail/heagoo/neweditor/q;->a:Lcom/gmail/heagoo/neweditor/EditorActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/neweditor/EditorActivity;->a:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result v1

    iput v1, v0, Lcom/gmail/heagoo/neweditor/EditorActivity;->b:I

    return-void
.end method
