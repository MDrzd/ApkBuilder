.class public Lorg/a/a/b/h;
.super Ljava/lang/RuntimeException;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/a/a/b/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/a/a/b/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/h;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
