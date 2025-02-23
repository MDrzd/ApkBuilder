.class public Lb/b/b/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/jar/Attributes$Name;

.field private static final b:[Ljava/lang/String;

.field private static synthetic v:Z


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lb/b/b/b/d;

.field private e:Lb/b/c/c/u;

.field private f:Ljava/util/TreeMap;

.field private final g:Ljava/util/List;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/List;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/List;

.field private m:Ljava/lang/Object;

.field private n:I

.field private o:I

.field private volatile p:Z

.field private q:J

.field private r:Ljava/util/Set;

.field private s:Ljava/util/List;

.field private t:Ljava/io/OutputStreamWriter;

.field private final u:Lb/b/b/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lb/b/b/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lb/b/b/b/c;->v:Z

    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v2, "Created-By"

    invoke-direct {v0, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/b/b/b/c;->a:Ljava/util/jar/Attributes$Name;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "accessibility"

    aput-object v3, v0, v2

    const-string v2, "crypto"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imageio"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "management"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "naming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "net"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "print"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rmi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "security"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sound"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sql"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "swing"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "transaction"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "xml"

    aput-object v2, v0, v1

    sput-object v0, Lb/b/b/b/c;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lb/b/b/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->l:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->m:Ljava/lang/Object;

    iput v1, p0, Lb/b/b/b/c;->n:I

    iput v1, p0, Lb/b/b/b/c;->o:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/b/b/b/c;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/b/c;->r:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    iput-object v0, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    iput-object p1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    return-void
.end method

.method private a()I
    .registers 7

    sget-boolean v0, Lb/b/b/b/c;->v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->r:Ljava/util/Set;

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->u:Ljava/lang/String;

    iget-object v1, p0, Lb/b/b/b/c;->r:Ljava/util/Set;

    invoke-static {v0, v1}, Lb/b/b/b/c;->b(Ljava/lang/String;Ljava/util/Collection;)V

    :cond_2
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v0, v0, Lb/b/b/b/d;->s:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lb/b/b/b/c;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/b/b/c;->l:Ljava/util/List;

    iget-object v2, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lb/b/b/b/j;

    iget-object v4, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    invoke-direct {v3, p0, v4, v1}, Lb/b/b/b/j;-><init>(Lb/b/b/b/c;Lb/b/c/c/u;B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    :cond_4
    :try_start_0
    iget-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x258

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/b/b/b/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    iget-object v3, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->k:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    invoke-static {v0}, Lb/b/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/b/b/b/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x3

    return v0

    :cond_7
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v2, v2, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lb/b/b/b/c;->v:Z

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_3
    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Lb/b/b/b/c;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    iget-object v4, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v3}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    throw v0

    :cond_a
    return v1

    :cond_b
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timed out waiting for dex writer threads."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception in dex writer thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    iget-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A dex writer thread has been interrupted."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lb/a/s;

    const-string v1, "Library dex files are not supported in multi-dex mode"

    invoke-direct {v0, v1}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lb/b/b/b/c;I)I
    .registers 2

    iput p1, p0, Lb/b/b/b/c;->n:I

    return p1
.end method

.method private a(Lb/b/b/b/d;)I
    .registers 9

    iget-object v0, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object p1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    invoke-virtual {p1}, Lb/b/b/b/d;->a()V

    iget-object p1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object p1, p1, Lb/b/b/b/d;->h:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object p1, p1, Lb/b/b/b/d;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lb/b/b/b/c;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v2, v2, Lb/b/b/b/d;->t:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lb/b/b/b/c;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    return v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v2, v2, Lb/b/b/b/d;->m:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v2, v2, Lb/b/b/b/d;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v1, "error: no incremental output name specified"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    goto/16 :goto_8

    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v5, v5, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lb/b/b/b/c;->q:J

    goto :goto_1

    :cond_3
    move-object v2, v0

    :cond_4
    :goto_1
    invoke-direct {p0}, Lb/b/b/b/c;->b()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_5
    iget-object v5, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v5, v5, Lb/b/b/b/d;->m:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lb/b/b/b/c;->p:Z

    if-eqz v5, :cond_12

    :cond_6
    iget-object v5, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    invoke-virtual {v5}, Lb/b/c/c/u;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v5, v5, Lb/b/b/b/d;->h:Ljava/lang/String;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v0

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v5, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    invoke-direct {p0, v5}, Lb/b/b/b/c;->a(Lb/b/c/c/u;)[B

    move-result-object v5

    if-nez v5, :cond_9

    const/4 v1, 0x2

    goto/16 :goto_8

    :cond_9
    :goto_3
    iget-object v6, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v6, v6, Lb/b/b/b/d;->m:Z

    if-eqz v6, :cond_f

    if-eqz v5, :cond_a

    new-instance v6, Lb/a/i;

    invoke-direct {v6, v5}, Lb/a/i;-><init>([B)V

    goto :goto_4

    :cond_a
    move-object v6, v0

    :goto_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lb/a/i;

    invoke-direct {v5, v2}, Lb/a/i;-><init>(Ljava/io/File;)V

    goto :goto_5

    :cond_b
    move-object v5, v0

    :goto_5
    if-nez v6, :cond_c

    if-nez v5, :cond_c

    move-object v5, v0

    goto :goto_7

    :cond_c
    if-nez v6, :cond_d

    move-object v6, v5

    goto :goto_6

    :cond_d
    if-nez v5, :cond_e

    goto :goto_6

    :cond_e
    new-instance v2, Lb/b/e/b;

    new-array v3, v3, [Lb/a/i;

    aput-object v6, v3, v1

    aput-object v5, v3, v4

    sget v4, Lb/b/e/a;->a:I

    iget-object v5, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    invoke-direct {v2, v3, v4, v5}, Lb/b/e/b;-><init>([Lb/a/i;ILb/b/b/b/a;)V

    invoke-virtual {v2}, Lb/b/e/b;->a()Lb/a/i;

    move-result-object v6

    :goto_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v6, v2}, Lb/a/i;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v5, v2

    :cond_f
    :goto_7
    invoke-direct {p0, v5}, Lb/b/b/b/c;->a([B)[B

    move-result-object v2

    iget-object v3, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v3, v3, Lb/b/b/b/d;->k:Z

    if-eqz v3, :cond_11

    iput-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    if-eqz v2, :cond_10

    iget-object v0, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    const-string v3, "classes.dex"

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/b/b/b/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v1, 0x3

    goto :goto_8

    :cond_11
    if-eqz v2, :cond_12

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v0, v0, Lb/b/b/b/d;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/b/b/b/c;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v0}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_12
    :goto_8
    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    return v1

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    throw v0
.end method

.method static synthetic a(Lb/b/b/b/c;Ljava/lang/String;[B)Lb/b/a/c/k;
    .registers 4

    new-instance v0, Lb/b/a/c/k;

    iget-object p0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object p0, p0, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-boolean p0, p0, Lcom/gmail/heagoo/httpserver/g;->c:Z

    invoke-direct {v0, p2, p1, p0}, Lb/b/a/c/k;-><init>([BLjava/lang/String;Z)V

    sget-object p0, Lb/b/a/c/p;->a:Lb/b/a/c/p;

    invoke-virtual {v0, p0}, Lb/b/a/c/k;->a(Lb/b/a/c/b;)V

    invoke-virtual {v0}, Lb/b/a/c/k;->c()I

    return-object v0
.end method

.method static synthetic a(Lb/b/b/b/c;[BLb/b/a/c/k;)Lb/b/c/c/m;
    .registers 3

    invoke-direct {p0, p1, p2}, Lb/b/b/b/c;->a([BLb/b/a/c/k;)Lb/b/c/c/m;

    move-result-object p0

    return-object p0
.end method

.method private a([BLb/b/a/c/k;)Lb/b/c/c/m;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v3, v1, Lb/b/b/b/d;->q:Lcom/gmail/heagoo/httpserver/g;

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v4, v1, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    iget-object v5, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lb/b/c/a/b;->a(Lb/b/b/b/a;Lb/b/a/c/k;[BLcom/gmail/heagoo/httpserver/g;Lcom/gmail/heagoo/b/a/a;Lb/b/c/c/u;)Lb/b/c/c/m;

    move-result-object p1
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p2, p2, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v0, "\ntrouble processing:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean p2, p2, Lb/b/b/b/d;->a:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p2, p2, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Lb/b/a/d/i;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p2, p2, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Lb/b/a/d/i;->a(Ljava/io/PrintStream;)V

    :goto_0
    iget-object p1, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_0

    const-string p0, "classes.dex"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "classes"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lb/b/b/b/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lb/b/b/b/c;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->r:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lb/b/b/b/c;Z)V
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Z)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .registers 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lb/b/a/c/i;)V
    .registers 6

    new-instance v0, Lb/b/a/c/d;

    new-instance v1, Lb/b/b/b/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lb/b/b/b/l;-><init>(Lb/b/b/b/c;B)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, p2, v1}, Lb/b/a/c/d;-><init>(Ljava/lang/String;ZLb/b/a/c/i;Lb/b/a/c/h;)V

    invoke-virtual {v0}, Lb/b/a/c/d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lb/b/b/b/c;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 2

    invoke-static {p0, p1}, Lb/b/b/b/c;->b(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lb/b/b/b/c;->p:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lb/b/b/b/c;->p:Z

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lb/b/b/b/a;

    invoke-direct {v0}, Lb/b/b/b/a;-><init>()V

    new-instance v1, Lb/b/b/b/d;

    invoke-direct {v1, v0}, Lb/b/b/b/d;-><init>(Lb/b/b/b/a;)V

    invoke-static {v1, p0}, Lb/b/b/b/d;->a(Lb/b/b/b/d;[Ljava/lang/String;)V

    new-instance p0, Lb/b/b/b/c;

    invoke-direct {p0, v0}, Lb/b/b/b/c;-><init>(Lb/b/b/b/a;)V

    invoke-direct {p0, v1}, Lb/b/b/b/c;->a(Lb/b/b/b/d;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lb/b/b/b/c;Lb/b/c/c/m;)Z
    .registers 2

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Lb/b/c/c/m;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lb/b/b/b/c;Ljava/lang/String;J[B)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/b/b/c;->a(Ljava/lang/String;J[B)Z

    move-result p0

    return p0
.end method

.method private a(Lb/b/c/c/m;)Z
    .registers 4

    iget-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    invoke-virtual {v1, p1}, Lb/b/c/c/u;->a(Lb/b/c/c/m;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;J[B)Z
    .registers 13

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "classes.dex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-object p2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean p2, p2, Lb/b/b/b/d;->b:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p2, p2, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "ignored resource "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v3

    :cond_2
    iget-object v5, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v5, v5, Lb/b/b/b/d;->b:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v5, v5, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processing "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lb/b/b/b/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    iget-wide v0, p0, Lb/b/b/b/c;->q:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, p1, p4}, Lb/b/b/b/c;->a(Ljava/lang/String;[B)Z

    return v3

    :cond_6
    if-eqz v1, :cond_7

    iget-object p2, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    monitor-enter p2

    :try_start_1
    iget-object p1, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return v4

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_7
    iget-object p2, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    monitor-enter p2

    :try_start_2
    iget-object p3, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    invoke-virtual {p3, p1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return v4

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method

.method private a(Ljava/lang/String;[B)Z
    .registers 12

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    const-string v0, "java/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const-string v0, "javax/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lb/b/b/b/c;->b:[Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p2, p2, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ntrouble processing \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\":\n\nIll-advised or mistaken usage of a core class (java.* or javax.*)\nwhen not building a core library.\n\nThis is often due to inadvertently including a core library file\nin your application\'s project, when using an IDE (such as\nEclipse). If you are sure you\'re not intentionally defining a\ncore class, then this is the most likely explanation of what\'s\ngoing on.\n\nHowever, you might actually be trying to define a class in a core\nnamespace, the source of which you may have taken, for example,\nfrom a non-Android virtual machine project. This will most\nassuredly not work. At a minimum, it jeopardizes the\ncompatibility of your app with future versions of the platform.\nIt is also often of questionable legality.\n\nIf you really intend to build a core library -- which is only\nappropriate as part of creating a full virtual machine\ndistribution, as opposed to compiling an application -- then use\nthe \"--core-library\" option to suppress this error message.\n\nIf you go ahead and use \"--core-library\" but are in fact\nbuilding an application, then be forewarned that your application\nwill still fail to build or run, at some point. Please be\nprepared for angry customers who find, for example, that your\napplication ceases to function once they upgrade their operating\nsystem. You will be to blame for this problem.\n\nIf you are legitimately using some code that happens to be in a\ncore package, then the easiest safe alternative you have is to\nrepackage that code. That is, move the classes in question into\nyour own package namespace. This means that they will never be in\nconflict with core system classes. JarJar is a tool that may help\nyou in this endeavor. If you find that you cannot do this, then\nthat is an indication that the path you are on will ultimately\nlead to pain, suffering, grief, and lamentation.\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p1, Lb/b/b/b/p;

    invoke-direct {p1, v2}, Lb/b/b/b/p;-><init>(B)V

    throw p1

    :cond_4
    :goto_2
    :try_start_0
    new-instance v0, Lb/b/b/b/k;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lb/b/b/b/k;-><init>(Lb/b/b/b/c;Ljava/lang/String;[BLjava/util/concurrent/Future;B)V

    new-instance v3, Lb/b/b/b/h;

    invoke-direct {v3, p0, p1, p2, v2}, Lb/b/b/b/h;-><init>(Lb/b/b/b/c;Ljava/lang/String;[BB)V

    invoke-virtual {v3}, Lb/b/b/b/h;->a()Lb/b/a/c/k;

    move-result-object p1

    invoke-static {v0, p1}, Lb/b/b/b/k;->a(Lb/b/b/b/k;Lb/b/a/c/k;)Ljava/lang/Boolean;
    :try_end_0
    .catch Lb/b/a/d/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception parsing classes"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method static synthetic a(Lb/b/b/b/c;Lb/b/c/c/u;)[B
    .registers 2

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Lb/b/c/c/u;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Lb/b/c/c/u;)[B
    .registers 14

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v1, v1, Lb/b/b/b/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/b/c/c/u;->a(Ljava/io/Writer;Z)[B

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v2, v2, Lb/b/b/b/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5}, Lb/b/c/c/u;->a(Ljava/lang/String;)Lb/b/c/c/m;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no such class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v7}, Lb/b/c/c/m;->g()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/c/c/z;

    invoke-virtual {v9}, Lb/b/c/c/z;->a()Lb/b/f/c/ad;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/c/ad;->j()Ljava/lang/String;

    move-result-object v10

    if-eqz v4, :cond_4

    invoke-virtual {v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    if-nez v4, :cond_3

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_5
    invoke-virtual {v9}, Lb/b/c/c/z;->c()Lb/b/f/c/z;

    move-result-object v10

    invoke-virtual {v10}, Lb/b/f/c/z;->m()Lb/b/f/c/aa;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no such method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/c/c/z;

    iget-object v5, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v5, v5, Lb/b/b/b/d;->c:Z

    invoke-virtual {v4, v2, v5}, Lb/b/c/c/z;->a(Ljava/io/PrintWriter;Z)V

    invoke-virtual {v7}, Lb/b/c/c/m;->f()Lb/b/f/c/ad;

    move-result-object v5

    if-eqz v5, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "  source file: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lb/b/f/c/ad;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v4}, Lb/b/c/c/z;->c()Lb/b/f/c/z;

    move-result-object v5

    invoke-virtual {v7, v5}, Lb/b/c/c/m;->a(Lb/b/f/c/z;)Lb/b/f/a/c;

    move-result-object v5

    invoke-virtual {v4}, Lb/b/c/c/z;->c()Lb/b/f/c/z;

    move-result-object v4

    invoke-virtual {v7, v4}, Lb/b/c/c/m;->b(Lb/b/f/c/z;)Lb/b/f/a/d;

    move-result-object v4

    if-eqz v5, :cond_a

    const-string v6, "  method annotations:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lb/b/f/a/c;->g()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/b/f/a/a;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v4, :cond_8

    const-string v5, "  parameter annotations:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lb/b/f/a/d;->a_()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    parameter "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lb/b/f/a/d;->a(I)Lb/b/f/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/f/a/c;->g()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/f/a/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "      "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bogus fully-qualified method name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :goto_6
    move-object v1, v0

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v2, v2, Lb/b/b/b/d;->c:Z

    invoke-virtual {p1, v1, v2}, Lb/b/c/c/u;->a(Ljava/io/Writer;Z)[B

    move-result-object v1

    :goto_7
    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v2, v2, Lb/b/b/b/d;->p:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v2, v2, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lb/b/c/c/u;->t()Lb/b/c/c/ba;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/c/ba;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :try_start_1
    iget-object p1, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_10
    return-object v1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lb/b/b/b/c;->t:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_11
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v1, v1, Lb/b/b/b/d;->a:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v2, "\ntrouble writing output:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_8

    :cond_12
    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ntrouble writing output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_8
    return-object v0
.end method

.method private a([B)[B
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Lb/a/i;

    invoke-direct {v1, p1}, Lb/a/i;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lb/b/b/b/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v2, Lb/a/i;

    invoke-direct {v2, v1}, Lb/a/i;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lb/b/e/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lb/a/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/i;

    sget v1, Lb/b/e/a;->b:I

    iget-object v2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    invoke-direct {p1, v0, v1, v2}, Lb/b/e/b;-><init>([Lb/a/i;ILb/b/b/b/a;)V

    invoke-virtual {p1}, Lb/b/e/b;->a()Lb/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/i;->d()[B

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lb/b/b/b/c;I)I
    .registers 2

    iput p1, p0, Lb/b/b/b/c;->o:I

    return p1
.end method

.method static synthetic b(Lb/b/b/b/c;)Lb/b/b/b/a;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/b/b/b/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_1
    throw p1
.end method

.method private b()Z
    .registers 13

    invoke-direct {p0}, Lb/b/b/b/c;->c()V

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/b/b/c;->p:Z

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v1, v1, Lb/b/b/b/d;->n:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v3, v2, Lb/b/b/b/d;->s:I

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v4, v2, Lb/b/b/b/d;->s:I

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v2, v2, Lb/b/b/b/d;->s:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v11, 0x1

    invoke-direct {v8, v2, v11}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v10, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v2, v2, Lb/b/b/b/d;->u:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v2, v2, Lb/b/b/b/d;->i:Z

    if-eqz v2, :cond_1

    new-instance v2, Lb/b/b/b/m;

    invoke-direct {v2, p0, v0}, Lb/b/b/b/m;-><init>(Lb/b/b/b/c;B)V

    goto :goto_0

    :cond_1
    new-instance v2, Lb/b/b/b/f;

    invoke-direct {v2, p0}, Lb/b/b/b/f;-><init>(Lb/b/b/b/c;)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2}, Lb/b/b/b/c;->a(Ljava/lang/String;Lb/b/a/c/i;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lb/b/b/b/c;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6

    iget-object v3, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v3, v3, Lb/b/b/b/d;->v:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lb/b/b/b/c;->m:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lb/b/b/b/p; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :goto_2
    :try_start_1
    iget v4, p0, Lb/b/b/b/c;->n:I

    if-gtz v4, :cond_4

    iget v4, p0, Lb/b/b/b/c;->o:I

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lb/b/b/b/c;->d()V
    :try_end_2
    .catch Lb/b/b/b/p; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_4
    :goto_3
    :try_start_3
    iget-object v4, p0, Lb/b/b/b/c;->m:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    :cond_5
    :goto_4
    new-instance v3, Lb/b/b/b/o;

    new-instance v4, Lb/b/b/b/n;

    invoke-direct {v4, v2, v0}, Lb/b/b/b/n;-><init>(Lb/b/a/c/i;B)V

    invoke-direct {v3, v4}, Lb/b/b/b/o;-><init>(Lb/b/a/c/i;)V

    const/4 v2, 0x0

    :goto_5
    array-length v4, v1

    if-ge v2, v4, :cond_8

    aget-object v4, v1, v2

    invoke-direct {p0, v4, v3}, Lb/b/b/b/c;->a(Ljava/lang/String;Lb/b/a/c/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v1, Lb/a/s;

    const-string v2, "Too many classes in --main-dex-list, main dex capacity exceeded"

    invoke-direct {v1, v2}, Lb/a/s;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v2, Lb/b/b/b/o;

    sget-object v3, Lb/b/a/c/d;->a:Lb/b/a/c/i;

    invoke-direct {v2, v3}, Lb/b/b/b/o;-><init>(Lb/b/a/c/i;)V

    const/4 v3, 0x0

    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_8

    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2}, Lb/b/b/b/c;->a(Ljava/lang/String;Lb/b/a/c/i;)V
    :try_end_5
    .catch Lb/b/b/b/p; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_1
    :cond_8
    :try_start_6
    iget-object v1, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x258

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v1, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v1, p0, Lb/b/b/b/c;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_8
    iget-object v3, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_a

    iget-object v3, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v3, v3, Lb/b/b/b/d;->a:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v3, v3, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v4, "Uncaught translation error:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v3, v3, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v3, v3, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uncaught translation error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Too many errors"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    iget-object v1, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v2, v2, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v11, :cond_c

    const-string v1, ""

    goto :goto_8

    :cond_c
    const-string v1, "s"

    :goto_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; aborting"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_d
    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v1, v1, Lb/b/b/b/d;->m:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lb/b/b/b/c;->p:Z

    if-nez v1, :cond_e

    return v11

    :cond_e
    iget-boolean v1, p0, Lb/b/b/b/c;->p:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v1, v1, Lb/b/b/b/d;->j:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v2, "no classfiles specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_f
    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->o:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->p:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->a:Lcom/gmail/heagoo/httpserver/h;

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/httpserver/h;->a(Ljava/io/PrintStream;)V

    :cond_10
    return v11

    :catch_3
    move-exception v0

    iget-object v1, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v1, v1, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception in translator thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    iget-object v1, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v1, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Translation has been interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 12

    :try_start_0
    iget-object v0, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    sget-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/jar/Manifest;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    iget-object v2, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v2, Lb/b/b/b/c;->a:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dx 1.16"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lb/b/b/b/c;->a:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v3, v2}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Dex-Location"

    const-string v3, "classes.dex"

    invoke-virtual {v0, v2, v3}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lb/b/b/b/c;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    new-instance v0, Ljava/util/jar/JarOutputStream;

    invoke-direct {v0, p1, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lb/b/b/b/c;->f:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v4, Ljava/util/jar/JarEntry;

    invoke-direct {v4, v3}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    iget-object v6, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v6, v6, Lb/b/b/b/d;->b:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v6, v6, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "writing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; size "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/jar/JarEntry;->setSize(J)V

    invoke-virtual {v0, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->flush()V

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->flush()V

    invoke-direct {p0, p1}, Lb/b/b/b/c;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-boolean v0, v0, Lb/b/b/b/d;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v1, "\ntrouble writing output:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntrouble writing output: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lb/b/b/b/c;)Lb/b/b/b/d;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/b/b/c;->u:Lb/b/b/b/a;

    iget-object p1, p1, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    return-object p1
.end method

.method private c()V
    .registers 3

    new-instance v0, Lb/b/c/c/u;

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget-object v1, v1, Lb/b/b/b/d;->r:Lcom/gmail/heagoo/b/a/a;

    invoke-direct {v0, v1}, Lb/b/c/c/u;-><init>(Lcom/gmail/heagoo/b/a/a;)V

    iput-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    iget-object v0, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v0, v0, Lb/b/b/b/d;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    iget-object v1, p0, Lb/b/b/b/c;->d:Lb/b/b/b/d;

    iget v1, v1, Lb/b/b/b/d;->f:I

    invoke-virtual {v0, v1}, Lb/b/c/c/u;->a(I)V

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method static synthetic d(Lb/b/b/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/c;->l:Ljava/util/List;

    iget-object v1, p0, Lb/b/b/b/c;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lb/b/b/b/j;

    iget-object v3, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lb/b/b/b/j;-><init>(Lb/b/b/b/c;Lb/b/c/c/u;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lb/b/b/b/c;->s:Ljava/util/List;

    iget-object v1, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    invoke-direct {p0, v1}, Lb/b/b/b/c;->a(Lb/b/c/c/u;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lb/b/b/b/c;->c()V

    return-void
.end method

.method static synthetic e(Lb/b/b/b/c;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->m:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lb/b/b/b/c;)Lb/b/c/c/u;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->e:Lb/b/c/c/u;

    return-object p0
.end method

.method static synthetic g(Lb/b/b/b/c;)I
    .registers 1

    iget p0, p0, Lb/b/b/b/c;->n:I

    return p0
.end method

.method static synthetic h(Lb/b/b/b/c;)I
    .registers 1

    iget p0, p0, Lb/b/b/b/c;->o:I

    return p0
.end method

.method static synthetic i(Lb/b/b/b/c;)V
    .registers 1

    invoke-direct {p0}, Lb/b/b/b/c;->d()V

    return-void
.end method

.method static synthetic j(Lb/b/b/b/c;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->h:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic k(Lb/b/b/b/c;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->i:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic l(Lb/b/b/b/c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lb/b/b/b/c;->j:Ljava/util/List;

    return-object p0
.end method
