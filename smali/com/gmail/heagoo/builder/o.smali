.class public final Lcom/gmail/heagoo/builder/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/java"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_b6

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.example.emptyapp"

    invoke-static {v6, v7, v8, p2}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MainActivity"

    invoke-static {v6, v7, v8, p3}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "activity_main"

    invoke-static {v6, v7, v8, p4}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MainActivity.java"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/src/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".java"

    :goto_7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9d

    :cond_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/src/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_7b

    :goto_9d
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_af

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_af
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_24

    :cond_b6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/gmail/heagoo/apkeditor/d/a;

    invoke-direct {p1, p0}, Lcom/gmail/heagoo/apkeditor/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gmail/heagoo/apkeditor/d/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/FileWriter;

    invoke-direct {p2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2e} :catch_40
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3b

    :try_start_2e
    invoke-virtual {p2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_41
    .catchall {:try_start_2e .. :try_end_34} :catchall_38

    invoke-static {p2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_38
    move-exception p0

    move-object v0, p2

    goto :goto_3c

    :catchall_3b
    move-exception p0

    :goto_3c
    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p0

    :catch_40
    move-object p2, v0

    :catch_41
    invoke-static {p2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gmail/heagoo/builder/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object p1, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0d0143

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    iput-object p1, p0, Lcom/gmail/heagoo/builder/o;->b:Ljava/lang/String;

    return v3

    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    iget-object v1, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_74
    .catchall {:try_start_2e .. :try_end_3e} :catchall_6b

    :try_start_3e
    iget-object v1, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string v5, "project_tmp.zip"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_56} :catch_69
    .catchall {:try_start_3e .. :try_end_56} :catchall_67

    :try_start_56
    invoke-static {p4, v1}, Lcom/a/a/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5d} :catch_76
    .catchall {:try_start_56 .. :try_end_5d} :catchall_64

    invoke-static {p4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_7d

    :catchall_64
    move-exception p1

    move-object v0, v1

    goto :goto_6d

    :catchall_67
    move-exception p1

    goto :goto_6d

    :catch_69
    move-object v1, v0

    goto :goto_76

    :catchall_6b
    move-exception p1

    move-object p4, v0

    :goto_6d
    invoke-static {p4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_74
    move-object p4, v0

    move-object v1, p4

    :catch_76
    :goto_76
    invoke-static {p4}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    move-object v4, v0

    :goto_7d
    if-eqz v4, :cond_150

    :try_start_7f
    invoke-static {v4, p3}, La/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_13f

    invoke-direct {p0, p3, p2, p5, p6}, Lcom/gmail/heagoo/builder/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "res/values/strings.xml"

    const-string v1, "EmptyApp"

    invoke-static {p3, p4, v1, p1}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "AndroidManifest.xml"

    const-string v1, "com.example.emptyapp"

    invoke-static {p3, p4, v1, p2}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "AndroidManifest.xml"

    const-string v1, "12"

    const-string v3, "minskd"

    invoke-static {v3}, Lcom/gmail/heagoo/builder/FnmodsDatosString;->_datosfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v1, v3}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "AndroidManifest.xml"

    const-string v1, "28"

    const-string v3, "target"

    invoke-static {v3}, Lcom/gmail/heagoo/builder/FnmodsDatosString;->_datosfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v1, v3}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "AndroidManifest.xml"

    const-string v1, "1.0"

    const-string v3, "version"

    invoke-static {v3}, Lcom/gmail/heagoo/builder/FnmodsDatosString;->_datosfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v1, v3}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "AndroidManifest.xml"

    const-string v1, "1"

    const-string v3, "code"

    invoke-static {v3}, Lcom/gmail/heagoo/builder/FnmodsDatosString;->_datosfn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4, v1, v3}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "AndroidManifest.xml"

    const-string p4, "MainActivity"

    invoke-static {p3, p2, p4, p5}, Lcom/gmail/heagoo/builder/o;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "res/layout/activity_main.xml"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".xml"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p6

    invoke-direct {p2, p6, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "NAME="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_114
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/.project"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_12a} :catch_13a
    .catchall {:try_start_114 .. :try_end_12a} :catchall_135

    :try_start_12a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_131} :catch_13b
    .catchall {:try_start_12a .. :try_end_131} :catchall_132

    goto :goto_13b

    :catchall_132
    move-exception p1

    move-object v0, p2

    goto :goto_136

    :catchall_135
    move-exception p1

    :goto_136
    invoke-static {v0}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_13a
    move-object p2, v0

    :catch_13b
    :goto_13b
    invoke-static {p2}, Lcom/a/a/g;->a(Ljava/io/Closeable;)V

    return v2

    :catch_13f
    iget-object p1, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0d0146

    :goto_14a
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2a

    :cond_150
    iget-object p1, p0, Lcom/gmail/heagoo/builder/o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f0d0145

    goto :goto_14a
.end method
