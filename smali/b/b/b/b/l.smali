.class final Lb/b/b/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a/c/h;


# instance fields
.field private synthetic a:Lb/b/b/b/c;


# direct methods
.method private constructor <init>(Lb/b/b/b/c;)V
    .registers 2

    iput-object p1, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/b/b/b/c;B)V
    .registers 3

    invoke-direct {p0, p1}, Lb/b/b/b/l;-><init>(Lb/b/b/b/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .registers 5

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lb/b/b/b/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->c:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processing archive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5

    instance-of v0, p1, Lb/b/b/b/p;

    if-nez v0, :cond_3

    instance-of v0, p1, Lb/b/a/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v1, "\nEXCEPTION FROM SIMULATION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    check-cast p1, Lb/b/a/b/aj;

    invoke-virtual {p1}, Lb/b/a/b/aj;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lb/b/a/d/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v1, "\nPARSE ERROR:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lb/b/a/d/i;

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->c(Lb/b/b/b/c;)Lb/b/b/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lb/b/b/b/d;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lb/b/a/d/i;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Lb/b/a/d/i;->a(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    const-string v1, "\nUNEXPECTED TOP-LEVEL EXCEPTION:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0}, Lb/b/b/b/c;->b(Lb/b/b/b/c;)Lb/b/b/b/a;

    move-result-object v0

    iget-object v0, v0, Lb/b/b/b/a;->d:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    iget-object p1, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {p1}, Lb/b/b/b/c;->d(Lb/b/b/b/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :cond_3
    check-cast p1, Lb/b/b/b/p;

    throw p1
.end method

.method public final a(Ljava/lang/String;J[B)Z
    .registers 6

    iget-object v0, p0, Lb/b/b/b/l;->a:Lb/b/b/b/c;

    invoke-static {v0, p1, p2, p3, p4}, Lb/b/b/b/c;->a(Lb/b/b/b/c;Ljava/lang/String;J[B)Z

    move-result p1

    return p1
.end method
