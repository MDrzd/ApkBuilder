.class final Lb/b/b/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d/c;


# instance fields
.field private synthetic a:Ljava/io/PrintWriter;

.field private synthetic b:Lb/a/i;

.field private synthetic c:Lb/b/b/d/a;


# direct methods
.method constructor <init>(Lb/b/b/d/a;Ljava/io/PrintWriter;Lb/a/i;)V
    .registers 4

    iput-object p1, p0, Lb/b/b/d/b;->c:Lb/b/b/d/a;

    iput-object p2, p0, Lb/b/b/d/b;->a:Ljava/io/PrintWriter;

    iput-object p3, p0, Lb/b/b/d/b;->b:Lb/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/b/d/a/e;)V
    .registers 6

    invoke-virtual {p1}, Lb/b/d/a/e;->d()I

    move-result v0

    iget-object v1, p0, Lb/b/b/d/b;->c:Lb/b/b/d/a;

    invoke-static {v1}, Lb/b/b/d/a;->a(Lb/b/b/d/a;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/b/d/b;->a:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lb/b/b/d/b;->c:Lb/b/b/d/a;

    invoke-static {v3}, Lb/b/b/d/a;->b(Lb/b/b/d/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": field reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/b/b/d/b;->b:Lb/a/i;

    invoke-virtual {v3}, Lb/a/i;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lb/b/d/a/e;->b()I

    move-result p1

    invoke-static {p1}, Lb/b/d/e;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
