.class final Lcom/gmail/heagoo/apkeditor/bv;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:[Z

.field private g:[Z

.field private final h:Ljava/util/Map;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/widget/ExpandableListView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->k:I

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->m:I

    iput-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->e:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gmail/heagoo/apkeditor/bv;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gmail/heagoo/apkeditor/ba;->b()I

    move-result p2

    iput p2, p0, Lcom/gmail/heagoo/apkeditor/bv;->i:I

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a(Landroid/content/Context;)Lcom/gmail/heagoo/apkeditor/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/ba;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->j:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->f:[Z

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->g:[Z

    return-void
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/bv;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gmail/heagoo/apkeditor/bv;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/bv;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/bv;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/bv;->d(I)V

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

.method static synthetic a(Lcom/gmail/heagoo/apkeditor/bv;Z)Z
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->n:Z

    return p1
.end method

.method private d(I)V
    .registers 6

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bv;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/gmail/heagoo/apkeditor/bv;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    invoke-virtual {p0, p1}, Lcom/gmail/heagoo/apkeditor/bv;->b(I)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/l;

    const v0, 0x7f0d02bb

    invoke-virtual {p1, v0}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/bv;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/gmail/heagoo/apkeditor/bv;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bv;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChildId(II)J
    .registers 3

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    int-to-long p1, p1

    return-wide p1
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/gmail/heagoo/apkeditor/bv;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gmail/heagoo/apkeditor/bu;

    const/4 p2, 0x0

    if-nez p4, :cond_0

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/l;

    const-string p4, "layout_inflater"

    invoke-virtual {p3, p4}, Lcom/gmail/heagoo/apkeditor/l;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const p4, 0x7f0a00ad

    iget p5, p0, Lcom/gmail/heagoo/apkeditor/bv;->i:I

    packed-switch p5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p4, 0x7f0a00af

    goto :goto_0

    :pswitch_1
    const p4, 0x7f0a00ae

    :goto_0
    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    new-instance p3, Lcom/gmail/heagoo/apkeditor/bz;

    invoke-direct {p3, p2}, Lcom/gmail/heagoo/apkeditor/bz;-><init>(B)V

    const p5, 0x7f0801e7

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    iput-object p5, p3, Lcom/gmail/heagoo/apkeditor/bz;->a:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/bz;

    :goto_1
    if-eqz p1, :cond_5

    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p3, Lcom/gmail/heagoo/apkeditor/bz;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->k:I

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/gmail/heagoo/apkeditor/bz;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->k:I

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->l:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/gmail/heagoo/apkeditor/bu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/gmail/heagoo/apkeditor/bu;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/gmail/heagoo/apkeditor/bv;->k:I

    if-ge v3, v2, :cond_3

    iget v2, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    if-lez v2, :cond_3

    iget-object v2, p1, Lcom/gmail/heagoo/apkeditor/bu;->c:Ljava/lang/String;

    iget v3, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p5

    float-to-int p5, p5

    iget v2, p0, Lcom/gmail/heagoo/apkeditor/bv;->k:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->l:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    if-le p5, v2, :cond_2

    iget p2, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    iget v1, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    mul-int v1, v1, v2

    div-int/2addr v1, p5

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr p2, v1

    :cond_2
    iget p5, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    if-le p2, p5, :cond_3

    iget p2, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p5

    iget v1, p1, Lcom/gmail/heagoo/apkeditor/bu;->b:I

    add-int/2addr p5, v1

    if-lez p2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/bu;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, -0x3

    sub-int/2addr p5, p2

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/gmail/heagoo/apkeditor/bu;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v0, -0x10000

    invoke-direct {p1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p5

    const/16 v1, 0x22

    invoke-virtual {p2, p1, p5, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p3, Lcom/gmail/heagoo/apkeditor/bz;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-object p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getChildrenCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getGroupCount()I
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object p2, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p4, p0, Lcom/gmail/heagoo/apkeditor/bv;->a:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gmail/heagoo/apkeditor/l;

    const-string v0, "layout_inflater"

    invoke-virtual {p3, v0}, Lcom/gmail/heagoo/apkeditor/l;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    const v0, 0x7f0a00aa

    iget v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->i:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0a00ac

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a00ab

    :goto_0
    invoke-virtual {p3, v0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/gmail/heagoo/apkeditor/by;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gmail/heagoo/apkeditor/by;-><init>(B)V

    const v1, 0x7f0801e1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->a:Landroid/widget/TextView;

    const v1, 0x7f080134

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->c:Landroid/view/View;

    const v1, 0x7f08013f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->b:Landroid/view/View;

    const v1, 0x7f0800ff

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->e:Landroid/widget/ImageView;

    const v1, 0x7f080102

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->d:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/by;

    :goto_1
    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->g:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    const v1, 0x7f070125

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->j:Z

    if-eqz v1, :cond_2

    const v1, 0x7f070126

    goto :goto_2

    :cond_2
    const v1, 0x7f070124

    :goto_2
    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/by;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->f:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_3

    const v1, 0x7f0700ed

    goto :goto_3

    :cond_3
    iget-boolean v1, p0, Lcom/gmail/heagoo/apkeditor/bv;->j:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0700ee

    goto :goto_3

    :cond_4
    const v1, 0x7f0700ec

    :goto_3
    iget-object v2, v0, Lcom/gmail/heagoo/apkeditor/by;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Lcom/gmail/heagoo/apkeditor/by;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, p4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, v0, Lcom/gmail/heagoo/apkeditor/by;->c:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, v0, Lcom/gmail/heagoo/apkeditor/by;->c:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v0, Lcom/gmail/heagoo/apkeditor/by;->b:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/gmail/heagoo/apkeditor/by;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f080134

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->g:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->g:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v2, v0, v3

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bv;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v2, p1, v3}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    invoke-static {v0, p1, v3}, Lcom/gmail/heagoo/apkeditor/fm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    const-string v0, "searchString"

    iget-object v2, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    invoke-static {p1, v0, v2}, La/a/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {v0, p1, v1}, Lcom/gmail/heagoo/apkeditor/l;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f08013f

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->f:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->f:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v2, v0, v3

    invoke-virtual {p0}, Lcom/gmail/heagoo/apkeditor/bv;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/bv;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->n:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/gmail/heagoo/apkeditor/bv;->d(I)V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d025e

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    const v3, 0x7f0d02ba

    invoke-virtual {v0, v3}, Lcom/gmail/heagoo/apkeditor/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gmail/heagoo/apkeditor/bv;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/gmail/heagoo/apkeditor/ac/a;

    iget-object v0, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {v0}, Lcom/gmail/heagoo/apkeditor/l;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "search_replace_with"

    invoke-direct {v4, v0, v3}, Lcom/gmail/heagoo/apkeditor/ac/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, -0x1

    invoke-direct {v2, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;

    iget-object v7, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gmail/heagoo/apkeditor/l;

    invoke-virtual {v7}, Lcom/gmail/heagoo/apkeditor/l;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v6, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/gmail/heagoo/apkeditor/bv;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d01a5

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x8

    const/16 v6, 0x14

    invoke-virtual {v8, v1, v3, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v8, Lcom/gmail/heagoo/apkeditor/bw;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/gmail/heagoo/apkeditor/bw;-><init>(Lcom/gmail/heagoo/apkeditor/bv;Lcom/gmail/heagoo/apkeditor/ac/EditTextWithTip;Landroid/widget/CheckBox;Lcom/gmail/heagoo/apkeditor/ac/a;I)V

    invoke-virtual {p1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/gmail/heagoo/apkeditor/bx;

    invoke-direct {v1, p0}, Lcom/gmail/heagoo/apkeditor/bx;-><init>(Lcom/gmail/heagoo/apkeditor/bv;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_6
    return-void
.end method
