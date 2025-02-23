.class public final Lcom/gmail/heagoo/apkeditor/di;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static f:[I

.field private static g:[Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/gmail/heagoo/apkeditor/di;->f:[I

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "    const-string v0, \"This is a toast.\"\n    # p0 (this object) must be an object of Context\n    invoke-static {p0, v0}, Lapkeditor/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "    # use \'adb logcat APKEDITOR:* *:S\' to view the log\n    const-string v0, \"I am here.\"\n    invoke-static {v0}, Lapkeditor/Utils;->log(Ljava/lang/String;)V"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "    # use \'adb logcat APKEDITOR:* *:S\' to view the value\n    invoke-static {v0}, Lapkeditor/Utils;->dumpValue(Ljava/lang/Object;)V"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "    # use \'adb logcat APKEDITOR:* *:S\' to view the stack trace\n    invoke-static {}, Lapkeditor/Utils;->printCallStack()V"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/gmail/heagoo/apkeditor/di;->g:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0296
        0x7f0d01bc
        0x7f0d012c
        0x7f0d0240
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/di;->requestWindowFeature(I)Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/di;->b:Ljava/lang/ref/WeakReference;

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/di;->a:Z

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/di;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/di;->a(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/di;->getWindow()Landroid/view/Window;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x6

    div-int/lit8 p1, p1, 0x7

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "smali"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "smali_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/di;->d:Landroid/widget/Spinner;

    sget-object v1, Lcom/gmail/heagoo/apkeditor/di;->f:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/gmail/heagoo/apkeditor/di;->f:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/gmail/heagoo/apkeditor/di;->f:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x1090009

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/di;->d:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/di;->d:Landroid/widget/Spinner;

    new-instance v1, Lcom/gmail/heagoo/apkeditor/dj;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/dj;-><init>(Lcom/gmail/heagoo/apkeditor/di;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f0800cc

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/di;->e:Landroid/widget/EditText;

    const p1, 0x7f08004c

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08004a

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/gmail/heagoo/apkeditor/di;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 4

    sget-object v0, Lcom/gmail/heagoo/apkeditor/di;->g:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/di;->e:Landroid/widget/EditText;

    sget-object v1, Lcom/gmail/heagoo/apkeditor/di;->g:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08004a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/di;->dismiss()V

    return-void

    :cond_0
    const v0, 0x7f08004c

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/di;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "code"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/di;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/di;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apkeditor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Utils.smali"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/di;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "smali_patch/Utils.smali"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_1
    invoke-static {v2}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/gmail/heagoo/apkeditor/di;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_2
    :goto_2
    const v0, 0x7f0d02a2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method
