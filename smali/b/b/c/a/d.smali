.class public final Lb/b/c/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/HashSet;

.field private b:Ljava/util/HashSet;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error with optimize list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lb/b/c/a/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "optimize and don\'t optimize lists  are mutually exclusive."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Lb/b/c/a/d;->b(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/a/d;->a:Ljava/util/HashSet;

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Lb/b/c/a/d;->b(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lb/b/c/a/d;->b:Ljava/util/HashSet;

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/c/a/d;->c:Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lb/b/c/a/d;->a:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/c/a/d;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/c/a/d;->b:Ljava/util/HashSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/c/a/d;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method
