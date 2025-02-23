.class final Lcom/gmail/heagoo/apkeditor/fl;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private static a(I)I
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

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/fl;I)I
    .registers 2

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/fl;->a(I)I

    move-result p0

    return p0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v3

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/fl;->a(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;ZI)V

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
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const-string v1, "updateLineCount starts"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/SettingEditorActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iput v2, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->m:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-boolean v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v0, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v0}, Lcom/gmail/heagoo/neweditor/ObEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v3}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Z

    move-result v3

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/gmail/heagoo/apkeditor/fl;->a(I)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;ZI)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    :goto_1
    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v7, v7, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v7, v4}, Lcom/gmail/heagoo/neweditor/ObEditText;->b(I)I

    move-result v7

    const/16 v8, 0xa

    if-ge v5, v7, :cond_1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    move v3, v5

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->b(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/fl;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    iget-object v1, v1, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->l:Lcom/gmail/heagoo/neweditor/ObEditText;

    invoke-virtual {v1}, Lcom/gmail/heagoo/neweditor/ObEditText;->getLineCount()I

    move-result v1

    iput v1, v0, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->m:I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/fl;->a:Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;

    const-string v1, "updateLineCount ends"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;->a(Lcom/gmail/heagoo/apkeditor/TextEditNormalActivity;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
