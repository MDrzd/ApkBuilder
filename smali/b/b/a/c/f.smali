.class final Lb/b/a/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lb/b/a/c/d;


# direct methods
.method constructor <init>(Lb/b/a/c/d;)V
    .registers 2

    iput-object p1, p0, Lb/b/a/c/f;->a:Lb/b/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb/b/a/c/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
