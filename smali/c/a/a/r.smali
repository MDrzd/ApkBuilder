.class public final Lc/a/a/r;
.super Ljava/lang/Exception;


# instance fields
.field private final a:Lc/a/a/q;


# direct methods
.method public constructor <init>(Lc/a/a/q;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/a/a/r;->a:Lc/a/a/q;

    return-void
.end method

.method public constructor <init>(Lc/a/a/q;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lc/a/a/r;->a:Lc/a/a/q;

    return-void
.end method


# virtual methods
.method public final a()Lc/a/a/q;
    .registers 2

    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/q;

    return-object v0
.end method
