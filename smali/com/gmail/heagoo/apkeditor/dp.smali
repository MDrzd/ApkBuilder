.class final Lcom/gmail/heagoo/apkeditor/dp;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;

.field private f:I

.field private final g:I

.field private final h:I

.field private synthetic i:Lcom/gmail/heagoo/apkeditor/dm;


# direct methods
.method constructor <init>(Lcom/gmail/heagoo/apkeditor/dm;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 8

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->i:Lcom/gmail/heagoo/apkeditor/dm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->f:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dp;->h:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/gmail/heagoo/apkeditor/dp;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/gmail/heagoo/apkeditor/dp;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gmail/heagoo/apkeditor/dp;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gmail/heagoo/apkeditor/dp;->d:Landroid/view/View;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/dp;->e:Ljava/util/List;

    const-string p2, ".smali"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->f:I

    return-void

    :cond_0
    const-string p1, ".java"

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/dp;->f:I

    :cond_1
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .registers 8

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dp;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    iget v1, p0, Lcom/gmail/heagoo/apkeditor/dp;->f:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-ne v5, v6, :cond_2

    :cond_0
    const-string v5, "(public|protected|private|static|\\s) +[\\w\\<\\>\\[\\]]+\\s+(\\w+) *\\([^\\)]*\\) *(\\{?|[^;])"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/dp;->e:Ljava/util/List;

    new-instance v5, Lcom/gmail/heagoo/apkeditor/b/a;

    invoke-direct {v5, v1, v3}, Lcom/gmail/heagoo/apkeditor/b/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, ".method "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/dp;->e:Ljava/util/List;

    new-instance v4, Lcom/gmail/heagoo/apkeditor/b/a;

    invoke-direct {v4, v2, v1}, Lcom/gmail/heagoo/apkeditor/b/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/gmail/heagoo/apkeditor/dp;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->i:Lcom/gmail/heagoo/apkeditor/dm;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dp;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/dp;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/dp;->e:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Lcom/gmail/heagoo/apkeditor/dm;->a(Lcom/gmail/heagoo/apkeditor/dm;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/dp;->i:Lcom/gmail/heagoo/apkeditor/dm;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/dp;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/dm;->a(Landroid/view/View;)V

    return-void
.end method
